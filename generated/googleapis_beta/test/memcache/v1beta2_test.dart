library googleapis_beta.memcache.v1beta2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/memcache/v1beta2.dart' as api;

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

buildUnnamed5628() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5628(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApplyParametersRequest = 0;
buildApplyParametersRequest() {
  var o = new api.ApplyParametersRequest();
  buildCounterApplyParametersRequest++;
  if (buildCounterApplyParametersRequest < 3) {
    o.applyAll = true;
    o.nodeIds = buildUnnamed5628();
  }
  buildCounterApplyParametersRequest--;
  return o;
}

checkApplyParametersRequest(api.ApplyParametersRequest o) {
  buildCounterApplyParametersRequest++;
  if (buildCounterApplyParametersRequest < 3) {
    unittest.expect(o.applyAll, unittest.isTrue);
    checkUnnamed5628(o.nodeIds);
  }
  buildCounterApplyParametersRequest--;
}

buildUnnamed5629() {
  var o = new core.List<api.AuditLogConfig>();
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

checkUnnamed5629(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
buildAuditConfig() {
  var o = new api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed5629();
    o.service = "foo";
  }
  buildCounterAuditConfig--;
  return o;
}

checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed5629(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

buildUnnamed5630() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5630(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
buildAuditLogConfig() {
  var o = new api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed5630();
    o.logType = "foo";
  }
  buildCounterAuditLogConfig--;
  return o;
}

checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed5630(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

buildUnnamed5631() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5631(core.List<core.String> o) {
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
    o.members = buildUnnamed5631();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed5631(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCancelOperationRequest = 0;
buildCancelOperationRequest() {
  var o = new api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
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

buildUnnamed5632() {
  var o = new core.Map<core.String, api.ZoneMetadata>();
  o["x"] = buildZoneMetadata();
  o["y"] = buildZoneMetadata();
  return o;
}

checkUnnamed5632(core.Map<core.String, api.ZoneMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkZoneMetadata(o["x"]);
  checkZoneMetadata(o["y"]);
}

core.int buildCounterGoogleCloudMemcacheV1beta2LocationMetadata = 0;
buildGoogleCloudMemcacheV1beta2LocationMetadata() {
  var o = new api.GoogleCloudMemcacheV1beta2LocationMetadata();
  buildCounterGoogleCloudMemcacheV1beta2LocationMetadata++;
  if (buildCounterGoogleCloudMemcacheV1beta2LocationMetadata < 3) {
    o.availableZones = buildUnnamed5632();
  }
  buildCounterGoogleCloudMemcacheV1beta2LocationMetadata--;
  return o;
}

checkGoogleCloudMemcacheV1beta2LocationMetadata(
    api.GoogleCloudMemcacheV1beta2LocationMetadata o) {
  buildCounterGoogleCloudMemcacheV1beta2LocationMetadata++;
  if (buildCounterGoogleCloudMemcacheV1beta2LocationMetadata < 3) {
    checkUnnamed5632(o.availableZones);
  }
  buildCounterGoogleCloudMemcacheV1beta2LocationMetadata--;
}

core.int buildCounterGoogleCloudMemcacheV1beta2OperationMetadata = 0;
buildGoogleCloudMemcacheV1beta2OperationMetadata() {
  var o = new api.GoogleCloudMemcacheV1beta2OperationMetadata();
  buildCounterGoogleCloudMemcacheV1beta2OperationMetadata++;
  if (buildCounterGoogleCloudMemcacheV1beta2OperationMetadata < 3) {
    o.apiVersion = "foo";
    o.cancelRequested = true;
    o.createTime = "foo";
    o.endTime = "foo";
    o.statusDetail = "foo";
    o.target = "foo";
    o.verb = "foo";
  }
  buildCounterGoogleCloudMemcacheV1beta2OperationMetadata--;
  return o;
}

checkGoogleCloudMemcacheV1beta2OperationMetadata(
    api.GoogleCloudMemcacheV1beta2OperationMetadata o) {
  buildCounterGoogleCloudMemcacheV1beta2OperationMetadata++;
  if (buildCounterGoogleCloudMemcacheV1beta2OperationMetadata < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.cancelRequested, unittest.isTrue);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.statusDetail, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.verb, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMemcacheV1beta2OperationMetadata--;
}

buildUnnamed5633() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5633(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed5634() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5634(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed5635() {
  var o = new core.Map<core.String,
      api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>();
  o["x"] =
      buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule();
  o["y"] =
      buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule();
  return o;
}

checkUnnamed5635(
    core.Map<core.String,
            api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule(
      o["x"]);
  checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule(
      o["y"]);
}

buildUnnamed5636() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5636(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed5637() {
  var o = new core.List<
      api.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>();
  o.add(
      buildGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource());
  o.add(
      buildGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource());
  return o;
}

checkUnnamed5637(
    core.List<
            api.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource(o[0]);
  checkGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource(o[1]);
}

buildUnnamed5638() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5638(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudSaasacceleratorManagementProvidersV1Instance =
    0;
buildGoogleCloudSaasacceleratorManagementProvidersV1Instance() {
  var o = new api.GoogleCloudSaasacceleratorManagementProvidersV1Instance();
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1Instance++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1Instance < 3) {
    o.consumerDefinedName = "foo";
    o.createTime = "foo";
    o.labels = buildUnnamed5633();
    o.maintenancePolicyNames = buildUnnamed5634();
    o.maintenanceSchedules = buildUnnamed5635();
    o.name = "foo";
    o.producerMetadata = buildUnnamed5636();
    o.provisionedResources = buildUnnamed5637();
    o.slmInstanceTemplate = "foo";
    o.sloMetadata =
        buildGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata();
    o.softwareVersions = buildUnnamed5638();
    o.state = "foo";
    o.tenantProjectId = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1Instance--;
  return o;
}

checkGoogleCloudSaasacceleratorManagementProvidersV1Instance(
    api.GoogleCloudSaasacceleratorManagementProvidersV1Instance o) {
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1Instance++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1Instance < 3) {
    unittest.expect(o.consumerDefinedName, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed5633(o.labels);
    checkUnnamed5634(o.maintenancePolicyNames);
    checkUnnamed5635(o.maintenanceSchedules);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5636(o.producerMetadata);
    checkUnnamed5637(o.provisionedResources);
    unittest.expect(o.slmInstanceTemplate, unittest.equals('foo'));
    checkGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata(
        o.sloMetadata);
    checkUnnamed5638(o.softwareVersions);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.tenantProjectId, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1Instance--;
}

core.int
    buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule =
    0;
buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule() {
  var o = new api
      .GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule();
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule <
      3) {
    o.canReschedule = true;
    o.endTime = "foo";
    o.rolloutManagementPolicy = "foo";
    o.startTime = "foo";
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule--;
  return o;
}

checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule(
    api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule o) {
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule <
      3) {
    unittest.expect(o.canReschedule, unittest.isTrue);
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.rolloutManagementPolicy, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule--;
}

buildUnnamed5639() {
  var o = new core
      .List<api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>();
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  return o;
}

checkUnnamed5639(
    core.List<api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(o[0]);
  checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(o[1]);
}

core.int
    buildCounterGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata =
    0;
buildGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata() {
  var o =
      new api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata();
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata <
      3) {
    o.exclusions = buildUnnamed5639();
    o.location = "foo";
    o.nodeId = "foo";
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata--;
  return o;
}

checkGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata(
    api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata o) {
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata <
      3) {
    checkUnnamed5639(o.exclusions);
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.nodeId, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata--;
}

core.int
    buildCounterGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource =
    0;
buildGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource() {
  var o = new api
      .GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource();
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource <
      3) {
    o.resourceType = "foo";
    o.resourceUrl = "foo";
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource--;
  return o;
}

checkGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource(
    api.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource o) {
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource <
      3) {
    unittest.expect(o.resourceType, unittest.equals('foo'));
    unittest.expect(o.resourceUrl, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource--;
}

core.int
    buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility =
    0;
buildGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility() {
  var o =
      new api.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility();
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility <
      3) {
    o.eligible = true;
    o.reason = "foo";
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility--;
  return o;
}

checkGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility(
    api.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility o) {
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility <
      3) {
    unittest.expect(o.eligible, unittest.isTrue);
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility--;
}

core.int
    buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion = 0;
buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion() {
  var o = new api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion();
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion <
      3) {
    o.duration = "foo";
    o.reason = "foo";
    o.sliName = "foo";
    o.startTime = "foo";
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion--;
  return o;
}

checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(
    api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion o) {
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion <
      3) {
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.sliName, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion--;
}

buildUnnamed5640() {
  var o = new core
      .List<api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>();
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  return o;
}

checkUnnamed5640(
    core.List<api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(o[0]);
  checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(o[1]);
}

buildUnnamed5641() {
  var o = new core.List<
      api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>();
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata());
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata());
  return o;
}

checkUnnamed5641(
    core.List<
            api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata(o[0]);
  checkGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata(o[1]);
}

core.int
    buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata = 0;
buildGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata() {
  var o = new api.GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata();
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata <
      3) {
    o.eligibility =
        buildGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility();
    o.exclusions = buildUnnamed5640();
    o.nodes = buildUnnamed5641();
    o.tier = "foo";
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata--;
  return o;
}

checkGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata(
    api.GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata o) {
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata <
      3) {
    checkGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility(
        o.eligibility);
    checkUnnamed5640(o.exclusions);
    checkUnnamed5641(o.nodes);
    unittest.expect(o.tier, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata--;
}

buildUnnamed5642() {
  var o = new core.List<api.InstanceMessage>();
  o.add(buildInstanceMessage());
  o.add(buildInstanceMessage());
  return o;
}

checkUnnamed5642(core.List<api.InstanceMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceMessage(o[0]);
  checkInstanceMessage(o[1]);
}

buildUnnamed5643() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5643(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed5644() {
  var o = new core.List<api.Node>();
  o.add(buildNode());
  o.add(buildNode());
  return o;
}

checkUnnamed5644(core.List<api.Node> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNode(o[0]);
  checkNode(o[1]);
}

buildUnnamed5645() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5645(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInstance = 0;
buildInstance() {
  var o = new api.Instance();
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    o.authorizedNetwork = "foo";
    o.createTime = "foo";
    o.discoveryEndpoint = "foo";
    o.displayName = "foo";
    o.instanceMessages = buildUnnamed5642();
    o.labels = buildUnnamed5643();
    o.memcacheFullVersion = "foo";
    o.memcacheNodes = buildUnnamed5644();
    o.memcacheVersion = "foo";
    o.name = "foo";
    o.nodeConfig = buildNodeConfig();
    o.nodeCount = 42;
    o.parameters = buildMemcacheParameters();
    o.state = "foo";
    o.updateTime = "foo";
    o.zones = buildUnnamed5645();
  }
  buildCounterInstance--;
  return o;
}

checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    unittest.expect(o.authorizedNetwork, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.discoveryEndpoint, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed5642(o.instanceMessages);
    checkUnnamed5643(o.labels);
    unittest.expect(o.memcacheFullVersion, unittest.equals('foo'));
    checkUnnamed5644(o.memcacheNodes);
    unittest.expect(o.memcacheVersion, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkNodeConfig(o.nodeConfig);
    unittest.expect(o.nodeCount, unittest.equals(42));
    checkMemcacheParameters(o.parameters);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
    checkUnnamed5645(o.zones);
  }
  buildCounterInstance--;
}

core.int buildCounterInstanceMessage = 0;
buildInstanceMessage() {
  var o = new api.InstanceMessage();
  buildCounterInstanceMessage++;
  if (buildCounterInstanceMessage < 3) {
    o.code = "foo";
    o.message = "foo";
  }
  buildCounterInstanceMessage--;
  return o;
}

checkInstanceMessage(api.InstanceMessage o) {
  buildCounterInstanceMessage++;
  if (buildCounterInstanceMessage < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterInstanceMessage--;
}

buildUnnamed5646() {
  var o = new core.List<api.Instance>();
  o.add(buildInstance());
  o.add(buildInstance());
  return o;
}

checkUnnamed5646(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
}

buildUnnamed5647() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5647(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListInstancesResponse = 0;
buildListInstancesResponse() {
  var o = new api.ListInstancesResponse();
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    o.nextPageToken = "foo";
    o.resources = buildUnnamed5646();
    o.unreachable = buildUnnamed5647();
  }
  buildCounterListInstancesResponse--;
  return o;
}

checkListInstancesResponse(api.ListInstancesResponse o) {
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5646(o.resources);
    checkUnnamed5647(o.unreachable);
  }
  buildCounterListInstancesResponse--;
}

buildUnnamed5648() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed5648(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
buildListLocationsResponse() {
  var o = new api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed5648();
    o.nextPageToken = "foo";
  }
  buildCounterListLocationsResponse--;
  return o;
}

checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed5648(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

buildUnnamed5649() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed5649(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed5649();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5649(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed5650() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5650(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed5651() {
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

checkUnnamed5651(core.Map<core.String, core.Object> o) {
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
    o.labels = buildUnnamed5650();
    o.locationId = "foo";
    o.metadata = buildUnnamed5651();
    o.name = "foo";
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed5650(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed5651(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

buildUnnamed5652() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5652(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterMemcacheParameters = 0;
buildMemcacheParameters() {
  var o = new api.MemcacheParameters();
  buildCounterMemcacheParameters++;
  if (buildCounterMemcacheParameters < 3) {
    o.id = "foo";
    o.params = buildUnnamed5652();
  }
  buildCounterMemcacheParameters--;
  return o;
}

checkMemcacheParameters(api.MemcacheParameters o) {
  buildCounterMemcacheParameters++;
  if (buildCounterMemcacheParameters < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed5652(o.params);
  }
  buildCounterMemcacheParameters--;
}

core.int buildCounterNode = 0;
buildNode() {
  var o = new api.Node();
  buildCounterNode++;
  if (buildCounterNode < 3) {
    o.host = "foo";
    o.nodeId = "foo";
    o.parameters = buildMemcacheParameters();
    o.port = 42;
    o.state = "foo";
    o.zone = "foo";
  }
  buildCounterNode--;
  return o;
}

checkNode(api.Node o) {
  buildCounterNode++;
  if (buildCounterNode < 3) {
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.nodeId, unittest.equals('foo'));
    checkMemcacheParameters(o.parameters);
    unittest.expect(o.port, unittest.equals(42));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterNode--;
}

core.int buildCounterNodeConfig = 0;
buildNodeConfig() {
  var o = new api.NodeConfig();
  buildCounterNodeConfig++;
  if (buildCounterNodeConfig < 3) {
    o.cpuCount = 42;
    o.memorySizeMb = 42;
  }
  buildCounterNodeConfig--;
  return o;
}

checkNodeConfig(api.NodeConfig o) {
  buildCounterNodeConfig++;
  if (buildCounterNodeConfig < 3) {
    unittest.expect(o.cpuCount, unittest.equals(42));
    unittest.expect(o.memorySizeMb, unittest.equals(42));
  }
  buildCounterNodeConfig--;
}

buildUnnamed5653() {
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

checkUnnamed5653(core.Map<core.String, core.Object> o) {
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

buildUnnamed5654() {
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

checkUnnamed5654(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed5653();
    o.name = "foo";
    o.response = buildUnnamed5654();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed5653(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5654(o.response);
  }
  buildCounterOperation--;
}

buildUnnamed5655() {
  var o = new core.List<api.AuditConfig>();
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

checkUnnamed5655(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

buildUnnamed5656() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed5656(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed5655();
    o.bindings = buildUnnamed5656();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed5655(o.auditConfigs);
    checkUnnamed5656(o.bindings);
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

buildUnnamed5657() {
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

checkUnnamed5657(core.Map<core.String, core.Object> o) {
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

buildUnnamed5658() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed5657());
  o.add(buildUnnamed5657());
  return o;
}

checkUnnamed5658(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5657(o[0]);
  checkUnnamed5657(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5658();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed5658(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed5659() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5659(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed5659();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed5659(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed5660() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5660(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed5660();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed5660(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterUpdateParametersRequest = 0;
buildUpdateParametersRequest() {
  var o = new api.UpdateParametersRequest();
  buildCounterUpdateParametersRequest++;
  if (buildCounterUpdateParametersRequest < 3) {
    o.parameters = buildMemcacheParameters();
    o.updateMask = "foo";
  }
  buildCounterUpdateParametersRequest--;
  return o;
}

checkUpdateParametersRequest(api.UpdateParametersRequest o) {
  buildCounterUpdateParametersRequest++;
  if (buildCounterUpdateParametersRequest < 3) {
    checkMemcacheParameters(o.parameters);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterUpdateParametersRequest--;
}

core.int buildCounterZoneMetadata = 0;
buildZoneMetadata() {
  var o = new api.ZoneMetadata();
  buildCounterZoneMetadata++;
  if (buildCounterZoneMetadata < 3) {}
  buildCounterZoneMetadata--;
  return o;
}

checkZoneMetadata(api.ZoneMetadata o) {
  buildCounterZoneMetadata++;
  if (buildCounterZoneMetadata < 3) {}
  buildCounterZoneMetadata--;
}

main() {
  unittest.group("obj-schema-ApplyParametersRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplyParametersRequest();
      var od = new api.ApplyParametersRequest.fromJson(o.toJson());
      checkApplyParametersRequest(od);
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

  unittest.group("obj-schema-CancelOperationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCancelOperationRequest();
      var od = new api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od);
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

  unittest.group("obj-schema-GoogleCloudMemcacheV1beta2LocationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMemcacheV1beta2LocationMetadata();
      var od = new api.GoogleCloudMemcacheV1beta2LocationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudMemcacheV1beta2LocationMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMemcacheV1beta2OperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMemcacheV1beta2OperationMetadata();
      var od = new api.GoogleCloudMemcacheV1beta2OperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudMemcacheV1beta2OperationMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1Instance", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudSaasacceleratorManagementProvidersV1Instance();
      var od = new api
              .GoogleCloudSaasacceleratorManagementProvidersV1Instance.fromJson(
          o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1Instance(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule();
      var od = new api
              .GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule.fromJson(
          o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata();
      var od = new api
              .GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata.fromJson(
          o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource();
      var od = new api
              .GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource.fromJson(
          o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility();
      var od = new api
              .GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility.fromJson(
          o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion();
      var od = new api
              .GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion.fromJson(
          o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata();
      var od = new api
              .GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata.fromJson(
          o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata(od);
    });
  });

  unittest.group("obj-schema-Instance", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstance();
      var od = new api.Instance.fromJson(o.toJson());
      checkInstance(od);
    });
  });

  unittest.group("obj-schema-InstanceMessage", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceMessage();
      var od = new api.InstanceMessage.fromJson(o.toJson());
      checkInstanceMessage(od);
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

  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group("obj-schema-MemcacheParameters", () {
    unittest.test("to-json--from-json", () {
      var o = buildMemcacheParameters();
      var od = new api.MemcacheParameters.fromJson(o.toJson());
      checkMemcacheParameters(od);
    });
  });

  unittest.group("obj-schema-Node", () {
    unittest.test("to-json--from-json", () {
      var o = buildNode();
      var od = new api.Node.fromJson(o.toJson());
      checkNode(od);
    });
  });

  unittest.group("obj-schema-NodeConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildNodeConfig();
      var od = new api.NodeConfig.fromJson(o.toJson());
      checkNodeConfig(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
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

  unittest.group("obj-schema-UpdateParametersRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateParametersRequest();
      var od = new api.UpdateParametersRequest.fromJson(o.toJson());
      checkUpdateParametersRequest(od);
    });
  });

  unittest.group("obj-schema-ZoneMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildZoneMetadata();
      var od = new api.ZoneMetadata.fromJson(o.toJson());
      checkZoneMetadata(od);
    });
  });

  unittest.group("resource-ProjectsLocationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.MemcacheApi(mock).projects.locations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
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
          new api.MemcacheApi(mock).projects.locations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
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

  unittest.group("resource-ProjectsLocationsInstancesResourceApi", () {
    unittest.test("method--applyParameters", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsInstancesResourceApi res =
          new api.MemcacheApi(mock).projects.locations.instances;
      var arg_request = buildApplyParametersRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ApplyParametersRequest.fromJson(json);
        checkApplyParametersRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
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
          .applyParameters(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsInstancesResourceApi res =
          new api.MemcacheApi(mock).projects.locations.instances;
      var arg_request = buildInstance();
      var arg_parent = "foo";
      var arg_instanceId = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
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
            queryMap["instanceId"].first, unittest.equals(arg_instanceId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              instanceId: arg_instanceId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsInstancesResourceApi res =
          new api.MemcacheApi(mock).projects.locations.instances;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
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
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsInstancesResourceApi res =
          new api.MemcacheApi(mock).projects.locations.instances;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
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
      api.ProjectsLocationsInstancesResourceApi res =
          new api.MemcacheApi(mock).projects.locations.instances;
      var arg_resource = "foo";
      var arg_options_requestedPolicyVersion = 42;
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
            unittest.equals("v1beta2/"));
        pathOffset += 8;
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
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsInstancesResourceApi res =
          new api.MemcacheApi(mock).projects.locations.instances;
      var arg_parent = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_orderBy = "foo";
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
            unittest.equals("v1beta2/"));
        pathOffset += 8;
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
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListInstancesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageToken: arg_pageToken,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListInstancesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsInstancesResourceApi res =
          new api.MemcacheApi(mock).projects.locations.instances;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
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
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsInstancesResourceApi res =
          new api.MemcacheApi(mock).projects.locations.instances;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
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
      api.ProjectsLocationsInstancesResourceApi res =
          new api.MemcacheApi(mock).projects.locations.instances;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
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

    unittest.test("method--updateParameters", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsInstancesResourceApi res =
          new api.MemcacheApi(mock).projects.locations.instances;
      var arg_request = buildUpdateParametersRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateParametersRequest.fromJson(json);
        checkUpdateParametersRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
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
          .updateParameters(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.MemcacheApi(mock).projects.locations.operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CancelOperationRequest.fromJson(json);
        checkCancelOperationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
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
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.MemcacheApi(mock).projects.locations.operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
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
      api.ProjectsLocationsOperationsResourceApi res =
          new api.MemcacheApi(mock).projects.locations.operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
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

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.MemcacheApi(mock).projects.locations.operations;
      var arg_name = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });
}
