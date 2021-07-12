// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/managedidentities/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAttachTrustRequest = 0;
api.AttachTrustRequest buildAttachTrustRequest() {
  final o = api.AttachTrustRequest();
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
    checkTrust(o.trust!);
  }
  buildCounterAttachTrustRequest--;
}

core.List<core.String> buildUnnamed7697() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7697(core.List<core.String> o) {
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

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed7697();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed7697(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  final o = api.CancelOperationRequest();
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

core.List<core.String> buildUnnamed7698() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7698(core.List<core.String> o) {
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

core.int buildCounterCertificate = 0;
api.Certificate buildCertificate() {
  final o = api.Certificate();
  buildCounterCertificate++;
  if (buildCounterCertificate < 3) {
    o.expireTime = 'foo';
    o.issuingCertificate = buildCertificate();
    o.subject = 'foo';
    o.subjectAlternativeName = buildUnnamed7698();
    o.thumbprint = 'foo';
  }
  buildCounterCertificate--;
  return o;
}

void checkCertificate(api.Certificate o) {
  buildCounterCertificate++;
  if (buildCounterCertificate < 3) {
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    checkCertificate(o.issuingCertificate!);
    unittest.expect(
      o.subject!,
      unittest.equals('foo'),
    );
    checkUnnamed7698(o.subjectAlternativeName!);
    unittest.expect(
      o.thumbprint!,
      unittest.equals('foo'),
    );
  }
  buildCounterCertificate--;
}

core.int buildCounterDailyCycle = 0;
api.DailyCycle buildDailyCycle() {
  final o = api.DailyCycle();
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
    checkTimeOfDay(o.startTime!);
  }
  buildCounterDailyCycle--;
}

core.int buildCounterDate = 0;
api.Date buildDate() {
  final o = api.Date();
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
  final o = api.DenyMaintenancePeriod();
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
    checkDate(o.endDate!);
    checkDate(o.startDate!);
    checkTimeOfDay(o.time!);
  }
  buildCounterDenyMaintenancePeriod--;
}

core.int buildCounterDetachTrustRequest = 0;
api.DetachTrustRequest buildDetachTrustRequest() {
  final o = api.DetachTrustRequest();
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
    checkTrust(o.trust!);
  }
  buildCounterDetachTrustRequest--;
}

core.List<core.String> buildUnnamed7699() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7699(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed7700() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7700(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed7701() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7701(core.List<core.String> o) {
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

core.List<api.Trust> buildUnnamed7702() {
  final o = <api.Trust>[];
  o.add(buildTrust());
  o.add(buildTrust());
  return o;
}

void checkUnnamed7702(core.List<api.Trust> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrust(o[0]);
  checkTrust(o[1]);
}

core.int buildCounterDomain = 0;
api.Domain buildDomain() {
  final o = api.Domain();
  buildCounterDomain++;
  if (buildCounterDomain < 3) {
    o.admin = 'foo';
    o.auditLogsEnabled = true;
    o.authorizedNetworks = buildUnnamed7699();
    o.createTime = 'foo';
    o.fqdn = 'foo';
    o.labels = buildUnnamed7700();
    o.locations = buildUnnamed7701();
    o.name = 'foo';
    o.reservedIpRange = 'foo';
    o.state = 'foo';
    o.statusMessage = 'foo';
    o.trusts = buildUnnamed7702();
    o.updateTime = 'foo';
  }
  buildCounterDomain--;
  return o;
}

void checkDomain(api.Domain o) {
  buildCounterDomain++;
  if (buildCounterDomain < 3) {
    unittest.expect(
      o.admin!,
      unittest.equals('foo'),
    );
    unittest.expect(o.auditLogsEnabled!, unittest.isTrue);
    checkUnnamed7699(o.authorizedNetworks!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fqdn!,
      unittest.equals('foo'),
    );
    checkUnnamed7700(o.labels!);
    checkUnnamed7701(o.locations!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reservedIpRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statusMessage!,
      unittest.equals('foo'),
    );
    checkUnnamed7702(o.trusts!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterDomain--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  final o = api.Empty();
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
  final o = api.Expr();
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterExpr--;
}

core.int buildCounterGoogleCloudManagedidentitiesV1OpMetadata = 0;
api.GoogleCloudManagedidentitiesV1OpMetadata
    buildGoogleCloudManagedidentitiesV1OpMetadata() {
  final o = api.GoogleCloudManagedidentitiesV1OpMetadata();
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
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.requestedCancellation!, unittest.isTrue);
    unittest.expect(
      o.target!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verb!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudManagedidentitiesV1OpMetadata--;
}

core.int buildCounterGoogleCloudManagedidentitiesV1alpha1OpMetadata = 0;
api.GoogleCloudManagedidentitiesV1alpha1OpMetadata
    buildGoogleCloudManagedidentitiesV1alpha1OpMetadata() {
  final o = api.GoogleCloudManagedidentitiesV1alpha1OpMetadata();
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
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.requestedCancellation!, unittest.isTrue);
    unittest.expect(
      o.target!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verb!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudManagedidentitiesV1alpha1OpMetadata--;
}

core.int buildCounterGoogleCloudManagedidentitiesV1beta1OpMetadata = 0;
api.GoogleCloudManagedidentitiesV1beta1OpMetadata
    buildGoogleCloudManagedidentitiesV1beta1OpMetadata() {
  final o = api.GoogleCloudManagedidentitiesV1beta1OpMetadata();
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
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.requestedCancellation!, unittest.isTrue);
    unittest.expect(
      o.target!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verb!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudManagedidentitiesV1beta1OpMetadata--;
}

core.Map<core.String, core.String> buildUnnamed7703() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7703(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed7704() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7704(core.Map<core.String, core.String> o) {
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
    buildUnnamed7705() {
  final o = <core.String,
      api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>{};
  o['x'] =
      buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule();
  o['y'] =
      buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule();
  return o;
}

void checkUnnamed7705(
    core.Map<core.String,
            api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule(
      o['x']!);
  checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule(
      o['y']!);
}

core.Map<core.String, core.String> buildUnnamed7706() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7706(core.Map<core.String, core.String> o) {
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
    buildUnnamed7707() {
  final o = <
      api.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>[];
  o.add(
      buildGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource());
  o.add(
      buildGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource());
  return o;
}

void checkUnnamed7707(
    core.List<
            api.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource(o[0]);
  checkGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource(o[1]);
}

core.Map<core.String, core.String> buildUnnamed7708() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7708(core.Map<core.String, core.String> o) {
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
  final o = api.GoogleCloudSaasacceleratorManagementProvidersV1Instance();
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1Instance++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1Instance < 3) {
    o.consumerDefinedName = 'foo';
    o.createTime = 'foo';
    o.labels = buildUnnamed7703();
    o.maintenancePolicyNames = buildUnnamed7704();
    o.maintenanceSchedules = buildUnnamed7705();
    o.maintenanceSettings =
        buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings();
    o.name = 'foo';
    o.producerMetadata = buildUnnamed7706();
    o.provisionedResources = buildUnnamed7707();
    o.slmInstanceTemplate = 'foo';
    o.sloMetadata =
        buildGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata();
    o.softwareVersions = buildUnnamed7708();
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
    checkUnnamed7703(o.labels!);
    checkUnnamed7704(o.maintenancePolicyNames!);
    checkUnnamed7705(o.maintenanceSchedules!);
    checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings(
        o.maintenanceSettings!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed7706(o.producerMetadata!);
    checkUnnamed7707(o.provisionedResources!);
    unittest.expect(
      o.slmInstanceTemplate!,
      unittest.equals('foo'),
    );
    checkGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata(
        o.sloMetadata!);
    checkUnnamed7708(o.softwareVersions!);
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
  final o =
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

core.Map<core.String, api.MaintenancePolicy> buildUnnamed7709() {
  final o = <core.String, api.MaintenancePolicy>{};
  o['x'] = buildMaintenancePolicy();
  o['y'] = buildMaintenancePolicy();
  return o;
}

void checkUnnamed7709(core.Map<core.String, api.MaintenancePolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMaintenancePolicy(o['x']!);
  checkMaintenancePolicy(o['y']!);
}

core.int
    buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings =
    0;
api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
    buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings() {
  final o =
      api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings();
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings <
      3) {
    o.exclude = true;
    o.isRollback = true;
    o.maintenancePolicies = buildUnnamed7709();
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
    checkUnnamed7709(o.maintenancePolicies!);
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings--;
}

core.List<api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
    buildUnnamed7710() {
  final o = <api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>[];
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  return o;
}

void checkUnnamed7710(
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
  final o =
      api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata();
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata <
      3) {
    o.exclusions = buildUnnamed7710();
    o.location = 'foo';
    o.nodeId = 'foo';
    o.perSliEligibility =
        buildGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility();
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata--;
  return o;
}

void checkGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata(
    api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata o) {
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata <
      3) {
    checkUnnamed7710(o.exclusions!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodeId!,
      unittest.equals('foo'),
    );
    checkGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility(
        o.perSliEligibility!);
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata--;
}

core.Map<core.String,
        api.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility>
    buildUnnamed7711() {
  final o = <core.String,
      api.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility>{};
  o['x'] = buildGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility();
  o['y'] = buildGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility();
  return o;
}

void checkUnnamed7711(
    core.Map<core.String,
            api.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility(o['x']!);
  checkGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility(o['y']!);
}

core.int
    buildCounterGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility =
    0;
api.GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
    buildGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility() {
  final o =
      api.GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility();
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility <
      3) {
    o.eligibilities = buildUnnamed7711();
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility--;
  return o;
}

void checkGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility(
    api.GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility o) {
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility <
      3) {
    checkUnnamed7711(o.eligibilities!);
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility--;
}

core.int
    buildCounterGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource =
    0;
api.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
    buildGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource() {
  final o =
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
  final o = api.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility();
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
  final o = api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion();
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
    buildUnnamed7712() {
  final o = <api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>[];
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion());
  return o;
}

void checkUnnamed7712(
    core.List<api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(o[0]);
  checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(o[1]);
}

core.List<api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>
    buildUnnamed7713() {
  final o =
      <api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>[];
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata());
  o.add(buildGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata());
  return o;
}

void checkUnnamed7713(
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
  final o = api.GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata();
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata++;
  if (buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata <
      3) {
    o.exclusions = buildUnnamed7712();
    o.nodes = buildUnnamed7713();
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
    checkUnnamed7712(o.exclusions!);
    checkUnnamed7713(o.nodes!);
    checkGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility(
        o.perSliEligibility!);
    unittest.expect(
      o.tier!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata--;
}

core.int buildCounterLDAPSSettings = 0;
api.LDAPSSettings buildLDAPSSettings() {
  final o = api.LDAPSSettings();
  buildCounterLDAPSSettings++;
  if (buildCounterLDAPSSettings < 3) {
    o.certificate = buildCertificate();
    o.certificatePassword = 'foo';
    o.certificatePfx = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterLDAPSSettings--;
  return o;
}

void checkLDAPSSettings(api.LDAPSSettings o) {
  buildCounterLDAPSSettings++;
  if (buildCounterLDAPSSettings < 3) {
    checkCertificate(o.certificate!);
    unittest.expect(
      o.certificatePassword!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.certificatePfx!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterLDAPSSettings--;
}

core.List<api.Domain> buildUnnamed7714() {
  final o = <api.Domain>[];
  o.add(buildDomain());
  o.add(buildDomain());
  return o;
}

void checkUnnamed7714(core.List<api.Domain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomain(o[0]);
  checkDomain(o[1]);
}

core.List<core.String> buildUnnamed7715() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7715(core.List<core.String> o) {
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

core.int buildCounterListDomainsResponse = 0;
api.ListDomainsResponse buildListDomainsResponse() {
  final o = api.ListDomainsResponse();
  buildCounterListDomainsResponse++;
  if (buildCounterListDomainsResponse < 3) {
    o.domains = buildUnnamed7714();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed7715();
  }
  buildCounterListDomainsResponse--;
  return o;
}

void checkListDomainsResponse(api.ListDomainsResponse o) {
  buildCounterListDomainsResponse++;
  if (buildCounterListDomainsResponse < 3) {
    checkUnnamed7714(o.domains!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7715(o.unreachable!);
  }
  buildCounterListDomainsResponse--;
}

core.List<api.Location> buildUnnamed7716() {
  final o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed7716(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed7716();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed7716(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed7717() {
  final o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed7717(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed7717();
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
    checkUnnamed7717(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.SqlIntegration> buildUnnamed7718() {
  final o = <api.SqlIntegration>[];
  o.add(buildSqlIntegration());
  o.add(buildSqlIntegration());
  return o;
}

void checkUnnamed7718(core.List<api.SqlIntegration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlIntegration(o[0]);
  checkSqlIntegration(o[1]);
}

core.List<core.String> buildUnnamed7719() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7719(core.List<core.String> o) {
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

core.int buildCounterListSqlIntegrationsResponse = 0;
api.ListSqlIntegrationsResponse buildListSqlIntegrationsResponse() {
  final o = api.ListSqlIntegrationsResponse();
  buildCounterListSqlIntegrationsResponse++;
  if (buildCounterListSqlIntegrationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.sqlIntegrations = buildUnnamed7718();
    o.unreachable = buildUnnamed7719();
  }
  buildCounterListSqlIntegrationsResponse--;
  return o;
}

void checkListSqlIntegrationsResponse(api.ListSqlIntegrationsResponse o) {
  buildCounterListSqlIntegrationsResponse++;
  if (buildCounterListSqlIntegrationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7718(o.sqlIntegrations!);
    checkUnnamed7719(o.unreachable!);
  }
  buildCounterListSqlIntegrationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed7720() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7720(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed7721() {
  final o = <core.String, core.Object>{};
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

void checkUnnamed7721(core.Map<core.String, core.Object> o) {
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
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed7720();
    o.locationId = 'foo';
    o.metadata = buildUnnamed7721();
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
    checkUnnamed7720(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed7721(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.Map<core.String, core.String> buildUnnamed7722() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7722(core.Map<core.String, core.String> o) {
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
  final o = api.MaintenancePolicy();
  buildCounterMaintenancePolicy++;
  if (buildCounterMaintenancePolicy < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed7722();
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
    checkUnnamed7722(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUpdatePolicy(o.updatePolicy!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterMaintenancePolicy--;
}

core.int buildCounterMaintenanceWindow = 0;
api.MaintenanceWindow buildMaintenanceWindow() {
  final o = api.MaintenanceWindow();
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
    checkDailyCycle(o.dailyCycle!);
    checkWeeklyCycle(o.weeklyCycle!);
  }
  buildCounterMaintenanceWindow--;
}

core.Map<core.String, core.Object> buildUnnamed7723() {
  final o = <core.String, core.Object>{};
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

void checkUnnamed7723(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed7724() {
  final o = <core.String, core.Object>{};
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

void checkUnnamed7724(core.Map<core.String, core.Object> o) {
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
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed7723();
    o.name = 'foo';
    o.response = buildUnnamed7724();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed7723(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed7724(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationMetadata = 0;
api.OperationMetadata buildOperationMetadata() {
  final o = api.OperationMetadata();
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

core.List<api.Binding> buildUnnamed7725() {
  final o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed7725(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed7725();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed7725(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterPolicy--;
}

core.List<core.String> buildUnnamed7726() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7726(core.List<core.String> o) {
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

core.int buildCounterReconfigureTrustRequest = 0;
api.ReconfigureTrustRequest buildReconfigureTrustRequest() {
  final o = api.ReconfigureTrustRequest();
  buildCounterReconfigureTrustRequest++;
  if (buildCounterReconfigureTrustRequest < 3) {
    o.targetDnsIpAddresses = buildUnnamed7726();
    o.targetDomainName = 'foo';
  }
  buildCounterReconfigureTrustRequest--;
  return o;
}

void checkReconfigureTrustRequest(api.ReconfigureTrustRequest o) {
  buildCounterReconfigureTrustRequest++;
  if (buildCounterReconfigureTrustRequest < 3) {
    checkUnnamed7726(o.targetDnsIpAddresses!);
    unittest.expect(
      o.targetDomainName!,
      unittest.equals('foo'),
    );
  }
  buildCounterReconfigureTrustRequest--;
}

core.int buildCounterResetAdminPasswordRequest = 0;
api.ResetAdminPasswordRequest buildResetAdminPasswordRequest() {
  final o = api.ResetAdminPasswordRequest();
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
  final o = api.ResetAdminPasswordResponse();
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
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
  }
  buildCounterResetAdminPasswordResponse--;
}

core.int buildCounterSchedule = 0;
api.Schedule buildSchedule() {
  final o = api.Schedule();
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
    checkTimeOfDay(o.startTime!);
  }
  buildCounterSchedule--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
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
    checkPolicy(o.policy!);
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterSqlIntegration = 0;
api.SqlIntegration buildSqlIntegration() {
  final o = api.SqlIntegration();
  buildCounterSqlIntegration++;
  if (buildCounterSqlIntegration < 3) {
    o.createTime = 'foo';
    o.name = 'foo';
    o.sqlInstance = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterSqlIntegration--;
  return o;
}

void checkSqlIntegration(api.SqlIntegration o) {
  buildCounterSqlIntegration++;
  if (buildCounterSqlIntegration < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sqlInstance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterSqlIntegration--;
}

core.Map<core.String, core.Object> buildUnnamed7727() {
  final o = <core.String, core.Object>{};
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

void checkUnnamed7727(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed7728() {
  final o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed7727());
  o.add(buildUnnamed7727());
  return o;
}

void checkUnnamed7728(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7727(o[0]);
  checkUnnamed7727(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed7728();
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
    checkUnnamed7728(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed7729() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7729(core.List<core.String> o) {
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

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed7729();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed7729(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed7730() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7730(core.List<core.String> o) {
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

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed7730();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed7730(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTimeOfDay = 0;
api.TimeOfDay buildTimeOfDay() {
  final o = api.TimeOfDay();
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

core.List<core.String> buildUnnamed7731() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7731(core.List<core.String> o) {
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

core.int buildCounterTrust = 0;
api.Trust buildTrust() {
  final o = api.Trust();
  buildCounterTrust++;
  if (buildCounterTrust < 3) {
    o.createTime = 'foo';
    o.lastTrustHeartbeatTime = 'foo';
    o.selectiveAuthentication = true;
    o.state = 'foo';
    o.stateDescription = 'foo';
    o.targetDnsIpAddresses = buildUnnamed7731();
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastTrustHeartbeatTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.selectiveAuthentication!, unittest.isTrue);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateDescription!,
      unittest.equals('foo'),
    );
    checkUnnamed7731(o.targetDnsIpAddresses!);
    unittest.expect(
      o.targetDomainName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trustDirection!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trustHandshakeSecret!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trustType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterTrust--;
}

core.List<api.DenyMaintenancePeriod> buildUnnamed7732() {
  final o = <api.DenyMaintenancePeriod>[];
  o.add(buildDenyMaintenancePeriod());
  o.add(buildDenyMaintenancePeriod());
  return o;
}

void checkUnnamed7732(core.List<api.DenyMaintenancePeriod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDenyMaintenancePeriod(o[0]);
  checkDenyMaintenancePeriod(o[1]);
}

core.int buildCounterUpdatePolicy = 0;
api.UpdatePolicy buildUpdatePolicy() {
  final o = api.UpdatePolicy();
  buildCounterUpdatePolicy++;
  if (buildCounterUpdatePolicy < 3) {
    o.channel = 'foo';
    o.denyMaintenancePeriods = buildUnnamed7732();
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
    checkUnnamed7732(o.denyMaintenancePeriods!);
    checkMaintenanceWindow(o.window!);
  }
  buildCounterUpdatePolicy--;
}

core.int buildCounterValidateTrustRequest = 0;
api.ValidateTrustRequest buildValidateTrustRequest() {
  final o = api.ValidateTrustRequest();
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
    checkTrust(o.trust!);
  }
  buildCounterValidateTrustRequest--;
}

core.List<api.Schedule> buildUnnamed7733() {
  final o = <api.Schedule>[];
  o.add(buildSchedule());
  o.add(buildSchedule());
  return o;
}

void checkUnnamed7733(core.List<api.Schedule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchedule(o[0]);
  checkSchedule(o[1]);
}

core.int buildCounterWeeklyCycle = 0;
api.WeeklyCycle buildWeeklyCycle() {
  final o = api.WeeklyCycle();
  buildCounterWeeklyCycle++;
  if (buildCounterWeeklyCycle < 3) {
    o.schedule = buildUnnamed7733();
  }
  buildCounterWeeklyCycle--;
  return o;
}

void checkWeeklyCycle(api.WeeklyCycle o) {
  buildCounterWeeklyCycle++;
  if (buildCounterWeeklyCycle < 3) {
    checkUnnamed7733(o.schedule!);
  }
  buildCounterWeeklyCycle--;
}

void main() {
  unittest.group('obj-schema-AttachTrustRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttachTrustRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttachTrustRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttachTrustRequest(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Binding.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-Certificate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCertificate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Certificate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificate(od);
    });
  });

  unittest.group('obj-schema-DailyCycle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyCycle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DailyCycle.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDailyCycle(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Date.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDate(od);
    });
  });

  unittest.group('obj-schema-DenyMaintenancePeriod', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDenyMaintenancePeriod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DenyMaintenancePeriod.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDenyMaintenancePeriod(od);
    });
  });

  unittest.group('obj-schema-DetachTrustRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetachTrustRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DetachTrustRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDetachTrustRequest(od);
    });
  });

  unittest.group('obj-schema-Domain', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomain();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Domain.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDomain(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Expr.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudManagedidentitiesV1OpMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudManagedidentitiesV1OpMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudManagedidentitiesV1OpMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudManagedidentitiesV1OpMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudManagedidentitiesV1alpha1OpMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudManagedidentitiesV1alpha1OpMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudManagedidentitiesV1alpha1OpMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudManagedidentitiesV1alpha1OpMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudManagedidentitiesV1beta1OpMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudManagedidentitiesV1beta1OpMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudManagedidentitiesV1beta1OpMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudManagedidentitiesV1beta1OpMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1Instance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudSaasacceleratorManagementProvidersV1Instance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudSaasacceleratorManagementProvidersV1Instance.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudSaasacceleratorManagementProvidersV1Instance(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudSaasacceleratorManagementProvidersV1SloEligibility(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudSaasacceleratorManagementProvidersV1SloExclusion(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudSaasacceleratorManagementProvidersV1SloMetadata(od);
    });
  });

  unittest.group('obj-schema-LDAPSSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLDAPSSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LDAPSSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLDAPSSettings(od);
    });
  });

  unittest.group('obj-schema-ListDomainsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDomainsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDomainsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDomainsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSqlIntegrationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSqlIntegrationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSqlIntegrationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSqlIntegrationsResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-MaintenancePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaintenancePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaintenancePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMaintenancePolicy(od);
    });
  });

  unittest.group('obj-schema-MaintenanceWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaintenanceWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaintenanceWindow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMaintenanceWindow(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-OperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-ReconfigureTrustRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReconfigureTrustRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReconfigureTrustRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReconfigureTrustRequest(od);
    });
  });

  unittest.group('obj-schema-ResetAdminPasswordRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResetAdminPasswordRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResetAdminPasswordRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResetAdminPasswordRequest(od);
    });
  });

  unittest.group('obj-schema-ResetAdminPasswordResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResetAdminPasswordResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResetAdminPasswordResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResetAdminPasswordResponse(od);
    });
  });

  unittest.group('obj-schema-Schedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Schedule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSchedule(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-SqlIntegration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlIntegration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlIntegration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlIntegration(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeOfDay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeOfDay.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeOfDay(od);
    });
  });

  unittest.group('obj-schema-Trust', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrust();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Trust.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTrust(od);
    });
  });

  unittest.group('obj-schema-UpdatePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdatePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdatePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdatePolicy(od);
    });
  });

  unittest.group('obj-schema-ValidateTrustRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidateTrustRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidateTrustRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValidateTrustRequest(od);
    });
  });

  unittest.group('obj-schema-WeeklyCycle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWeeklyCycle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WeeklyCycle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWeeklyCycle(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListLocationsResponse());
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

  unittest.group('resource-ProjectsLocationsGlobalDomainsResource', () {
    unittest.test('method--attachTrust', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations
          .global
          .domains;
      final arg_request = buildAttachTrustRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AttachTrustRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAttachTrustRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.attachTrust(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations
          .global
          .domains;
      final arg_request = buildDomain();
      final arg_parent = 'foo';
      final arg_domainName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Domain.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDomain(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['domainName']!.first,
          unittest.equals(arg_domainName),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          domainName: arg_domainName, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations
          .global
          .domains;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--detachTrust', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations
          .global
          .domains;
      final arg_request = buildDetachTrustRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DetachTrustRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDetachTrustRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.detachTrust(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations
          .global
          .domains;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDomain());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDomain(response as api.Domain);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations
          .global
          .domains;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--getLdapssettings', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations
          .global
          .domains;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLDAPSSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getLdapssettings(arg_name, $fields: arg_$fields);
      checkLDAPSSettings(response as api.LDAPSSettings);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations
          .global
          .domains;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListDomainsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDomainsResponse(response as api.ListDomainsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations
          .global
          .domains;
      final arg_request = buildDomain();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Domain.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDomain(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--reconfigureTrust', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations
          .global
          .domains;
      final arg_request = buildReconfigureTrustRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReconfigureTrustRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReconfigureTrustRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.reconfigureTrust(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--resetAdminPassword', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations
          .global
          .domains;
      final arg_request = buildResetAdminPasswordRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResetAdminPasswordRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResetAdminPasswordRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildResetAdminPasswordResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.resetAdminPassword(arg_request, arg_name,
          $fields: arg_$fields);
      checkResetAdminPasswordResponse(
          response as api.ResetAdminPasswordResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations
          .global
          .domains;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations
          .global
          .domains;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });

    unittest.test('method--updateLdapssettings', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations
          .global
          .domains;
      final arg_request = buildLDAPSSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LDAPSSettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLDAPSSettings(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateLdapssettings(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--validateTrust', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations
          .global
          .domains;
      final arg_request = buildValidateTrustRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ValidateTrustRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkValidateTrustRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.validateTrust(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsGlobalDomainsSqlIntegrationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations
          .global
          .domains
          .sqlIntegrations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSqlIntegration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSqlIntegration(response as api.SqlIntegration);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations
          .global
          .domains
          .sqlIntegrations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListSqlIntegrationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSqlIntegrationsResponse(
          response as api.ListSqlIntegrationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsGlobalOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations
          .global
          .operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations
          .global
          .operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations
          .global
          .operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ManagedServiceForMicrosoftActiveDirectoryConsumerApi(mock)
          .projects
          .locations
          .global
          .operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListOperationsResponse());
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
