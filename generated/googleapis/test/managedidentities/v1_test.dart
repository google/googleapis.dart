library googleapis.managedidentities.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/managedidentities/v1.dart' as api;

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

core.int buildCounterAttachTrustRequest = 0;
buildAttachTrustRequest() {
  var o = new api.AttachTrustRequest();
  buildCounterAttachTrustRequest++;
  if (buildCounterAttachTrustRequest < 3) {
    o.trust = buildTrust();
  }
  buildCounterAttachTrustRequest--;
  return o;
}

checkAttachTrustRequest(api.AttachTrustRequest o) {
  buildCounterAttachTrustRequest++;
  if (buildCounterAttachTrustRequest < 3) {
    checkTrust(o.trust);
  }
  buildCounterAttachTrustRequest--;
}

buildUnnamed3014() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3014(core.List<core.String> o) {
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
    o.members = buildUnnamed3014();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed3014(o.members);
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

core.int buildCounterDailyCycle = 0;
buildDailyCycle() {
  var o = new api.DailyCycle();
  buildCounterDailyCycle++;
  if (buildCounterDailyCycle < 3) {
    o.duration = "foo";
    o.startTime = buildTimeOfDay();
  }
  buildCounterDailyCycle--;
  return o;
}

checkDailyCycle(api.DailyCycle o) {
  buildCounterDailyCycle++;
  if (buildCounterDailyCycle < 3) {
    unittest.expect(o.duration, unittest.equals('foo'));
    checkTimeOfDay(o.startTime);
  }
  buildCounterDailyCycle--;
}

core.int buildCounterDate = 0;
buildDate() {
  var o = new api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterDate--;
}

core.int buildCounterDenyMaintenancePeriod = 0;
buildDenyMaintenancePeriod() {
  var o = new api.DenyMaintenancePeriod();
  buildCounterDenyMaintenancePeriod++;
  if (buildCounterDenyMaintenancePeriod < 3) {
    o.endDate = buildDate();
    o.startDate = buildDate();
    o.time = buildTimeOfDay();
  }
  buildCounterDenyMaintenancePeriod--;
  return o;
}

checkDenyMaintenancePeriod(api.DenyMaintenancePeriod o) {
  buildCounterDenyMaintenancePeriod++;
  if (buildCounterDenyMaintenancePeriod < 3) {
    checkDate(o.endDate);
    checkDate(o.startDate);
    checkTimeOfDay(o.time);
  }
  buildCounterDenyMaintenancePeriod--;
}

core.int buildCounterDetachTrustRequest = 0;
buildDetachTrustRequest() {
  var o = new api.DetachTrustRequest();
  buildCounterDetachTrustRequest++;
  if (buildCounterDetachTrustRequest < 3) {
    o.trust = buildTrust();
  }
  buildCounterDetachTrustRequest--;
  return o;
}

checkDetachTrustRequest(api.DetachTrustRequest o) {
  buildCounterDetachTrustRequest++;
  if (buildCounterDetachTrustRequest < 3) {
    checkTrust(o.trust);
  }
  buildCounterDetachTrustRequest--;
}

buildUnnamed3015() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3015(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3016() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3016(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3017() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3017(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3018() {
  var o = new core.List<api.Trust>();
  o.add(buildTrust());
  o.add(buildTrust());
  return o;
}

checkUnnamed3018(core.List<api.Trust> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrust(o[0]);
  checkTrust(o[1]);
}

core.int buildCounterDomain = 0;
buildDomain() {
  var o = new api.Domain();
  buildCounterDomain++;
  if (buildCounterDomain < 3) {
    o.admin = "foo";
    o.authorizedNetworks = buildUnnamed3015();
    o.createTime = "foo";
    o.fqdn = "foo";
    o.labels = buildUnnamed3016();
    o.locations = buildUnnamed3017();
    o.name = "foo";
    o.reservedIpRange = "foo";
    o.state = "foo";
    o.statusMessage = "foo";
    o.trusts = buildUnnamed3018();
    o.updateTime = "foo";
  }
  buildCounterDomain--;
  return o;
}

checkDomain(api.Domain o) {
  buildCounterDomain++;
  if (buildCounterDomain < 3) {
    unittest.expect(o.admin, unittest.equals('foo'));
    checkUnnamed3015(o.authorizedNetworks);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.fqdn, unittest.equals('foo'));
    checkUnnamed3016(o.labels);
    checkUnnamed3017(o.locations);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.reservedIpRange, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    checkUnnamed3018(o.trusts);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterDomain--;
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

core.int buildCounterGoogleCloudManagedidentitiesV1OpMetadata = 0;
buildGoogleCloudManagedidentitiesV1OpMetadata() {
  var o = new api.GoogleCloudManagedidentitiesV1OpMetadata();
  buildCounterGoogleCloudManagedidentitiesV1OpMetadata++;
  if (buildCounterGoogleCloudManagedidentitiesV1OpMetadata < 3) {
    o.apiVersion = "foo";
    o.createTime = "foo";
    o.endTime = "foo";
    o.requestedCancellation = true;
    o.target = "foo";
    o.verb = "foo";
  }
  buildCounterGoogleCloudManagedidentitiesV1OpMetadata--;
  return o;
}

checkGoogleCloudManagedidentitiesV1OpMetadata(
    api.GoogleCloudManagedidentitiesV1OpMetadata o) {
  buildCounterGoogleCloudManagedidentitiesV1OpMetadata++;
  if (buildCounterGoogleCloudManagedidentitiesV1OpMetadata < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.requestedCancellation, unittest.isTrue);
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.verb, unittest.equals('foo'));
  }
  buildCounterGoogleCloudManagedidentitiesV1OpMetadata--;
}

core.int buildCounterGoogleCloudManagedidentitiesV1alpha1OpMetadata = 0;
buildGoogleCloudManagedidentitiesV1alpha1OpMetadata() {
  var o = new api.GoogleCloudManagedidentitiesV1alpha1OpMetadata();
  buildCounterGoogleCloudManagedidentitiesV1alpha1OpMetadata++;
  if (buildCounterGoogleCloudManagedidentitiesV1alpha1OpMetadata < 3) {
    o.apiVersion = "foo";
    o.createTime = "foo";
    o.endTime = "foo";
    o.requestedCancellation = true;
    o.target = "foo";
    o.verb = "foo";
  }
  buildCounterGoogleCloudManagedidentitiesV1alpha1OpMetadata--;
  return o;
}

checkGoogleCloudManagedidentitiesV1alpha1OpMetadata(
    api.GoogleCloudManagedidentitiesV1alpha1OpMetadata o) {
  buildCounterGoogleCloudManagedidentitiesV1alpha1OpMetadata++;
  if (buildCounterGoogleCloudManagedidentitiesV1alpha1OpMetadata < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.requestedCancellation, unittest.isTrue);
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.verb, unittest.equals('foo'));
  }
  buildCounterGoogleCloudManagedidentitiesV1alpha1OpMetadata--;
}

core.int buildCounterGoogleCloudManagedidentitiesV1beta1OpMetadata = 0;
buildGoogleCloudManagedidentitiesV1beta1OpMetadata() {
  var o = new api.GoogleCloudManagedidentitiesV1beta1OpMetadata();
  buildCounterGoogleCloudManagedidentitiesV1beta1OpMetadata++;
  if (buildCounterGoogleCloudManagedidentitiesV1beta1OpMetadata < 3) {
    o.apiVersion = "foo";
    o.createTime = "foo";
    o.endTime = "foo";
    o.requestedCancellation = true;
    o.target = "foo";
    o.verb = "foo";
  }
  buildCounterGoogleCloudManagedidentitiesV1beta1OpMetadata--;
  return o;
}

checkGoogleCloudManagedidentitiesV1beta1OpMetadata(
    api.GoogleCloudManagedidentitiesV1beta1OpMetadata o) {
  buildCounterGoogleCloudManagedidentitiesV1beta1OpMetadata++;
  if (buildCounterGoogleCloudManagedidentitiesV1beta1OpMetadata < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.requestedCancellation, unittest.isTrue);
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.verb, unittest.equals('foo'));
  }
  buildCounterGoogleCloudManagedidentitiesV1beta1OpMetadata--;
}

buildUnnamed3019() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3019(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3020() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3020(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3021() {
  var o = new core.Map<core.String,
      api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>();
  o["x"] =
      buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule();
  o["y"] =
      buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule();
  return o;
}

checkUnnamed3021(
    core.Map<core.String,
            api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule(
      o["x"]);
  checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule(
      o["y"]);
}

buildUnnamed3022() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3022(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3023() {
  var o = new core.List<
      api.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>();
  o.add(
      buildGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource());
  o.add(
      buildGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource());
  return o;
}

checkUnnamed3023(
    core.List<
            api.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource(o[0]);
  checkGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource(o[1]);
}

buildUnnamed3024() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3024(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed3019();
    o.maintenancePolicyNames = buildUnnamed3020();
    o.maintenanceSchedules = buildUnnamed3021();
    o.maintenanceSettings =
        buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings();
    o.name = "foo";
    o.producerMetadata = buildUnnamed3022();
    o.provisionedResources = buildUnnamed3023();
    o.slmInstanceTemplate = "foo";
    o.sloMetadata =
        buildGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata();
    o.softwareVersions = buildUnnamed3024();
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
    checkUnnamed3019(o.labels);
    checkUnnamed3020(o.maintenancePolicyNames);
    checkUnnamed3021(o.maintenanceSchedules);
    checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings(
        o.maintenanceSettings);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3022(o.producerMetadata);
    checkUnnamed3023(o.provisionedResources);
    unittest.expect(o.slmInstanceTemplate, unittest.equals('foo'));
    checkGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata(
        o.sloMetadata);
    checkUnnamed3024(o.softwareVersions);
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

buildUnnamed3025() {
  var o = new core.Map<core.String, api.MaintenancePolicy>();
  o["x"] = buildMaintenancePolicy();
  o["y"] = buildMaintenancePolicy();
  return o;
}

checkUnnamed3025(core.Map<core.String, api.MaintenancePolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMaintenancePolicy(o["x"]);
  checkMaintenancePolicy(o["y"]);
}

core.int
    buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings =
    0;
buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings() {
  var o = new api
      .GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings();
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings <
      3) {
    o.exclude = true;
    o.maintenancePolicies = buildUnnamed3025();
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings--;
  return o;
}

checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings(
    api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings o) {
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings <
      3) {
    unittest.expect(o.exclude, unittest.isTrue);
    checkUnnamed3025(o.maintenancePolicies);
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings--;
}

buildUnnamed3026() {
  var o = new core
      .List<api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>();
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  return o;
}

checkUnnamed3026(
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
    o.exclusions = buildUnnamed3026();
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
    checkUnnamed3026(o.exclusions);
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

buildUnnamed3027() {
  var o = new core
      .List<api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>();
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  return o;
}

checkUnnamed3027(
    core.List<api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(o[0]);
  checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(o[1]);
}

buildUnnamed3028() {
  var o = new core.List<
      api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>();
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata());
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata());
  return o;
}

checkUnnamed3028(
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
    o.exclusions = buildUnnamed3027();
    o.nodes = buildUnnamed3028();
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
    checkUnnamed3027(o.exclusions);
    checkUnnamed3028(o.nodes);
    unittest.expect(o.tier, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata--;
}

buildUnnamed3029() {
  var o = new core.List<api.Domain>();
  o.add(buildDomain());
  o.add(buildDomain());
  return o;
}

checkUnnamed3029(core.List<api.Domain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomain(o[0]);
  checkDomain(o[1]);
}

buildUnnamed3030() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3030(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListDomainsResponse = 0;
buildListDomainsResponse() {
  var o = new api.ListDomainsResponse();
  buildCounterListDomainsResponse++;
  if (buildCounterListDomainsResponse < 3) {
    o.domains = buildUnnamed3029();
    o.nextPageToken = "foo";
    o.unreachable = buildUnnamed3030();
  }
  buildCounterListDomainsResponse--;
  return o;
}

checkListDomainsResponse(api.ListDomainsResponse o) {
  buildCounterListDomainsResponse++;
  if (buildCounterListDomainsResponse < 3) {
    checkUnnamed3029(o.domains);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3030(o.unreachable);
  }
  buildCounterListDomainsResponse--;
}

buildUnnamed3031() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed3031(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
buildListLocationsResponse() {
  var o = new api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed3031();
    o.nextPageToken = "foo";
  }
  buildCounterListLocationsResponse--;
  return o;
}

checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed3031(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

buildUnnamed3032() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed3032(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed3032();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3032(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed3033() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3033(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3034() {
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

checkUnnamed3034(core.Map<core.String, core.Object> o) {
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
    o.labels = buildUnnamed3033();
    o.locationId = "foo";
    o.metadata = buildUnnamed3034();
    o.name = "foo";
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed3033(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed3034(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

buildUnnamed3035() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3035(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterMaintenancePolicy = 0;
buildMaintenancePolicy() {
  var o = new api.MaintenancePolicy();
  buildCounterMaintenancePolicy++;
  if (buildCounterMaintenancePolicy < 3) {
    o.createTime = "foo";
    o.description = "foo";
    o.labels = buildUnnamed3035();
    o.name = "foo";
    o.state = "foo";
    o.updatePolicy = buildUpdatePolicy();
    o.updateTime = "foo";
  }
  buildCounterMaintenancePolicy--;
  return o;
}

checkMaintenancePolicy(api.MaintenancePolicy o) {
  buildCounterMaintenancePolicy++;
  if (buildCounterMaintenancePolicy < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed3035(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    checkUpdatePolicy(o.updatePolicy);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterMaintenancePolicy--;
}

core.int buildCounterMaintenanceWindow = 0;
buildMaintenanceWindow() {
  var o = new api.MaintenanceWindow();
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    o.dailyCycle = buildDailyCycle();
    o.weeklyCycle = buildWeeklyCycle();
  }
  buildCounterMaintenanceWindow--;
  return o;
}

checkMaintenanceWindow(api.MaintenanceWindow o) {
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    checkDailyCycle(o.dailyCycle);
    checkWeeklyCycle(o.weeklyCycle);
  }
  buildCounterMaintenanceWindow--;
}

buildUnnamed3036() {
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

checkUnnamed3036(core.Map<core.String, core.Object> o) {
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

buildUnnamed3037() {
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

checkUnnamed3037(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed3036();
    o.name = "foo";
    o.response = buildUnnamed3037();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed3036(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3037(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationMetadata = 0;
buildOperationMetadata() {
  var o = new api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.apiVersion = "foo";
    o.cancelRequested = true;
    o.createTime = "foo";
    o.endTime = "foo";
    o.statusDetail = "foo";
    o.target = "foo";
    o.verb = "foo";
  }
  buildCounterOperationMetadata--;
  return o;
}

checkOperationMetadata(api.OperationMetadata o) {
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.cancelRequested, unittest.isTrue);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.statusDetail, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.verb, unittest.equals('foo'));
  }
  buildCounterOperationMetadata--;
}

buildUnnamed3038() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed3038(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed3038();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed3038(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

buildUnnamed3039() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3039(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReconfigureTrustRequest = 0;
buildReconfigureTrustRequest() {
  var o = new api.ReconfigureTrustRequest();
  buildCounterReconfigureTrustRequest++;
  if (buildCounterReconfigureTrustRequest < 3) {
    o.targetDnsIpAddresses = buildUnnamed3039();
    o.targetDomainName = "foo";
  }
  buildCounterReconfigureTrustRequest--;
  return o;
}

checkReconfigureTrustRequest(api.ReconfigureTrustRequest o) {
  buildCounterReconfigureTrustRequest++;
  if (buildCounterReconfigureTrustRequest < 3) {
    checkUnnamed3039(o.targetDnsIpAddresses);
    unittest.expect(o.targetDomainName, unittest.equals('foo'));
  }
  buildCounterReconfigureTrustRequest--;
}

core.int buildCounterResetAdminPasswordRequest = 0;
buildResetAdminPasswordRequest() {
  var o = new api.ResetAdminPasswordRequest();
  buildCounterResetAdminPasswordRequest++;
  if (buildCounterResetAdminPasswordRequest < 3) {}
  buildCounterResetAdminPasswordRequest--;
  return o;
}

checkResetAdminPasswordRequest(api.ResetAdminPasswordRequest o) {
  buildCounterResetAdminPasswordRequest++;
  if (buildCounterResetAdminPasswordRequest < 3) {}
  buildCounterResetAdminPasswordRequest--;
}

core.int buildCounterResetAdminPasswordResponse = 0;
buildResetAdminPasswordResponse() {
  var o = new api.ResetAdminPasswordResponse();
  buildCounterResetAdminPasswordResponse++;
  if (buildCounterResetAdminPasswordResponse < 3) {
    o.password = "foo";
  }
  buildCounterResetAdminPasswordResponse--;
  return o;
}

checkResetAdminPasswordResponse(api.ResetAdminPasswordResponse o) {
  buildCounterResetAdminPasswordResponse++;
  if (buildCounterResetAdminPasswordResponse < 3) {
    unittest.expect(o.password, unittest.equals('foo'));
  }
  buildCounterResetAdminPasswordResponse--;
}

core.int buildCounterSchedule = 0;
buildSchedule() {
  var o = new api.Schedule();
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    o.day = "foo";
    o.duration = "foo";
    o.startTime = buildTimeOfDay();
  }
  buildCounterSchedule--;
  return o;
}

checkSchedule(api.Schedule o) {
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    unittest.expect(o.day, unittest.equals('foo'));
    unittest.expect(o.duration, unittest.equals('foo'));
    checkTimeOfDay(o.startTime);
  }
  buildCounterSchedule--;
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

buildUnnamed3040() {
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

checkUnnamed3040(core.Map<core.String, core.Object> o) {
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

buildUnnamed3041() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed3040());
  o.add(buildUnnamed3040());
  return o;
}

checkUnnamed3041(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3040(o[0]);
  checkUnnamed3040(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3041();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3041(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed3042() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3042(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed3042();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed3042(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed3043() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3043(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed3043();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed3043(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTimeOfDay = 0;
buildTimeOfDay() {
  var o = new api.TimeOfDay();
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    o.hours = 42;
    o.minutes = 42;
    o.nanos = 42;
    o.seconds = 42;
  }
  buildCounterTimeOfDay--;
  return o;
}

checkTimeOfDay(api.TimeOfDay o) {
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    unittest.expect(o.hours, unittest.equals(42));
    unittest.expect(o.minutes, unittest.equals(42));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.seconds, unittest.equals(42));
  }
  buildCounterTimeOfDay--;
}

buildUnnamed3044() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3044(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTrust = 0;
buildTrust() {
  var o = new api.Trust();
  buildCounterTrust++;
  if (buildCounterTrust < 3) {
    o.createTime = "foo";
    o.lastTrustHeartbeatTime = "foo";
    o.selectiveAuthentication = true;
    o.state = "foo";
    o.stateDescription = "foo";
    o.targetDnsIpAddresses = buildUnnamed3044();
    o.targetDomainName = "foo";
    o.trustDirection = "foo";
    o.trustHandshakeSecret = "foo";
    o.trustType = "foo";
    o.updateTime = "foo";
  }
  buildCounterTrust--;
  return o;
}

checkTrust(api.Trust o) {
  buildCounterTrust++;
  if (buildCounterTrust < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.lastTrustHeartbeatTime, unittest.equals('foo'));
    unittest.expect(o.selectiveAuthentication, unittest.isTrue);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateDescription, unittest.equals('foo'));
    checkUnnamed3044(o.targetDnsIpAddresses);
    unittest.expect(o.targetDomainName, unittest.equals('foo'));
    unittest.expect(o.trustDirection, unittest.equals('foo'));
    unittest.expect(o.trustHandshakeSecret, unittest.equals('foo'));
    unittest.expect(o.trustType, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterTrust--;
}

buildUnnamed3045() {
  var o = new core.List<api.DenyMaintenancePeriod>();
  o.add(buildDenyMaintenancePeriod());
  o.add(buildDenyMaintenancePeriod());
  return o;
}

checkUnnamed3045(core.List<api.DenyMaintenancePeriod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDenyMaintenancePeriod(o[0]);
  checkDenyMaintenancePeriod(o[1]);
}

core.int buildCounterUpdatePolicy = 0;
buildUpdatePolicy() {
  var o = new api.UpdatePolicy();
  buildCounterUpdatePolicy++;
  if (buildCounterUpdatePolicy < 3) {
    o.channel = "foo";
    o.denyMaintenancePeriods = buildUnnamed3045();
    o.window = buildMaintenanceWindow();
  }
  buildCounterUpdatePolicy--;
  return o;
}

checkUpdatePolicy(api.UpdatePolicy o) {
  buildCounterUpdatePolicy++;
  if (buildCounterUpdatePolicy < 3) {
    unittest.expect(o.channel, unittest.equals('foo'));
    checkUnnamed3045(o.denyMaintenancePeriods);
    checkMaintenanceWindow(o.window);
  }
  buildCounterUpdatePolicy--;
}

core.int buildCounterValidateTrustRequest = 0;
buildValidateTrustRequest() {
  var o = new api.ValidateTrustRequest();
  buildCounterValidateTrustRequest++;
  if (buildCounterValidateTrustRequest < 3) {
    o.trust = buildTrust();
  }
  buildCounterValidateTrustRequest--;
  return o;
}

checkValidateTrustRequest(api.ValidateTrustRequest o) {
  buildCounterValidateTrustRequest++;
  if (buildCounterValidateTrustRequest < 3) {
    checkTrust(o.trust);
  }
  buildCounterValidateTrustRequest--;
}

buildUnnamed3046() {
  var o = new core.List<api.Schedule>();
  o.add(buildSchedule());
  o.add(buildSchedule());
  return o;
}

checkUnnamed3046(core.List<api.Schedule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchedule(o[0]);
  checkSchedule(o[1]);
}

core.int buildCounterWeeklyCycle = 0;
buildWeeklyCycle() {
  var o = new api.WeeklyCycle();
  buildCounterWeeklyCycle++;
  if (buildCounterWeeklyCycle < 3) {
    o.schedule = buildUnnamed3046();
  }
  buildCounterWeeklyCycle--;
  return o;
}

checkWeeklyCycle(api.WeeklyCycle o) {
  buildCounterWeeklyCycle++;
  if (buildCounterWeeklyCycle < 3) {
    checkUnnamed3046(o.schedule);
  }
  buildCounterWeeklyCycle--;
}

main() {
  unittest.group("obj-schema-AttachTrustRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAttachTrustRequest();
      var od = new api.AttachTrustRequest.fromJson(o.toJson());
      checkAttachTrustRequest(od);
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

  unittest.group("obj-schema-DailyCycle", () {
    unittest.test("to-json--from-json", () {
      var o = buildDailyCycle();
      var od = new api.DailyCycle.fromJson(o.toJson());
      checkDailyCycle(od);
    });
  });

  unittest.group("obj-schema-Date", () {
    unittest.test("to-json--from-json", () {
      var o = buildDate();
      var od = new api.Date.fromJson(o.toJson());
      checkDate(od);
    });
  });

  unittest.group("obj-schema-DenyMaintenancePeriod", () {
    unittest.test("to-json--from-json", () {
      var o = buildDenyMaintenancePeriod();
      var od = new api.DenyMaintenancePeriod.fromJson(o.toJson());
      checkDenyMaintenancePeriod(od);
    });
  });

  unittest.group("obj-schema-DetachTrustRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDetachTrustRequest();
      var od = new api.DetachTrustRequest.fromJson(o.toJson());
      checkDetachTrustRequest(od);
    });
  });

  unittest.group("obj-schema-Domain", () {
    unittest.test("to-json--from-json", () {
      var o = buildDomain();
      var od = new api.Domain.fromJson(o.toJson());
      checkDomain(od);
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

  unittest.group("obj-schema-GoogleCloudManagedidentitiesV1OpMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudManagedidentitiesV1OpMetadata();
      var od =
          new api.GoogleCloudManagedidentitiesV1OpMetadata.fromJson(o.toJson());
      checkGoogleCloudManagedidentitiesV1OpMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudManagedidentitiesV1alpha1OpMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudManagedidentitiesV1alpha1OpMetadata();
      var od = new api.GoogleCloudManagedidentitiesV1alpha1OpMetadata.fromJson(
          o.toJson());
      checkGoogleCloudManagedidentitiesV1alpha1OpMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudManagedidentitiesV1beta1OpMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudManagedidentitiesV1beta1OpMetadata();
      var od = new api.GoogleCloudManagedidentitiesV1beta1OpMetadata.fromJson(
          o.toJson());
      checkGoogleCloudManagedidentitiesV1beta1OpMetadata(od);
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
      "obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings();
      var od = new api
              .GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings.fromJson(
          o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings(
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

  unittest.group("obj-schema-ListDomainsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDomainsResponse();
      var od = new api.ListDomainsResponse.fromJson(o.toJson());
      checkListDomainsResponse(od);
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

  unittest.group("obj-schema-MaintenancePolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildMaintenancePolicy();
      var od = new api.MaintenancePolicy.fromJson(o.toJson());
      checkMaintenancePolicy(od);
    });
  });

  unittest.group("obj-schema-MaintenanceWindow", () {
    unittest.test("to-json--from-json", () {
      var o = buildMaintenanceWindow();
      var od = new api.MaintenanceWindow.fromJson(o.toJson());
      checkMaintenanceWindow(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-OperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadata();
      var od = new api.OperationMetadata.fromJson(o.toJson());
      checkOperationMetadata(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-ReconfigureTrustRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReconfigureTrustRequest();
      var od = new api.ReconfigureTrustRequest.fromJson(o.toJson());
      checkReconfigureTrustRequest(od);
    });
  });

  unittest.group("obj-schema-ResetAdminPasswordRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildResetAdminPasswordRequest();
      var od = new api.ResetAdminPasswordRequest.fromJson(o.toJson());
      checkResetAdminPasswordRequest(od);
    });
  });

  unittest.group("obj-schema-ResetAdminPasswordResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildResetAdminPasswordResponse();
      var od = new api.ResetAdminPasswordResponse.fromJson(o.toJson());
      checkResetAdminPasswordResponse(od);
    });
  });

  unittest.group("obj-schema-Schedule", () {
    unittest.test("to-json--from-json", () {
      var o = buildSchedule();
      var od = new api.Schedule.fromJson(o.toJson());
      checkSchedule(od);
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

  unittest.group("obj-schema-TimeOfDay", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimeOfDay();
      var od = new api.TimeOfDay.fromJson(o.toJson());
      checkTimeOfDay(od);
    });
  });

  unittest.group("obj-schema-Trust", () {
    unittest.test("to-json--from-json", () {
      var o = buildTrust();
      var od = new api.Trust.fromJson(o.toJson());
      checkTrust(od);
    });
  });

  unittest.group("obj-schema-UpdatePolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdatePolicy();
      var od = new api.UpdatePolicy.fromJson(o.toJson());
      checkUpdatePolicy(od);
    });
  });

  unittest.group("obj-schema-ValidateTrustRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildValidateTrustRequest();
      var od = new api.ValidateTrustRequest.fromJson(o.toJson());
      checkValidateTrustRequest(od);
    });
  });

  unittest.group("obj-schema-WeeklyCycle", () {
    unittest.test("to-json--from-json", () {
      var o = buildWeeklyCycle();
      var od = new api.WeeklyCycle.fromJson(o.toJson());
      checkWeeklyCycle(od);
    });
  });

  unittest.group("resource-ProjectsLocationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.ManagedidentitiesApi(mock).projects.locations;
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
          new api.ManagedidentitiesApi(mock).projects.locations;
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListLocationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsGlobalDomainsResourceApi", () {
    unittest.test("method--attachTrust", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          new api.ManagedidentitiesApi(mock).projects.locations.global.domains;
      var arg_request = buildAttachTrustRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AttachTrustRequest.fromJson(json);
        checkAttachTrustRequest(obj);

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
          .attachTrust(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          new api.ManagedidentitiesApi(mock).projects.locations.global.domains;
      var arg_request = buildDomain();
      var arg_parent = "foo";
      var arg_domainName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Domain.fromJson(json);
        checkDomain(obj);

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
            queryMap["domainName"].first, unittest.equals(arg_domainName));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              domainName: arg_domainName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          new api.ManagedidentitiesApi(mock).projects.locations.global.domains;
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
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--detachTrust", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          new api.ManagedidentitiesApi(mock).projects.locations.global.domains;
      var arg_request = buildDetachTrustRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DetachTrustRequest.fromJson(json);
        checkDetachTrustRequest(obj);

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
          .detachTrust(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          new api.ManagedidentitiesApi(mock).projects.locations.global.domains;
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
        var resp = convert.json.encode(buildDomain());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDomain(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          new api.ManagedidentitiesApi(mock).projects.locations.global.domains;
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
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          new api.ManagedidentitiesApi(mock).projects.locations.global.domains;
      var arg_parent = "foo";
      var arg_orderBy = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
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
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListDomainsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              filter: arg_filter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDomainsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          new api.ManagedidentitiesApi(mock).projects.locations.global.domains;
      var arg_request = buildDomain();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Domain.fromJson(json);
        checkDomain(obj);

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

    unittest.test("method--reconfigureTrust", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          new api.ManagedidentitiesApi(mock).projects.locations.global.domains;
      var arg_request = buildReconfigureTrustRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReconfigureTrustRequest.fromJson(json);
        checkReconfigureTrustRequest(obj);

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
          .reconfigureTrust(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--resetAdminPassword", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          new api.ManagedidentitiesApi(mock).projects.locations.global.domains;
      var arg_request = buildResetAdminPasswordRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ResetAdminPasswordRequest.fromJson(json);
        checkResetAdminPasswordRequest(obj);

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
        var resp = convert.json.encode(buildResetAdminPasswordResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resetAdminPassword(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkResetAdminPasswordResponse(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          new api.ManagedidentitiesApi(mock).projects.locations.global.domains;
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
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          new api.ManagedidentitiesApi(mock).projects.locations.global.domains;
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

    unittest.test("method--validateTrust", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          new api.ManagedidentitiesApi(mock).projects.locations.global.domains;
      var arg_request = buildValidateTrustRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ValidateTrustRequest.fromJson(json);
        checkValidateTrustRequest(obj);

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
          .validateTrust(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsGlobalOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGlobalOperationsResourceApi res =
          new api.ManagedidentitiesApi(mock)
              .projects
              .locations
              .global
              .operations;
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
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGlobalOperationsResourceApi res =
          new api.ManagedidentitiesApi(mock)
              .projects
              .locations
              .global
              .operations;
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
      api.ProjectsLocationsGlobalOperationsResourceApi res =
          new api.ManagedidentitiesApi(mock)
              .projects
              .locations
              .global
              .operations;
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

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsGlobalOperationsResourceApi res =
          new api.ManagedidentitiesApi(mock)
              .projects
              .locations
              .global
              .operations;
      var arg_name = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
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
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });
}
