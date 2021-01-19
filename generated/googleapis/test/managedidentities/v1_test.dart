// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

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

core.int buildCounterAttachTrustRequest = 0;
api.AttachTrustRequest buildAttachTrustRequest() {
  var o = api.AttachTrustRequest();
  buildCounterAttachTrustRequest++;
  if (buildCounterAttachTrustRequest < 3) {
    o.trust = buildTrust();
  }
  buildCounterAttachTrustRequest--;
  return o;
}

void checkAttachTrustRequest(api.AttachTrustRequest o) {
  buildCounterAttachTrustRequest++;
  if (buildCounterAttachTrustRequest < 3) {
    checkTrust(o.trust);
  }
  buildCounterAttachTrustRequest--;
}

core.List<core.String> buildUnnamed5745() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5745(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  var o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.bindingId = 'foo';
    o.condition = buildExpr();
    o.members = buildUnnamed5745();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    unittest.expect(o.bindingId, unittest.equals('foo'));
    checkExpr(o.condition);
    checkUnnamed5745(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  var o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.int buildCounterDetachTrustRequest = 0;
api.DetachTrustRequest buildDetachTrustRequest() {
  var o = api.DetachTrustRequest();
  buildCounterDetachTrustRequest++;
  if (buildCounterDetachTrustRequest < 3) {
    o.trust = buildTrust();
  }
  buildCounterDetachTrustRequest--;
  return o;
}

void checkDetachTrustRequest(api.DetachTrustRequest o) {
  buildCounterDetachTrustRequest++;
  if (buildCounterDetachTrustRequest < 3) {
    checkTrust(o.trust);
  }
  buildCounterDetachTrustRequest--;
}

core.List<core.String> buildUnnamed5746() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5746(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed5747() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5747(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5748() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5748(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Trust> buildUnnamed5749() {
  var o = <api.Trust>[];
  o.add(buildTrust());
  o.add(buildTrust());
  return o;
}

void checkUnnamed5749(core.List<api.Trust> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrust(o[0]);
  checkTrust(o[1]);
}

core.int buildCounterDomain = 0;
api.Domain buildDomain() {
  var o = api.Domain();
  buildCounterDomain++;
  if (buildCounterDomain < 3) {
    o.admin = 'foo';
    o.authorizedNetworks = buildUnnamed5746();
    o.createTime = 'foo';
    o.fqdn = 'foo';
    o.labels = buildUnnamed5747();
    o.locations = buildUnnamed5748();
    o.name = 'foo';
    o.reservedIpRange = 'foo';
    o.state = 'foo';
    o.statusMessage = 'foo';
    o.trusts = buildUnnamed5749();
    o.updateTime = 'foo';
  }
  buildCounterDomain--;
  return o;
}

void checkDomain(api.Domain o) {
  buildCounterDomain++;
  if (buildCounterDomain < 3) {
    unittest.expect(o.admin, unittest.equals('foo'));
    checkUnnamed5746(o.authorizedNetworks);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.fqdn, unittest.equals('foo'));
    checkUnnamed5747(o.labels);
    checkUnnamed5748(o.locations);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.reservedIpRange, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    checkUnnamed5749(o.trusts);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterDomain--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterExpr = 0;
api.Expr buildExpr() {
  var o = api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterExpr--;
  return o;
}

void checkExpr(api.Expr o) {
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
api.GoogleCloudManagedidentitiesV1OpMetadata
    buildGoogleCloudManagedidentitiesV1OpMetadata() {
  var o = api.GoogleCloudManagedidentitiesV1OpMetadata();
  buildCounterGoogleCloudManagedidentitiesV1OpMetadata++;
  if (buildCounterGoogleCloudManagedidentitiesV1OpMetadata < 3) {
    o.apiVersion = 'foo';
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.requestedCancellation = true;
    o.target = 'foo';
    o.verb = 'foo';
  }
  buildCounterGoogleCloudManagedidentitiesV1OpMetadata--;
  return o;
}

void checkGoogleCloudManagedidentitiesV1OpMetadata(
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
api.GoogleCloudManagedidentitiesV1alpha1OpMetadata
    buildGoogleCloudManagedidentitiesV1alpha1OpMetadata() {
  var o = api.GoogleCloudManagedidentitiesV1alpha1OpMetadata();
  buildCounterGoogleCloudManagedidentitiesV1alpha1OpMetadata++;
  if (buildCounterGoogleCloudManagedidentitiesV1alpha1OpMetadata < 3) {
    o.apiVersion = 'foo';
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.requestedCancellation = true;
    o.target = 'foo';
    o.verb = 'foo';
  }
  buildCounterGoogleCloudManagedidentitiesV1alpha1OpMetadata--;
  return o;
}

void checkGoogleCloudManagedidentitiesV1alpha1OpMetadata(
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
api.GoogleCloudManagedidentitiesV1beta1OpMetadata
    buildGoogleCloudManagedidentitiesV1beta1OpMetadata() {
  var o = api.GoogleCloudManagedidentitiesV1beta1OpMetadata();
  buildCounterGoogleCloudManagedidentitiesV1beta1OpMetadata++;
  if (buildCounterGoogleCloudManagedidentitiesV1beta1OpMetadata < 3) {
    o.apiVersion = 'foo';
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.requestedCancellation = true;
    o.target = 'foo';
    o.verb = 'foo';
  }
  buildCounterGoogleCloudManagedidentitiesV1beta1OpMetadata--;
  return o;
}

void checkGoogleCloudManagedidentitiesV1beta1OpMetadata(
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

core.Map<core.String, core.String> buildUnnamed5750() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5750(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed5751() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5751(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String,
        api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>
    buildUnnamed5752() {
  var o = <core.String,
      api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>{};
  o['x'] =
      buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule();
  o['y'] =
      buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule();
  return o;
}

void checkUnnamed5752(
    core.Map<core.String,
            api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule(
      o['x']);
  checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule(
      o['y']);
}

core.Map<core.String, core.String> buildUnnamed5753() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5753(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<
        api.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>
    buildUnnamed5754() {
  var o = <
      api.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>[];
  o.add(
      buildGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource());
  o.add(
      buildGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource());
  return o;
}

void checkUnnamed5754(
    core.List<
            api.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource(o[0]);
  checkGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource(o[1]);
}

core.Map<core.String, core.String> buildUnnamed5755() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5755(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudSaasacceleratorManagementProvidersV1Instance =
    0;
api.GoogleCloudSaasacceleratorManagementProvidersV1Instance
    buildGoogleCloudSaasacceleratorManagementProvidersV1Instance() {
  var o = api.GoogleCloudSaasacceleratorManagementProvidersV1Instance();
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1Instance++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1Instance < 3) {
    o.consumerDefinedName = 'foo';
    o.createTime = 'foo';
    o.labels = buildUnnamed5750();
    o.maintenancePolicyNames = buildUnnamed5751();
    o.maintenanceSchedules = buildUnnamed5752();
    o.maintenanceSettings =
        buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings();
    o.name = 'foo';
    o.producerMetadata = buildUnnamed5753();
    o.provisionedResources = buildUnnamed5754();
    o.slmInstanceTemplate = 'foo';
    o.sloMetadata =
        buildGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata();
    o.softwareVersions = buildUnnamed5755();
    o.state = 'foo';
    o.tenantProjectId = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1Instance--;
  return o;
}

void checkGoogleCloudSaasacceleratorManagementProvidersV1Instance(
    api.GoogleCloudSaasacceleratorManagementProvidersV1Instance o) {
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1Instance++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1Instance < 3) {
    unittest.expect(o.consumerDefinedName, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed5750(o.labels);
    checkUnnamed5751(o.maintenancePolicyNames);
    checkUnnamed5752(o.maintenanceSchedules);
    checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings(
        o.maintenanceSettings);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5753(o.producerMetadata);
    checkUnnamed5754(o.provisionedResources);
    unittest.expect(o.slmInstanceTemplate, unittest.equals('foo'));
    checkGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata(
        o.sloMetadata);
    checkUnnamed5755(o.softwareVersions);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.tenantProjectId, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1Instance--;
}

core.int
    buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule =
    0;
api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
    buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule() {
  var o =
      api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule();
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule <
      3) {
    o.canReschedule = true;
    o.endTime = 'foo';
    o.rolloutManagementPolicy = 'foo';
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule--;
  return o;
}

void checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule(
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

core.int
    buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings =
    0;
api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
    buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings() {
  var o =
      api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings();
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings <
      3) {
    o.exclude = true;
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings--;
  return o;
}

void checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings(
    api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings o) {
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings <
      3) {
    unittest.expect(o.exclude, unittest.isTrue);
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings--;
}

core.List<api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
    buildUnnamed5756() {
  var o = <api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>[];
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  return o;
}

void checkUnnamed5756(
    core.List<api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(o[0]);
  checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(o[1]);
}

core.int
    buildCounterGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata =
    0;
api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
    buildGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata() {
  var o = api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata();
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata <
      3) {
    o.exclusions = buildUnnamed5756();
    o.location = 'foo';
    o.nodeId = 'foo';
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata--;
  return o;
}

void checkGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata(
    api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata o) {
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata <
      3) {
    checkUnnamed5756(o.exclusions);
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.nodeId, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata--;
}

core.int
    buildCounterGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource =
    0;
api.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
    buildGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource() {
  var o =
      api.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource();
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource <
      3) {
    o.resourceType = 'foo';
    o.resourceUrl = 'foo';
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource--;
  return o;
}

void checkGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource(
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
api.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
    buildGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility() {
  var o = api.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility();
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility <
      3) {
    o.eligible = true;
    o.reason = 'foo';
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility--;
  return o;
}

void checkGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility(
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
api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
    buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion() {
  var o = api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion();
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion <
      3) {
    o.duration = 'foo';
    o.reason = 'foo';
    o.sliName = 'foo';
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion--;
  return o;
}

void checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(
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

core.List<api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
    buildUnnamed5757() {
  var o = <api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>[];
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  return o;
}

void checkUnnamed5757(
    core.List<api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(o[0]);
  checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(o[1]);
}

core.List<api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>
    buildUnnamed5758() {
  var o =
      <api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>[];
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata());
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata());
  return o;
}

void checkUnnamed5758(
    core.List<
            api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata(o[0]);
  checkGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata(o[1]);
}

core.int
    buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata = 0;
api.GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
    buildGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata() {
  var o = api.GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata();
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata <
      3) {
    o.eligibility =
        buildGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility();
    o.exclusions = buildUnnamed5757();
    o.nodes = buildUnnamed5758();
    o.tier = 'foo';
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata--;
  return o;
}

void checkGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata(
    api.GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata o) {
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata <
      3) {
    checkGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility(
        o.eligibility);
    checkUnnamed5757(o.exclusions);
    checkUnnamed5758(o.nodes);
    unittest.expect(o.tier, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata--;
}

core.List<api.Domain> buildUnnamed5759() {
  var o = <api.Domain>[];
  o.add(buildDomain());
  o.add(buildDomain());
  return o;
}

void checkUnnamed5759(core.List<api.Domain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomain(o[0]);
  checkDomain(o[1]);
}

core.List<core.String> buildUnnamed5760() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5760(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListDomainsResponse = 0;
api.ListDomainsResponse buildListDomainsResponse() {
  var o = api.ListDomainsResponse();
  buildCounterListDomainsResponse++;
  if (buildCounterListDomainsResponse < 3) {
    o.domains = buildUnnamed5759();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed5760();
  }
  buildCounterListDomainsResponse--;
  return o;
}

void checkListDomainsResponse(api.ListDomainsResponse o) {
  buildCounterListDomainsResponse++;
  if (buildCounterListDomainsResponse < 3) {
    checkUnnamed5759(o.domains);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5760(o.unreachable);
  }
  buildCounterListDomainsResponse--;
}

core.List<api.Location> buildUnnamed5761() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed5761(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  var o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed5761();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed5761(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed5762() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed5762(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  var o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed5762();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5762(o.operations);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed5763() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5763(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed5764() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5764(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  var o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed5763();
    o.locationId = 'foo';
    o.metadata = buildUnnamed5764();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed5763(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed5764(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.Map<core.String, core.Object> buildUnnamed5765() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5765(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed5766() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5766(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed5765();
    o.name = 'foo';
    o.response = buildUnnamed5766();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed5765(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5766(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationMetadata = 0;
api.OperationMetadata buildOperationMetadata() {
  var o = api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.apiVersion = 'foo';
    o.cancelRequested = true;
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.statusDetail = 'foo';
    o.target = 'foo';
    o.verb = 'foo';
  }
  buildCounterOperationMetadata--;
  return o;
}

void checkOperationMetadata(api.OperationMetadata o) {
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

core.List<api.Binding> buildUnnamed5767() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed5767(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed5767();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed5767(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.List<core.String> buildUnnamed5768() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5768(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReconfigureTrustRequest = 0;
api.ReconfigureTrustRequest buildReconfigureTrustRequest() {
  var o = api.ReconfigureTrustRequest();
  buildCounterReconfigureTrustRequest++;
  if (buildCounterReconfigureTrustRequest < 3) {
    o.targetDnsIpAddresses = buildUnnamed5768();
    o.targetDomainName = 'foo';
  }
  buildCounterReconfigureTrustRequest--;
  return o;
}

void checkReconfigureTrustRequest(api.ReconfigureTrustRequest o) {
  buildCounterReconfigureTrustRequest++;
  if (buildCounterReconfigureTrustRequest < 3) {
    checkUnnamed5768(o.targetDnsIpAddresses);
    unittest.expect(o.targetDomainName, unittest.equals('foo'));
  }
  buildCounterReconfigureTrustRequest--;
}

core.int buildCounterResetAdminPasswordRequest = 0;
api.ResetAdminPasswordRequest buildResetAdminPasswordRequest() {
  var o = api.ResetAdminPasswordRequest();
  buildCounterResetAdminPasswordRequest++;
  if (buildCounterResetAdminPasswordRequest < 3) {}
  buildCounterResetAdminPasswordRequest--;
  return o;
}

void checkResetAdminPasswordRequest(api.ResetAdminPasswordRequest o) {
  buildCounterResetAdminPasswordRequest++;
  if (buildCounterResetAdminPasswordRequest < 3) {}
  buildCounterResetAdminPasswordRequest--;
}

core.int buildCounterResetAdminPasswordResponse = 0;
api.ResetAdminPasswordResponse buildResetAdminPasswordResponse() {
  var o = api.ResetAdminPasswordResponse();
  buildCounterResetAdminPasswordResponse++;
  if (buildCounterResetAdminPasswordResponse < 3) {
    o.password = 'foo';
  }
  buildCounterResetAdminPasswordResponse--;
  return o;
}

void checkResetAdminPasswordResponse(api.ResetAdminPasswordResponse o) {
  buildCounterResetAdminPasswordResponse++;
  if (buildCounterResetAdminPasswordResponse < 3) {
    unittest.expect(o.password, unittest.equals('foo'));
  }
  buildCounterResetAdminPasswordResponse--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  var o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy);
  }
  buildCounterSetIamPolicyRequest--;
}

core.Map<core.String, core.Object> buildUnnamed5769() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5769(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed5770() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed5769());
  o.add(buildUnnamed5769());
  return o;
}

void checkUnnamed5770(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5769(o[0]);
  checkUnnamed5769(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5770();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed5770(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed5771() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5771(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  var o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed5771();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed5771(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed5772() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5772(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  var o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed5772();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed5772(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<core.String> buildUnnamed5773() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5773(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTrust = 0;
api.Trust buildTrust() {
  var o = api.Trust();
  buildCounterTrust++;
  if (buildCounterTrust < 3) {
    o.createTime = 'foo';
    o.lastTrustHeartbeatTime = 'foo';
    o.selectiveAuthentication = true;
    o.state = 'foo';
    o.stateDescription = 'foo';
    o.targetDnsIpAddresses = buildUnnamed5773();
    o.targetDomainName = 'foo';
    o.trustDirection = 'foo';
    o.trustHandshakeSecret = 'foo';
    o.trustType = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterTrust--;
  return o;
}

void checkTrust(api.Trust o) {
  buildCounterTrust++;
  if (buildCounterTrust < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.lastTrustHeartbeatTime, unittest.equals('foo'));
    unittest.expect(o.selectiveAuthentication, unittest.isTrue);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateDescription, unittest.equals('foo'));
    checkUnnamed5773(o.targetDnsIpAddresses);
    unittest.expect(o.targetDomainName, unittest.equals('foo'));
    unittest.expect(o.trustDirection, unittest.equals('foo'));
    unittest.expect(o.trustHandshakeSecret, unittest.equals('foo'));
    unittest.expect(o.trustType, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterTrust--;
}

core.int buildCounterValidateTrustRequest = 0;
api.ValidateTrustRequest buildValidateTrustRequest() {
  var o = api.ValidateTrustRequest();
  buildCounterValidateTrustRequest++;
  if (buildCounterValidateTrustRequest < 3) {
    o.trust = buildTrust();
  }
  buildCounterValidateTrustRequest--;
  return o;
}

void checkValidateTrustRequest(api.ValidateTrustRequest o) {
  buildCounterValidateTrustRequest++;
  if (buildCounterValidateTrustRequest < 3) {
    checkTrust(o.trust);
  }
  buildCounterValidateTrustRequest--;
}

void main() {
  unittest.group('obj-schema-AttachTrustRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAttachTrustRequest();
      var od = api.AttachTrustRequest.fromJson(o.toJson());
      checkAttachTrustRequest(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () {
      var o = buildBinding();
      var od = api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCancelOperationRequest();
      var od = api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-DetachTrustRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDetachTrustRequest();
      var od = api.DetachTrustRequest.fromJson(o.toJson());
      checkDetachTrustRequest(od);
    });
  });

  unittest.group('obj-schema-Domain', () {
    unittest.test('to-json--from-json', () {
      var o = buildDomain();
      var od = api.Domain.fromJson(o.toJson());
      checkDomain(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () {
      var o = buildExpr();
      var od = api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudManagedidentitiesV1OpMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudManagedidentitiesV1OpMetadata();
      var od =
          api.GoogleCloudManagedidentitiesV1OpMetadata.fromJson(o.toJson());
      checkGoogleCloudManagedidentitiesV1OpMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudManagedidentitiesV1alpha1OpMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudManagedidentitiesV1alpha1OpMetadata();
      var od = api.GoogleCloudManagedidentitiesV1alpha1OpMetadata.fromJson(
          o.toJson());
      checkGoogleCloudManagedidentitiesV1alpha1OpMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudManagedidentitiesV1beta1OpMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudManagedidentitiesV1beta1OpMetadata();
      var od = api.GoogleCloudManagedidentitiesV1beta1OpMetadata.fromJson(
          o.toJson());
      checkGoogleCloudManagedidentitiesV1beta1OpMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1Instance', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudSaasacceleratorManagementProvidersV1Instance();
      var od =
          api.GoogleCloudSaasacceleratorManagementProvidersV1Instance.fromJson(
              o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1Instance(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule();
      var od =
          api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
              .fromJson(o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings();
      var od =
          api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
              .fromJson(o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata();
      var od =
          api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
              .fromJson(o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource();
      var od =
          api.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
              .fromJson(o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility();
      var od = api.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
          .fromJson(o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion();
      var od = api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
          .fromJson(o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata();
      var od = api.GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
          .fromJson(o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata(od);
    });
  });

  unittest.group('obj-schema-ListDomainsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListDomainsResponse();
      var od = api.ListDomainsResponse.fromJson(o.toJson());
      checkListDomainsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListLocationsResponse();
      var od = api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOperationsResponse();
      var od = api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocation();
      var od = api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-OperationMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperationMetadata();
      var od = api.OperationMetadata.fromJson(o.toJson());
      checkOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicy();
      var od = api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-ReconfigureTrustRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildReconfigureTrustRequest();
      var od = api.ReconfigureTrustRequest.fromJson(o.toJson());
      checkReconfigureTrustRequest(od);
    });
  });

  unittest.group('obj-schema-ResetAdminPasswordRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildResetAdminPasswordRequest();
      var od = api.ResetAdminPasswordRequest.fromJson(o.toJson());
      checkResetAdminPasswordRequest(od);
    });
  });

  unittest.group('obj-schema-ResetAdminPasswordResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildResetAdminPasswordResponse();
      var od = api.ResetAdminPasswordResponse.fromJson(o.toJson());
      checkResetAdminPasswordResponse(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetIamPolicyRequest();
      var od = api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsRequest();
      var od = api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsResponse();
      var od = api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-Trust', () {
    unittest.test('to-json--from-json', () {
      var o = buildTrust();
      var od = api.Trust.fromJson(o.toJson());
      checkTrust(od);
    });
  });

  unittest.group('obj-schema-ValidateTrustRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildValidateTrustRequest();
      var od = api.ValidateTrustRequest.fromJson(o.toJson());
      checkValidateTrustRequest(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          api.ManagedidentitiesApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLocation(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          api.ManagedidentitiesApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageToken = 'foo';
      var arg_includeUnrevealedLocations = true;
      var arg_pageSize = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["includeUnrevealedLocations"].first,
            unittest.equals("$arg_includeUnrevealedLocations"));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageToken: arg_pageToken,
              includeUnrevealedLocations: arg_includeUnrevealedLocations,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsGlobalDomainsResourceApi', () {
    unittest.test('method--attachTrust', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          api.ManagedidentitiesApi(mock).projects.locations.global.domains;
      var arg_request = buildAttachTrustRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AttachTrustRequest.fromJson(json);
        checkAttachTrustRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .attachTrust(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          api.ManagedidentitiesApi(mock).projects.locations.global.domains;
      var arg_request = buildDomain();
      var arg_parent = 'foo';
      var arg_domainName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Domain.fromJson(json);
        checkDomain(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        unittest.expect(
            queryMap["domainName"].first, unittest.equals(arg_domainName));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              domainName: arg_domainName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          api.ManagedidentitiesApi(mock).projects.locations.global.domains;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--detachTrust', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          api.ManagedidentitiesApi(mock).projects.locations.global.domains;
      var arg_request = buildDetachTrustRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DetachTrustRequest.fromJson(json);
        checkDetachTrustRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .detachTrust(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          api.ManagedidentitiesApi(mock).projects.locations.global.domains;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildDomain());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDomain(response);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          api.ManagedidentitiesApi(mock).projects.locations.global.domains;
      var arg_resource = 'foo';
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        unittest.expect(
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
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

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          api.ManagedidentitiesApi(mock).projects.locations.global.domains;
      var arg_parent = 'foo';
      var arg_pageToken = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_filter = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListDomainsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDomainsResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          api.ManagedidentitiesApi(mock).projects.locations.global.domains;
      var arg_request = buildDomain();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Domain.fromJson(json);
        checkDomain(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--reconfigureTrust', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          api.ManagedidentitiesApi(mock).projects.locations.global.domains;
      var arg_request = buildReconfigureTrustRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReconfigureTrustRequest.fromJson(json);
        checkReconfigureTrustRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reconfigureTrust(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--resetAdminPassword', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          api.ManagedidentitiesApi(mock).projects.locations.global.domains;
      var arg_request = buildResetAdminPasswordRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ResetAdminPasswordRequest.fromJson(json);
        checkResetAdminPasswordRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildResetAdminPasswordResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resetAdminPassword(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkResetAdminPasswordResponse(response);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          api.ManagedidentitiesApi(mock).projects.locations.global.domains;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          api.ManagedidentitiesApi(mock).projects.locations.global.domains;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });

    unittest.test('method--validateTrust', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsGlobalDomainsResourceApi res =
          api.ManagedidentitiesApi(mock).projects.locations.global.domains;
      var arg_request = buildValidateTrustRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ValidateTrustRequest.fromJson(json);
        checkValidateTrustRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .validateTrust(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsGlobalOperationsResourceApi', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsGlobalOperationsResourceApi res =
          api.ManagedidentitiesApi(mock).projects.locations.global.operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CancelOperationRequest.fromJson(json);
        checkCancelOperationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsGlobalOperationsResourceApi res =
          api.ManagedidentitiesApi(mock).projects.locations.global.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsGlobalOperationsResourceApi res =
          api.ManagedidentitiesApi(mock).projects.locations.global.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsGlobalOperationsResourceApi res =
          api.ManagedidentitiesApi(mock).projects.locations.global.operations;
      var arg_name = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_filter = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
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
