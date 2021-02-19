// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/file/v1.dart' as api;

import '../test_shared.dart';

core.Map<core.String, core.String> buildUnnamed6596() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6596(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterBackup = 0;
api.Backup buildBackup() {
  var o = api.Backup();
  buildCounterBackup++;
  if (buildCounterBackup < 3) {
    o.capacityGb = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.downloadBytes = 'foo';
    o.labels = buildUnnamed6596();
    o.name = 'foo';
    o.sourceFileShare = 'foo';
    o.sourceInstance = 'foo';
    o.sourceInstanceTier = 'foo';
    o.state = 'foo';
    o.storageBytes = 'foo';
  }
  buildCounterBackup--;
  return o;
}

void checkBackup(api.Backup o) {
  buildCounterBackup++;
  if (buildCounterBackup < 3) {
    unittest.expect(o.capacityGb, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.downloadBytes, unittest.equals('foo'));
    checkUnnamed6596(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.sourceFileShare, unittest.equals('foo'));
    unittest.expect(o.sourceInstance, unittest.equals('foo'));
    unittest.expect(o.sourceInstanceTier, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.storageBytes, unittest.equals('foo'));
  }
  buildCounterBackup--;
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
    unittest.expect(o.duration, unittest.equals('foo'));
    checkTimeOfDay(o.startTime as api.TimeOfDay);
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
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.year, unittest.equals(42));
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
    checkDate(o.endDate as api.Date);
    checkDate(o.startDate as api.Date);
    checkTimeOfDay(o.time as api.TimeOfDay);
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

core.List<api.NfsExportOptions> buildUnnamed6597() {
  var o = <api.NfsExportOptions>[];
  o.add(buildNfsExportOptions());
  o.add(buildNfsExportOptions());
  return o;
}

void checkUnnamed6597(core.List<api.NfsExportOptions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNfsExportOptions(o[0] as api.NfsExportOptions);
  checkNfsExportOptions(o[1] as api.NfsExportOptions);
}

core.int buildCounterFileShareConfig = 0;
api.FileShareConfig buildFileShareConfig() {
  var o = api.FileShareConfig();
  buildCounterFileShareConfig++;
  if (buildCounterFileShareConfig < 3) {
    o.capacityGb = 'foo';
    o.name = 'foo';
    o.nfsExportOptions = buildUnnamed6597();
    o.sourceBackup = 'foo';
  }
  buildCounterFileShareConfig--;
  return o;
}

void checkFileShareConfig(api.FileShareConfig o) {
  buildCounterFileShareConfig++;
  if (buildCounterFileShareConfig < 3) {
    unittest.expect(o.capacityGb, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6597(o.nfsExportOptions);
    unittest.expect(o.sourceBackup, unittest.equals('foo'));
  }
  buildCounterFileShareConfig--;
}

core.Map<core.String, core.String> buildUnnamed6598() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6598(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed6599() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6599(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String,
        api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>
    buildUnnamed6600() {
  var o = <core.String,
      api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>{};
  o['x'] =
      buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule();
  o['y'] =
      buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule();
  return o;
}

void checkUnnamed6600(
    core.Map<core.String,
            api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule(o['x']
      as api
          .GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule);
  checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule(o['y']
      as api
          .GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule);
}

core.Map<core.String, core.String> buildUnnamed6601() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6601(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<
        api.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>
    buildUnnamed6602() {
  var o = <
      api.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>[];
  o.add(
      buildGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource());
  o.add(
      buildGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource());
  return o;
}

void checkUnnamed6602(
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

core.Map<core.String, core.String> buildUnnamed6603() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6603(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed6598();
    o.maintenancePolicyNames = buildUnnamed6599();
    o.maintenanceSchedules = buildUnnamed6600();
    o.maintenanceSettings =
        buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings();
    o.name = 'foo';
    o.producerMetadata = buildUnnamed6601();
    o.provisionedResources = buildUnnamed6602();
    o.slmInstanceTemplate = 'foo';
    o.sloMetadata =
        buildGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata();
    o.softwareVersions = buildUnnamed6603();
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
    checkUnnamed6598(o.labels);
    checkUnnamed6599(o.maintenancePolicyNames);
    checkUnnamed6600(o.maintenanceSchedules);
    checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings(
        o.maintenanceSettings as api
            .GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6601(o.producerMetadata);
    checkUnnamed6602(o.provisionedResources);
    unittest.expect(o.slmInstanceTemplate, unittest.equals('foo'));
    checkGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata(
        o.sloMetadata
            as api.GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata);
    checkUnnamed6603(o.softwareVersions);
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
    unittest.expect(o.canReschedule, unittest.isTrue);
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.rolloutManagementPolicy, unittest.equals('foo'));
    unittest.expect(o.scheduleDeadlineTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule--;
}

core.Map<core.String, api.MaintenancePolicy> buildUnnamed6604() {
  var o = <core.String, api.MaintenancePolicy>{};
  o['x'] = buildMaintenancePolicy();
  o['y'] = buildMaintenancePolicy();
  return o;
}

void checkUnnamed6604(core.Map<core.String, api.MaintenancePolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMaintenancePolicy(o['x'] as api.MaintenancePolicy);
  checkMaintenancePolicy(o['y'] as api.MaintenancePolicy);
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
    o.maintenancePolicies = buildUnnamed6604();
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
    unittest.expect(o.isRollback, unittest.isTrue);
    checkUnnamed6604(o.maintenancePolicies);
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings--;
}

core.List<api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
    buildUnnamed6605() {
  var o = <api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>[];
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  return o;
}

void checkUnnamed6605(
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
    o.exclusions = buildUnnamed6605();
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
    checkUnnamed6605(o.exclusions);
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.nodeId, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata--;
}

core.Map<core.String,
        api.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility>
    buildUnnamed6606() {
  var o = <core.String,
      api.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility>{};
  o['x'] = buildGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility();
  o['y'] = buildGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility();
  return o;
}

void checkUnnamed6606(
    core.Map<core.String,
            api.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility(o['x']
      as api.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility);
  checkGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility(o['y']
      as api.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility);
}

core.int
    buildCounterGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility =
    0;
api.GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
    buildGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility() {
  var o =
      api.GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility();
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility <
      3) {
    o.eligibilities = buildUnnamed6606();
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility--;
  return o;
}

void checkGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility(
    api.GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility o) {
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility <
      3) {
    checkUnnamed6606(o.eligibilities);
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility--;
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
    buildUnnamed6607() {
  var o = <api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>[];
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  return o;
}

void checkUnnamed6607(
    core.List<api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(
      o[0] as api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion);
  checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(
      o[1] as api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion);
}

core.List<api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>
    buildUnnamed6608() {
  var o =
      <api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>[];
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata());
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata());
  return o;
}

void checkUnnamed6608(
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
    o.exclusions = buildUnnamed6607();
    o.nodes = buildUnnamed6608();
    o.perSliEligibility =
        buildGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility();
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
            .eligibility
        as api.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility);
    checkUnnamed6607(o.exclusions);
    checkUnnamed6608(o.nodes);
    checkGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility(
        o.perSliEligibility as api
            .GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility);
    unittest.expect(o.tier, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata--;
}

core.List<api.FileShareConfig> buildUnnamed6609() {
  var o = <api.FileShareConfig>[];
  o.add(buildFileShareConfig());
  o.add(buildFileShareConfig());
  return o;
}

void checkUnnamed6609(core.List<api.FileShareConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileShareConfig(o[0] as api.FileShareConfig);
  checkFileShareConfig(o[1] as api.FileShareConfig);
}

core.Map<core.String, core.String> buildUnnamed6610() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6610(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<api.NetworkConfig> buildUnnamed6611() {
  var o = <api.NetworkConfig>[];
  o.add(buildNetworkConfig());
  o.add(buildNetworkConfig());
  return o;
}

void checkUnnamed6611(core.List<api.NetworkConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkConfig(o[0] as api.NetworkConfig);
  checkNetworkConfig(o[1] as api.NetworkConfig);
}

core.int buildCounterInstance = 0;
api.Instance buildInstance() {
  var o = api.Instance();
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.fileShares = buildUnnamed6609();
    o.labels = buildUnnamed6610();
    o.name = 'foo';
    o.networks = buildUnnamed6611();
    o.state = 'foo';
    o.statusMessage = 'foo';
    o.tier = 'foo';
  }
  buildCounterInstance--;
  return o;
}

void checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed6609(o.fileShares);
    checkUnnamed6610(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6611(o.networks);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    unittest.expect(o.tier, unittest.equals('foo'));
  }
  buildCounterInstance--;
}

core.List<api.Backup> buildUnnamed6612() {
  var o = <api.Backup>[];
  o.add(buildBackup());
  o.add(buildBackup());
  return o;
}

void checkUnnamed6612(core.List<api.Backup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackup(o[0] as api.Backup);
  checkBackup(o[1] as api.Backup);
}

core.List<core.String> buildUnnamed6613() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6613(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListBackupsResponse = 0;
api.ListBackupsResponse buildListBackupsResponse() {
  var o = api.ListBackupsResponse();
  buildCounterListBackupsResponse++;
  if (buildCounterListBackupsResponse < 3) {
    o.backups = buildUnnamed6612();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed6613();
  }
  buildCounterListBackupsResponse--;
  return o;
}

void checkListBackupsResponse(api.ListBackupsResponse o) {
  buildCounterListBackupsResponse++;
  if (buildCounterListBackupsResponse < 3) {
    checkUnnamed6612(o.backups);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6613(o.unreachable);
  }
  buildCounterListBackupsResponse--;
}

core.List<api.Instance> buildUnnamed6614() {
  var o = <api.Instance>[];
  o.add(buildInstance());
  o.add(buildInstance());
  return o;
}

void checkUnnamed6614(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0] as api.Instance);
  checkInstance(o[1] as api.Instance);
}

core.List<core.String> buildUnnamed6615() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6615(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListInstancesResponse = 0;
api.ListInstancesResponse buildListInstancesResponse() {
  var o = api.ListInstancesResponse();
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    o.instances = buildUnnamed6614();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed6615();
  }
  buildCounterListInstancesResponse--;
  return o;
}

void checkListInstancesResponse(api.ListInstancesResponse o) {
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    checkUnnamed6614(o.instances);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6615(o.unreachable);
  }
  buildCounterListInstancesResponse--;
}

core.List<api.Location> buildUnnamed6616() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed6616(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0] as api.Location);
  checkLocation(o[1] as api.Location);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  var o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed6616();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed6616(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed6617() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed6617(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed6617();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6617(o.operations);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed6618() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6618(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed6619() {
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

void checkUnnamed6619(core.Map<core.String, core.Object> o) {
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
    o.labels = buildUnnamed6618();
    o.locationId = 'foo';
    o.metadata = buildUnnamed6619();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed6618(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed6619(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.Map<core.String, core.String> buildUnnamed6620() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6620(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterMaintenancePolicy = 0;
api.MaintenancePolicy buildMaintenancePolicy() {
  var o = api.MaintenancePolicy();
  buildCounterMaintenancePolicy++;
  if (buildCounterMaintenancePolicy < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed6620();
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
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed6620(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    checkUpdatePolicy(o.updatePolicy as api.UpdatePolicy);
    unittest.expect(o.updateTime, unittest.equals('foo'));
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
    checkDailyCycle(o.dailyCycle as api.DailyCycle);
    checkWeeklyCycle(o.weeklyCycle as api.WeeklyCycle);
  }
  buildCounterMaintenanceWindow--;
}

core.List<core.String> buildUnnamed6621() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6621(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6622() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6622(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNetworkConfig = 0;
api.NetworkConfig buildNetworkConfig() {
  var o = api.NetworkConfig();
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    o.ipAddresses = buildUnnamed6621();
    o.modes = buildUnnamed6622();
    o.network = 'foo';
    o.reservedIpRange = 'foo';
  }
  buildCounterNetworkConfig--;
  return o;
}

void checkNetworkConfig(api.NetworkConfig o) {
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    checkUnnamed6621(o.ipAddresses);
    checkUnnamed6622(o.modes);
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.reservedIpRange, unittest.equals('foo'));
  }
  buildCounterNetworkConfig--;
}

core.List<core.String> buildUnnamed6623() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6623(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNfsExportOptions = 0;
api.NfsExportOptions buildNfsExportOptions() {
  var o = api.NfsExportOptions();
  buildCounterNfsExportOptions++;
  if (buildCounterNfsExportOptions < 3) {
    o.accessMode = 'foo';
    o.anonGid = 'foo';
    o.anonUid = 'foo';
    o.ipRanges = buildUnnamed6623();
    o.squashMode = 'foo';
  }
  buildCounterNfsExportOptions--;
  return o;
}

void checkNfsExportOptions(api.NfsExportOptions o) {
  buildCounterNfsExportOptions++;
  if (buildCounterNfsExportOptions < 3) {
    unittest.expect(o.accessMode, unittest.equals('foo'));
    unittest.expect(o.anonGid, unittest.equals('foo'));
    unittest.expect(o.anonUid, unittest.equals('foo'));
    checkUnnamed6623(o.ipRanges);
    unittest.expect(o.squashMode, unittest.equals('foo'));
  }
  buildCounterNfsExportOptions--;
}

core.Map<core.String, core.Object> buildUnnamed6624() {
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

void checkUnnamed6624(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed6625() {
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

void checkUnnamed6625(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed6624();
    o.name = 'foo';
    o.response = buildUnnamed6625();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error as api.Status);
    checkUnnamed6624(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6625(o.response);
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

core.int buildCounterRestoreInstanceRequest = 0;
api.RestoreInstanceRequest buildRestoreInstanceRequest() {
  var o = api.RestoreInstanceRequest();
  buildCounterRestoreInstanceRequest++;
  if (buildCounterRestoreInstanceRequest < 3) {
    o.fileShare = 'foo';
    o.sourceBackup = 'foo';
  }
  buildCounterRestoreInstanceRequest--;
  return o;
}

void checkRestoreInstanceRequest(api.RestoreInstanceRequest o) {
  buildCounterRestoreInstanceRequest++;
  if (buildCounterRestoreInstanceRequest < 3) {
    unittest.expect(o.fileShare, unittest.equals('foo'));
    unittest.expect(o.sourceBackup, unittest.equals('foo'));
  }
  buildCounterRestoreInstanceRequest--;
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
    unittest.expect(o.day, unittest.equals('foo'));
    unittest.expect(o.duration, unittest.equals('foo'));
    checkTimeOfDay(o.startTime as api.TimeOfDay);
  }
  buildCounterSchedule--;
}

core.Map<core.String, core.Object> buildUnnamed6626() {
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

void checkUnnamed6626(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed6627() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed6626());
  o.add(buildUnnamed6626());
  return o;
}

void checkUnnamed6627(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6626(o[0]);
  checkUnnamed6626(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6627();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed6627(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
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
    unittest.expect(o.hours, unittest.equals(42));
    unittest.expect(o.minutes, unittest.equals(42));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.seconds, unittest.equals(42));
  }
  buildCounterTimeOfDay--;
}

core.List<api.DenyMaintenancePeriod> buildUnnamed6628() {
  var o = <api.DenyMaintenancePeriod>[];
  o.add(buildDenyMaintenancePeriod());
  o.add(buildDenyMaintenancePeriod());
  return o;
}

void checkUnnamed6628(core.List<api.DenyMaintenancePeriod> o) {
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
    o.denyMaintenancePeriods = buildUnnamed6628();
    o.window = buildMaintenanceWindow();
  }
  buildCounterUpdatePolicy--;
  return o;
}

void checkUpdatePolicy(api.UpdatePolicy o) {
  buildCounterUpdatePolicy++;
  if (buildCounterUpdatePolicy < 3) {
    unittest.expect(o.channel, unittest.equals('foo'));
    checkUnnamed6628(o.denyMaintenancePeriods);
    checkMaintenanceWindow(o.window as api.MaintenanceWindow);
  }
  buildCounterUpdatePolicy--;
}

core.List<api.Schedule> buildUnnamed6629() {
  var o = <api.Schedule>[];
  o.add(buildSchedule());
  o.add(buildSchedule());
  return o;
}

void checkUnnamed6629(core.List<api.Schedule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchedule(o[0] as api.Schedule);
  checkSchedule(o[1] as api.Schedule);
}

core.int buildCounterWeeklyCycle = 0;
api.WeeklyCycle buildWeeklyCycle() {
  var o = api.WeeklyCycle();
  buildCounterWeeklyCycle++;
  if (buildCounterWeeklyCycle < 3) {
    o.schedule = buildUnnamed6629();
  }
  buildCounterWeeklyCycle--;
  return o;
}

void checkWeeklyCycle(api.WeeklyCycle o) {
  buildCounterWeeklyCycle++;
  if (buildCounterWeeklyCycle < 3) {
    checkUnnamed6629(o.schedule);
  }
  buildCounterWeeklyCycle--;
}

void main() {
  unittest.group('obj-schema-Backup', () {
    unittest.test('to-json--from-json', () {
      var o = buildBackup();
      var od = api.Backup.fromJson(o.toJson());
      checkBackup(od as api.Backup);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCancelOperationRequest();
      var od = api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od as api.CancelOperationRequest);
    });
  });

  unittest.group('obj-schema-DailyCycle', () {
    unittest.test('to-json--from-json', () {
      var o = buildDailyCycle();
      var od = api.DailyCycle.fromJson(o.toJson());
      checkDailyCycle(od as api.DailyCycle);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () {
      var o = buildDate();
      var od = api.Date.fromJson(o.toJson());
      checkDate(od as api.Date);
    });
  });

  unittest.group('obj-schema-DenyMaintenancePeriod', () {
    unittest.test('to-json--from-json', () {
      var o = buildDenyMaintenancePeriod();
      var od = api.DenyMaintenancePeriod.fromJson(o.toJson());
      checkDenyMaintenancePeriod(od as api.DenyMaintenancePeriod);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-FileShareConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildFileShareConfig();
      var od = api.FileShareConfig.fromJson(o.toJson());
      checkFileShareConfig(od as api.FileShareConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1Instance', () {
    unittest.test('to-json--from-json', () {
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
    unittest.test('to-json--from-json', () {
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
    unittest.test('to-json--from-json', () {
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
    unittest.test('to-json--from-json', () {
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
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility();
      var od =
          api.GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
              .fromJson(o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility(
          od as api
              .GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility);
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
      checkGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource(od
          as api
              .GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource);
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
      checkGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility(od
          as api.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility);
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
      checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(od
          as api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata();
      var od = api.GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
          .fromJson(o.toJson());
      checkGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata(
          od as api.GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata);
    });
  });

  unittest.group('obj-schema-Instance', () {
    unittest.test('to-json--from-json', () {
      var o = buildInstance();
      var od = api.Instance.fromJson(o.toJson());
      checkInstance(od as api.Instance);
    });
  });

  unittest.group('obj-schema-ListBackupsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListBackupsResponse();
      var od = api.ListBackupsResponse.fromJson(o.toJson());
      checkListBackupsResponse(od as api.ListBackupsResponse);
    });
  });

  unittest.group('obj-schema-ListInstancesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListInstancesResponse();
      var od = api.ListInstancesResponse.fromJson(o.toJson());
      checkListInstancesResponse(od as api.ListInstancesResponse);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListLocationsResponse();
      var od = api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od as api.ListLocationsResponse);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOperationsResponse();
      var od = api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od as api.ListOperationsResponse);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocation();
      var od = api.Location.fromJson(o.toJson());
      checkLocation(od as api.Location);
    });
  });

  unittest.group('obj-schema-MaintenancePolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildMaintenancePolicy();
      var od = api.MaintenancePolicy.fromJson(o.toJson());
      checkMaintenancePolicy(od as api.MaintenancePolicy);
    });
  });

  unittest.group('obj-schema-MaintenanceWindow', () {
    unittest.test('to-json--from-json', () {
      var o = buildMaintenanceWindow();
      var od = api.MaintenanceWindow.fromJson(o.toJson());
      checkMaintenanceWindow(od as api.MaintenanceWindow);
    });
  });

  unittest.group('obj-schema-NetworkConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildNetworkConfig();
      var od = api.NetworkConfig.fromJson(o.toJson());
      checkNetworkConfig(od as api.NetworkConfig);
    });
  });

  unittest.group('obj-schema-NfsExportOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildNfsExportOptions();
      var od = api.NfsExportOptions.fromJson(o.toJson());
      checkNfsExportOptions(od as api.NfsExportOptions);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-OperationMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperationMetadata();
      var od = api.OperationMetadata.fromJson(o.toJson());
      checkOperationMetadata(od as api.OperationMetadata);
    });
  });

  unittest.group('obj-schema-RestoreInstanceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRestoreInstanceRequest();
      var od = api.RestoreInstanceRequest.fromJson(o.toJson());
      checkRestoreInstanceRequest(od as api.RestoreInstanceRequest);
    });
  });

  unittest.group('obj-schema-Schedule', () {
    unittest.test('to-json--from-json', () {
      var o = buildSchedule();
      var od = api.Schedule.fromJson(o.toJson());
      checkSchedule(od as api.Schedule);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () {
      var o = buildTimeOfDay();
      var od = api.TimeOfDay.fromJson(o.toJson());
      checkTimeOfDay(od as api.TimeOfDay);
    });
  });

  unittest.group('obj-schema-UpdatePolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdatePolicy();
      var od = api.UpdatePolicy.fromJson(o.toJson());
      checkUpdatePolicy(od as api.UpdatePolicy);
    });
  });

  unittest.group('obj-schema-WeeklyCycle', () {
    unittest.test('to-json--from-json', () {
      var o = buildWeeklyCycle();
      var od = api.WeeklyCycle.fromJson(o.toJson());
      checkWeeklyCycle(od as api.WeeklyCycle);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudFilestoreApi(mock).projects.locations;
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
        checkLocation(response as api.Location);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudFilestoreApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_includeUnrevealedLocations = true;
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["includeUnrevealedLocations"].first,
            unittest.equals("$arg_includeUnrevealedLocations"));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
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
              includeUnrevealedLocations: arg_includeUnrevealedLocations,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response as api.ListLocationsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsBackupsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.CloudFilestoreApi(mock).projects.locations.backups;
      var arg_request = buildBackup();
      var arg_parent = 'foo';
      var arg_backupId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Backup.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBackup(obj as api.Backup);

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
            queryMap["backupId"].first, unittest.equals(arg_backupId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              backupId: arg_backupId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.CloudFilestoreApi(mock).projects.locations.backups;
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
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudFilestoreApi(mock).projects.locations.backups;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBackup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBackup(response as api.Backup);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudFilestoreApi(mock).projects.locations.backups;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListBackupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListBackupsResponse(response as api.ListBackupsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.CloudFilestoreApi(mock).projects.locations.backups;
      var arg_request = buildBackup();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Backup.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBackup(obj as api.Backup);

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
        checkOperation(response as api.Operation);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsInstancesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.CloudFilestoreApi(mock).projects.locations.instances;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
            queryMap["instanceId"].first, unittest.equals(arg_instanceId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              instanceId: arg_instanceId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.CloudFilestoreApi(mock).projects.locations.instances;
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
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudFilestoreApi(mock).projects.locations.instances;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInstance(response as api.Instance);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudFilestoreApi(mock).projects.locations.instances;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListInstancesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListInstancesResponse(response as api.ListInstancesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.CloudFilestoreApi(mock).projects.locations.instances;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--restore', () {
      var mock = HttpServerMock();
      var res = api.CloudFilestoreApi(mock).projects.locations.instances;
      var arg_request = buildRestoreInstanceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RestoreInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRestoreInstanceRequest(obj as api.RestoreInstanceRequest);

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .restore(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      var res = api.CloudFilestoreApi(mock).projects.locations.operations;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.CloudFilestoreApi(mock).projects.locations.operations;
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
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudFilestoreApi(mock).projects.locations.operations;
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
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudFilestoreApi(mock).projects.locations.operations;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response as api.ListOperationsResponse);
      })));
    });
  });
}
