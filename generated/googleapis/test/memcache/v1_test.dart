// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/memcache/v1.dart' as api;

import '../test_shared.dart';

core.List<core.String> buildUnnamed3589() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3589(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterApplyParametersRequest = 0;
api.ApplyParametersRequest buildApplyParametersRequest() {
  var o = api.ApplyParametersRequest();
  buildCounterApplyParametersRequest++;
  if (buildCounterApplyParametersRequest < 3) {
    o.applyAll = true;
    o.nodeIds = buildUnnamed3589();
  }
  buildCounterApplyParametersRequest--;
  return o;
}

void checkApplyParametersRequest(api.ApplyParametersRequest o) {
  buildCounterApplyParametersRequest++;
  if (buildCounterApplyParametersRequest < 3) {
    unittest.expect(o.applyAll!, unittest.isTrue);
    checkUnnamed3589(o.nodeIds!);
  }
  buildCounterApplyParametersRequest--;
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

core.int buildCounterDailyCycle = 0;
api.DailyCycle buildDailyCycle() {
  var o = api.DailyCycle();
  buildCounterDailyCycle++;
  if (buildCounterDailyCycle < 3) {
    o.duration = 'foo';
    o.startTime = buildTimeOfDay();
  }
  buildCounterDailyCycle--;
  return o;
}

void checkDailyCycle(api.DailyCycle o) {
  buildCounterDailyCycle++;
  if (buildCounterDailyCycle < 3) {
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    checkTimeOfDay(o.startTime! as api.TimeOfDay);
  }
  buildCounterDailyCycle--;
}

core.int buildCounterDate = 0;
api.Date buildDate() {
  var o = api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

void checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterDate--;
}

core.int buildCounterDenyMaintenancePeriod = 0;
api.DenyMaintenancePeriod buildDenyMaintenancePeriod() {
  var o = api.DenyMaintenancePeriod();
  buildCounterDenyMaintenancePeriod++;
  if (buildCounterDenyMaintenancePeriod < 3) {
    o.endDate = buildDate();
    o.startDate = buildDate();
    o.time = buildTimeOfDay();
  }
  buildCounterDenyMaintenancePeriod--;
  return o;
}

void checkDenyMaintenancePeriod(api.DenyMaintenancePeriod o) {
  buildCounterDenyMaintenancePeriod++;
  if (buildCounterDenyMaintenancePeriod < 3) {
    checkDate(o.endDate! as api.Date);
    checkDate(o.startDate! as api.Date);
    checkTimeOfDay(o.time! as api.TimeOfDay);
  }
  buildCounterDenyMaintenancePeriod--;
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

core.int buildCounterGoogleCloudMemcacheV1OperationMetadata = 0;
api.GoogleCloudMemcacheV1OperationMetadata
    buildGoogleCloudMemcacheV1OperationMetadata() {
  var o = api.GoogleCloudMemcacheV1OperationMetadata();
  buildCounterGoogleCloudMemcacheV1OperationMetadata++;
  if (buildCounterGoogleCloudMemcacheV1OperationMetadata < 3) {
    o.apiVersion = 'foo';
    o.cancelRequested = true;
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.statusDetail = 'foo';
    o.target = 'foo';
    o.verb = 'foo';
  }
  buildCounterGoogleCloudMemcacheV1OperationMetadata--;
  return o;
}

void checkGoogleCloudMemcacheV1OperationMetadata(
    api.GoogleCloudMemcacheV1OperationMetadata o) {
  buildCounterGoogleCloudMemcacheV1OperationMetadata++;
  if (buildCounterGoogleCloudMemcacheV1OperationMetadata < 3) {
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(o.cancelRequested!, unittest.isTrue);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statusDetail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.target!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verb!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudMemcacheV1OperationMetadata--;
}

core.Map<core.String, core.String> buildUnnamed3590() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed3590(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.String> buildUnnamed3591() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed3591(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String,
        api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>
    buildUnnamed3592() {
  var o = <core.String,
      api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>{};
  o['x'] =
      buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule();
  o['y'] =
      buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule();
  return o;
}

void checkUnnamed3592(
    core.Map<core.String,
            api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule(
      o['x']! as api
          .GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule);
  checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule(
      o['y']! as api
          .GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule);
}

core.Map<core.String, core.String> buildUnnamed3593() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed3593(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<
        api.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>
    buildUnnamed3594() {
  var o = <
      api.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>[];
  o.add(
      buildGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource());
  o.add(
      buildGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource());
  return o;
}

void checkUnnamed3594(
    core.List<
            api.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource(o[0]
      as api
          .GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource);
  checkGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource(o[1]
      as api
          .GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource);
}

core.Map<core.String, core.String> buildUnnamed3595() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed3595(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
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
    o.labels = buildUnnamed3590();
    o.maintenancePolicyNames = buildUnnamed3591();
    o.maintenanceSchedules = buildUnnamed3592();
    o.maintenanceSettings =
        buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings();
    o.name = 'foo';
    o.producerMetadata = buildUnnamed3593();
    o.provisionedResources = buildUnnamed3594();
    o.slmInstanceTemplate = 'foo';
    o.sloMetadata =
        buildGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata();
    o.softwareVersions = buildUnnamed3595();
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
    unittest.expect(
      o.consumerDefinedName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed3590(o.labels!);
    checkUnnamed3591(o.maintenancePolicyNames!);
    checkUnnamed3592(o.maintenanceSchedules!);
    checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings(
        o.maintenanceSettings! as api
            .GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed3593(o.producerMetadata!);
    checkUnnamed3594(o.provisionedResources!);
    unittest.expect(
      o.slmInstanceTemplate!,
      unittest.equals('foo'),
    );
    checkGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata(
        o.sloMetadata!
            as api.GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata);
    checkUnnamed3595(o.softwareVersions!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tenantProjectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
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
    o.scheduleDeadlineTime = 'foo';
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
    unittest.expect(o.canReschedule!, unittest.isTrue);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rolloutManagementPolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scheduleDeadlineTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule--;
}

core.Map<core.String, api.MaintenancePolicy> buildUnnamed3596() {
  var o = <core.String, api.MaintenancePolicy>{};
  o['x'] = buildMaintenancePolicy();
  o['y'] = buildMaintenancePolicy();
  return o;
}

void checkUnnamed3596(core.Map<core.String, api.MaintenancePolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMaintenancePolicy(o['x']! as api.MaintenancePolicy);
  checkMaintenancePolicy(o['y']! as api.MaintenancePolicy);
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
    o.isRollback = true;
    o.maintenancePolicies = buildUnnamed3596();
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings--;
  return o;
}

void checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings(
    api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings o) {
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings <
      3) {
    unittest.expect(o.exclude!, unittest.isTrue);
    unittest.expect(o.isRollback!, unittest.isTrue);
    checkUnnamed3596(o.maintenancePolicies!);
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings--;
}

core.List<api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
    buildUnnamed3597() {
  var o = <api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>[];
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  return o;
}

void checkUnnamed3597(
    core.List<api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(
      o[0] as api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion);
  checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(
      o[1] as api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion);
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
    o.exclusions = buildUnnamed3597();
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
    checkUnnamed3597(o.exclusions!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodeId!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceUrl!,
      unittest.equals('foo'),
    );
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
    unittest.expect(o.eligible!, unittest.isTrue);
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sliName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion--;
}

core.List<api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
    buildUnnamed3598() {
  var o = <api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>[];
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  return o;
}

void checkUnnamed3598(
    core.List<api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(
      o[0] as api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion);
  checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(
      o[1] as api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion);
}

core.List<api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>
    buildUnnamed3599() {
  var o =
      <api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>[];
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata());
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata());
  return o;
}

void checkUnnamed3599(
    core.List<
            api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata(o[0]
      as api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata);
  checkGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata(o[1]
      as api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata);
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
    o.exclusions = buildUnnamed3598();
    o.nodes = buildUnnamed3599();
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
    checkGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility(o
            .eligibility!
        as api.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility);
    checkUnnamed3598(o.exclusions!);
    checkUnnamed3599(o.nodes!);
    unittest.expect(
      o.tier!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata--;
}

core.List<api.InstanceMessage> buildUnnamed3600() {
  var o = <api.InstanceMessage>[];
  o.add(buildInstanceMessage());
  o.add(buildInstanceMessage());
  return o;
}

void checkUnnamed3600(core.List<api.InstanceMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceMessage(o[0] as api.InstanceMessage);
  checkInstanceMessage(o[1] as api.InstanceMessage);
}

core.Map<core.String, core.String> buildUnnamed3601() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed3601(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<api.Node> buildUnnamed3602() {
  var o = <api.Node>[];
  o.add(buildNode());
  o.add(buildNode());
  return o;
}

void checkUnnamed3602(core.List<api.Node> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNode(o[0] as api.Node);
  checkNode(o[1] as api.Node);
}

core.List<core.String> buildUnnamed3603() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3603(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterInstance = 0;
api.Instance buildInstance() {
  var o = api.Instance();
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    o.authorizedNetwork = 'foo';
    o.createTime = 'foo';
    o.discoveryEndpoint = 'foo';
    o.displayName = 'foo';
    o.instanceMessages = buildUnnamed3600();
    o.labels = buildUnnamed3601();
    o.memcacheFullVersion = 'foo';
    o.memcacheNodes = buildUnnamed3602();
    o.memcacheVersion = 'foo';
    o.name = 'foo';
    o.nodeConfig = buildNodeConfig();
    o.nodeCount = 42;
    o.parameters = buildMemcacheParameters();
    o.state = 'foo';
    o.updateTime = 'foo';
    o.zones = buildUnnamed3603();
  }
  buildCounterInstance--;
  return o;
}

void checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    unittest.expect(
      o.authorizedNetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.discoveryEndpoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed3600(o.instanceMessages!);
    checkUnnamed3601(o.labels!);
    unittest.expect(
      o.memcacheFullVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed3602(o.memcacheNodes!);
    unittest.expect(
      o.memcacheVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkNodeConfig(o.nodeConfig! as api.NodeConfig);
    unittest.expect(
      o.nodeCount!,
      unittest.equals(42),
    );
    checkMemcacheParameters(o.parameters! as api.MemcacheParameters);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed3603(o.zones!);
  }
  buildCounterInstance--;
}

core.int buildCounterInstanceMessage = 0;
api.InstanceMessage buildInstanceMessage() {
  var o = api.InstanceMessage();
  buildCounterInstanceMessage++;
  if (buildCounterInstanceMessage < 3) {
    o.code = 'foo';
    o.message = 'foo';
  }
  buildCounterInstanceMessage--;
  return o;
}

void checkInstanceMessage(api.InstanceMessage o) {
  buildCounterInstanceMessage++;
  if (buildCounterInstanceMessage < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstanceMessage--;
}

core.List<api.Instance> buildUnnamed3604() {
  var o = <api.Instance>[];
  o.add(buildInstance());
  o.add(buildInstance());
  return o;
}

void checkUnnamed3604(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0] as api.Instance);
  checkInstance(o[1] as api.Instance);
}

core.List<core.String> buildUnnamed3605() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3605(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListInstancesResponse = 0;
api.ListInstancesResponse buildListInstancesResponse() {
  var o = api.ListInstancesResponse();
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    o.instances = buildUnnamed3604();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed3605();
  }
  buildCounterListInstancesResponse--;
  return o;
}

void checkListInstancesResponse(api.ListInstancesResponse o) {
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    checkUnnamed3604(o.instances!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed3605(o.unreachable!);
  }
  buildCounterListInstancesResponse--;
}

core.List<api.Location> buildUnnamed3606() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed3606(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0] as api.Location);
  checkLocation(o[1] as api.Location);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  var o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed3606();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed3606(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed3607() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed3607(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0] as api.Operation);
  checkOperation(o[1] as api.Operation);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  var o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed3607();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed3607(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed3608() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed3608(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object> buildUnnamed3609() {
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

void checkUnnamed3609(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  var o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed3608();
    o.locationId = 'foo';
    o.metadata = buildUnnamed3609();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed3608(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed3609(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.Map<core.String, api.ZoneMetadata> buildUnnamed3610() {
  var o = <core.String, api.ZoneMetadata>{};
  o['x'] = buildZoneMetadata();
  o['y'] = buildZoneMetadata();
  return o;
}

void checkUnnamed3610(core.Map<core.String, api.ZoneMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkZoneMetadata(o['x']! as api.ZoneMetadata);
  checkZoneMetadata(o['y']! as api.ZoneMetadata);
}

core.int buildCounterLocationMetadata = 0;
api.LocationMetadata buildLocationMetadata() {
  var o = api.LocationMetadata();
  buildCounterLocationMetadata++;
  if (buildCounterLocationMetadata < 3) {
    o.availableZones = buildUnnamed3610();
  }
  buildCounterLocationMetadata--;
  return o;
}

void checkLocationMetadata(api.LocationMetadata o) {
  buildCounterLocationMetadata++;
  if (buildCounterLocationMetadata < 3) {
    checkUnnamed3610(o.availableZones!);
  }
  buildCounterLocationMetadata--;
}

core.Map<core.String, core.String> buildUnnamed3611() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed3611(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterMaintenancePolicy = 0;
api.MaintenancePolicy buildMaintenancePolicy() {
  var o = api.MaintenancePolicy();
  buildCounterMaintenancePolicy++;
  if (buildCounterMaintenancePolicy < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed3611();
    o.name = 'foo';
    o.state = 'foo';
    o.updatePolicy = buildUpdatePolicy();
    o.updateTime = 'foo';
  }
  buildCounterMaintenancePolicy--;
  return o;
}

void checkMaintenancePolicy(api.MaintenancePolicy o) {
  buildCounterMaintenancePolicy++;
  if (buildCounterMaintenancePolicy < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed3611(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUpdatePolicy(o.updatePolicy! as api.UpdatePolicy);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterMaintenancePolicy--;
}

core.int buildCounterMaintenanceWindow = 0;
api.MaintenanceWindow buildMaintenanceWindow() {
  var o = api.MaintenanceWindow();
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    o.dailyCycle = buildDailyCycle();
    o.weeklyCycle = buildWeeklyCycle();
  }
  buildCounterMaintenanceWindow--;
  return o;
}

void checkMaintenanceWindow(api.MaintenanceWindow o) {
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    checkDailyCycle(o.dailyCycle! as api.DailyCycle);
    checkWeeklyCycle(o.weeklyCycle! as api.WeeklyCycle);
  }
  buildCounterMaintenanceWindow--;
}

core.Map<core.String, core.String> buildUnnamed3612() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed3612(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterMemcacheParameters = 0;
api.MemcacheParameters buildMemcacheParameters() {
  var o = api.MemcacheParameters();
  buildCounterMemcacheParameters++;
  if (buildCounterMemcacheParameters < 3) {
    o.id = 'foo';
    o.params = buildUnnamed3612();
  }
  buildCounterMemcacheParameters--;
  return o;
}

void checkMemcacheParameters(api.MemcacheParameters o) {
  buildCounterMemcacheParameters++;
  if (buildCounterMemcacheParameters < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed3612(o.params!);
  }
  buildCounterMemcacheParameters--;
}

core.int buildCounterNode = 0;
api.Node buildNode() {
  var o = api.Node();
  buildCounterNode++;
  if (buildCounterNode < 3) {
    o.host = 'foo';
    o.nodeId = 'foo';
    o.parameters = buildMemcacheParameters();
    o.port = 42;
    o.state = 'foo';
    o.zone = 'foo';
  }
  buildCounterNode--;
  return o;
}

void checkNode(api.Node o) {
  buildCounterNode++;
  if (buildCounterNode < 3) {
    unittest.expect(
      o.host!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodeId!,
      unittest.equals('foo'),
    );
    checkMemcacheParameters(o.parameters! as api.MemcacheParameters);
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterNode--;
}

core.int buildCounterNodeConfig = 0;
api.NodeConfig buildNodeConfig() {
  var o = api.NodeConfig();
  buildCounterNodeConfig++;
  if (buildCounterNodeConfig < 3) {
    o.cpuCount = 42;
    o.memorySizeMb = 42;
  }
  buildCounterNodeConfig--;
  return o;
}

void checkNodeConfig(api.NodeConfig o) {
  buildCounterNodeConfig++;
  if (buildCounterNodeConfig < 3) {
    unittest.expect(
      o.cpuCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.memorySizeMb!,
      unittest.equals(42),
    );
  }
  buildCounterNodeConfig--;
}

core.Map<core.String, core.Object> buildUnnamed3613() {
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

void checkUnnamed3613(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(
    casted4['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted4['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted4['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object> buildUnnamed3614() {
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

void checkUnnamed3614(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed3613();
    o.name = 'foo';
    o.response = buildUnnamed3614();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error! as api.Status);
    checkUnnamed3613(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed3614(o.response!);
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
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(o.cancelRequested!, unittest.isTrue);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statusDetail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.target!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verb!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationMetadata--;
}

core.int buildCounterSchedule = 0;
api.Schedule buildSchedule() {
  var o = api.Schedule();
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    o.day = 'foo';
    o.duration = 'foo';
    o.startTime = buildTimeOfDay();
  }
  buildCounterSchedule--;
  return o;
}

void checkSchedule(api.Schedule o) {
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    unittest.expect(
      o.day!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    checkTimeOfDay(o.startTime! as api.TimeOfDay);
  }
  buildCounterSchedule--;
}

core.Map<core.String, core.Object> buildUnnamed3615() {
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

void checkUnnamed3615(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object>> buildUnnamed3616() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed3615());
  o.add(buildUnnamed3615());
  return o;
}

void checkUnnamed3616(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3615(o[0]);
  checkUnnamed3615(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3616();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed3616(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterTimeOfDay = 0;
api.TimeOfDay buildTimeOfDay() {
  var o = api.TimeOfDay();
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

void checkTimeOfDay(api.TimeOfDay o) {
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    unittest.expect(
      o.hours!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minutes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.seconds!,
      unittest.equals(42),
    );
  }
  buildCounterTimeOfDay--;
}

core.int buildCounterUpdateParametersRequest = 0;
api.UpdateParametersRequest buildUpdateParametersRequest() {
  var o = api.UpdateParametersRequest();
  buildCounterUpdateParametersRequest++;
  if (buildCounterUpdateParametersRequest < 3) {
    o.parameters = buildMemcacheParameters();
    o.updateMask = 'foo';
  }
  buildCounterUpdateParametersRequest--;
  return o;
}

void checkUpdateParametersRequest(api.UpdateParametersRequest o) {
  buildCounterUpdateParametersRequest++;
  if (buildCounterUpdateParametersRequest < 3) {
    checkMemcacheParameters(o.parameters! as api.MemcacheParameters);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateParametersRequest--;
}

core.List<api.DenyMaintenancePeriod> buildUnnamed3617() {
  var o = <api.DenyMaintenancePeriod>[];
  o.add(buildDenyMaintenancePeriod());
  o.add(buildDenyMaintenancePeriod());
  return o;
}

void checkUnnamed3617(core.List<api.DenyMaintenancePeriod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDenyMaintenancePeriod(o[0] as api.DenyMaintenancePeriod);
  checkDenyMaintenancePeriod(o[1] as api.DenyMaintenancePeriod);
}

core.int buildCounterUpdatePolicy = 0;
api.UpdatePolicy buildUpdatePolicy() {
  var o = api.UpdatePolicy();
  buildCounterUpdatePolicy++;
  if (buildCounterUpdatePolicy < 3) {
    o.channel = 'foo';
    o.denyMaintenancePeriods = buildUnnamed3617();
    o.window = buildMaintenanceWindow();
  }
  buildCounterUpdatePolicy--;
  return o;
}

void checkUpdatePolicy(api.UpdatePolicy o) {
  buildCounterUpdatePolicy++;
  if (buildCounterUpdatePolicy < 3) {
    unittest.expect(
      o.channel!,
      unittest.equals('foo'),
    );
    checkUnnamed3617(o.denyMaintenancePeriods!);
    checkMaintenanceWindow(o.window! as api.MaintenanceWindow);
  }
  buildCounterUpdatePolicy--;
}

core.List<api.Schedule> buildUnnamed3618() {
  var o = <api.Schedule>[];
  o.add(buildSchedule());
  o.add(buildSchedule());
  return o;
}

void checkUnnamed3618(core.List<api.Schedule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchedule(o[0] as api.Schedule);
  checkSchedule(o[1] as api.Schedule);
}

core.int buildCounterWeeklyCycle = 0;
api.WeeklyCycle buildWeeklyCycle() {
  var o = api.WeeklyCycle();
  buildCounterWeeklyCycle++;
  if (buildCounterWeeklyCycle < 3) {
    o.schedule = buildUnnamed3618();
  }
  buildCounterWeeklyCycle--;
  return o;
}

void checkWeeklyCycle(api.WeeklyCycle o) {
  buildCounterWeeklyCycle++;
  if (buildCounterWeeklyCycle < 3) {
    checkUnnamed3618(o.schedule!);
  }
  buildCounterWeeklyCycle--;
}

core.int buildCounterZoneMetadata = 0;
api.ZoneMetadata buildZoneMetadata() {
  var o = api.ZoneMetadata();
  buildCounterZoneMetadata++;
  if (buildCounterZoneMetadata < 3) {}
  buildCounterZoneMetadata--;
  return o;
}

void checkZoneMetadata(api.ZoneMetadata o) {
  buildCounterZoneMetadata++;
  if (buildCounterZoneMetadata < 3) {}
  buildCounterZoneMetadata--;
}

void main() {
  unittest.group('obj-schema-ApplyParametersRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildApplyParametersRequest();
      var od = api.ApplyParametersRequest.fromJson(o.toJson());
      checkApplyParametersRequest(od as api.ApplyParametersRequest);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCancelOperationRequest();
      var od = api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od as api.CancelOperationRequest);
    });
  });

  unittest.group('obj-schema-DailyCycle', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDailyCycle();
      var od = api.DailyCycle.fromJson(o.toJson());
      checkDailyCycle(od as api.DailyCycle);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDate();
      var od = api.Date.fromJson(o.toJson());
      checkDate(od as api.Date);
    });
  });

  unittest.group('obj-schema-DenyMaintenancePeriod', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDenyMaintenancePeriod();
      var od = api.DenyMaintenancePeriod.fromJson(o.toJson());
      checkDenyMaintenancePeriod(od as api.DenyMaintenancePeriod);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-GoogleCloudMemcacheV1OperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudMemcacheV1OperationMetadata();
      var od = api.GoogleCloudMemcacheV1OperationMetadata.fromJson(o.toJson());
      checkGoogleCloudMemcacheV1OperationMetadata(
          od as api.GoogleCloudMemcacheV1OperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1Instance', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudSaasacceleratorManagementProvidersV1Instance();
      var od =
          api.GoogleCloudSaasacceleratorManagementProvidersV1Instance.fromJson(
              o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1Instance(
          od as api.GoogleCloudSaasacceleratorManagementProvidersV1Instance);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule();
      var od =
          api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
              .fromJson(o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule(od
          as api
              .GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings();
      var od =
          api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
              .fromJson(o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings(od
          as api
              .GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata();
      var od =
          api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
              .fromJson(o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata(od
          as api
              .GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource();
      var od =
          api.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
              .fromJson(o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource(od
          as api
              .GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility();
      var od = api.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
          .fromJson(o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility(od
          as api.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion();
      var od = api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
          .fromJson(o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(od
          as api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata();
      var od = api.GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
          .fromJson(o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata(
          od as api.GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata);
    });
  });

  unittest.group('obj-schema-Instance', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInstance();
      var od = api.Instance.fromJson(o.toJson());
      checkInstance(od as api.Instance);
    });
  });

  unittest.group('obj-schema-InstanceMessage', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInstanceMessage();
      var od = api.InstanceMessage.fromJson(o.toJson());
      checkInstanceMessage(od as api.InstanceMessage);
    });
  });

  unittest.group('obj-schema-ListInstancesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListInstancesResponse();
      var od = api.ListInstancesResponse.fromJson(o.toJson());
      checkListInstancesResponse(od as api.ListInstancesResponse);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListLocationsResponse();
      var od = api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od as api.ListLocationsResponse);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListOperationsResponse();
      var od = api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od as api.ListOperationsResponse);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLocation();
      var od = api.Location.fromJson(o.toJson());
      checkLocation(od as api.Location);
    });
  });

  unittest.group('obj-schema-LocationMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLocationMetadata();
      var od = api.LocationMetadata.fromJson(o.toJson());
      checkLocationMetadata(od as api.LocationMetadata);
    });
  });

  unittest.group('obj-schema-MaintenancePolicy', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMaintenancePolicy();
      var od = api.MaintenancePolicy.fromJson(o.toJson());
      checkMaintenancePolicy(od as api.MaintenancePolicy);
    });
  });

  unittest.group('obj-schema-MaintenanceWindow', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMaintenanceWindow();
      var od = api.MaintenanceWindow.fromJson(o.toJson());
      checkMaintenanceWindow(od as api.MaintenanceWindow);
    });
  });

  unittest.group('obj-schema-MemcacheParameters', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMemcacheParameters();
      var od = api.MemcacheParameters.fromJson(o.toJson());
      checkMemcacheParameters(od as api.MemcacheParameters);
    });
  });

  unittest.group('obj-schema-Node', () {
    unittest.test('to-json--from-json', () async {
      var o = buildNode();
      var od = api.Node.fromJson(o.toJson());
      checkNode(od as api.Node);
    });
  });

  unittest.group('obj-schema-NodeConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildNodeConfig();
      var od = api.NodeConfig.fromJson(o.toJson());
      checkNodeConfig(od as api.NodeConfig);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-OperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOperationMetadata();
      var od = api.OperationMetadata.fromJson(o.toJson());
      checkOperationMetadata(od as api.OperationMetadata);
    });
  });

  unittest.group('obj-schema-Schedule', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSchedule();
      var od = api.Schedule.fromJson(o.toJson());
      checkSchedule(od as api.Schedule);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTimeOfDay();
      var od = api.TimeOfDay.fromJson(o.toJson());
      checkTimeOfDay(od as api.TimeOfDay);
    });
  });

  unittest.group('obj-schema-UpdateParametersRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUpdateParametersRequest();
      var od = api.UpdateParametersRequest.fromJson(o.toJson());
      checkUpdateParametersRequest(od as api.UpdateParametersRequest);
    });
  });

  unittest.group('obj-schema-UpdatePolicy', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUpdatePolicy();
      var od = api.UpdatePolicy.fromJson(o.toJson());
      checkUpdatePolicy(od as api.UpdatePolicy);
    });
  });

  unittest.group('obj-schema-WeeklyCycle', () {
    unittest.test('to-json--from-json', () async {
      var o = buildWeeklyCycle();
      var od = api.WeeklyCycle.fromJson(o.toJson());
      checkWeeklyCycle(od as api.WeeklyCycle);
    });
  });

  unittest.group('obj-schema-ZoneMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildZoneMetadata();
      var od = api.ZoneMetadata.fromJson(o.toJson());
      checkZoneMetadata(od as api.ZoneMetadata);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CloudMemorystoreForMemcachedApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.CloudMemorystoreForMemcachedApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsInstancesResource', () {
    unittest.test('method--applyParameters', () async {
      var mock = HttpServerMock();
      var res = api.CloudMemorystoreForMemcachedApi(mock)
          .projects
          .locations
          .instances;
      var arg_request = buildApplyParametersRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ApplyParametersRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApplyParametersRequest(obj as api.ApplyParametersRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.applyParameters(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.CloudMemorystoreForMemcachedApi(mock)
          .projects
          .locations
          .instances;
      var arg_request = buildInstance();
      var arg_parent = 'foo';
      var arg_instanceId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Instance.fromJson(json as core.Map<core.String, core.dynamic>);
        checkInstance(obj as api.Instance);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["instanceId"]!.first,
          unittest.equals(arg_instanceId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          instanceId: arg_instanceId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.CloudMemorystoreForMemcachedApi(mock)
          .projects
          .locations
          .instances;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CloudMemorystoreForMemcachedApi(mock)
          .projects
          .locations
          .instances;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkInstance(response as api.Instance);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.CloudMemorystoreForMemcachedApi(mock)
          .projects
          .locations
          .instances;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap["orderBy"]!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListInstancesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListInstancesResponse(response as api.ListInstancesResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.CloudMemorystoreForMemcachedApi(mock)
          .projects
          .locations
          .instances;
      var arg_request = buildInstance();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Instance.fromJson(json as core.Map<core.String, core.dynamic>);
        checkInstance(obj as api.Instance);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--updateParameters', () async {
      var mock = HttpServerMock();
      var res = api.CloudMemorystoreForMemcachedApi(mock)
          .projects
          .locations
          .instances;
      var arg_request = buildUpdateParametersRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UpdateParametersRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateParametersRequest(obj as api.UpdateParametersRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateParameters(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      var mock = HttpServerMock();
      var res = api.CloudMemorystoreForMemcachedApi(mock)
          .projects
          .locations
          .operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj as api.CancelOperationRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.CloudMemorystoreForMemcachedApi(mock)
          .projects
          .locations
          .operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CloudMemorystoreForMemcachedApi(mock)
          .projects
          .locations
          .operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.CloudMemorystoreForMemcachedApi(mock)
          .projects
          .locations
          .operations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });
}
