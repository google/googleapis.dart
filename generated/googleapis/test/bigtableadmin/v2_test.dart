library googleapis.bigtableadmin.v2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/bigtableadmin/v2.dart' as api;

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

core.int buildCounterAppProfile = 0;
buildAppProfile() {
  var o = new api.AppProfile();
  buildCounterAppProfile++;
  if (buildCounterAppProfile < 3) {
    o.description = "foo";
    o.etag = "foo";
    o.multiClusterRoutingUseAny = buildMultiClusterRoutingUseAny();
    o.name = "foo";
    o.singleClusterRouting = buildSingleClusterRouting();
  }
  buildCounterAppProfile--;
  return o;
}

checkAppProfile(api.AppProfile o) {
  buildCounterAppProfile++;
  if (buildCounterAppProfile < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkMultiClusterRoutingUseAny(o.multiClusterRoutingUseAny);
    unittest.expect(o.name, unittest.equals('foo'));
    checkSingleClusterRouting(o.singleClusterRouting);
  }
  buildCounterAppProfile--;
}

buildUnnamed300() {
  var o = new core.List<api.AuditLogConfig>();
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

checkUnnamed300(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
buildAuditConfig() {
  var o = new api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed300();
    o.service = "foo";
  }
  buildCounterAuditConfig--;
  return o;
}

checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed300(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

buildUnnamed301() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed301(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
buildAuditLogConfig() {
  var o = new api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed301();
    o.logType = "foo";
  }
  buildCounterAuditLogConfig--;
  return o;
}

checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed301(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

buildUnnamed302() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed302(core.List<core.String> o) {
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
    o.members = buildUnnamed302();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed302(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCheckConsistencyRequest = 0;
buildCheckConsistencyRequest() {
  var o = new api.CheckConsistencyRequest();
  buildCounterCheckConsistencyRequest++;
  if (buildCounterCheckConsistencyRequest < 3) {
    o.consistencyToken = "foo";
  }
  buildCounterCheckConsistencyRequest--;
  return o;
}

checkCheckConsistencyRequest(api.CheckConsistencyRequest o) {
  buildCounterCheckConsistencyRequest++;
  if (buildCounterCheckConsistencyRequest < 3) {
    unittest.expect(o.consistencyToken, unittest.equals('foo'));
  }
  buildCounterCheckConsistencyRequest--;
}

core.int buildCounterCheckConsistencyResponse = 0;
buildCheckConsistencyResponse() {
  var o = new api.CheckConsistencyResponse();
  buildCounterCheckConsistencyResponse++;
  if (buildCounterCheckConsistencyResponse < 3) {
    o.consistent = true;
  }
  buildCounterCheckConsistencyResponse--;
  return o;
}

checkCheckConsistencyResponse(api.CheckConsistencyResponse o) {
  buildCounterCheckConsistencyResponse++;
  if (buildCounterCheckConsistencyResponse < 3) {
    unittest.expect(o.consistent, unittest.isTrue);
  }
  buildCounterCheckConsistencyResponse--;
}

core.int buildCounterCluster = 0;
buildCluster() {
  var o = new api.Cluster();
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    o.defaultStorageType = "foo";
    o.location = "foo";
    o.name = "foo";
    o.serveNodes = 42;
    o.state = "foo";
  }
  buildCounterCluster--;
  return o;
}

checkCluster(api.Cluster o) {
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    unittest.expect(o.defaultStorageType, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.serveNodes, unittest.equals(42));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterCluster--;
}

core.int buildCounterClusterState = 0;
buildClusterState() {
  var o = new api.ClusterState();
  buildCounterClusterState++;
  if (buildCounterClusterState < 3) {
    o.replicationState = "foo";
  }
  buildCounterClusterState--;
  return o;
}

checkClusterState(api.ClusterState o) {
  buildCounterClusterState++;
  if (buildCounterClusterState < 3) {
    unittest.expect(o.replicationState, unittest.equals('foo'));
  }
  buildCounterClusterState--;
}

core.int buildCounterColumnFamily = 0;
buildColumnFamily() {
  var o = new api.ColumnFamily();
  buildCounterColumnFamily++;
  if (buildCounterColumnFamily < 3) {
    o.gcRule = buildGcRule();
  }
  buildCounterColumnFamily--;
  return o;
}

checkColumnFamily(api.ColumnFamily o) {
  buildCounterColumnFamily++;
  if (buildCounterColumnFamily < 3) {
    checkGcRule(o.gcRule);
  }
  buildCounterColumnFamily--;
}

buildUnnamed303() {
  var o = new core.Map<core.String, api.TableProgress>();
  o["x"] = buildTableProgress();
  o["y"] = buildTableProgress();
  return o;
}

checkUnnamed303(core.Map<core.String, api.TableProgress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableProgress(o["x"]);
  checkTableProgress(o["y"]);
}

core.int buildCounterCreateClusterMetadata = 0;
buildCreateClusterMetadata() {
  var o = new api.CreateClusterMetadata();
  buildCounterCreateClusterMetadata++;
  if (buildCounterCreateClusterMetadata < 3) {
    o.finishTime = "foo";
    o.originalRequest = buildCreateClusterRequest();
    o.requestTime = "foo";
    o.tables = buildUnnamed303();
  }
  buildCounterCreateClusterMetadata--;
  return o;
}

checkCreateClusterMetadata(api.CreateClusterMetadata o) {
  buildCounterCreateClusterMetadata++;
  if (buildCounterCreateClusterMetadata < 3) {
    unittest.expect(o.finishTime, unittest.equals('foo'));
    checkCreateClusterRequest(o.originalRequest);
    unittest.expect(o.requestTime, unittest.equals('foo'));
    checkUnnamed303(o.tables);
  }
  buildCounterCreateClusterMetadata--;
}

core.int buildCounterCreateClusterRequest = 0;
buildCreateClusterRequest() {
  var o = new api.CreateClusterRequest();
  buildCounterCreateClusterRequest++;
  if (buildCounterCreateClusterRequest < 3) {
    o.cluster = buildCluster();
    o.clusterId = "foo";
    o.parent = "foo";
  }
  buildCounterCreateClusterRequest--;
  return o;
}

checkCreateClusterRequest(api.CreateClusterRequest o) {
  buildCounterCreateClusterRequest++;
  if (buildCounterCreateClusterRequest < 3) {
    checkCluster(o.cluster);
    unittest.expect(o.clusterId, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
  }
  buildCounterCreateClusterRequest--;
}

core.int buildCounterCreateInstanceMetadata = 0;
buildCreateInstanceMetadata() {
  var o = new api.CreateInstanceMetadata();
  buildCounterCreateInstanceMetadata++;
  if (buildCounterCreateInstanceMetadata < 3) {
    o.finishTime = "foo";
    o.originalRequest = buildCreateInstanceRequest();
    o.requestTime = "foo";
  }
  buildCounterCreateInstanceMetadata--;
  return o;
}

checkCreateInstanceMetadata(api.CreateInstanceMetadata o) {
  buildCounterCreateInstanceMetadata++;
  if (buildCounterCreateInstanceMetadata < 3) {
    unittest.expect(o.finishTime, unittest.equals('foo'));
    checkCreateInstanceRequest(o.originalRequest);
    unittest.expect(o.requestTime, unittest.equals('foo'));
  }
  buildCounterCreateInstanceMetadata--;
}

buildUnnamed304() {
  var o = new core.Map<core.String, api.Cluster>();
  o["x"] = buildCluster();
  o["y"] = buildCluster();
  return o;
}

checkUnnamed304(core.Map<core.String, api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o["x"]);
  checkCluster(o["y"]);
}

core.int buildCounterCreateInstanceRequest = 0;
buildCreateInstanceRequest() {
  var o = new api.CreateInstanceRequest();
  buildCounterCreateInstanceRequest++;
  if (buildCounterCreateInstanceRequest < 3) {
    o.clusters = buildUnnamed304();
    o.instance = buildInstance();
    o.instanceId = "foo";
    o.parent = "foo";
  }
  buildCounterCreateInstanceRequest--;
  return o;
}

checkCreateInstanceRequest(api.CreateInstanceRequest o) {
  buildCounterCreateInstanceRequest++;
  if (buildCounterCreateInstanceRequest < 3) {
    checkUnnamed304(o.clusters);
    checkInstance(o.instance);
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
  }
  buildCounterCreateInstanceRequest--;
}

buildUnnamed305() {
  var o = new core.List<api.Split>();
  o.add(buildSplit());
  o.add(buildSplit());
  return o;
}

checkUnnamed305(core.List<api.Split> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSplit(o[0]);
  checkSplit(o[1]);
}

core.int buildCounterCreateTableRequest = 0;
buildCreateTableRequest() {
  var o = new api.CreateTableRequest();
  buildCounterCreateTableRequest++;
  if (buildCounterCreateTableRequest < 3) {
    o.initialSplits = buildUnnamed305();
    o.table = buildTable();
    o.tableId = "foo";
  }
  buildCounterCreateTableRequest--;
  return o;
}

checkCreateTableRequest(api.CreateTableRequest o) {
  buildCounterCreateTableRequest++;
  if (buildCounterCreateTableRequest < 3) {
    checkUnnamed305(o.initialSplits);
    checkTable(o.table);
    unittest.expect(o.tableId, unittest.equals('foo'));
  }
  buildCounterCreateTableRequest--;
}

core.int buildCounterDropRowRangeRequest = 0;
buildDropRowRangeRequest() {
  var o = new api.DropRowRangeRequest();
  buildCounterDropRowRangeRequest++;
  if (buildCounterDropRowRangeRequest < 3) {
    o.deleteAllDataFromTable = true;
    o.rowKeyPrefix = "foo";
  }
  buildCounterDropRowRangeRequest--;
  return o;
}

checkDropRowRangeRequest(api.DropRowRangeRequest o) {
  buildCounterDropRowRangeRequest++;
  if (buildCounterDropRowRangeRequest < 3) {
    unittest.expect(o.deleteAllDataFromTable, unittest.isTrue);
    unittest.expect(o.rowKeyPrefix, unittest.equals('foo'));
  }
  buildCounterDropRowRangeRequest--;
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

core.int buildCounterGcRule = 0;
buildGcRule() {
  var o = new api.GcRule();
  buildCounterGcRule++;
  if (buildCounterGcRule < 3) {
    o.intersection = buildIntersection();
    o.maxAge = "foo";
    o.maxNumVersions = 42;
    o.union = buildUnion();
  }
  buildCounterGcRule--;
  return o;
}

checkGcRule(api.GcRule o) {
  buildCounterGcRule++;
  if (buildCounterGcRule < 3) {
    checkIntersection(o.intersection);
    unittest.expect(o.maxAge, unittest.equals('foo'));
    unittest.expect(o.maxNumVersions, unittest.equals(42));
    checkUnion(o.union);
  }
  buildCounterGcRule--;
}

core.int buildCounterGenerateConsistencyTokenRequest = 0;
buildGenerateConsistencyTokenRequest() {
  var o = new api.GenerateConsistencyTokenRequest();
  buildCounterGenerateConsistencyTokenRequest++;
  if (buildCounterGenerateConsistencyTokenRequest < 3) {}
  buildCounterGenerateConsistencyTokenRequest--;
  return o;
}

checkGenerateConsistencyTokenRequest(api.GenerateConsistencyTokenRequest o) {
  buildCounterGenerateConsistencyTokenRequest++;
  if (buildCounterGenerateConsistencyTokenRequest < 3) {}
  buildCounterGenerateConsistencyTokenRequest--;
}

core.int buildCounterGenerateConsistencyTokenResponse = 0;
buildGenerateConsistencyTokenResponse() {
  var o = new api.GenerateConsistencyTokenResponse();
  buildCounterGenerateConsistencyTokenResponse++;
  if (buildCounterGenerateConsistencyTokenResponse < 3) {
    o.consistencyToken = "foo";
  }
  buildCounterGenerateConsistencyTokenResponse--;
  return o;
}

checkGenerateConsistencyTokenResponse(api.GenerateConsistencyTokenResponse o) {
  buildCounterGenerateConsistencyTokenResponse++;
  if (buildCounterGenerateConsistencyTokenResponse < 3) {
    unittest.expect(o.consistencyToken, unittest.equals('foo'));
  }
  buildCounterGenerateConsistencyTokenResponse--;
}

core.int buildCounterGetIamPolicyRequest = 0;
buildGetIamPolicyRequest() {
  var o = new api.GetIamPolicyRequest();
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {}
  buildCounterGetIamPolicyRequest--;
  return o;
}

checkGetIamPolicyRequest(api.GetIamPolicyRequest o) {
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {}
  buildCounterGetIamPolicyRequest--;
}

buildUnnamed306() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed306(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterInstance = 0;
buildInstance() {
  var o = new api.Instance();
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    o.displayName = "foo";
    o.labels = buildUnnamed306();
    o.name = "foo";
    o.state = "foo";
    o.type = "foo";
  }
  buildCounterInstance--;
  return o;
}

checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed306(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterInstance--;
}

buildUnnamed307() {
  var o = new core.List<api.GcRule>();
  o.add(buildGcRule());
  o.add(buildGcRule());
  return o;
}

checkUnnamed307(core.List<api.GcRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGcRule(o[0]);
  checkGcRule(o[1]);
}

core.int buildCounterIntersection = 0;
buildIntersection() {
  var o = new api.Intersection();
  buildCounterIntersection++;
  if (buildCounterIntersection < 3) {
    o.rules = buildUnnamed307();
  }
  buildCounterIntersection--;
  return o;
}

checkIntersection(api.Intersection o) {
  buildCounterIntersection++;
  if (buildCounterIntersection < 3) {
    checkUnnamed307(o.rules);
  }
  buildCounterIntersection--;
}

buildUnnamed308() {
  var o = new core.List<api.AppProfile>();
  o.add(buildAppProfile());
  o.add(buildAppProfile());
  return o;
}

checkUnnamed308(core.List<api.AppProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppProfile(o[0]);
  checkAppProfile(o[1]);
}

buildUnnamed309() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed309(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAppProfilesResponse = 0;
buildListAppProfilesResponse() {
  var o = new api.ListAppProfilesResponse();
  buildCounterListAppProfilesResponse++;
  if (buildCounterListAppProfilesResponse < 3) {
    o.appProfiles = buildUnnamed308();
    o.failedLocations = buildUnnamed309();
    o.nextPageToken = "foo";
  }
  buildCounterListAppProfilesResponse--;
  return o;
}

checkListAppProfilesResponse(api.ListAppProfilesResponse o) {
  buildCounterListAppProfilesResponse++;
  if (buildCounterListAppProfilesResponse < 3) {
    checkUnnamed308(o.appProfiles);
    checkUnnamed309(o.failedLocations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAppProfilesResponse--;
}

buildUnnamed310() {
  var o = new core.List<api.Cluster>();
  o.add(buildCluster());
  o.add(buildCluster());
  return o;
}

checkUnnamed310(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
}

buildUnnamed311() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed311(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListClustersResponse = 0;
buildListClustersResponse() {
  var o = new api.ListClustersResponse();
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    o.clusters = buildUnnamed310();
    o.failedLocations = buildUnnamed311();
    o.nextPageToken = "foo";
  }
  buildCounterListClustersResponse--;
  return o;
}

checkListClustersResponse(api.ListClustersResponse o) {
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    checkUnnamed310(o.clusters);
    checkUnnamed311(o.failedLocations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListClustersResponse--;
}

buildUnnamed312() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed312(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed313() {
  var o = new core.List<api.Instance>();
  o.add(buildInstance());
  o.add(buildInstance());
  return o;
}

checkUnnamed313(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
}

core.int buildCounterListInstancesResponse = 0;
buildListInstancesResponse() {
  var o = new api.ListInstancesResponse();
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    o.failedLocations = buildUnnamed312();
    o.instances = buildUnnamed313();
    o.nextPageToken = "foo";
  }
  buildCounterListInstancesResponse--;
  return o;
}

checkListInstancesResponse(api.ListInstancesResponse o) {
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    checkUnnamed312(o.failedLocations);
    checkUnnamed313(o.instances);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListInstancesResponse--;
}

buildUnnamed314() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed314(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
buildListLocationsResponse() {
  var o = new api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed314();
    o.nextPageToken = "foo";
  }
  buildCounterListLocationsResponse--;
  return o;
}

checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed314(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

buildUnnamed315() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed315(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed315();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed315(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed316() {
  var o = new core.List<api.Table>();
  o.add(buildTable());
  o.add(buildTable());
  return o;
}

checkUnnamed316(core.List<api.Table> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTable(o[0]);
  checkTable(o[1]);
}

core.int buildCounterListTablesResponse = 0;
buildListTablesResponse() {
  var o = new api.ListTablesResponse();
  buildCounterListTablesResponse++;
  if (buildCounterListTablesResponse < 3) {
    o.nextPageToken = "foo";
    o.tables = buildUnnamed316();
  }
  buildCounterListTablesResponse--;
  return o;
}

checkListTablesResponse(api.ListTablesResponse o) {
  buildCounterListTablesResponse++;
  if (buildCounterListTablesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed316(o.tables);
  }
  buildCounterListTablesResponse--;
}

buildUnnamed317() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed317(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed318() {
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

checkUnnamed318(core.Map<core.String, core.Object> o) {
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

core.int buildCounterLocation = 0;
buildLocation() {
  var o = new api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = "foo";
    o.labels = buildUnnamed317();
    o.locationId = "foo";
    o.metadata = buildUnnamed318();
    o.name = "foo";
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed317(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed318(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterModification = 0;
buildModification() {
  var o = new api.Modification();
  buildCounterModification++;
  if (buildCounterModification < 3) {
    o.create = buildColumnFamily();
    o.drop = true;
    o.id = "foo";
    o.update = buildColumnFamily();
  }
  buildCounterModification--;
  return o;
}

checkModification(api.Modification o) {
  buildCounterModification++;
  if (buildCounterModification < 3) {
    checkColumnFamily(o.create);
    unittest.expect(o.drop, unittest.isTrue);
    unittest.expect(o.id, unittest.equals('foo'));
    checkColumnFamily(o.update);
  }
  buildCounterModification--;
}

buildUnnamed319() {
  var o = new core.List<api.Modification>();
  o.add(buildModification());
  o.add(buildModification());
  return o;
}

checkUnnamed319(core.List<api.Modification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkModification(o[0]);
  checkModification(o[1]);
}

core.int buildCounterModifyColumnFamiliesRequest = 0;
buildModifyColumnFamiliesRequest() {
  var o = new api.ModifyColumnFamiliesRequest();
  buildCounterModifyColumnFamiliesRequest++;
  if (buildCounterModifyColumnFamiliesRequest < 3) {
    o.modifications = buildUnnamed319();
  }
  buildCounterModifyColumnFamiliesRequest--;
  return o;
}

checkModifyColumnFamiliesRequest(api.ModifyColumnFamiliesRequest o) {
  buildCounterModifyColumnFamiliesRequest++;
  if (buildCounterModifyColumnFamiliesRequest < 3) {
    checkUnnamed319(o.modifications);
  }
  buildCounterModifyColumnFamiliesRequest--;
}

core.int buildCounterMultiClusterRoutingUseAny = 0;
buildMultiClusterRoutingUseAny() {
  var o = new api.MultiClusterRoutingUseAny();
  buildCounterMultiClusterRoutingUseAny++;
  if (buildCounterMultiClusterRoutingUseAny < 3) {}
  buildCounterMultiClusterRoutingUseAny--;
  return o;
}

checkMultiClusterRoutingUseAny(api.MultiClusterRoutingUseAny o) {
  buildCounterMultiClusterRoutingUseAny++;
  if (buildCounterMultiClusterRoutingUseAny < 3) {}
  buildCounterMultiClusterRoutingUseAny--;
}

buildUnnamed320() {
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

checkUnnamed320(core.Map<core.String, core.Object> o) {
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

buildUnnamed321() {
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

checkUnnamed321(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed320();
    o.name = "foo";
    o.response = buildUnnamed321();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed320(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed321(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterPartialUpdateInstanceRequest = 0;
buildPartialUpdateInstanceRequest() {
  var o = new api.PartialUpdateInstanceRequest();
  buildCounterPartialUpdateInstanceRequest++;
  if (buildCounterPartialUpdateInstanceRequest < 3) {
    o.instance = buildInstance();
    o.updateMask = "foo";
  }
  buildCounterPartialUpdateInstanceRequest--;
  return o;
}

checkPartialUpdateInstanceRequest(api.PartialUpdateInstanceRequest o) {
  buildCounterPartialUpdateInstanceRequest++;
  if (buildCounterPartialUpdateInstanceRequest < 3) {
    checkInstance(o.instance);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterPartialUpdateInstanceRequest--;
}

buildUnnamed322() {
  var o = new core.List<api.AuditConfig>();
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

checkUnnamed322(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

buildUnnamed323() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed323(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed322();
    o.bindings = buildUnnamed323();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed322(o.auditConfigs);
    checkUnnamed323(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
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

core.int buildCounterSingleClusterRouting = 0;
buildSingleClusterRouting() {
  var o = new api.SingleClusterRouting();
  buildCounterSingleClusterRouting++;
  if (buildCounterSingleClusterRouting < 3) {
    o.allowTransactionalWrites = true;
    o.clusterId = "foo";
  }
  buildCounterSingleClusterRouting--;
  return o;
}

checkSingleClusterRouting(api.SingleClusterRouting o) {
  buildCounterSingleClusterRouting++;
  if (buildCounterSingleClusterRouting < 3) {
    unittest.expect(o.allowTransactionalWrites, unittest.isTrue);
    unittest.expect(o.clusterId, unittest.equals('foo'));
  }
  buildCounterSingleClusterRouting--;
}

core.int buildCounterSplit = 0;
buildSplit() {
  var o = new api.Split();
  buildCounterSplit++;
  if (buildCounterSplit < 3) {
    o.key = "foo";
  }
  buildCounterSplit--;
  return o;
}

checkSplit(api.Split o) {
  buildCounterSplit++;
  if (buildCounterSplit < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
  }
  buildCounterSplit--;
}

buildUnnamed324() {
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

checkUnnamed324(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o["x"]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted7["bool"], unittest.equals(true));
  unittest.expect(casted7["string"], unittest.equals('foo'));
  var casted8 = (o["y"]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted8["bool"], unittest.equals(true));
  unittest.expect(casted8["string"], unittest.equals('foo'));
}

buildUnnamed325() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed324());
  o.add(buildUnnamed324());
  return o;
}

checkUnnamed325(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed324(o[0]);
  checkUnnamed324(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed325();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed325(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed326() {
  var o = new core.Map<core.String, api.ClusterState>();
  o["x"] = buildClusterState();
  o["y"] = buildClusterState();
  return o;
}

checkUnnamed326(core.Map<core.String, api.ClusterState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterState(o["x"]);
  checkClusterState(o["y"]);
}

buildUnnamed327() {
  var o = new core.Map<core.String, api.ColumnFamily>();
  o["x"] = buildColumnFamily();
  o["y"] = buildColumnFamily();
  return o;
}

checkUnnamed327(core.Map<core.String, api.ColumnFamily> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkColumnFamily(o["x"]);
  checkColumnFamily(o["y"]);
}

core.int buildCounterTable = 0;
buildTable() {
  var o = new api.Table();
  buildCounterTable++;
  if (buildCounterTable < 3) {
    o.clusterStates = buildUnnamed326();
    o.columnFamilies = buildUnnamed327();
    o.granularity = "foo";
    o.name = "foo";
  }
  buildCounterTable--;
  return o;
}

checkTable(api.Table o) {
  buildCounterTable++;
  if (buildCounterTable < 3) {
    checkUnnamed326(o.clusterStates);
    checkUnnamed327(o.columnFamilies);
    unittest.expect(o.granularity, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterTable--;
}

core.int buildCounterTableProgress = 0;
buildTableProgress() {
  var o = new api.TableProgress();
  buildCounterTableProgress++;
  if (buildCounterTableProgress < 3) {
    o.estimatedCopiedBytes = "foo";
    o.estimatedSizeBytes = "foo";
    o.state = "foo";
  }
  buildCounterTableProgress--;
  return o;
}

checkTableProgress(api.TableProgress o) {
  buildCounterTableProgress++;
  if (buildCounterTableProgress < 3) {
    unittest.expect(o.estimatedCopiedBytes, unittest.equals('foo'));
    unittest.expect(o.estimatedSizeBytes, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterTableProgress--;
}

buildUnnamed328() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed328(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed328();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed328(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed329() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed329(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed329();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed329(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

buildUnnamed330() {
  var o = new core.List<api.GcRule>();
  o.add(buildGcRule());
  o.add(buildGcRule());
  return o;
}

checkUnnamed330(core.List<api.GcRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGcRule(o[0]);
  checkGcRule(o[1]);
}

core.int buildCounterUnion = 0;
buildUnion() {
  var o = new api.Union();
  buildCounterUnion++;
  if (buildCounterUnion < 3) {
    o.rules = buildUnnamed330();
  }
  buildCounterUnion--;
  return o;
}

checkUnion(api.Union o) {
  buildCounterUnion++;
  if (buildCounterUnion < 3) {
    checkUnnamed330(o.rules);
  }
  buildCounterUnion--;
}

core.int buildCounterUpdateAppProfileMetadata = 0;
buildUpdateAppProfileMetadata() {
  var o = new api.UpdateAppProfileMetadata();
  buildCounterUpdateAppProfileMetadata++;
  if (buildCounterUpdateAppProfileMetadata < 3) {}
  buildCounterUpdateAppProfileMetadata--;
  return o;
}

checkUpdateAppProfileMetadata(api.UpdateAppProfileMetadata o) {
  buildCounterUpdateAppProfileMetadata++;
  if (buildCounterUpdateAppProfileMetadata < 3) {}
  buildCounterUpdateAppProfileMetadata--;
}

core.int buildCounterUpdateClusterMetadata = 0;
buildUpdateClusterMetadata() {
  var o = new api.UpdateClusterMetadata();
  buildCounterUpdateClusterMetadata++;
  if (buildCounterUpdateClusterMetadata < 3) {
    o.finishTime = "foo";
    o.originalRequest = buildCluster();
    o.requestTime = "foo";
  }
  buildCounterUpdateClusterMetadata--;
  return o;
}

checkUpdateClusterMetadata(api.UpdateClusterMetadata o) {
  buildCounterUpdateClusterMetadata++;
  if (buildCounterUpdateClusterMetadata < 3) {
    unittest.expect(o.finishTime, unittest.equals('foo'));
    checkCluster(o.originalRequest);
    unittest.expect(o.requestTime, unittest.equals('foo'));
  }
  buildCounterUpdateClusterMetadata--;
}

core.int buildCounterUpdateInstanceMetadata = 0;
buildUpdateInstanceMetadata() {
  var o = new api.UpdateInstanceMetadata();
  buildCounterUpdateInstanceMetadata++;
  if (buildCounterUpdateInstanceMetadata < 3) {
    o.finishTime = "foo";
    o.originalRequest = buildPartialUpdateInstanceRequest();
    o.requestTime = "foo";
  }
  buildCounterUpdateInstanceMetadata--;
  return o;
}

checkUpdateInstanceMetadata(api.UpdateInstanceMetadata o) {
  buildCounterUpdateInstanceMetadata++;
  if (buildCounterUpdateInstanceMetadata < 3) {
    unittest.expect(o.finishTime, unittest.equals('foo'));
    checkPartialUpdateInstanceRequest(o.originalRequest);
    unittest.expect(o.requestTime, unittest.equals('foo'));
  }
  buildCounterUpdateInstanceMetadata--;
}

main() {
  unittest.group("obj-schema-AppProfile", () {
    unittest.test("to-json--from-json", () {
      var o = buildAppProfile();
      var od = new api.AppProfile.fromJson(o.toJson());
      checkAppProfile(od);
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

  unittest.group("obj-schema-CheckConsistencyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCheckConsistencyRequest();
      var od = new api.CheckConsistencyRequest.fromJson(o.toJson());
      checkCheckConsistencyRequest(od);
    });
  });

  unittest.group("obj-schema-CheckConsistencyResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCheckConsistencyResponse();
      var od = new api.CheckConsistencyResponse.fromJson(o.toJson());
      checkCheckConsistencyResponse(od);
    });
  });

  unittest.group("obj-schema-Cluster", () {
    unittest.test("to-json--from-json", () {
      var o = buildCluster();
      var od = new api.Cluster.fromJson(o.toJson());
      checkCluster(od);
    });
  });

  unittest.group("obj-schema-ClusterState", () {
    unittest.test("to-json--from-json", () {
      var o = buildClusterState();
      var od = new api.ClusterState.fromJson(o.toJson());
      checkClusterState(od);
    });
  });

  unittest.group("obj-schema-ColumnFamily", () {
    unittest.test("to-json--from-json", () {
      var o = buildColumnFamily();
      var od = new api.ColumnFamily.fromJson(o.toJson());
      checkColumnFamily(od);
    });
  });

  unittest.group("obj-schema-CreateClusterMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateClusterMetadata();
      var od = new api.CreateClusterMetadata.fromJson(o.toJson());
      checkCreateClusterMetadata(od);
    });
  });

  unittest.group("obj-schema-CreateClusterRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateClusterRequest();
      var od = new api.CreateClusterRequest.fromJson(o.toJson());
      checkCreateClusterRequest(od);
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

  unittest.group("obj-schema-CreateTableRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateTableRequest();
      var od = new api.CreateTableRequest.fromJson(o.toJson());
      checkCreateTableRequest(od);
    });
  });

  unittest.group("obj-schema-DropRowRangeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDropRowRangeRequest();
      var od = new api.DropRowRangeRequest.fromJson(o.toJson());
      checkDropRowRangeRequest(od);
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

  unittest.group("obj-schema-GcRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildGcRule();
      var od = new api.GcRule.fromJson(o.toJson());
      checkGcRule(od);
    });
  });

  unittest.group("obj-schema-GenerateConsistencyTokenRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenerateConsistencyTokenRequest();
      var od = new api.GenerateConsistencyTokenRequest.fromJson(o.toJson());
      checkGenerateConsistencyTokenRequest(od);
    });
  });

  unittest.group("obj-schema-GenerateConsistencyTokenResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenerateConsistencyTokenResponse();
      var od = new api.GenerateConsistencyTokenResponse.fromJson(o.toJson());
      checkGenerateConsistencyTokenResponse(od);
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

  unittest.group("obj-schema-Intersection", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntersection();
      var od = new api.Intersection.fromJson(o.toJson());
      checkIntersection(od);
    });
  });

  unittest.group("obj-schema-ListAppProfilesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAppProfilesResponse();
      var od = new api.ListAppProfilesResponse.fromJson(o.toJson());
      checkListAppProfilesResponse(od);
    });
  });

  unittest.group("obj-schema-ListClustersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListClustersResponse();
      var od = new api.ListClustersResponse.fromJson(o.toJson());
      checkListClustersResponse(od);
    });
  });

  unittest.group("obj-schema-ListInstancesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListInstancesResponse();
      var od = new api.ListInstancesResponse.fromJson(o.toJson());
      checkListInstancesResponse(od);
    });
  });

  unittest.group("obj-schema-ListLocationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLocationsResponse();
      var od = new api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListTablesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListTablesResponse();
      var od = new api.ListTablesResponse.fromJson(o.toJson());
      checkListTablesResponse(od);
    });
  });

  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group("obj-schema-Modification", () {
    unittest.test("to-json--from-json", () {
      var o = buildModification();
      var od = new api.Modification.fromJson(o.toJson());
      checkModification(od);
    });
  });

  unittest.group("obj-schema-ModifyColumnFamiliesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildModifyColumnFamiliesRequest();
      var od = new api.ModifyColumnFamiliesRequest.fromJson(o.toJson());
      checkModifyColumnFamiliesRequest(od);
    });
  });

  unittest.group("obj-schema-MultiClusterRoutingUseAny", () {
    unittest.test("to-json--from-json", () {
      var o = buildMultiClusterRoutingUseAny();
      var od = new api.MultiClusterRoutingUseAny.fromJson(o.toJson());
      checkMultiClusterRoutingUseAny(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-PartialUpdateInstanceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildPartialUpdateInstanceRequest();
      var od = new api.PartialUpdateInstanceRequest.fromJson(o.toJson());
      checkPartialUpdateInstanceRequest(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetIamPolicyRequest();
      var od = new api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-SingleClusterRouting", () {
    unittest.test("to-json--from-json", () {
      var o = buildSingleClusterRouting();
      var od = new api.SingleClusterRouting.fromJson(o.toJson());
      checkSingleClusterRouting(od);
    });
  });

  unittest.group("obj-schema-Split", () {
    unittest.test("to-json--from-json", () {
      var o = buildSplit();
      var od = new api.Split.fromJson(o.toJson());
      checkSplit(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-Table", () {
    unittest.test("to-json--from-json", () {
      var o = buildTable();
      var od = new api.Table.fromJson(o.toJson());
      checkTable(od);
    });
  });

  unittest.group("obj-schema-TableProgress", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableProgress();
      var od = new api.TableProgress.fromJson(o.toJson());
      checkTableProgress(od);
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

  unittest.group("obj-schema-Union", () {
    unittest.test("to-json--from-json", () {
      var o = buildUnion();
      var od = new api.Union.fromJson(o.toJson());
      checkUnion(od);
    });
  });

  unittest.group("obj-schema-UpdateAppProfileMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateAppProfileMetadata();
      var od = new api.UpdateAppProfileMetadata.fromJson(o.toJson());
      checkUpdateAppProfileMetadata(od);
    });
  });

  unittest.group("obj-schema-UpdateClusterMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateClusterMetadata();
      var od = new api.UpdateClusterMetadata.fromJson(o.toJson());
      checkUpdateClusterMetadata(od);
    });
  });

  unittest.group("obj-schema-UpdateInstanceMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateInstanceMetadata();
      var od = new api.UpdateInstanceMetadata.fromJson(o.toJson());
      checkUpdateInstanceMetadata(od);
    });
  });

  unittest.group("resource-OperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res = new api.BigtableadminApi(mock).operations;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .cancel(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res = new api.BigtableadminApi(mock).operations;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
      api.OperationsResourceApi res = new api.BigtableadminApi(mock).operations;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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

  unittest.group("resource-OperationsProjectsOperationsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OperationsProjectsOperationsResourceApi res =
          new api.BigtableadminApi(mock).operations.projects.operations;
      var arg_name = "foo";
      var arg_filter = "foo";
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsInstancesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances;
      var arg_request = buildCreateInstanceRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateInstanceRequest.fromJson(json);
        checkCreateInstanceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
      api.ProjectsInstancesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildInstance());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInstance(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances;
      var arg_parent = "foo";
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListInstancesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, pageToken: arg_pageToken, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListInstancesResponse(response);
      })));
    });

    unittest.test("method--partialUpdateInstance", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances;
      var arg_request = buildInstance();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Instance.fromJson(json);
        checkInstance(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .partialUpdateInstance(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
      api.ProjectsInstancesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances;
      var arg_request = buildInstance();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Instance.fromJson(json);
        checkInstance(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildInstance());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInstance(response);
      })));
    });
  });

  unittest.group("resource-ProjectsInstancesAppProfilesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesAppProfilesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances.appProfiles;
      var arg_request = buildAppProfile();
      var arg_parent = "foo";
      var arg_appProfileId = "foo";
      var arg_ignoreWarnings = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AppProfile.fromJson(json);
        checkAppProfile(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["appProfileId"].first, unittest.equals(arg_appProfileId));
        unittest.expect(queryMap["ignoreWarnings"].first,
            unittest.equals("$arg_ignoreWarnings"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAppProfile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              appProfileId: arg_appProfileId,
              ignoreWarnings: arg_ignoreWarnings,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppProfile(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesAppProfilesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances.appProfiles;
      var arg_name = "foo";
      var arg_ignoreWarnings = true;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        unittest.expect(queryMap["ignoreWarnings"].first,
            unittest.equals("$arg_ignoreWarnings"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              ignoreWarnings: arg_ignoreWarnings, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesAppProfilesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances.appProfiles;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildAppProfile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppProfile(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesAppProfilesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances.appProfiles;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildListAppProfilesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAppProfilesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesAppProfilesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances.appProfiles;
      var arg_request = buildAppProfile();
      var arg_name = "foo";
      var arg_ignoreWarnings = true;
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AppProfile.fromJson(json);
        checkAppProfile(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        unittest.expect(queryMap["ignoreWarnings"].first,
            unittest.equals("$arg_ignoreWarnings"));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              ignoreWarnings: arg_ignoreWarnings,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsInstancesClustersResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesClustersResourceApi res =
          new api.BigtableadminApi(mock).projects.instances.clusters;
      var arg_request = buildCluster();
      var arg_parent = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Cluster.fromJson(json);
        checkCluster(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["clusterId"].first, unittest.equals(arg_clusterId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              clusterId: arg_clusterId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesClustersResourceApi res =
          new api.BigtableadminApi(mock).projects.instances.clusters;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
      api.ProjectsInstancesClustersResourceApi res =
          new api.BigtableadminApi(mock).projects.instances.clusters;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildCluster());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCluster(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesClustersResourceApi res =
          new api.BigtableadminApi(mock).projects.instances.clusters;
      var arg_parent = "foo";
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListClustersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, pageToken: arg_pageToken, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListClustersResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesClustersResourceApi res =
          new api.BigtableadminApi(mock).projects.instances.clusters;
      var arg_request = buildCluster();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Cluster.fromJson(json);
        checkCluster(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsInstancesTablesResourceApi", () {
    unittest.test("method--checkConsistency", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesTablesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances.tables;
      var arg_request = buildCheckConsistencyRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CheckConsistencyRequest.fromJson(json);
        checkCheckConsistencyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildCheckConsistencyResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .checkConsistency(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCheckConsistencyResponse(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesTablesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances.tables;
      var arg_request = buildCreateTableRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateTableRequest.fromJson(json);
        checkCreateTableRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildTable());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTable(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesTablesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances.tables;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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

    unittest.test("method--dropRowRange", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesTablesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances.tables;
      var arg_request = buildDropRowRangeRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DropRowRangeRequest.fromJson(json);
        checkDropRowRangeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .dropRowRange(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--generateConsistencyToken", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesTablesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances.tables;
      var arg_request = buildGenerateConsistencyTokenRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GenerateConsistencyTokenRequest.fromJson(json);
        checkGenerateConsistencyTokenRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGenerateConsistencyTokenResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateConsistencyToken(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGenerateConsistencyTokenResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesTablesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances.tables;
      var arg_name = "foo";
      var arg_view = "foo";
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTable());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTable(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesTablesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances.tables;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesTablesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances.tables;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_view = "foo";
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListTablesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTablesResponse(response);
      })));
    });

    unittest.test("method--modifyColumnFamilies", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesTablesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances.tables;
      var arg_request = buildModifyColumnFamiliesRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ModifyColumnFamiliesRequest.fromJson(json);
        checkModifyColumnFamiliesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildTable());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .modifyColumnFamilies(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTable(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsInstancesTablesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances.tables;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
      api.ProjectsInstancesTablesResourceApi res =
          new api.BigtableadminApi(mock).projects.instances.tables;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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

  unittest.group("resource-ProjectsLocationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.BigtableadminApi(mock).projects.locations;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildLocation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLocation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.BigtableadminApi(mock).projects.locations;
      var arg_name = "foo";
      var arg_filter = "foo";
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListLocationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response);
      })));
    });
  });
}
