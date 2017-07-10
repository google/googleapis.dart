library googleapis.spanner.v1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/spanner/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request.finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
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

http.StreamedResponse stringResponse(
    core.int status, core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed2053() {
  var o = new core.List<api.AuditLogConfig>();
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

checkUnnamed2053(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

buildUnnamed2054() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2054(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditConfig = 0;
buildAuditConfig() {
  var o = new api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed2053();
    o.exemptedMembers = buildUnnamed2054();
    o.service = "foo";
  }
  buildCounterAuditConfig--;
  return o;
}

checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed2053(o.auditLogConfigs);
    checkUnnamed2054(o.exemptedMembers);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

buildUnnamed2055() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2055(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
buildAuditLogConfig() {
  var o = new api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed2055();
    o.logType = "foo";
  }
  buildCounterAuditLogConfig--;
  return o;
}

checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed2055(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterBeginTransactionRequest = 0;
buildBeginTransactionRequest() {
  var o = new api.BeginTransactionRequest();
  buildCounterBeginTransactionRequest++;
  if (buildCounterBeginTransactionRequest < 3) {
    o.options = buildTransactionOptions();
  }
  buildCounterBeginTransactionRequest--;
  return o;
}

checkBeginTransactionRequest(api.BeginTransactionRequest o) {
  buildCounterBeginTransactionRequest++;
  if (buildCounterBeginTransactionRequest < 3) {
    checkTransactionOptions(o.options);
  }
  buildCounterBeginTransactionRequest--;
}

buildUnnamed2056() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2056(core.List<core.String> o) {
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
    o.members = buildUnnamed2056();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed2056(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterChildLink = 0;
buildChildLink() {
  var o = new api.ChildLink();
  buildCounterChildLink++;
  if (buildCounterChildLink < 3) {
    o.childIndex = 42;
    o.type = "foo";
    o.variable = "foo";
  }
  buildCounterChildLink--;
  return o;
}

checkChildLink(api.ChildLink o) {
  buildCounterChildLink++;
  if (buildCounterChildLink < 3) {
    unittest.expect(o.childIndex, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.variable, unittest.equals('foo'));
  }
  buildCounterChildLink--;
}

core.int buildCounterCloudAuditOptions = 0;
buildCloudAuditOptions() {
  var o = new api.CloudAuditOptions();
  buildCounterCloudAuditOptions++;
  if (buildCounterCloudAuditOptions < 3) {
    o.logName = "foo";
  }
  buildCounterCloudAuditOptions--;
  return o;
}

checkCloudAuditOptions(api.CloudAuditOptions o) {
  buildCounterCloudAuditOptions++;
  if (buildCounterCloudAuditOptions < 3) {
    unittest.expect(o.logName, unittest.equals('foo'));
  }
  buildCounterCloudAuditOptions--;
}

buildUnnamed2057() {
  var o = new core.List<api.Mutation>();
  o.add(buildMutation());
  o.add(buildMutation());
  return o;
}

checkUnnamed2057(core.List<api.Mutation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMutation(o[0]);
  checkMutation(o[1]);
}

core.int buildCounterCommitRequest = 0;
buildCommitRequest() {
  var o = new api.CommitRequest();
  buildCounterCommitRequest++;
  if (buildCounterCommitRequest < 3) {
    o.mutations = buildUnnamed2057();
    o.singleUseTransaction = buildTransactionOptions();
    o.transactionId = "foo";
  }
  buildCounterCommitRequest--;
  return o;
}

checkCommitRequest(api.CommitRequest o) {
  buildCounterCommitRequest++;
  if (buildCounterCommitRequest < 3) {
    checkUnnamed2057(o.mutations);
    checkTransactionOptions(o.singleUseTransaction);
    unittest.expect(o.transactionId, unittest.equals('foo'));
  }
  buildCounterCommitRequest--;
}

core.int buildCounterCommitResponse = 0;
buildCommitResponse() {
  var o = new api.CommitResponse();
  buildCounterCommitResponse++;
  if (buildCounterCommitResponse < 3) {
    o.commitTimestamp = "foo";
  }
  buildCounterCommitResponse--;
  return o;
}

checkCommitResponse(api.CommitResponse o) {
  buildCounterCommitResponse++;
  if (buildCounterCommitResponse < 3) {
    unittest.expect(o.commitTimestamp, unittest.equals('foo'));
  }
  buildCounterCommitResponse--;
}

buildUnnamed2058() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2058(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCondition = 0;
buildCondition() {
  var o = new api.Condition();
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    o.iam = "foo";
    o.op = "foo";
    o.svc = "foo";
    o.sys = "foo";
    o.value = "foo";
    o.values = buildUnnamed2058();
  }
  buildCounterCondition--;
  return o;
}

checkCondition(api.Condition o) {
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    unittest.expect(o.iam, unittest.equals('foo'));
    unittest.expect(o.op, unittest.equals('foo'));
    unittest.expect(o.svc, unittest.equals('foo'));
    unittest.expect(o.sys, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
    checkUnnamed2058(o.values);
  }
  buildCounterCondition--;
}

core.int buildCounterCounterOptions = 0;
buildCounterOptions() {
  var o = new api.CounterOptions();
  buildCounterCounterOptions++;
  if (buildCounterCounterOptions < 3) {
    o.field = "foo";
    o.metric = "foo";
  }
  buildCounterCounterOptions--;
  return o;
}

checkCounterOptions(api.CounterOptions o) {
  buildCounterCounterOptions++;
  if (buildCounterCounterOptions < 3) {
    unittest.expect(o.field, unittest.equals('foo'));
    unittest.expect(o.metric, unittest.equals('foo'));
  }
  buildCounterCounterOptions--;
}

core.int buildCounterCreateDatabaseMetadata = 0;
buildCreateDatabaseMetadata() {
  var o = new api.CreateDatabaseMetadata();
  buildCounterCreateDatabaseMetadata++;
  if (buildCounterCreateDatabaseMetadata < 3) {
    o.database = "foo";
  }
  buildCounterCreateDatabaseMetadata--;
  return o;
}

checkCreateDatabaseMetadata(api.CreateDatabaseMetadata o) {
  buildCounterCreateDatabaseMetadata++;
  if (buildCounterCreateDatabaseMetadata < 3) {
    unittest.expect(o.database, unittest.equals('foo'));
  }
  buildCounterCreateDatabaseMetadata--;
}

buildUnnamed2059() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2059(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreateDatabaseRequest = 0;
buildCreateDatabaseRequest() {
  var o = new api.CreateDatabaseRequest();
  buildCounterCreateDatabaseRequest++;
  if (buildCounterCreateDatabaseRequest < 3) {
    o.createStatement = "foo";
    o.extraStatements = buildUnnamed2059();
  }
  buildCounterCreateDatabaseRequest--;
  return o;
}

checkCreateDatabaseRequest(api.CreateDatabaseRequest o) {
  buildCounterCreateDatabaseRequest++;
  if (buildCounterCreateDatabaseRequest < 3) {
    unittest.expect(o.createStatement, unittest.equals('foo'));
    checkUnnamed2059(o.extraStatements);
  }
  buildCounterCreateDatabaseRequest--;
}

core.int buildCounterCreateInstanceMetadata = 0;
buildCreateInstanceMetadata() {
  var o = new api.CreateInstanceMetadata();
  buildCounterCreateInstanceMetadata++;
  if (buildCounterCreateInstanceMetadata < 3) {
    o.cancelTime = "foo";
    o.endTime = "foo";
    o.instance = buildInstance();
    o.startTime = "foo";
  }
  buildCounterCreateInstanceMetadata--;
  return o;
}

checkCreateInstanceMetadata(api.CreateInstanceMetadata o) {
  buildCounterCreateInstanceMetadata++;
  if (buildCounterCreateInstanceMetadata < 3) {
    unittest.expect(o.cancelTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkInstance(o.instance);
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterCreateInstanceMetadata--;
}

core.int buildCounterCreateInstanceRequest = 0;
buildCreateInstanceRequest() {
  var o = new api.CreateInstanceRequest();
  buildCounterCreateInstanceRequest++;
  if (buildCounterCreateInstanceRequest < 3) {
    o.instance = buildInstance();
    o.instanceId = "foo";
  }
  buildCounterCreateInstanceRequest--;
  return o;
}

checkCreateInstanceRequest(api.CreateInstanceRequest o) {
  buildCounterCreateInstanceRequest++;
  if (buildCounterCreateInstanceRequest < 3) {
    checkInstance(o.instance);
    unittest.expect(o.instanceId, unittest.equals('foo'));
  }
  buildCounterCreateInstanceRequest--;
}

core.int buildCounterDataAccessOptions = 0;
buildDataAccessOptions() {
  var o = new api.DataAccessOptions();
  buildCounterDataAccessOptions++;
  if (buildCounterDataAccessOptions < 3) {
  }
  buildCounterDataAccessOptions--;
  return o;
}

checkDataAccessOptions(api.DataAccessOptions o) {
  buildCounterDataAccessOptions++;
  if (buildCounterDataAccessOptions < 3) {
  }
  buildCounterDataAccessOptions--;
}

core.int buildCounterDatabase = 0;
buildDatabase() {
  var o = new api.Database();
  buildCounterDatabase++;
  if (buildCounterDatabase < 3) {
    o.name = "foo";
    o.state = "foo";
  }
  buildCounterDatabase--;
  return o;
}

checkDatabase(api.Database o) {
  buildCounterDatabase++;
  if (buildCounterDatabase < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterDatabase--;
}

core.int buildCounterDelete = 0;
buildDelete() {
  var o = new api.Delete();
  buildCounterDelete++;
  if (buildCounterDelete < 3) {
    o.keySet = buildKeySet();
    o.table = "foo";
  }
  buildCounterDelete--;
  return o;
}

checkDelete(api.Delete o) {
  buildCounterDelete++;
  if (buildCounterDelete < 3) {
    checkKeySet(o.keySet);
    unittest.expect(o.table, unittest.equals('foo'));
  }
  buildCounterDelete--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {
  }
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {
  }
  buildCounterEmpty--;
}

buildUnnamed2060() {
  var o = new core.Map<core.String, api.Type>();
  o["x"] = buildType();
  o["y"] = buildType();
  return o;
}

checkUnnamed2060(core.Map<core.String, api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o["x"]);
  checkType(o["y"]);
}

buildUnnamed2061() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed2061(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o["y"]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

core.int buildCounterExecuteSqlRequest = 0;
buildExecuteSqlRequest() {
  var o = new api.ExecuteSqlRequest();
  buildCounterExecuteSqlRequest++;
  if (buildCounterExecuteSqlRequest < 3) {
    o.paramTypes = buildUnnamed2060();
    o.params = buildUnnamed2061();
    o.queryMode = "foo";
    o.resumeToken = "foo";
    o.sql = "foo";
    o.transaction = buildTransactionSelector();
  }
  buildCounterExecuteSqlRequest--;
  return o;
}

checkExecuteSqlRequest(api.ExecuteSqlRequest o) {
  buildCounterExecuteSqlRequest++;
  if (buildCounterExecuteSqlRequest < 3) {
    checkUnnamed2060(o.paramTypes);
    checkUnnamed2061(o.params);
    unittest.expect(o.queryMode, unittest.equals('foo'));
    unittest.expect(o.resumeToken, unittest.equals('foo'));
    unittest.expect(o.sql, unittest.equals('foo'));
    checkTransactionSelector(o.transaction);
  }
  buildCounterExecuteSqlRequest--;
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

core.int buildCounterField = 0;
buildField() {
  var o = new api.Field();
  buildCounterField++;
  if (buildCounterField < 3) {
    o.name = "foo";
    o.type = buildType();
  }
  buildCounterField--;
  return o;
}

checkField(api.Field o) {
  buildCounterField++;
  if (buildCounterField < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkType(o.type);
  }
  buildCounterField--;
}

buildUnnamed2062() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2062(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGetDatabaseDdlResponse = 0;
buildGetDatabaseDdlResponse() {
  var o = new api.GetDatabaseDdlResponse();
  buildCounterGetDatabaseDdlResponse++;
  if (buildCounterGetDatabaseDdlResponse < 3) {
    o.statements = buildUnnamed2062();
  }
  buildCounterGetDatabaseDdlResponse--;
  return o;
}

checkGetDatabaseDdlResponse(api.GetDatabaseDdlResponse o) {
  buildCounterGetDatabaseDdlResponse++;
  if (buildCounterGetDatabaseDdlResponse < 3) {
    checkUnnamed2062(o.statements);
  }
  buildCounterGetDatabaseDdlResponse--;
}

core.int buildCounterGetIamPolicyRequest = 0;
buildGetIamPolicyRequest() {
  var o = new api.GetIamPolicyRequest();
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
  }
  buildCounterGetIamPolicyRequest--;
  return o;
}

checkGetIamPolicyRequest(api.GetIamPolicyRequest o) {
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
  }
  buildCounterGetIamPolicyRequest--;
}

buildUnnamed2063() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2063(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterInstance = 0;
buildInstance() {
  var o = new api.Instance();
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    o.config = "foo";
    o.displayName = "foo";
    o.labels = buildUnnamed2063();
    o.name = "foo";
    o.nodeCount = 42;
    o.state = "foo";
  }
  buildCounterInstance--;
  return o;
}

checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    unittest.expect(o.config, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed2063(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.nodeCount, unittest.equals(42));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterInstance--;
}

core.int buildCounterInstanceConfig = 0;
buildInstanceConfig() {
  var o = new api.InstanceConfig();
  buildCounterInstanceConfig++;
  if (buildCounterInstanceConfig < 3) {
    o.displayName = "foo";
    o.name = "foo";
  }
  buildCounterInstanceConfig--;
  return o;
}

checkInstanceConfig(api.InstanceConfig o) {
  buildCounterInstanceConfig++;
  if (buildCounterInstanceConfig < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterInstanceConfig--;
}

buildUnnamed2064() {
  var o = new core.List<core.Object>();
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  return o;
}

checkUnnamed2064(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o[0]) as core.Map; unittest.expect(casted3, unittest.hasLength(3)); unittest.expect(casted3["list"], unittest.equals([1, 2, 3])); unittest.expect(casted3["bool"], unittest.equals(true)); unittest.expect(casted3["string"], unittest.equals('foo')); 
  var casted4 = (o[1]) as core.Map; unittest.expect(casted4, unittest.hasLength(3)); unittest.expect(casted4["list"], unittest.equals([1, 2, 3])); unittest.expect(casted4["bool"], unittest.equals(true)); unittest.expect(casted4["string"], unittest.equals('foo')); 
}

buildUnnamed2065() {
  var o = new core.List<core.Object>();
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  return o;
}

checkUnnamed2065(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o[0]) as core.Map; unittest.expect(casted5, unittest.hasLength(3)); unittest.expect(casted5["list"], unittest.equals([1, 2, 3])); unittest.expect(casted5["bool"], unittest.equals(true)); unittest.expect(casted5["string"], unittest.equals('foo')); 
  var casted6 = (o[1]) as core.Map; unittest.expect(casted6, unittest.hasLength(3)); unittest.expect(casted6["list"], unittest.equals([1, 2, 3])); unittest.expect(casted6["bool"], unittest.equals(true)); unittest.expect(casted6["string"], unittest.equals('foo')); 
}

buildUnnamed2066() {
  var o = new core.List<core.Object>();
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  return o;
}

checkUnnamed2066(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o[0]) as core.Map; unittest.expect(casted7, unittest.hasLength(3)); unittest.expect(casted7["list"], unittest.equals([1, 2, 3])); unittest.expect(casted7["bool"], unittest.equals(true)); unittest.expect(casted7["string"], unittest.equals('foo')); 
  var casted8 = (o[1]) as core.Map; unittest.expect(casted8, unittest.hasLength(3)); unittest.expect(casted8["list"], unittest.equals([1, 2, 3])); unittest.expect(casted8["bool"], unittest.equals(true)); unittest.expect(casted8["string"], unittest.equals('foo')); 
}

buildUnnamed2067() {
  var o = new core.List<core.Object>();
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  return o;
}

checkUnnamed2067(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o[0]) as core.Map; unittest.expect(casted9, unittest.hasLength(3)); unittest.expect(casted9["list"], unittest.equals([1, 2, 3])); unittest.expect(casted9["bool"], unittest.equals(true)); unittest.expect(casted9["string"], unittest.equals('foo')); 
  var casted10 = (o[1]) as core.Map; unittest.expect(casted10, unittest.hasLength(3)); unittest.expect(casted10["list"], unittest.equals([1, 2, 3])); unittest.expect(casted10["bool"], unittest.equals(true)); unittest.expect(casted10["string"], unittest.equals('foo')); 
}

core.int buildCounterKeyRange = 0;
buildKeyRange() {
  var o = new api.KeyRange();
  buildCounterKeyRange++;
  if (buildCounterKeyRange < 3) {
    o.endClosed = buildUnnamed2064();
    o.endOpen = buildUnnamed2065();
    o.startClosed = buildUnnamed2066();
    o.startOpen = buildUnnamed2067();
  }
  buildCounterKeyRange--;
  return o;
}

checkKeyRange(api.KeyRange o) {
  buildCounterKeyRange++;
  if (buildCounterKeyRange < 3) {
    checkUnnamed2064(o.endClosed);
    checkUnnamed2065(o.endOpen);
    checkUnnamed2066(o.startClosed);
    checkUnnamed2067(o.startOpen);
  }
  buildCounterKeyRange--;
}

buildUnnamed2068() {
  var o = new core.List<core.Object>();
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  return o;
}

checkUnnamed2068(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o[0]) as core.Map; unittest.expect(casted11, unittest.hasLength(3)); unittest.expect(casted11["list"], unittest.equals([1, 2, 3])); unittest.expect(casted11["bool"], unittest.equals(true)); unittest.expect(casted11["string"], unittest.equals('foo')); 
  var casted12 = (o[1]) as core.Map; unittest.expect(casted12, unittest.hasLength(3)); unittest.expect(casted12["list"], unittest.equals([1, 2, 3])); unittest.expect(casted12["bool"], unittest.equals(true)); unittest.expect(casted12["string"], unittest.equals('foo')); 
}

buildUnnamed2069() {
  var o = new core.List<core.List<core.Object>>();
  o.add(buildUnnamed2068());
  o.add(buildUnnamed2068());
  return o;
}

checkUnnamed2069(core.List<core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2068(o[0]);
  checkUnnamed2068(o[1]);
}

buildUnnamed2070() {
  var o = new core.List<api.KeyRange>();
  o.add(buildKeyRange());
  o.add(buildKeyRange());
  return o;
}

checkUnnamed2070(core.List<api.KeyRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyRange(o[0]);
  checkKeyRange(o[1]);
}

core.int buildCounterKeySet = 0;
buildKeySet() {
  var o = new api.KeySet();
  buildCounterKeySet++;
  if (buildCounterKeySet < 3) {
    o.all = true;
    o.keys = buildUnnamed2069();
    o.ranges = buildUnnamed2070();
  }
  buildCounterKeySet--;
  return o;
}

checkKeySet(api.KeySet o) {
  buildCounterKeySet++;
  if (buildCounterKeySet < 3) {
    unittest.expect(o.all, unittest.isTrue);
    checkUnnamed2069(o.keys);
    checkUnnamed2070(o.ranges);
  }
  buildCounterKeySet--;
}

buildUnnamed2071() {
  var o = new core.List<api.Database>();
  o.add(buildDatabase());
  o.add(buildDatabase());
  return o;
}

checkUnnamed2071(core.List<api.Database> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabase(o[0]);
  checkDatabase(o[1]);
}

core.int buildCounterListDatabasesResponse = 0;
buildListDatabasesResponse() {
  var o = new api.ListDatabasesResponse();
  buildCounterListDatabasesResponse++;
  if (buildCounterListDatabasesResponse < 3) {
    o.databases = buildUnnamed2071();
    o.nextPageToken = "foo";
  }
  buildCounterListDatabasesResponse--;
  return o;
}

checkListDatabasesResponse(api.ListDatabasesResponse o) {
  buildCounterListDatabasesResponse++;
  if (buildCounterListDatabasesResponse < 3) {
    checkUnnamed2071(o.databases);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDatabasesResponse--;
}

buildUnnamed2072() {
  var o = new core.List<api.InstanceConfig>();
  o.add(buildInstanceConfig());
  o.add(buildInstanceConfig());
  return o;
}

checkUnnamed2072(core.List<api.InstanceConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceConfig(o[0]);
  checkInstanceConfig(o[1]);
}

core.int buildCounterListInstanceConfigsResponse = 0;
buildListInstanceConfigsResponse() {
  var o = new api.ListInstanceConfigsResponse();
  buildCounterListInstanceConfigsResponse++;
  if (buildCounterListInstanceConfigsResponse < 3) {
    o.instanceConfigs = buildUnnamed2072();
    o.nextPageToken = "foo";
  }
  buildCounterListInstanceConfigsResponse--;
  return o;
}

checkListInstanceConfigsResponse(api.ListInstanceConfigsResponse o) {
  buildCounterListInstanceConfigsResponse++;
  if (buildCounterListInstanceConfigsResponse < 3) {
    checkUnnamed2072(o.instanceConfigs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListInstanceConfigsResponse--;
}

buildUnnamed2073() {
  var o = new core.List<api.Instance>();
  o.add(buildInstance());
  o.add(buildInstance());
  return o;
}

checkUnnamed2073(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
}

core.int buildCounterListInstancesResponse = 0;
buildListInstancesResponse() {
  var o = new api.ListInstancesResponse();
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    o.instances = buildUnnamed2073();
    o.nextPageToken = "foo";
  }
  buildCounterListInstancesResponse--;
  return o;
}

checkListInstancesResponse(api.ListInstancesResponse o) {
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    checkUnnamed2073(o.instances);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListInstancesResponse--;
}

buildUnnamed2074() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed2074(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
buildListOperationsResponse() {
  var o = new api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed2074();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2074(o.operations);
  }
  buildCounterListOperationsResponse--;
}

core.int buildCounterLogConfig = 0;
buildLogConfig() {
  var o = new api.LogConfig();
  buildCounterLogConfig++;
  if (buildCounterLogConfig < 3) {
    o.cloudAudit = buildCloudAuditOptions();
    o.counter = buildCounterOptions();
    o.dataAccess = buildDataAccessOptions();
  }
  buildCounterLogConfig--;
  return o;
}

checkLogConfig(api.LogConfig o) {
  buildCounterLogConfig++;
  if (buildCounterLogConfig < 3) {
    checkCloudAuditOptions(o.cloudAudit);
    checkCounterOptions(o.counter);
    checkDataAccessOptions(o.dataAccess);
  }
  buildCounterLogConfig--;
}

core.int buildCounterMutation = 0;
buildMutation() {
  var o = new api.Mutation();
  buildCounterMutation++;
  if (buildCounterMutation < 3) {
    o.delete = buildDelete();
    o.insert = buildWrite();
    o.insertOrUpdate = buildWrite();
    o.replace = buildWrite();
    o.update = buildWrite();
  }
  buildCounterMutation--;
  return o;
}

checkMutation(api.Mutation o) {
  buildCounterMutation++;
  if (buildCounterMutation < 3) {
    checkDelete(o.delete);
    checkWrite(o.insert);
    checkWrite(o.insertOrUpdate);
    checkWrite(o.replace);
    checkWrite(o.update);
  }
  buildCounterMutation--;
}

buildUnnamed2075() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed2075(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o["x"]) as core.Map; unittest.expect(casted13, unittest.hasLength(3)); unittest.expect(casted13["list"], unittest.equals([1, 2, 3])); unittest.expect(casted13["bool"], unittest.equals(true)); unittest.expect(casted13["string"], unittest.equals('foo')); 
  var casted14 = (o["y"]) as core.Map; unittest.expect(casted14, unittest.hasLength(3)); unittest.expect(casted14["list"], unittest.equals([1, 2, 3])); unittest.expect(casted14["bool"], unittest.equals(true)); unittest.expect(casted14["string"], unittest.equals('foo')); 
}

buildUnnamed2076() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed2076(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted15 = (o["x"]) as core.Map; unittest.expect(casted15, unittest.hasLength(3)); unittest.expect(casted15["list"], unittest.equals([1, 2, 3])); unittest.expect(casted15["bool"], unittest.equals(true)); unittest.expect(casted15["string"], unittest.equals('foo')); 
  var casted16 = (o["y"]) as core.Map; unittest.expect(casted16, unittest.hasLength(3)); unittest.expect(casted16["list"], unittest.equals([1, 2, 3])); unittest.expect(casted16["bool"], unittest.equals(true)); unittest.expect(casted16["string"], unittest.equals('foo')); 
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed2075();
    o.name = "foo";
    o.response = buildUnnamed2076();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed2075(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2076(o.response);
  }
  buildCounterOperation--;
}

buildUnnamed2077() {
  var o = new core.List<core.Object>();
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  return o;
}

checkUnnamed2077(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted17 = (o[0]) as core.Map; unittest.expect(casted17, unittest.hasLength(3)); unittest.expect(casted17["list"], unittest.equals([1, 2, 3])); unittest.expect(casted17["bool"], unittest.equals(true)); unittest.expect(casted17["string"], unittest.equals('foo')); 
  var casted18 = (o[1]) as core.Map; unittest.expect(casted18, unittest.hasLength(3)); unittest.expect(casted18["list"], unittest.equals([1, 2, 3])); unittest.expect(casted18["bool"], unittest.equals(true)); unittest.expect(casted18["string"], unittest.equals('foo')); 
}

core.int buildCounterPartialResultSet = 0;
buildPartialResultSet() {
  var o = new api.PartialResultSet();
  buildCounterPartialResultSet++;
  if (buildCounterPartialResultSet < 3) {
    o.chunkedValue = true;
    o.metadata = buildResultSetMetadata();
    o.resumeToken = "foo";
    o.stats = buildResultSetStats();
    o.values = buildUnnamed2077();
  }
  buildCounterPartialResultSet--;
  return o;
}

checkPartialResultSet(api.PartialResultSet o) {
  buildCounterPartialResultSet++;
  if (buildCounterPartialResultSet < 3) {
    unittest.expect(o.chunkedValue, unittest.isTrue);
    checkResultSetMetadata(o.metadata);
    unittest.expect(o.resumeToken, unittest.equals('foo'));
    checkResultSetStats(o.stats);
    checkUnnamed2077(o.values);
  }
  buildCounterPartialResultSet--;
}

buildUnnamed2078() {
  var o = new core.List<api.ChildLink>();
  o.add(buildChildLink());
  o.add(buildChildLink());
  return o;
}

checkUnnamed2078(core.List<api.ChildLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChildLink(o[0]);
  checkChildLink(o[1]);
}

buildUnnamed2079() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed2079(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted19 = (o["x"]) as core.Map; unittest.expect(casted19, unittest.hasLength(3)); unittest.expect(casted19["list"], unittest.equals([1, 2, 3])); unittest.expect(casted19["bool"], unittest.equals(true)); unittest.expect(casted19["string"], unittest.equals('foo')); 
  var casted20 = (o["y"]) as core.Map; unittest.expect(casted20, unittest.hasLength(3)); unittest.expect(casted20["list"], unittest.equals([1, 2, 3])); unittest.expect(casted20["bool"], unittest.equals(true)); unittest.expect(casted20["string"], unittest.equals('foo')); 
}

buildUnnamed2080() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed2080(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted21 = (o["x"]) as core.Map; unittest.expect(casted21, unittest.hasLength(3)); unittest.expect(casted21["list"], unittest.equals([1, 2, 3])); unittest.expect(casted21["bool"], unittest.equals(true)); unittest.expect(casted21["string"], unittest.equals('foo')); 
  var casted22 = (o["y"]) as core.Map; unittest.expect(casted22, unittest.hasLength(3)); unittest.expect(casted22["list"], unittest.equals([1, 2, 3])); unittest.expect(casted22["bool"], unittest.equals(true)); unittest.expect(casted22["string"], unittest.equals('foo')); 
}

core.int buildCounterPlanNode = 0;
buildPlanNode() {
  var o = new api.PlanNode();
  buildCounterPlanNode++;
  if (buildCounterPlanNode < 3) {
    o.childLinks = buildUnnamed2078();
    o.displayName = "foo";
    o.executionStats = buildUnnamed2079();
    o.index = 42;
    o.kind = "foo";
    o.metadata = buildUnnamed2080();
    o.shortRepresentation = buildShortRepresentation();
  }
  buildCounterPlanNode--;
  return o;
}

checkPlanNode(api.PlanNode o) {
  buildCounterPlanNode++;
  if (buildCounterPlanNode < 3) {
    checkUnnamed2078(o.childLinks);
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed2079(o.executionStats);
    unittest.expect(o.index, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2080(o.metadata);
    checkShortRepresentation(o.shortRepresentation);
  }
  buildCounterPlanNode--;
}

buildUnnamed2081() {
  var o = new core.List<api.AuditConfig>();
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

checkUnnamed2081(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

buildUnnamed2082() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed2082(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

buildUnnamed2083() {
  var o = new core.List<api.Rule>();
  o.add(buildRule());
  o.add(buildRule());
  return o;
}

checkUnnamed2083(core.List<api.Rule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRule(o[0]);
  checkRule(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed2081();
    o.bindings = buildUnnamed2082();
    o.etag = "foo";
    o.iamOwned = true;
    o.rules = buildUnnamed2083();
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed2081(o.auditConfigs);
    checkUnnamed2082(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.iamOwned, unittest.isTrue);
    checkUnnamed2083(o.rules);
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

buildUnnamed2084() {
  var o = new core.List<api.PlanNode>();
  o.add(buildPlanNode());
  o.add(buildPlanNode());
  return o;
}

checkUnnamed2084(core.List<api.PlanNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlanNode(o[0]);
  checkPlanNode(o[1]);
}

core.int buildCounterQueryPlan = 0;
buildQueryPlan() {
  var o = new api.QueryPlan();
  buildCounterQueryPlan++;
  if (buildCounterQueryPlan < 3) {
    o.planNodes = buildUnnamed2084();
  }
  buildCounterQueryPlan--;
  return o;
}

checkQueryPlan(api.QueryPlan o) {
  buildCounterQueryPlan++;
  if (buildCounterQueryPlan < 3) {
    checkUnnamed2084(o.planNodes);
  }
  buildCounterQueryPlan--;
}

core.int buildCounterReadOnly = 0;
buildReadOnly() {
  var o = new api.ReadOnly();
  buildCounterReadOnly++;
  if (buildCounterReadOnly < 3) {
    o.exactStaleness = "foo";
    o.maxStaleness = "foo";
    o.minReadTimestamp = "foo";
    o.readTimestamp = "foo";
    o.returnReadTimestamp = true;
    o.strong = true;
  }
  buildCounterReadOnly--;
  return o;
}

checkReadOnly(api.ReadOnly o) {
  buildCounterReadOnly++;
  if (buildCounterReadOnly < 3) {
    unittest.expect(o.exactStaleness, unittest.equals('foo'));
    unittest.expect(o.maxStaleness, unittest.equals('foo'));
    unittest.expect(o.minReadTimestamp, unittest.equals('foo'));
    unittest.expect(o.readTimestamp, unittest.equals('foo'));
    unittest.expect(o.returnReadTimestamp, unittest.isTrue);
    unittest.expect(o.strong, unittest.isTrue);
  }
  buildCounterReadOnly--;
}

buildUnnamed2085() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2085(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReadRequest = 0;
buildReadRequest() {
  var o = new api.ReadRequest();
  buildCounterReadRequest++;
  if (buildCounterReadRequest < 3) {
    o.columns = buildUnnamed2085();
    o.index = "foo";
    o.keySet = buildKeySet();
    o.limit = "foo";
    o.resumeToken = "foo";
    o.table = "foo";
    o.transaction = buildTransactionSelector();
  }
  buildCounterReadRequest--;
  return o;
}

checkReadRequest(api.ReadRequest o) {
  buildCounterReadRequest++;
  if (buildCounterReadRequest < 3) {
    checkUnnamed2085(o.columns);
    unittest.expect(o.index, unittest.equals('foo'));
    checkKeySet(o.keySet);
    unittest.expect(o.limit, unittest.equals('foo'));
    unittest.expect(o.resumeToken, unittest.equals('foo'));
    unittest.expect(o.table, unittest.equals('foo'));
    checkTransactionSelector(o.transaction);
  }
  buildCounterReadRequest--;
}

core.int buildCounterReadWrite = 0;
buildReadWrite() {
  var o = new api.ReadWrite();
  buildCounterReadWrite++;
  if (buildCounterReadWrite < 3) {
  }
  buildCounterReadWrite--;
  return o;
}

checkReadWrite(api.ReadWrite o) {
  buildCounterReadWrite++;
  if (buildCounterReadWrite < 3) {
  }
  buildCounterReadWrite--;
}

buildUnnamed2086() {
  var o = new core.List<core.Object>();
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  return o;
}

checkUnnamed2086(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted23 = (o[0]) as core.Map; unittest.expect(casted23, unittest.hasLength(3)); unittest.expect(casted23["list"], unittest.equals([1, 2, 3])); unittest.expect(casted23["bool"], unittest.equals(true)); unittest.expect(casted23["string"], unittest.equals('foo')); 
  var casted24 = (o[1]) as core.Map; unittest.expect(casted24, unittest.hasLength(3)); unittest.expect(casted24["list"], unittest.equals([1, 2, 3])); unittest.expect(casted24["bool"], unittest.equals(true)); unittest.expect(casted24["string"], unittest.equals('foo')); 
}

buildUnnamed2087() {
  var o = new core.List<core.List<core.Object>>();
  o.add(buildUnnamed2086());
  o.add(buildUnnamed2086());
  return o;
}

checkUnnamed2087(core.List<core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2086(o[0]);
  checkUnnamed2086(o[1]);
}

core.int buildCounterResultSet = 0;
buildResultSet() {
  var o = new api.ResultSet();
  buildCounterResultSet++;
  if (buildCounterResultSet < 3) {
    o.metadata = buildResultSetMetadata();
    o.rows = buildUnnamed2087();
    o.stats = buildResultSetStats();
  }
  buildCounterResultSet--;
  return o;
}

checkResultSet(api.ResultSet o) {
  buildCounterResultSet++;
  if (buildCounterResultSet < 3) {
    checkResultSetMetadata(o.metadata);
    checkUnnamed2087(o.rows);
    checkResultSetStats(o.stats);
  }
  buildCounterResultSet--;
}

core.int buildCounterResultSetMetadata = 0;
buildResultSetMetadata() {
  var o = new api.ResultSetMetadata();
  buildCounterResultSetMetadata++;
  if (buildCounterResultSetMetadata < 3) {
    o.rowType = buildStructType();
    o.transaction = buildTransaction();
  }
  buildCounterResultSetMetadata--;
  return o;
}

checkResultSetMetadata(api.ResultSetMetadata o) {
  buildCounterResultSetMetadata++;
  if (buildCounterResultSetMetadata < 3) {
    checkStructType(o.rowType);
    checkTransaction(o.transaction);
  }
  buildCounterResultSetMetadata--;
}

buildUnnamed2088() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed2088(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted25 = (o["x"]) as core.Map; unittest.expect(casted25, unittest.hasLength(3)); unittest.expect(casted25["list"], unittest.equals([1, 2, 3])); unittest.expect(casted25["bool"], unittest.equals(true)); unittest.expect(casted25["string"], unittest.equals('foo')); 
  var casted26 = (o["y"]) as core.Map; unittest.expect(casted26, unittest.hasLength(3)); unittest.expect(casted26["list"], unittest.equals([1, 2, 3])); unittest.expect(casted26["bool"], unittest.equals(true)); unittest.expect(casted26["string"], unittest.equals('foo')); 
}

core.int buildCounterResultSetStats = 0;
buildResultSetStats() {
  var o = new api.ResultSetStats();
  buildCounterResultSetStats++;
  if (buildCounterResultSetStats < 3) {
    o.queryPlan = buildQueryPlan();
    o.queryStats = buildUnnamed2088();
  }
  buildCounterResultSetStats--;
  return o;
}

checkResultSetStats(api.ResultSetStats o) {
  buildCounterResultSetStats++;
  if (buildCounterResultSetStats < 3) {
    checkQueryPlan(o.queryPlan);
    checkUnnamed2088(o.queryStats);
  }
  buildCounterResultSetStats--;
}

core.int buildCounterRollbackRequest = 0;
buildRollbackRequest() {
  var o = new api.RollbackRequest();
  buildCounterRollbackRequest++;
  if (buildCounterRollbackRequest < 3) {
    o.transactionId = "foo";
  }
  buildCounterRollbackRequest--;
  return o;
}

checkRollbackRequest(api.RollbackRequest o) {
  buildCounterRollbackRequest++;
  if (buildCounterRollbackRequest < 3) {
    unittest.expect(o.transactionId, unittest.equals('foo'));
  }
  buildCounterRollbackRequest--;
}

buildUnnamed2089() {
  var o = new core.List<api.Condition>();
  o.add(buildCondition());
  o.add(buildCondition());
  return o;
}

checkUnnamed2089(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0]);
  checkCondition(o[1]);
}

buildUnnamed2090() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2090(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2091() {
  var o = new core.List<api.LogConfig>();
  o.add(buildLogConfig());
  o.add(buildLogConfig());
  return o;
}

checkUnnamed2091(core.List<api.LogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogConfig(o[0]);
  checkLogConfig(o[1]);
}

buildUnnamed2092() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2092(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2093() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2093(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRule = 0;
buildRule() {
  var o = new api.Rule();
  buildCounterRule++;
  if (buildCounterRule < 3) {
    o.action = "foo";
    o.conditions = buildUnnamed2089();
    o.description = "foo";
    o.in_ = buildUnnamed2090();
    o.logConfig = buildUnnamed2091();
    o.notIn = buildUnnamed2092();
    o.permissions = buildUnnamed2093();
  }
  buildCounterRule--;
  return o;
}

checkRule(api.Rule o) {
  buildCounterRule++;
  if (buildCounterRule < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUnnamed2089(o.conditions);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed2090(o.in_);
    checkUnnamed2091(o.logConfig);
    checkUnnamed2092(o.notIn);
    checkUnnamed2093(o.permissions);
  }
  buildCounterRule--;
}

core.int buildCounterSession = 0;
buildSession() {
  var o = new api.Session();
  buildCounterSession++;
  if (buildCounterSession < 3) {
    o.name = "foo";
  }
  buildCounterSession--;
  return o;
}

checkSession(api.Session o) {
  buildCounterSession++;
  if (buildCounterSession < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterSession--;
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

buildUnnamed2094() {
  var o = new core.Map<core.String, core.int>();
  o["x"] = 42;
  o["y"] = 42;
  return o;
}

checkUnnamed2094(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals(42));
  unittest.expect(o["y"], unittest.equals(42));
}

core.int buildCounterShortRepresentation = 0;
buildShortRepresentation() {
  var o = new api.ShortRepresentation();
  buildCounterShortRepresentation++;
  if (buildCounterShortRepresentation < 3) {
    o.description = "foo";
    o.subqueries = buildUnnamed2094();
  }
  buildCounterShortRepresentation--;
  return o;
}

checkShortRepresentation(api.ShortRepresentation o) {
  buildCounterShortRepresentation++;
  if (buildCounterShortRepresentation < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed2094(o.subqueries);
  }
  buildCounterShortRepresentation--;
}

buildUnnamed2095() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed2095(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted27 = (o["x"]) as core.Map; unittest.expect(casted27, unittest.hasLength(3)); unittest.expect(casted27["list"], unittest.equals([1, 2, 3])); unittest.expect(casted27["bool"], unittest.equals(true)); unittest.expect(casted27["string"], unittest.equals('foo')); 
  var casted28 = (o["y"]) as core.Map; unittest.expect(casted28, unittest.hasLength(3)); unittest.expect(casted28["list"], unittest.equals([1, 2, 3])); unittest.expect(casted28["bool"], unittest.equals(true)); unittest.expect(casted28["string"], unittest.equals('foo')); 
}

buildUnnamed2096() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed2095());
  o.add(buildUnnamed2095());
  return o;
}

checkUnnamed2096(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2095(o[0]);
  checkUnnamed2095(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2096();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2096(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed2097() {
  var o = new core.List<api.Field>();
  o.add(buildField());
  o.add(buildField());
  return o;
}

checkUnnamed2097(core.List<api.Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkField(o[0]);
  checkField(o[1]);
}

core.int buildCounterStructType = 0;
buildStructType() {
  var o = new api.StructType();
  buildCounterStructType++;
  if (buildCounterStructType < 3) {
    o.fields = buildUnnamed2097();
  }
  buildCounterStructType--;
  return o;
}

checkStructType(api.StructType o) {
  buildCounterStructType++;
  if (buildCounterStructType < 3) {
    checkUnnamed2097(o.fields);
  }
  buildCounterStructType--;
}

buildUnnamed2098() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2098(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed2098();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed2098(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed2099() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2099(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed2099();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed2099(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTransaction = 0;
buildTransaction() {
  var o = new api.Transaction();
  buildCounterTransaction++;
  if (buildCounterTransaction < 3) {
    o.id = "foo";
    o.readTimestamp = "foo";
  }
  buildCounterTransaction--;
  return o;
}

checkTransaction(api.Transaction o) {
  buildCounterTransaction++;
  if (buildCounterTransaction < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.readTimestamp, unittest.equals('foo'));
  }
  buildCounterTransaction--;
}

core.int buildCounterTransactionOptions = 0;
buildTransactionOptions() {
  var o = new api.TransactionOptions();
  buildCounterTransactionOptions++;
  if (buildCounterTransactionOptions < 3) {
    o.readOnly = buildReadOnly();
    o.readWrite = buildReadWrite();
  }
  buildCounterTransactionOptions--;
  return o;
}

checkTransactionOptions(api.TransactionOptions o) {
  buildCounterTransactionOptions++;
  if (buildCounterTransactionOptions < 3) {
    checkReadOnly(o.readOnly);
    checkReadWrite(o.readWrite);
  }
  buildCounterTransactionOptions--;
}

core.int buildCounterTransactionSelector = 0;
buildTransactionSelector() {
  var o = new api.TransactionSelector();
  buildCounterTransactionSelector++;
  if (buildCounterTransactionSelector < 3) {
    o.begin = buildTransactionOptions();
    o.id = "foo";
    o.singleUse = buildTransactionOptions();
  }
  buildCounterTransactionSelector--;
  return o;
}

checkTransactionSelector(api.TransactionSelector o) {
  buildCounterTransactionSelector++;
  if (buildCounterTransactionSelector < 3) {
    checkTransactionOptions(o.begin);
    unittest.expect(o.id, unittest.equals('foo'));
    checkTransactionOptions(o.singleUse);
  }
  buildCounterTransactionSelector--;
}

core.int buildCounterType = 0;
buildType() {
  var o = new api.Type();
  buildCounterType++;
  if (buildCounterType < 3) {
    o.arrayElementType = buildType();
    o.code = "foo";
    o.structType = buildStructType();
  }
  buildCounterType--;
  return o;
}

checkType(api.Type o) {
  buildCounterType++;
  if (buildCounterType < 3) {
    checkType(o.arrayElementType);
    unittest.expect(o.code, unittest.equals('foo'));
    checkStructType(o.structType);
  }
  buildCounterType--;
}

buildUnnamed2100() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2100(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2101() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2101(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUpdateDatabaseDdlMetadata = 0;
buildUpdateDatabaseDdlMetadata() {
  var o = new api.UpdateDatabaseDdlMetadata();
  buildCounterUpdateDatabaseDdlMetadata++;
  if (buildCounterUpdateDatabaseDdlMetadata < 3) {
    o.commitTimestamps = buildUnnamed2100();
    o.database = "foo";
    o.statements = buildUnnamed2101();
  }
  buildCounterUpdateDatabaseDdlMetadata--;
  return o;
}

checkUpdateDatabaseDdlMetadata(api.UpdateDatabaseDdlMetadata o) {
  buildCounterUpdateDatabaseDdlMetadata++;
  if (buildCounterUpdateDatabaseDdlMetadata < 3) {
    checkUnnamed2100(o.commitTimestamps);
    unittest.expect(o.database, unittest.equals('foo'));
    checkUnnamed2101(o.statements);
  }
  buildCounterUpdateDatabaseDdlMetadata--;
}

buildUnnamed2102() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2102(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUpdateDatabaseDdlRequest = 0;
buildUpdateDatabaseDdlRequest() {
  var o = new api.UpdateDatabaseDdlRequest();
  buildCounterUpdateDatabaseDdlRequest++;
  if (buildCounterUpdateDatabaseDdlRequest < 3) {
    o.operationId = "foo";
    o.statements = buildUnnamed2102();
  }
  buildCounterUpdateDatabaseDdlRequest--;
  return o;
}

checkUpdateDatabaseDdlRequest(api.UpdateDatabaseDdlRequest o) {
  buildCounterUpdateDatabaseDdlRequest++;
  if (buildCounterUpdateDatabaseDdlRequest < 3) {
    unittest.expect(o.operationId, unittest.equals('foo'));
    checkUnnamed2102(o.statements);
  }
  buildCounterUpdateDatabaseDdlRequest--;
}

core.int buildCounterUpdateInstanceMetadata = 0;
buildUpdateInstanceMetadata() {
  var o = new api.UpdateInstanceMetadata();
  buildCounterUpdateInstanceMetadata++;
  if (buildCounterUpdateInstanceMetadata < 3) {
    o.cancelTime = "foo";
    o.endTime = "foo";
    o.instance = buildInstance();
    o.startTime = "foo";
  }
  buildCounterUpdateInstanceMetadata--;
  return o;
}

checkUpdateInstanceMetadata(api.UpdateInstanceMetadata o) {
  buildCounterUpdateInstanceMetadata++;
  if (buildCounterUpdateInstanceMetadata < 3) {
    unittest.expect(o.cancelTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkInstance(o.instance);
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterUpdateInstanceMetadata--;
}

core.int buildCounterUpdateInstanceRequest = 0;
buildUpdateInstanceRequest() {
  var o = new api.UpdateInstanceRequest();
  buildCounterUpdateInstanceRequest++;
  if (buildCounterUpdateInstanceRequest < 3) {
    o.fieldMask = "foo";
    o.instance = buildInstance();
  }
  buildCounterUpdateInstanceRequest--;
  return o;
}

checkUpdateInstanceRequest(api.UpdateInstanceRequest o) {
  buildCounterUpdateInstanceRequest++;
  if (buildCounterUpdateInstanceRequest < 3) {
    unittest.expect(o.fieldMask, unittest.equals('foo'));
    checkInstance(o.instance);
  }
  buildCounterUpdateInstanceRequest--;
}

buildUnnamed2103() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2103(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2104() {
  var o = new core.List<core.Object>();
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  o.add({'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'});
  return o;
}

checkUnnamed2104(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted29 = (o[0]) as core.Map; unittest.expect(casted29, unittest.hasLength(3)); unittest.expect(casted29["list"], unittest.equals([1, 2, 3])); unittest.expect(casted29["bool"], unittest.equals(true)); unittest.expect(casted29["string"], unittest.equals('foo')); 
  var casted30 = (o[1]) as core.Map; unittest.expect(casted30, unittest.hasLength(3)); unittest.expect(casted30["list"], unittest.equals([1, 2, 3])); unittest.expect(casted30["bool"], unittest.equals(true)); unittest.expect(casted30["string"], unittest.equals('foo')); 
}

buildUnnamed2105() {
  var o = new core.List<core.List<core.Object>>();
  o.add(buildUnnamed2104());
  o.add(buildUnnamed2104());
  return o;
}

checkUnnamed2105(core.List<core.List<core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2104(o[0]);
  checkUnnamed2104(o[1]);
}

core.int buildCounterWrite = 0;
buildWrite() {
  var o = new api.Write();
  buildCounterWrite++;
  if (buildCounterWrite < 3) {
    o.columns = buildUnnamed2103();
    o.table = "foo";
    o.values = buildUnnamed2105();
  }
  buildCounterWrite--;
  return o;
}

checkWrite(api.Write o) {
  buildCounterWrite++;
  if (buildCounterWrite < 3) {
    checkUnnamed2103(o.columns);
    unittest.expect(o.table, unittest.equals('foo'));
    checkUnnamed2105(o.values);
  }
  buildCounterWrite--;
}


main() {
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


  unittest.group("obj-schema-BeginTransactionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBeginTransactionRequest();
      var od = new api.BeginTransactionRequest.fromJson(o.toJson());
      checkBeginTransactionRequest(od);
    });
  });


  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });


  unittest.group("obj-schema-ChildLink", () {
    unittest.test("to-json--from-json", () {
      var o = buildChildLink();
      var od = new api.ChildLink.fromJson(o.toJson());
      checkChildLink(od);
    });
  });


  unittest.group("obj-schema-CloudAuditOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildCloudAuditOptions();
      var od = new api.CloudAuditOptions.fromJson(o.toJson());
      checkCloudAuditOptions(od);
    });
  });


  unittest.group("obj-schema-CommitRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommitRequest();
      var od = new api.CommitRequest.fromJson(o.toJson());
      checkCommitRequest(od);
    });
  });


  unittest.group("obj-schema-CommitResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommitResponse();
      var od = new api.CommitResponse.fromJson(o.toJson());
      checkCommitResponse(od);
    });
  });


  unittest.group("obj-schema-Condition", () {
    unittest.test("to-json--from-json", () {
      var o = buildCondition();
      var od = new api.Condition.fromJson(o.toJson());
      checkCondition(od);
    });
  });


  unittest.group("obj-schema-CounterOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildCounterOptions();
      var od = new api.CounterOptions.fromJson(o.toJson());
      checkCounterOptions(od);
    });
  });


  unittest.group("obj-schema-CreateDatabaseMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateDatabaseMetadata();
      var od = new api.CreateDatabaseMetadata.fromJson(o.toJson());
      checkCreateDatabaseMetadata(od);
    });
  });


  unittest.group("obj-schema-CreateDatabaseRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateDatabaseRequest();
      var od = new api.CreateDatabaseRequest.fromJson(o.toJson());
      checkCreateDatabaseRequest(od);
    });
  });


  unittest.group("obj-schema-CreateInstanceMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateInstanceMetadata();
      var od = new api.CreateInstanceMetadata.fromJson(o.toJson());
      checkCreateInstanceMetadata(od);
    });
  });


  unittest.group("obj-schema-CreateInstanceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateInstanceRequest();
      var od = new api.CreateInstanceRequest.fromJson(o.toJson());
      checkCreateInstanceRequest(od);
    });
  });


  unittest.group("obj-schema-DataAccessOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataAccessOptions();
      var od = new api.DataAccessOptions.fromJson(o.toJson());
      checkDataAccessOptions(od);
    });
  });


  unittest.group("obj-schema-Database", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatabase();
      var od = new api.Database.fromJson(o.toJson());
      checkDatabase(od);
    });
  });


  unittest.group("obj-schema-Delete", () {
    unittest.test("to-json--from-json", () {
      var o = buildDelete();
      var od = new api.Delete.fromJson(o.toJson());
      checkDelete(od);
    });
  });


  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });


  unittest.group("obj-schema-ExecuteSqlRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildExecuteSqlRequest();
      var od = new api.ExecuteSqlRequest.fromJson(o.toJson());
      checkExecuteSqlRequest(od);
    });
  });


  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = new api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });


  unittest.group("obj-schema-Field", () {
    unittest.test("to-json--from-json", () {
      var o = buildField();
      var od = new api.Field.fromJson(o.toJson());
      checkField(od);
    });
  });


  unittest.group("obj-schema-GetDatabaseDdlResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetDatabaseDdlResponse();
      var od = new api.GetDatabaseDdlResponse.fromJson(o.toJson());
      checkGetDatabaseDdlResponse(od);
    });
  });


  unittest.group("obj-schema-GetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetIamPolicyRequest();
      var od = new api.GetIamPolicyRequest.fromJson(o.toJson());
      checkGetIamPolicyRequest(od);
    });
  });


  unittest.group("obj-schema-Instance", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstance();
      var od = new api.Instance.fromJson(o.toJson());
      checkInstance(od);
    });
  });


  unittest.group("obj-schema-InstanceConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceConfig();
      var od = new api.InstanceConfig.fromJson(o.toJson());
      checkInstanceConfig(od);
    });
  });


  unittest.group("obj-schema-KeyRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildKeyRange();
      var od = new api.KeyRange.fromJson(o.toJson());
      checkKeyRange(od);
    });
  });


  unittest.group("obj-schema-KeySet", () {
    unittest.test("to-json--from-json", () {
      var o = buildKeySet();
      var od = new api.KeySet.fromJson(o.toJson());
      checkKeySet(od);
    });
  });


  unittest.group("obj-schema-ListDatabasesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDatabasesResponse();
      var od = new api.ListDatabasesResponse.fromJson(o.toJson());
      checkListDatabasesResponse(od);
    });
  });


  unittest.group("obj-schema-ListInstanceConfigsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListInstanceConfigsResponse();
      var od = new api.ListInstanceConfigsResponse.fromJson(o.toJson());
      checkListInstanceConfigsResponse(od);
    });
  });


  unittest.group("obj-schema-ListInstancesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListInstancesResponse();
      var od = new api.ListInstancesResponse.fromJson(o.toJson());
      checkListInstancesResponse(od);
    });
  });


  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });


  unittest.group("obj-schema-LogConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogConfig();
      var od = new api.LogConfig.fromJson(o.toJson());
      checkLogConfig(od);
    });
  });


  unittest.group("obj-schema-Mutation", () {
    unittest.test("to-json--from-json", () {
      var o = buildMutation();
      var od = new api.Mutation.fromJson(o.toJson());
      checkMutation(od);
    });
  });


  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });


  unittest.group("obj-schema-PartialResultSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildPartialResultSet();
      var od = new api.PartialResultSet.fromJson(o.toJson());
      checkPartialResultSet(od);
    });
  });


  unittest.group("obj-schema-PlanNode", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlanNode();
      var od = new api.PlanNode.fromJson(o.toJson());
      checkPlanNode(od);
    });
  });


  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });


  unittest.group("obj-schema-QueryPlan", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryPlan();
      var od = new api.QueryPlan.fromJson(o.toJson());
      checkQueryPlan(od);
    });
  });


  unittest.group("obj-schema-ReadOnly", () {
    unittest.test("to-json--from-json", () {
      var o = buildReadOnly();
      var od = new api.ReadOnly.fromJson(o.toJson());
      checkReadOnly(od);
    });
  });


  unittest.group("obj-schema-ReadRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReadRequest();
      var od = new api.ReadRequest.fromJson(o.toJson());
      checkReadRequest(od);
    });
  });


  unittest.group("obj-schema-ReadWrite", () {
    unittest.test("to-json--from-json", () {
      var o = buildReadWrite();
      var od = new api.ReadWrite.fromJson(o.toJson());
      checkReadWrite(od);
    });
  });


  unittest.group("obj-schema-ResultSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildResultSet();
      var od = new api.ResultSet.fromJson(o.toJson());
      checkResultSet(od);
    });
  });


  unittest.group("obj-schema-ResultSetMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildResultSetMetadata();
      var od = new api.ResultSetMetadata.fromJson(o.toJson());
      checkResultSetMetadata(od);
    });
  });


  unittest.group("obj-schema-ResultSetStats", () {
    unittest.test("to-json--from-json", () {
      var o = buildResultSetStats();
      var od = new api.ResultSetStats.fromJson(o.toJson());
      checkResultSetStats(od);
    });
  });


  unittest.group("obj-schema-RollbackRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRollbackRequest();
      var od = new api.RollbackRequest.fromJson(o.toJson());
      checkRollbackRequest(od);
    });
  });


  unittest.group("obj-schema-Rule", () {
    unittest.test("to-json--from-json", () {
      var o = buildRule();
      var od = new api.Rule.fromJson(o.toJson());
      checkRule(od);
    });
  });


  unittest.group("obj-schema-Session", () {
    unittest.test("to-json--from-json", () {
      var o = buildSession();
      var od = new api.Session.fromJson(o.toJson());
      checkSession(od);
    });
  });


  unittest.group("obj-schema-SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetIamPolicyRequest();
      var od = new api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });


  unittest.group("obj-schema-ShortRepresentation", () {
    unittest.test("to-json--from-json", () {
      var o = buildShortRepresentation();
      var od = new api.ShortRepresentation.fromJson(o.toJson());
      checkShortRepresentation(od);
    });
  });


  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });


  unittest.group("obj-schema-StructType", () {
    unittest.test("to-json--from-json", () {
      var o = buildStructType();
      var od = new api.StructType.fromJson(o.toJson());
      checkStructType(od);
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


  unittest.group("obj-schema-Transaction", () {
    unittest.test("to-json--from-json", () {
      var o = buildTransaction();
      var od = new api.Transaction.fromJson(o.toJson());
      checkTransaction(od);
    });
  });


  unittest.group("obj-schema-TransactionOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildTransactionOptions();
      var od = new api.TransactionOptions.fromJson(o.toJson());
      checkTransactionOptions(od);
    });
  });


  unittest.group("obj-schema-TransactionSelector", () {
    unittest.test("to-json--from-json", () {
      var o = buildTransactionSelector();
      var od = new api.TransactionSelector.fromJson(o.toJson());
      checkTransactionSelector(od);
    });
  });


  unittest.group("obj-schema-Type", () {
    unittest.test("to-json--from-json", () {
      var o = buildType();
      var od = new api.Type.fromJson(o.toJson());
      checkType(od);
    });
  });


  unittest.group("obj-schema-UpdateDatabaseDdlMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateDatabaseDdlMetadata();
      var od = new api.UpdateDatabaseDdlMetadata.fromJson(o.toJson());
      checkUpdateDatabaseDdlMetadata(od);
    });
  });


  unittest.group("obj-schema-UpdateDatabaseDdlRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateDatabaseDdlRequest();
      var od = new api.UpdateDatabaseDdlRequest.fromJson(o.toJson());
      checkUpdateDatabaseDdlRequest(od);
    });
  });


  unittest.group("obj-schema-UpdateInstanceMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateInstanceMetadata();
      var od = new api.UpdateInstanceMetadata.fromJson(o.toJson());
      checkUpdateInstanceMetadata(od);
    });
  });


  unittest.group("obj-schema-UpdateInstanceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateInstanceRequest();
      var od = new api.UpdateInstanceRequest.fromJson(o.toJson());
      checkUpdateInstanceRequest(od);
    });
  });


  unittest.group("obj-schema-Write", () {
    unittest.test("to-json--from-json", () {
      var o = buildWrite();
      var od = new api.Write.fromJson(o.toJson());
      checkWrite(od);
    });
  });


  unittest.group("resource-ProjectsInstanceConfigsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsInstanceConfigsResourceApi res = new api.SpannerApi(mock).projects.instanceConfigs;
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInstanceConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name).then(unittest.expectAsync1(((api.InstanceConfig response) {
        checkInstanceConfig(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsInstanceConfigsResourceApi res = new api.SpannerApi(mock).projects.instanceConfigs;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListInstanceConfigsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_parent, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync1(((api.ListInstanceConfigsResponse response) {
        checkListInstanceConfigsResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsInstancesResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res = new api.SpannerApi(mock).projects.instances;
      var arg_request = buildCreateInstanceRequest();
      var arg_parent = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateInstanceRequest.fromJson(json);
        checkCreateInstanceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_parent).then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res = new api.SpannerApi(mock).projects.instances;
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_name).then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res = new api.SpannerApi(mock).projects.instances;
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInstance());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name).then(unittest.expectAsync1(((api.Instance response) {
        checkInstance(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res = new api.SpannerApi(mock).projects.instances;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getIamPolicy(arg_request, arg_resource).then(unittest.expectAsync1(((api.Policy response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res = new api.SpannerApi(mock).projects.instances;
      var arg_parent = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListInstancesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_parent, filter: arg_filter, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync1(((api.ListInstancesResponse response) {
        checkListInstancesResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res = new api.SpannerApi(mock).projects.instances;
      var arg_request = buildUpdateInstanceRequest();
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateInstanceRequest.fromJson(json);
        checkUpdateInstanceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_name).then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res = new api.SpannerApi(mock).projects.instances;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.setIamPolicy(arg_request, arg_resource).then(unittest.expectAsync1(((api.Policy response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res = new api.SpannerApi(mock).projects.instances;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.testIamPermissions(arg_request, arg_resource).then(unittest.expectAsync1(((api.TestIamPermissionsResponse response) {
        checkTestIamPermissionsResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsInstancesDatabasesResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesResourceApi res = new api.SpannerApi(mock).projects.instances.databases;
      var arg_request = buildCreateDatabaseRequest();
      var arg_parent = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateDatabaseRequest.fromJson(json);
        checkCreateDatabaseRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_parent).then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--dropDatabase", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesResourceApi res = new api.SpannerApi(mock).projects.instances.databases;
      var arg_database = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.dropDatabase(arg_database).then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesResourceApi res = new api.SpannerApi(mock).projects.instances.databases;
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDatabase());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name).then(unittest.expectAsync1(((api.Database response) {
        checkDatabase(response);
      })));
    });

    unittest.test("method--getDdl", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesResourceApi res = new api.SpannerApi(mock).projects.instances.databases;
      var arg_database = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGetDatabaseDdlResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getDdl(arg_database).then(unittest.expectAsync1(((api.GetDatabaseDdlResponse response) {
        checkGetDatabaseDdlResponse(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesResourceApi res = new api.SpannerApi(mock).projects.instances.databases;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getIamPolicy(arg_request, arg_resource).then(unittest.expectAsync1(((api.Policy response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesResourceApi res = new api.SpannerApi(mock).projects.instances.databases;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListDatabasesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_parent, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync1(((api.ListDatabasesResponse response) {
        checkListDatabasesResponse(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesResourceApi res = new api.SpannerApi(mock).projects.instances.databases;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.setIamPolicy(arg_request, arg_resource).then(unittest.expectAsync1(((api.Policy response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesResourceApi res = new api.SpannerApi(mock).projects.instances.databases;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.testIamPermissions(arg_request, arg_resource).then(unittest.expectAsync1(((api.TestIamPermissionsResponse response) {
        checkTestIamPermissionsResponse(response);
      })));
    });

    unittest.test("method--updateDdl", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesResourceApi res = new api.SpannerApi(mock).projects.instances.databases;
      var arg_request = buildUpdateDatabaseDdlRequest();
      var arg_database = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateDatabaseDdlRequest.fromJson(json);
        checkUpdateDatabaseDdlRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.updateDdl(arg_request, arg_database).then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

  });


  unittest.group("resource-ProjectsInstancesDatabasesOperationsResourceApi", () {
    unittest.test("method--cancel", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesOperationsResourceApi res = new api.SpannerApi(mock).projects.instances.databases.operations;
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.cancel(arg_name).then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesOperationsResourceApi res = new api.SpannerApi(mock).projects.instances.databases.operations;
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_name).then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesOperationsResourceApi res = new api.SpannerApi(mock).projects.instances.databases.operations;
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name).then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesOperationsResourceApi res = new api.SpannerApi(mock).projects.instances.databases.operations;
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_name, pageToken: arg_pageToken, pageSize: arg_pageSize, filter: arg_filter).then(unittest.expectAsync1(((api.ListOperationsResponse response) {
        checkListOperationsResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsInstancesDatabasesSessionsResourceApi", () {
    unittest.test("method--beginTransaction", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res = new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_request = buildBeginTransactionRequest();
      var arg_session = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BeginTransactionRequest.fromJson(json);
        checkBeginTransactionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTransaction());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.beginTransaction(arg_request, arg_session).then(unittest.expectAsync1(((api.Transaction response) {
        checkTransaction(response);
      })));
    });

    unittest.test("method--commit", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res = new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_request = buildCommitRequest();
      var arg_session = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CommitRequest.fromJson(json);
        checkCommitRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommitResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.commit(arg_request, arg_session).then(unittest.expectAsync1(((api.CommitResponse response) {
        checkCommitResponse(response);
      })));
    });

    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res = new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_database = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSession());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_database).then(unittest.expectAsync1(((api.Session response) {
        checkSession(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res = new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_name).then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--executeSql", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res = new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_request = buildExecuteSqlRequest();
      var arg_session = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ExecuteSqlRequest.fromJson(json);
        checkExecuteSqlRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildResultSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.executeSql(arg_request, arg_session).then(unittest.expectAsync1(((api.ResultSet response) {
        checkResultSet(response);
      })));
    });

    unittest.test("method--executeStreamingSql", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res = new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_request = buildExecuteSqlRequest();
      var arg_session = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ExecuteSqlRequest.fromJson(json);
        checkExecuteSqlRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPartialResultSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.executeStreamingSql(arg_request, arg_session).then(unittest.expectAsync1(((api.PartialResultSet response) {
        checkPartialResultSet(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res = new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSession());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name).then(unittest.expectAsync1(((api.Session response) {
        checkSession(response);
      })));
    });

    unittest.test("method--read", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res = new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_request = buildReadRequest();
      var arg_session = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReadRequest.fromJson(json);
        checkReadRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildResultSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.read(arg_request, arg_session).then(unittest.expectAsync1(((api.ResultSet response) {
        checkResultSet(response);
      })));
    });

    unittest.test("method--rollback", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res = new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_request = buildRollbackRequest();
      var arg_session = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RollbackRequest.fromJson(json);
        checkRollbackRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.rollback(arg_request, arg_session).then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--streamingRead", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesDatabasesSessionsResourceApi res = new api.SpannerApi(mock).projects.instances.databases.sessions;
      var arg_request = buildReadRequest();
      var arg_session = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReadRequest.fromJson(json);
        checkReadRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPartialResultSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.streamingRead(arg_request, arg_session).then(unittest.expectAsync1(((api.PartialResultSet response) {
        checkPartialResultSet(response);
      })));
    });

  });


  unittest.group("resource-ProjectsInstancesOperationsResourceApi", () {
    unittest.test("method--cancel", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesOperationsResourceApi res = new api.SpannerApi(mock).projects.instances.operations;
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.cancel(arg_name).then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesOperationsResourceApi res = new api.SpannerApi(mock).projects.instances.operations;
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_name).then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesOperationsResourceApi res = new api.SpannerApi(mock).projects.instances.operations;
      var arg_name = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name).then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsInstancesOperationsResourceApi res = new api.SpannerApi(mock).projects.instances.operations;
      var arg_name = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_name, filter: arg_filter, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync1(((api.ListOperationsResponse response) {
        checkListOperationsResponse(response);
      })));
    });

  });


}

