// Copyright 2023 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/workloadmanager/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterActiveDirectory = 0;
api.ActiveDirectory buildActiveDirectory() {
  final o = api.ActiveDirectory();
  buildCounterActiveDirectory++;
  if (buildCounterActiveDirectory < 3) {
    o.dnsAddress = 'foo';
    o.domain = 'foo';
    o.domainUsername = 'foo';
    o.secretManagerSecret = 'foo';
    o.type = 'foo';
  }
  buildCounterActiveDirectory--;
  return o;
}

void checkActiveDirectory(api.ActiveDirectory o) {
  buildCounterActiveDirectory++;
  if (buildCounterActiveDirectory < 3) {
    unittest.expect(o.dnsAddress!, unittest.equals('foo'));
    unittest.expect(o.domain!, unittest.equals('foo'));
    unittest.expect(o.domainUsername!, unittest.equals('foo'));
    unittest.expect(o.secretManagerSecret!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterActiveDirectory--;
}

core.List<api.DeploymentOutput> buildUnnamed0() => [
  buildDeploymentOutput(),
  buildDeploymentOutput(),
];

void checkUnnamed0(core.List<api.DeploymentOutput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeploymentOutput(o[0]);
  checkDeploymentOutput(o[1]);
}

core.int buildCounterActuation = 0;
api.Actuation buildActuation() {
  final o = api.Actuation();
  buildCounterActuation++;
  if (buildCounterActuation < 3) {
    o.actuationOutput = buildActuationOutput();
    o.deploymentOutput = buildUnnamed0();
    o.endTime = 'foo';
    o.name = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
  }
  buildCounterActuation--;
  return o;
}

void checkActuation(api.Actuation o) {
  buildCounterActuation++;
  if (buildCounterActuation < 3) {
    checkActuationOutput(o.actuationOutput!);
    checkUnnamed0(o.deploymentOutput!);
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterActuation--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterActuationOutput = 0;
api.ActuationOutput buildActuationOutput() {
  final o = api.ActuationOutput();
  buildCounterActuationOutput++;
  if (buildCounterActuationOutput < 3) {
    o.actuateLogs = 'foo';
    o.ansibleError = 'foo';
    o.ansibleFailedTask = buildUnnamed1();
    o.blueprintId = 'foo';
    o.cloudbuildId = 'foo';
    o.errorCode = 'foo';
    o.errorLogs = 'foo';
    o.hasUserFacingErrorMsg = true;
    o.terraformError = 'foo';
    o.terraformTemplate = 'foo';
  }
  buildCounterActuationOutput--;
  return o;
}

void checkActuationOutput(api.ActuationOutput o) {
  buildCounterActuationOutput++;
  if (buildCounterActuationOutput < 3) {
    unittest.expect(o.actuateLogs!, unittest.equals('foo'));
    unittest.expect(o.ansibleError!, unittest.equals('foo'));
    checkUnnamed1(o.ansibleFailedTask!);
    unittest.expect(o.blueprintId!, unittest.equals('foo'));
    unittest.expect(o.cloudbuildId!, unittest.equals('foo'));
    unittest.expect(o.errorCode!, unittest.equals('foo'));
    unittest.expect(o.errorLogs!, unittest.equals('foo'));
    unittest.expect(o.hasUserFacingErrorMsg!, unittest.isTrue);
    unittest.expect(o.terraformError!, unittest.equals('foo'));
    unittest.expect(o.terraformTemplate!, unittest.equals('foo'));
  }
  buildCounterActuationOutput--;
}

core.Map<core.String, core.String> buildUnnamed2() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed2(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterAgentCommand = 0;
api.AgentCommand buildAgentCommand() {
  final o = api.AgentCommand();
  buildCounterAgentCommand++;
  if (buildCounterAgentCommand < 3) {
    o.command = 'foo';
    o.parameters = buildUnnamed2();
  }
  buildCounterAgentCommand--;
  return o;
}

void checkAgentCommand(api.AgentCommand o) {
  buildCounterAgentCommand++;
  if (buildCounterAgentCommand < 3) {
    unittest.expect(o.command!, unittest.equals('foo'));
    checkUnnamed2(o.parameters!);
  }
  buildCounterAgentCommand--;
}

core.int buildCounterAgentStates = 0;
api.AgentStates buildAgentStates() {
  final o = api.AgentStates();
  buildCounterAgentStates++;
  if (buildCounterAgentStates < 3) {
    o.availableVersion = 'foo';
    o.hanaMonitoring = buildServiceStates();
    o.installedVersion = 'foo';
    o.isFullyEnabled = true;
    o.processMetrics = buildServiceStates();
    o.systemDiscovery = buildServiceStates();
  }
  buildCounterAgentStates--;
  return o;
}

void checkAgentStates(api.AgentStates o) {
  buildCounterAgentStates++;
  if (buildCounterAgentStates < 3) {
    unittest.expect(o.availableVersion!, unittest.equals('foo'));
    checkServiceStates(o.hanaMonitoring!);
    unittest.expect(o.installedVersion!, unittest.equals('foo'));
    unittest.expect(o.isFullyEnabled!, unittest.isTrue);
    checkServiceStates(o.processMetrics!);
    checkServiceStates(o.systemDiscovery!);
  }
  buildCounterAgentStates--;
}

core.List<api.AgentStatusReference> buildUnnamed3() => [
  buildAgentStatusReference(),
  buildAgentStatusReference(),
];

void checkUnnamed3(core.List<api.AgentStatusReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentStatusReference(o[0]);
  checkAgentStatusReference(o[1]);
}

core.List<api.AgentStatusServiceStatus> buildUnnamed4() => [
  buildAgentStatusServiceStatus(),
  buildAgentStatusServiceStatus(),
];

void checkUnnamed4(core.List<api.AgentStatusServiceStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentStatusServiceStatus(o[0]);
  checkAgentStatusServiceStatus(o[1]);
}

core.int buildCounterAgentStatus = 0;
api.AgentStatus buildAgentStatus() {
  final o = api.AgentStatus();
  buildCounterAgentStatus++;
  if (buildCounterAgentStatus < 3) {
    o.agentName = 'foo';
    o.availableVersion = 'foo';
    o.cloudApiAccessFullScopesGranted = 'foo';
    o.configurationErrorMessage = 'foo';
    o.configurationFilePath = 'foo';
    o.configurationValid = 'foo';
    o.installedVersion = 'foo';
    o.instanceUri = 'foo';
    o.kernelVersion =
        buildSapDiscoveryResourceInstancePropertiesKernelVersion();
    o.references = buildUnnamed3();
    o.services = buildUnnamed4();
    o.systemdServiceEnabled = 'foo';
    o.systemdServiceRunning = 'foo';
  }
  buildCounterAgentStatus--;
  return o;
}

void checkAgentStatus(api.AgentStatus o) {
  buildCounterAgentStatus++;
  if (buildCounterAgentStatus < 3) {
    unittest.expect(o.agentName!, unittest.equals('foo'));
    unittest.expect(o.availableVersion!, unittest.equals('foo'));
    unittest.expect(o.cloudApiAccessFullScopesGranted!, unittest.equals('foo'));
    unittest.expect(o.configurationErrorMessage!, unittest.equals('foo'));
    unittest.expect(o.configurationFilePath!, unittest.equals('foo'));
    unittest.expect(o.configurationValid!, unittest.equals('foo'));
    unittest.expect(o.installedVersion!, unittest.equals('foo'));
    unittest.expect(o.instanceUri!, unittest.equals('foo'));
    checkSapDiscoveryResourceInstancePropertiesKernelVersion(o.kernelVersion!);
    checkUnnamed3(o.references!);
    checkUnnamed4(o.services!);
    unittest.expect(o.systemdServiceEnabled!, unittest.equals('foo'));
    unittest.expect(o.systemdServiceRunning!, unittest.equals('foo'));
  }
  buildCounterAgentStatus--;
}

core.int buildCounterAgentStatusConfigValue = 0;
api.AgentStatusConfigValue buildAgentStatusConfigValue() {
  final o = api.AgentStatusConfigValue();
  buildCounterAgentStatusConfigValue++;
  if (buildCounterAgentStatusConfigValue < 3) {
    o.isDefault = true;
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterAgentStatusConfigValue--;
  return o;
}

void checkAgentStatusConfigValue(api.AgentStatusConfigValue o) {
  buildCounterAgentStatusConfigValue++;
  if (buildCounterAgentStatusConfigValue < 3) {
    unittest.expect(o.isDefault!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterAgentStatusConfigValue--;
}

core.int buildCounterAgentStatusIAMPermission = 0;
api.AgentStatusIAMPermission buildAgentStatusIAMPermission() {
  final o = api.AgentStatusIAMPermission();
  buildCounterAgentStatusIAMPermission++;
  if (buildCounterAgentStatusIAMPermission < 3) {
    o.granted = 'foo';
    o.name = 'foo';
  }
  buildCounterAgentStatusIAMPermission--;
  return o;
}

void checkAgentStatusIAMPermission(api.AgentStatusIAMPermission o) {
  buildCounterAgentStatusIAMPermission++;
  if (buildCounterAgentStatusIAMPermission < 3) {
    unittest.expect(o.granted!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterAgentStatusIAMPermission--;
}

core.int buildCounterAgentStatusReference = 0;
api.AgentStatusReference buildAgentStatusReference() {
  final o = api.AgentStatusReference();
  buildCounterAgentStatusReference++;
  if (buildCounterAgentStatusReference < 3) {
    o.name = 'foo';
    o.url = 'foo';
  }
  buildCounterAgentStatusReference--;
  return o;
}

void checkAgentStatusReference(api.AgentStatusReference o) {
  buildCounterAgentStatusReference++;
  if (buildCounterAgentStatusReference < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterAgentStatusReference--;
}

core.List<api.AgentStatusConfigValue> buildUnnamed5() => [
  buildAgentStatusConfigValue(),
  buildAgentStatusConfigValue(),
];

void checkUnnamed5(core.List<api.AgentStatusConfigValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentStatusConfigValue(o[0]);
  checkAgentStatusConfigValue(o[1]);
}

core.List<api.AgentStatusIAMPermission> buildUnnamed6() => [
  buildAgentStatusIAMPermission(),
  buildAgentStatusIAMPermission(),
];

void checkUnnamed6(core.List<api.AgentStatusIAMPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentStatusIAMPermission(o[0]);
  checkAgentStatusIAMPermission(o[1]);
}

core.int buildCounterAgentStatusServiceStatus = 0;
api.AgentStatusServiceStatus buildAgentStatusServiceStatus() {
  final o = api.AgentStatusServiceStatus();
  buildCounterAgentStatusServiceStatus++;
  if (buildCounterAgentStatusServiceStatus < 3) {
    o.configValues = buildUnnamed5();
    o.errorMessage = 'foo';
    o.fullyFunctional = 'foo';
    o.iamPermissions = buildUnnamed6();
    o.name = 'foo';
    o.state = 'foo';
    o.unspecifiedStateMessage = 'foo';
  }
  buildCounterAgentStatusServiceStatus--;
  return o;
}

void checkAgentStatusServiceStatus(api.AgentStatusServiceStatus o) {
  buildCounterAgentStatusServiceStatus++;
  if (buildCounterAgentStatusServiceStatus < 3) {
    checkUnnamed5(o.configValues!);
    unittest.expect(o.errorMessage!, unittest.equals('foo'));
    unittest.expect(o.fullyFunctional!, unittest.equals('foo'));
    checkUnnamed6(o.iamPermissions!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.unspecifiedStateMessage!, unittest.equals('foo'));
  }
  buildCounterAgentStatusServiceStatus--;
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAppDetails = 0;
api.AppDetails buildAppDetails() {
  final o = api.AppDetails();
  buildCounterAppDetails++;
  if (buildCounterAppDetails < 3) {
    o.appInstanceId = 'foo';
    o.appServiceAccount = 'foo';
    o.appVmNames = buildUnnamed7();
    o.ascsImage = 'foo';
    o.ascsInstanceId = 'foo';
    o.ascsMachineType = 'foo';
    o.ascsServiceAccount = 'foo';
    o.ascsVm = 'foo';
    o.ersInstanceId = 'foo';
    o.ersVm = 'foo';
    o.image = 'foo';
    o.machineType = 'foo';
    o.secretManagerSecret = 'foo';
    o.sharedStorage = 'foo';
    o.sid = 'foo';
    o.vmsMultiplier = 42;
  }
  buildCounterAppDetails--;
  return o;
}

void checkAppDetails(api.AppDetails o) {
  buildCounterAppDetails++;
  if (buildCounterAppDetails < 3) {
    unittest.expect(o.appInstanceId!, unittest.equals('foo'));
    unittest.expect(o.appServiceAccount!, unittest.equals('foo'));
    checkUnnamed7(o.appVmNames!);
    unittest.expect(o.ascsImage!, unittest.equals('foo'));
    unittest.expect(o.ascsInstanceId!, unittest.equals('foo'));
    unittest.expect(o.ascsMachineType!, unittest.equals('foo'));
    unittest.expect(o.ascsServiceAccount!, unittest.equals('foo'));
    unittest.expect(o.ascsVm!, unittest.equals('foo'));
    unittest.expect(o.ersInstanceId!, unittest.equals('foo'));
    unittest.expect(o.ersVm!, unittest.equals('foo'));
    unittest.expect(o.image!, unittest.equals('foo'));
    unittest.expect(o.machineType!, unittest.equals('foo'));
    unittest.expect(o.secretManagerSecret!, unittest.equals('foo'));
    unittest.expect(o.sharedStorage!, unittest.equals('foo'));
    unittest.expect(o.sid!, unittest.equals('foo'));
    unittest.expect(o.vmsMultiplier!, unittest.equals(42));
  }
  buildCounterAppDetails--;
}

core.int buildCounterBackupProperties = 0;
api.BackupProperties buildBackupProperties() {
  final o = api.BackupProperties();
  buildCounterBackupProperties++;
  if (buildCounterBackupProperties < 3) {
    o.latestBackupStatus = 'foo';
    o.latestBackupTime = 'foo';
  }
  buildCounterBackupProperties--;
  return o;
}

void checkBackupProperties(api.BackupProperties o) {
  buildCounterBackupProperties++;
  if (buildCounterBackupProperties < 3) {
    unittest.expect(o.latestBackupStatus!, unittest.equals('foo'));
    unittest.expect(o.latestBackupTime!, unittest.equals('foo'));
  }
  buildCounterBackupProperties--;
}

core.int buildCounterBigQueryDestination = 0;
api.BigQueryDestination buildBigQueryDestination() {
  final o = api.BigQueryDestination();
  buildCounterBigQueryDestination++;
  if (buildCounterBigQueryDestination < 3) {
    o.createNewResultsTable = true;
    o.destinationDataset = 'foo';
  }
  buildCounterBigQueryDestination--;
  return o;
}

void checkBigQueryDestination(api.BigQueryDestination o) {
  buildCounterBigQueryDestination++;
  if (buildCounterBigQueryDestination < 3) {
    unittest.expect(o.createNewResultsTable!, unittest.isTrue);
    unittest.expect(o.destinationDataset!, unittest.equals('foo'));
  }
  buildCounterBigQueryDestination--;
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

core.int buildCounterCloudResource = 0;
api.CloudResource buildCloudResource() {
  final o = api.CloudResource();
  buildCounterCloudResource++;
  if (buildCounterCloudResource < 3) {
    o.instanceProperties = buildInstanceProperties();
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterCloudResource--;
  return o;
}

void checkCloudResource(api.CloudResource o) {
  buildCounterCloudResource++;
  if (buildCounterCloudResource < 3) {
    checkInstanceProperties(o.instanceProperties!);
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterCloudResource--;
}

core.int buildCounterCommand = 0;
api.Command buildCommand() {
  final o = api.Command();
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    o.agentCommand = buildAgentCommand();
    o.shellCommand = buildShellCommand();
  }
  buildCounterCommand--;
  return o;
}

void checkCommand(api.Command o) {
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    checkAgentCommand(o.agentCommand!);
    checkShellCommand(o.shellCommand!);
  }
  buildCounterCommand--;
}

core.List<api.HealthCheck> buildUnnamed8() => [
  buildHealthCheck(),
  buildHealthCheck(),
];

void checkUnnamed8(core.List<api.HealthCheck> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHealthCheck(o[0]);
  checkHealthCheck(o[1]);
}

core.List<api.ComponentHealth> buildUnnamed9() => [
  buildComponentHealth(),
  buildComponentHealth(),
];

void checkUnnamed9(core.List<api.ComponentHealth> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComponentHealth(o[0]);
  checkComponentHealth(o[1]);
}

core.int buildCounterComponentHealth = 0;
api.ComponentHealth buildComponentHealth() {
  final o = api.ComponentHealth();
  buildCounterComponentHealth++;
  if (buildCounterComponentHealth < 3) {
    o.component = 'foo';
    o.componentHealthChecks = buildUnnamed8();
    o.componentHealthType = 'foo';
    o.state = 'foo';
    o.subComponentsHealth = buildUnnamed9();
  }
  buildCounterComponentHealth--;
  return o;
}

void checkComponentHealth(api.ComponentHealth o) {
  buildCounterComponentHealth++;
  if (buildCounterComponentHealth < 3) {
    unittest.expect(o.component!, unittest.equals('foo'));
    checkUnnamed8(o.componentHealthChecks!);
    unittest.expect(o.componentHealthType!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed9(o.subComponentsHealth!);
  }
  buildCounterComponentHealth--;
}

core.int buildCounterDatabase = 0;
api.Database buildDatabase() {
  final o = api.Database();
  buildCounterDatabase++;
  if (buildCounterDatabase < 3) {
    o.diskType = 'foo';
    o.floatingIpAddress = 'foo';
    o.machineType = 'foo';
    o.secondarySoleTenantNode = 'foo';
    o.secondarySoleTenantNodeType = 'foo';
    o.secretManagerSecret = 'foo';
    o.smt = true;
    o.soleTenantNode = 'foo';
    o.soleTenantNodeType = 'foo';
    o.tempdbOnSsd = true;
    o.tenancyModel = 'foo';
  }
  buildCounterDatabase--;
  return o;
}

void checkDatabase(api.Database o) {
  buildCounterDatabase++;
  if (buildCounterDatabase < 3) {
    unittest.expect(o.diskType!, unittest.equals('foo'));
    unittest.expect(o.floatingIpAddress!, unittest.equals('foo'));
    unittest.expect(o.machineType!, unittest.equals('foo'));
    unittest.expect(o.secondarySoleTenantNode!, unittest.equals('foo'));
    unittest.expect(o.secondarySoleTenantNodeType!, unittest.equals('foo'));
    unittest.expect(o.secretManagerSecret!, unittest.equals('foo'));
    unittest.expect(o.smt!, unittest.isTrue);
    unittest.expect(o.soleTenantNode!, unittest.equals('foo'));
    unittest.expect(o.soleTenantNodeType!, unittest.equals('foo'));
    unittest.expect(o.tempdbOnSsd!, unittest.isTrue);
    unittest.expect(o.tenancyModel!, unittest.equals('foo'));
  }
  buildCounterDatabase--;
}

core.int buildCounterDatabaseDetails = 0;
api.DatabaseDetails buildDatabaseDetails() {
  final o = api.DatabaseDetails();
  buildCounterDatabaseDetails++;
  if (buildCounterDatabaseDetails < 3) {
    o.databaseServiceAccount = 'foo';
    o.diskType = 'foo';
    o.image = 'foo';
    o.instanceId = 'foo';
    o.machineType = 'foo';
    o.primaryDbVm = 'foo';
    o.secondaryDbVm = 'foo';
    o.secretManagerSecret = 'foo';
    o.sid = 'foo';
  }
  buildCounterDatabaseDetails--;
  return o;
}

void checkDatabaseDetails(api.DatabaseDetails o) {
  buildCounterDatabaseDetails++;
  if (buildCounterDatabaseDetails < 3) {
    unittest.expect(o.databaseServiceAccount!, unittest.equals('foo'));
    unittest.expect(o.diskType!, unittest.equals('foo'));
    unittest.expect(o.image!, unittest.equals('foo'));
    unittest.expect(o.instanceId!, unittest.equals('foo'));
    unittest.expect(o.machineType!, unittest.equals('foo'));
    unittest.expect(o.primaryDbVm!, unittest.equals('foo'));
    unittest.expect(o.secondaryDbVm!, unittest.equals('foo'));
    unittest.expect(o.secretManagerSecret!, unittest.equals('foo'));
    unittest.expect(o.sid!, unittest.equals('foo'));
  }
  buildCounterDatabaseDetails--;
}

core.int buildCounterDatabaseProperties = 0;
api.DatabaseProperties buildDatabaseProperties() {
  final o = api.DatabaseProperties();
  buildCounterDatabaseProperties++;
  if (buildCounterDatabaseProperties < 3) {
    o.backupProperties = buildBackupProperties();
    o.databaseType = 'foo';
  }
  buildCounterDatabaseProperties--;
  return o;
}

void checkDatabaseProperties(api.DatabaseProperties o) {
  buildCounterDatabaseProperties++;
  if (buildCounterDatabaseProperties < 3) {
    checkBackupProperties(o.backupProperties!);
    unittest.expect(o.databaseType!, unittest.equals('foo'));
  }
  buildCounterDatabaseProperties--;
}

core.Map<core.String, api.TerraformVariable> buildUnnamed10() => {
  'x': buildTerraformVariable(),
  'y': buildTerraformVariable(),
};

void checkUnnamed10(core.Map<core.String, api.TerraformVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTerraformVariable(o['x']!);
  checkTerraformVariable(o['y']!);
}

core.int buildCounterDeployment = 0;
api.Deployment buildDeployment() {
  final o = api.Deployment();
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.name = 'foo';
    o.sapSystemS4Config = buildSapSystemS4Config();
    o.serviceAccount = 'foo';
    o.sqlServerWorkload = buildSqlServerWorkload();
    o.state = 'foo';
    o.terraformVariables = buildUnnamed10();
    o.updateTime = 'foo';
    o.workerPool = 'foo';
    o.workloadType = 'foo';
  }
  buildCounterDeployment--;
  return o;
}

void checkDeployment(api.Deployment o) {
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkSapSystemS4Config(o.sapSystemS4Config!);
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    checkSqlServerWorkload(o.sqlServerWorkload!);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed10(o.terraformVariables!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.workerPool!, unittest.equals('foo'));
    unittest.expect(o.workloadType!, unittest.equals('foo'));
  }
  buildCounterDeployment--;
}

core.int buildCounterDeploymentOutput = 0;
api.DeploymentOutput buildDeploymentOutput() {
  final o = api.DeploymentOutput();
  buildCounterDeploymentOutput++;
  if (buildCounterDeploymentOutput < 3) {
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterDeploymentOutput--;
  return o;
}

void checkDeploymentOutput(api.DeploymentOutput o) {
  buildCounterDeploymentOutput++;
  if (buildCounterDeploymentOutput < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterDeploymentOutput--;
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

core.Map<core.String, core.String> buildUnnamed11() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed11(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEvaluation = 0;
api.Evaluation buildEvaluation() {
  final o = api.Evaluation();
  buildCounterEvaluation++;
  if (buildCounterEvaluation < 3) {
    o.bigQueryDestination = buildBigQueryDestination();
    o.createTime = 'foo';
    o.customRulesBucket = 'foo';
    o.description = 'foo';
    o.evaluationType = 'foo';
    o.kmsKey = 'foo';
    o.labels = buildUnnamed11();
    o.name = 'foo';
    o.resourceFilter = buildResourceFilter();
    o.resourceStatus = buildResourceStatus();
    o.ruleNames = buildUnnamed12();
    o.schedule = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterEvaluation--;
  return o;
}

void checkEvaluation(api.Evaluation o) {
  buildCounterEvaluation++;
  if (buildCounterEvaluation < 3) {
    checkBigQueryDestination(o.bigQueryDestination!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.customRulesBucket!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.evaluationType!, unittest.equals('foo'));
    unittest.expect(o.kmsKey!, unittest.equals('foo'));
    checkUnnamed11(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkResourceFilter(o.resourceFilter!);
    checkResourceStatus(o.resourceStatus!);
    checkUnnamed12(o.ruleNames!);
    unittest.expect(o.schedule!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterEvaluation--;
}

core.List<api.ExternalDataSources> buildUnnamed13() => [
  buildExternalDataSources(),
  buildExternalDataSources(),
];

void checkUnnamed13(core.List<api.ExternalDataSources> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExternalDataSources(o[0]);
  checkExternalDataSources(o[1]);
}

core.Map<core.String, core.String> buildUnnamed14() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed14(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.Notice> buildUnnamed15() => [buildNotice(), buildNotice()];

void checkUnnamed15(core.List<api.Notice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotice(o[0]);
  checkNotice(o[1]);
}

core.List<api.RuleExecutionResult> buildUnnamed16() => [
  buildRuleExecutionResult(),
  buildRuleExecutionResult(),
];

void checkUnnamed16(core.List<api.RuleExecutionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRuleExecutionResult(o[0]);
  checkRuleExecutionResult(o[1]);
}

core.int buildCounterExecution = 0;
api.Execution buildExecution() {
  final o = api.Execution();
  buildCounterExecution++;
  if (buildCounterExecution < 3) {
    o.endTime = 'foo';
    o.engine = 'foo';
    o.evaluationId = 'foo';
    o.externalDataSources = buildUnnamed13();
    o.inventoryTime = 'foo';
    o.labels = buildUnnamed14();
    o.name = 'foo';
    o.notices = buildUnnamed15();
    o.resultSummary = buildSummary();
    o.ruleResults = buildUnnamed16();
    o.runType = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
  }
  buildCounterExecution--;
  return o;
}

void checkExecution(api.Execution o) {
  buildCounterExecution++;
  if (buildCounterExecution < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.engine!, unittest.equals('foo'));
    unittest.expect(o.evaluationId!, unittest.equals('foo'));
    checkUnnamed13(o.externalDataSources!);
    unittest.expect(o.inventoryTime!, unittest.equals('foo'));
    checkUnnamed14(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed15(o.notices!);
    checkSummary(o.resultSummary!);
    checkUnnamed16(o.ruleResults!);
    unittest.expect(o.runType!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterExecution--;
}

core.List<api.Command> buildUnnamed17() => [buildCommand(), buildCommand()];

void checkUnnamed17(core.List<api.Command> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommand(o[0]);
  checkCommand(o[1]);
}

core.int buildCounterExecutionResult = 0;
api.ExecutionResult buildExecutionResult() {
  final o = api.ExecutionResult();
  buildCounterExecutionResult++;
  if (buildCounterExecutionResult < 3) {
    o.commands = buildUnnamed17();
    o.documentationUrl = 'foo';
    o.resource = buildResource();
    o.rule = 'foo';
    o.severity = 'foo';
    o.type = 'foo';
    o.violationDetails = buildViolationDetails();
    o.violationMessage = 'foo';
  }
  buildCounterExecutionResult--;
  return o;
}

void checkExecutionResult(api.ExecutionResult o) {
  buildCounterExecutionResult++;
  if (buildCounterExecutionResult < 3) {
    checkUnnamed17(o.commands!);
    unittest.expect(o.documentationUrl!, unittest.equals('foo'));
    checkResource(o.resource!);
    unittest.expect(o.rule!, unittest.equals('foo'));
    unittest.expect(o.severity!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    checkViolationDetails(o.violationDetails!);
    unittest.expect(o.violationMessage!, unittest.equals('foo'));
  }
  buildCounterExecutionResult--;
}

core.int buildCounterExternalDataSources = 0;
api.ExternalDataSources buildExternalDataSources() {
  final o = api.ExternalDataSources();
  buildCounterExternalDataSources++;
  if (buildCounterExternalDataSources < 3) {
    o.assetType = 'foo';
    o.name = 'foo';
    o.type = 'foo';
    o.uri = 'foo';
  }
  buildCounterExternalDataSources--;
  return o;
}

void checkExternalDataSources(api.ExternalDataSources o) {
  buildCounterExternalDataSources++;
  if (buildCounterExternalDataSources < 3) {
    unittest.expect(o.assetType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterExternalDataSources--;
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGceInstanceFilter = 0;
api.GceInstanceFilter buildGceInstanceFilter() {
  final o = api.GceInstanceFilter();
  buildCounterGceInstanceFilter++;
  if (buildCounterGceInstanceFilter < 3) {
    o.serviceAccounts = buildUnnamed18();
  }
  buildCounterGceInstanceFilter--;
  return o;
}

void checkGceInstanceFilter(api.GceInstanceFilter o) {
  buildCounterGceInstanceFilter++;
  if (buildCounterGceInstanceFilter < 3) {
    checkUnnamed18(o.serviceAccounts!);
  }
  buildCounterGceInstanceFilter--;
}

core.int buildCounterHealthCheck = 0;
api.HealthCheck buildHealthCheck() {
  final o = api.HealthCheck();
  buildCounterHealthCheck++;
  if (buildCounterHealthCheck < 3) {
    o.message = 'foo';
    o.metric = 'foo';
    o.resource = buildCloudResource();
    o.source = 'foo';
    o.state = 'foo';
  }
  buildCounterHealthCheck--;
  return o;
}

void checkHealthCheck(api.HealthCheck o) {
  buildCounterHealthCheck++;
  if (buildCounterHealthCheck < 3) {
    unittest.expect(o.message!, unittest.equals('foo'));
    unittest.expect(o.metric!, unittest.equals('foo'));
    checkCloudResource(o.resource!);
    unittest.expect(o.source!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterHealthCheck--;
}

core.int buildCounterIAMPermission = 0;
api.IAMPermission buildIAMPermission() {
  final o = api.IAMPermission();
  buildCounterIAMPermission++;
  if (buildCounterIAMPermission < 3) {
    o.granted = true;
    o.name = 'foo';
  }
  buildCounterIAMPermission--;
  return o;
}

void checkIAMPermission(api.IAMPermission o) {
  buildCounterIAMPermission++;
  if (buildCounterIAMPermission < 3) {
    unittest.expect(o.granted!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterIAMPermission--;
}

core.int buildCounterInsight = 0;
api.Insight buildInsight() {
  final o = api.Insight();
  buildCounterInsight++;
  if (buildCounterInsight < 3) {
    o.agentStatus = buildAgentStatus();
    o.instanceId = 'foo';
    o.openShiftValidation = buildOpenShiftValidation();
    o.sapDiscovery = buildSapDiscovery();
    o.sapValidation = buildSapValidation();
    o.sentTime = 'foo';
    o.sqlserverValidation = buildSqlserverValidation();
    o.torsoValidation = buildTorsoValidation();
  }
  buildCounterInsight--;
  return o;
}

void checkInsight(api.Insight o) {
  buildCounterInsight++;
  if (buildCounterInsight < 3) {
    checkAgentStatus(o.agentStatus!);
    unittest.expect(o.instanceId!, unittest.equals('foo'));
    checkOpenShiftValidation(o.openShiftValidation!);
    checkSapDiscovery(o.sapDiscovery!);
    checkSapValidation(o.sapValidation!);
    unittest.expect(o.sentTime!, unittest.equals('foo'));
    checkSqlserverValidation(o.sqlserverValidation!);
    checkTorsoValidation(o.torsoValidation!);
  }
  buildCounterInsight--;
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInstanceProperties = 0;
api.InstanceProperties buildInstanceProperties() {
  final o = api.InstanceProperties();
  buildCounterInstanceProperties++;
  if (buildCounterInstanceProperties < 3) {
    o.instanceNumber = 'foo';
    o.machineType = 'foo';
    o.roles = buildUnnamed19();
    o.sapInstanceProperties = buildSapInstanceProperties();
    o.status = 'foo';
    o.upcomingMaintenanceEvent = buildUpcomingMaintenanceEvent();
  }
  buildCounterInstanceProperties--;
  return o;
}

void checkInstanceProperties(api.InstanceProperties o) {
  buildCounterInstanceProperties++;
  if (buildCounterInstanceProperties < 3) {
    unittest.expect(o.instanceNumber!, unittest.equals('foo'));
    unittest.expect(o.machineType!, unittest.equals('foo'));
    checkUnnamed19(o.roles!);
    checkSapInstanceProperties(o.sapInstanceProperties!);
    unittest.expect(o.status!, unittest.equals('foo'));
    checkUpcomingMaintenanceEvent(o.upcomingMaintenanceEvent!);
  }
  buildCounterInstanceProperties--;
}

core.List<api.Actuation> buildUnnamed20() => [
  buildActuation(),
  buildActuation(),
];

void checkUnnamed20(core.List<api.Actuation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActuation(o[0]);
  checkActuation(o[1]);
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListActuationsResponse = 0;
api.ListActuationsResponse buildListActuationsResponse() {
  final o = api.ListActuationsResponse();
  buildCounterListActuationsResponse++;
  if (buildCounterListActuationsResponse < 3) {
    o.actuations = buildUnnamed20();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed21();
  }
  buildCounterListActuationsResponse--;
  return o;
}

void checkListActuationsResponse(api.ListActuationsResponse o) {
  buildCounterListActuationsResponse++;
  if (buildCounterListActuationsResponse < 3) {
    checkUnnamed20(o.actuations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed21(o.unreachable!);
  }
  buildCounterListActuationsResponse--;
}

core.List<api.Deployment> buildUnnamed22() => [
  buildDeployment(),
  buildDeployment(),
];

void checkUnnamed22(core.List<api.Deployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployment(o[0]);
  checkDeployment(o[1]);
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListDeploymentsResponse = 0;
api.ListDeploymentsResponse buildListDeploymentsResponse() {
  final o = api.ListDeploymentsResponse();
  buildCounterListDeploymentsResponse++;
  if (buildCounterListDeploymentsResponse < 3) {
    o.deployments = buildUnnamed22();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed23();
  }
  buildCounterListDeploymentsResponse--;
  return o;
}

void checkListDeploymentsResponse(api.ListDeploymentsResponse o) {
  buildCounterListDeploymentsResponse++;
  if (buildCounterListDeploymentsResponse < 3) {
    checkUnnamed22(o.deployments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed23(o.unreachable!);
  }
  buildCounterListDeploymentsResponse--;
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.WorkloadProfile> buildUnnamed25() => [
  buildWorkloadProfile(),
  buildWorkloadProfile(),
];

void checkUnnamed25(core.List<api.WorkloadProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkloadProfile(o[0]);
  checkWorkloadProfile(o[1]);
}

core.int buildCounterListDiscoveredProfilesResponse = 0;
api.ListDiscoveredProfilesResponse buildListDiscoveredProfilesResponse() {
  final o = api.ListDiscoveredProfilesResponse();
  buildCounterListDiscoveredProfilesResponse++;
  if (buildCounterListDiscoveredProfilesResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed24();
    o.workloadProfiles = buildUnnamed25();
  }
  buildCounterListDiscoveredProfilesResponse--;
  return o;
}

void checkListDiscoveredProfilesResponse(api.ListDiscoveredProfilesResponse o) {
  buildCounterListDiscoveredProfilesResponse++;
  if (buildCounterListDiscoveredProfilesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed24(o.unreachable!);
    checkUnnamed25(o.workloadProfiles!);
  }
  buildCounterListDiscoveredProfilesResponse--;
}

core.List<api.Evaluation> buildUnnamed26() => [
  buildEvaluation(),
  buildEvaluation(),
];

void checkUnnamed26(core.List<api.Evaluation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEvaluation(o[0]);
  checkEvaluation(o[1]);
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListEvaluationsResponse = 0;
api.ListEvaluationsResponse buildListEvaluationsResponse() {
  final o = api.ListEvaluationsResponse();
  buildCounterListEvaluationsResponse++;
  if (buildCounterListEvaluationsResponse < 3) {
    o.evaluations = buildUnnamed26();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed27();
  }
  buildCounterListEvaluationsResponse--;
  return o;
}

void checkListEvaluationsResponse(api.ListEvaluationsResponse o) {
  buildCounterListEvaluationsResponse++;
  if (buildCounterListEvaluationsResponse < 3) {
    checkUnnamed26(o.evaluations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed27(o.unreachable!);
  }
  buildCounterListEvaluationsResponse--;
}

core.List<api.ExecutionResult> buildUnnamed28() => [
  buildExecutionResult(),
  buildExecutionResult(),
];

void checkUnnamed28(core.List<api.ExecutionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecutionResult(o[0]);
  checkExecutionResult(o[1]);
}

core.int buildCounterListExecutionResultsResponse = 0;
api.ListExecutionResultsResponse buildListExecutionResultsResponse() {
  final o = api.ListExecutionResultsResponse();
  buildCounterListExecutionResultsResponse++;
  if (buildCounterListExecutionResultsResponse < 3) {
    o.executionResults = buildUnnamed28();
    o.nextPageToken = 'foo';
  }
  buildCounterListExecutionResultsResponse--;
  return o;
}

void checkListExecutionResultsResponse(api.ListExecutionResultsResponse o) {
  buildCounterListExecutionResultsResponse++;
  if (buildCounterListExecutionResultsResponse < 3) {
    checkUnnamed28(o.executionResults!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListExecutionResultsResponse--;
}

core.List<api.Execution> buildUnnamed29() => [
  buildExecution(),
  buildExecution(),
];

void checkUnnamed29(core.List<api.Execution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecution(o[0]);
  checkExecution(o[1]);
}

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListExecutionsResponse = 0;
api.ListExecutionsResponse buildListExecutionsResponse() {
  final o = api.ListExecutionsResponse();
  buildCounterListExecutionsResponse++;
  if (buildCounterListExecutionsResponse < 3) {
    o.executions = buildUnnamed29();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed30();
  }
  buildCounterListExecutionsResponse--;
  return o;
}

void checkListExecutionsResponse(api.ListExecutionsResponse o) {
  buildCounterListExecutionsResponse++;
  if (buildCounterListExecutionsResponse < 3) {
    checkUnnamed29(o.executions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed30(o.unreachable!);
  }
  buildCounterListExecutionsResponse--;
}

core.List<api.Location> buildUnnamed31() => [buildLocation(), buildLocation()];

void checkUnnamed31(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed31();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed31(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed32() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed32(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed32();
    o.unreachable = buildUnnamed33();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed32(o.operations!);
    checkUnnamed33(o.unreachable!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Rule> buildUnnamed34() => [buildRule(), buildRule()];

void checkUnnamed34(core.List<api.Rule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRule(o[0]);
  checkRule(o[1]);
}

core.int buildCounterListRulesResponse = 0;
api.ListRulesResponse buildListRulesResponse() {
  final o = api.ListRulesResponse();
  buildCounterListRulesResponse++;
  if (buildCounterListRulesResponse < 3) {
    o.rules = buildUnnamed34();
  }
  buildCounterListRulesResponse--;
  return o;
}

void checkListRulesResponse(api.ListRulesResponse o) {
  buildCounterListRulesResponse++;
  if (buildCounterListRulesResponse < 3) {
    checkUnnamed34(o.rules!);
  }
  buildCounterListRulesResponse--;
}

core.List<api.ScannedResource> buildUnnamed35() => [
  buildScannedResource(),
  buildScannedResource(),
];

void checkUnnamed35(core.List<api.ScannedResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScannedResource(o[0]);
  checkScannedResource(o[1]);
}

core.int buildCounterListScannedResourcesResponse = 0;
api.ListScannedResourcesResponse buildListScannedResourcesResponse() {
  final o = api.ListScannedResourcesResponse();
  buildCounterListScannedResourcesResponse++;
  if (buildCounterListScannedResourcesResponse < 3) {
    o.nextPageToken = 'foo';
    o.scannedResources = buildUnnamed35();
  }
  buildCounterListScannedResourcesResponse--;
  return o;
}

void checkListScannedResourcesResponse(api.ListScannedResourcesResponse o) {
  buildCounterListScannedResourcesResponse++;
  if (buildCounterListScannedResourcesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed35(o.scannedResources!);
  }
  buildCounterListScannedResourcesResponse--;
}

core.Map<core.String, core.String> buildUnnamed36() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed36(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed37() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed37(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed36();
    o.locationId = 'foo';
    o.metadata = buildUnnamed37();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed36(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed37(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.List<core.String> buildUnnamed38() => ['foo', 'foo'];

void checkUnnamed38(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLocationDetails = 0;
api.LocationDetails buildLocationDetails() {
  final o = api.LocationDetails();
  buildCounterLocationDetails++;
  if (buildCounterLocationDetails < 3) {
    o.createCommsFirewall = true;
    o.customTags = buildUnnamed38();
    o.deploymentDnsEnabled = true;
    o.dnsZone = 'foo';
    o.dnsZoneNameSuffix = 'foo';
    o.internetAccess = 'foo';
    o.networkProject = 'foo';
    o.regionName = 'foo';
    o.subnetName = 'foo';
    o.vpcName = 'foo';
    o.zone1Name = 'foo';
    o.zone2Name = 'foo';
  }
  buildCounterLocationDetails--;
  return o;
}

void checkLocationDetails(api.LocationDetails o) {
  buildCounterLocationDetails++;
  if (buildCounterLocationDetails < 3) {
    unittest.expect(o.createCommsFirewall!, unittest.isTrue);
    checkUnnamed38(o.customTags!);
    unittest.expect(o.deploymentDnsEnabled!, unittest.isTrue);
    unittest.expect(o.dnsZone!, unittest.equals('foo'));
    unittest.expect(o.dnsZoneNameSuffix!, unittest.equals('foo'));
    unittest.expect(o.internetAccess!, unittest.equals('foo'));
    unittest.expect(o.networkProject!, unittest.equals('foo'));
    unittest.expect(o.regionName!, unittest.equals('foo'));
    unittest.expect(o.subnetName!, unittest.equals('foo'));
    unittest.expect(o.vpcName!, unittest.equals('foo'));
    unittest.expect(o.zone1Name!, unittest.equals('foo'));
    unittest.expect(o.zone2Name!, unittest.equals('foo'));
  }
  buildCounterLocationDetails--;
}

core.int buildCounterNotice = 0;
api.Notice buildNotice() {
  final o = api.Notice();
  buildCounterNotice++;
  if (buildCounterNotice < 3) {
    o.message = 'foo';
  }
  buildCounterNotice--;
  return o;
}

void checkNotice(api.Notice o) {
  buildCounterNotice++;
  if (buildCounterNotice < 3) {
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterNotice--;
}

core.Map<core.String, core.Object?> buildUnnamed39() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed39(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.int buildCounterOpenShiftValidation = 0;
api.OpenShiftValidation buildOpenShiftValidation() {
  final o = api.OpenShiftValidation();
  buildCounterOpenShiftValidation++;
  if (buildCounterOpenShiftValidation < 3) {
    o.clusterId = 'foo';
    o.validationDetails = buildUnnamed39();
  }
  buildCounterOpenShiftValidation--;
  return o;
}

void checkOpenShiftValidation(api.OpenShiftValidation o) {
  buildCounterOpenShiftValidation++;
  if (buildCounterOpenShiftValidation < 3) {
    unittest.expect(o.clusterId!, unittest.equals('foo'));
    checkUnnamed39(o.validationDetails!);
  }
  buildCounterOpenShiftValidation--;
}

core.Map<core.String, core.Object?> buildUnnamed40() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed40(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed41() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed41(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed40();
    o.name = 'foo';
    o.response = buildUnnamed41();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed40(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed41(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterPacemaker = 0;
api.Pacemaker buildPacemaker() {
  final o = api.Pacemaker();
  buildCounterPacemaker++;
  if (buildCounterPacemaker < 3) {
    o.bucketNameNodeCertificates = 'foo';
    o.pacemakerCluster = 'foo';
    o.pacemakerClusterSecret = 'foo';
    o.pacemakerClusterUsername = 'foo';
    o.sqlPacemakerSecret = 'foo';
    o.sqlPacemakerUsername = 'foo';
  }
  buildCounterPacemaker--;
  return o;
}

void checkPacemaker(api.Pacemaker o) {
  buildCounterPacemaker++;
  if (buildCounterPacemaker < 3) {
    unittest.expect(o.bucketNameNodeCertificates!, unittest.equals('foo'));
    unittest.expect(o.pacemakerCluster!, unittest.equals('foo'));
    unittest.expect(o.pacemakerClusterSecret!, unittest.equals('foo'));
    unittest.expect(o.pacemakerClusterUsername!, unittest.equals('foo'));
    unittest.expect(o.sqlPacemakerSecret!, unittest.equals('foo'));
    unittest.expect(o.sqlPacemakerUsername!, unittest.equals('foo'));
  }
  buildCounterPacemaker--;
}

core.int buildCounterProduct = 0;
api.Product buildProduct() {
  final o = api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.name = 'foo';
    o.version = 'foo';
  }
  buildCounterProduct--;
  return o;
}

void checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterProduct--;
}

core.int buildCounterResource = 0;
api.Resource buildResource() {
  final o = api.Resource();
  buildCounterResource++;
  if (buildCounterResource < 3) {
    o.name = 'foo';
    o.serviceAccount = 'foo';
    o.type = 'foo';
  }
  buildCounterResource--;
  return o;
}

void checkResource(api.Resource o) {
  buildCounterResource++;
  if (buildCounterResource < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterResource--;
}

core.Map<core.String, core.String> buildUnnamed42() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed42(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed43() => ['foo', 'foo'];

void checkUnnamed43(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed44() => ['foo', 'foo'];

void checkUnnamed44(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterResourceFilter = 0;
api.ResourceFilter buildResourceFilter() {
  final o = api.ResourceFilter();
  buildCounterResourceFilter++;
  if (buildCounterResourceFilter < 3) {
    o.gceInstanceFilter = buildGceInstanceFilter();
    o.inclusionLabels = buildUnnamed42();
    o.resourceIdPatterns = buildUnnamed43();
    o.scopes = buildUnnamed44();
  }
  buildCounterResourceFilter--;
  return o;
}

void checkResourceFilter(api.ResourceFilter o) {
  buildCounterResourceFilter++;
  if (buildCounterResourceFilter < 3) {
    checkGceInstanceFilter(o.gceInstanceFilter!);
    checkUnnamed42(o.inclusionLabels!);
    checkUnnamed43(o.resourceIdPatterns!);
    checkUnnamed44(o.scopes!);
  }
  buildCounterResourceFilter--;
}

core.int buildCounterResourceStatus = 0;
api.ResourceStatus buildResourceStatus() {
  final o = api.ResourceStatus();
  buildCounterResourceStatus++;
  if (buildCounterResourceStatus < 3) {
    o.state = 'foo';
  }
  buildCounterResourceStatus--;
  return o;
}

void checkResourceStatus(api.ResourceStatus o) {
  buildCounterResourceStatus++;
  if (buildCounterResourceStatus < 3) {
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterResourceStatus--;
}

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRule = 0;
api.Rule buildRule() {
  final o = api.Rule();
  buildCounterRule++;
  if (buildCounterRule < 3) {
    o.assetType = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.errorMessage = 'foo';
    o.name = 'foo';
    o.primaryCategory = 'foo';
    o.remediation = 'foo';
    o.revisionId = 'foo';
    o.ruleType = 'foo';
    o.secondaryCategory = 'foo';
    o.severity = 'foo';
    o.tags = buildUnnamed45();
    o.uri = 'foo';
  }
  buildCounterRule--;
  return o;
}

void checkRule(api.Rule o) {
  buildCounterRule++;
  if (buildCounterRule < 3) {
    unittest.expect(o.assetType!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.errorMessage!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.primaryCategory!, unittest.equals('foo'));
    unittest.expect(o.remediation!, unittest.equals('foo'));
    unittest.expect(o.revisionId!, unittest.equals('foo'));
    unittest.expect(o.ruleType!, unittest.equals('foo'));
    unittest.expect(o.secondaryCategory!, unittest.equals('foo'));
    unittest.expect(o.severity!, unittest.equals('foo'));
    checkUnnamed45(o.tags!);
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterRule--;
}

core.int buildCounterRuleExecutionResult = 0;
api.RuleExecutionResult buildRuleExecutionResult() {
  final o = api.RuleExecutionResult();
  buildCounterRuleExecutionResult++;
  if (buildCounterRuleExecutionResult < 3) {
    o.message = 'foo';
    o.resultCount = 'foo';
    o.rule = 'foo';
    o.scannedResourceCount = 'foo';
    o.state = 'foo';
  }
  buildCounterRuleExecutionResult--;
  return o;
}

void checkRuleExecutionResult(api.RuleExecutionResult o) {
  buildCounterRuleExecutionResult++;
  if (buildCounterRuleExecutionResult < 3) {
    unittest.expect(o.message!, unittest.equals('foo'));
    unittest.expect(o.resultCount!, unittest.equals('foo'));
    unittest.expect(o.rule!, unittest.equals('foo'));
    unittest.expect(o.scannedResourceCount!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterRuleExecutionResult--;
}

core.Map<core.String, core.String> buildUnnamed46() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed46(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterRuleOutput = 0;
api.RuleOutput buildRuleOutput() {
  final o = api.RuleOutput();
  buildCounterRuleOutput++;
  if (buildCounterRuleOutput < 3) {
    o.details = buildUnnamed46();
    o.message = 'foo';
  }
  buildCounterRuleOutput--;
  return o;
}

void checkRuleOutput(api.RuleOutput o) {
  buildCounterRuleOutput++;
  if (buildCounterRuleOutput < 3) {
    checkUnnamed46(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterRuleOutput--;
}

core.int buildCounterRunEvaluationRequest = 0;
api.RunEvaluationRequest buildRunEvaluationRequest() {
  final o = api.RunEvaluationRequest();
  buildCounterRunEvaluationRequest++;
  if (buildCounterRunEvaluationRequest < 3) {
    o.execution = buildExecution();
    o.executionId = 'foo';
    o.requestId = 'foo';
  }
  buildCounterRunEvaluationRequest--;
  return o;
}

void checkRunEvaluationRequest(api.RunEvaluationRequest o) {
  buildCounterRunEvaluationRequest++;
  if (buildCounterRunEvaluationRequest < 3) {
    checkExecution(o.execution!);
    unittest.expect(o.executionId!, unittest.equals('foo'));
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterRunEvaluationRequest--;
}

core.List<core.String> buildUnnamed47() => ['foo', 'foo'];

void checkUnnamed47(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.CloudResource> buildUnnamed48() => [
  buildCloudResource(),
  buildCloudResource(),
];

void checkUnnamed48(core.List<api.CloudResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloudResource(o[0]);
  checkCloudResource(o[1]);
}

core.int buildCounterSapComponent = 0;
api.SapComponent buildSapComponent() {
  final o = api.SapComponent();
  buildCounterSapComponent++;
  if (buildCounterSapComponent < 3) {
    o.databaseProperties = buildDatabaseProperties();
    o.haHosts = buildUnnamed47();
    o.resources = buildUnnamed48();
    o.sid = 'foo';
    o.topologyType = 'foo';
  }
  buildCounterSapComponent--;
  return o;
}

void checkSapComponent(api.SapComponent o) {
  buildCounterSapComponent++;
  if (buildCounterSapComponent < 3) {
    checkDatabaseProperties(o.databaseProperties!);
    checkUnnamed47(o.haHosts!);
    checkUnnamed48(o.resources!);
    unittest.expect(o.sid!, unittest.equals('foo'));
    unittest.expect(o.topologyType!, unittest.equals('foo'));
  }
  buildCounterSapComponent--;
}

core.int buildCounterSapDiscovery = 0;
api.SapDiscovery buildSapDiscovery() {
  final o = api.SapDiscovery();
  buildCounterSapDiscovery++;
  if (buildCounterSapDiscovery < 3) {
    o.applicationLayer = buildSapDiscoveryComponent();
    o.databaseLayer = buildSapDiscoveryComponent();
    o.metadata = buildSapDiscoveryMetadata();
    o.projectNumber = 'foo';
    o.systemId = 'foo';
    o.updateTime = 'foo';
    o.useDrReconciliation = true;
    o.workloadProperties = buildSapDiscoveryWorkloadProperties();
  }
  buildCounterSapDiscovery--;
  return o;
}

void checkSapDiscovery(api.SapDiscovery o) {
  buildCounterSapDiscovery++;
  if (buildCounterSapDiscovery < 3) {
    checkSapDiscoveryComponent(o.applicationLayer!);
    checkSapDiscoveryComponent(o.databaseLayer!);
    checkSapDiscoveryMetadata(o.metadata!);
    unittest.expect(o.projectNumber!, unittest.equals('foo'));
    unittest.expect(o.systemId!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.useDrReconciliation!, unittest.isTrue);
    checkSapDiscoveryWorkloadProperties(o.workloadProperties!);
  }
  buildCounterSapDiscovery--;
}

core.List<core.String> buildUnnamed49() => ['foo', 'foo'];

void checkUnnamed49(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.SapDiscoveryComponentReplicationSite> buildUnnamed50() => [
  buildSapDiscoveryComponentReplicationSite(),
  buildSapDiscoveryComponentReplicationSite(),
];

void checkUnnamed50(core.List<api.SapDiscoveryComponentReplicationSite> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSapDiscoveryComponentReplicationSite(o[0]);
  checkSapDiscoveryComponentReplicationSite(o[1]);
}

core.List<api.SapDiscoveryResource> buildUnnamed51() => [
  buildSapDiscoveryResource(),
  buildSapDiscoveryResource(),
];

void checkUnnamed51(core.List<api.SapDiscoveryResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSapDiscoveryResource(o[0]);
  checkSapDiscoveryResource(o[1]);
}

core.int buildCounterSapDiscoveryComponent = 0;
api.SapDiscoveryComponent buildSapDiscoveryComponent() {
  final o = api.SapDiscoveryComponent();
  buildCounterSapDiscoveryComponent++;
  if (buildCounterSapDiscoveryComponent < 3) {
    o.applicationProperties = buildSapDiscoveryComponentApplicationProperties();
    o.databaseProperties = buildSapDiscoveryComponentDatabaseProperties();
    o.haHosts = buildUnnamed49();
    o.hostProject = 'foo';
    o.region = 'foo';
    o.replicationSites = buildUnnamed50();
    o.resources = buildUnnamed51();
    o.sid = 'foo';
    o.topologyType = 'foo';
  }
  buildCounterSapDiscoveryComponent--;
  return o;
}

void checkSapDiscoveryComponent(api.SapDiscoveryComponent o) {
  buildCounterSapDiscoveryComponent++;
  if (buildCounterSapDiscoveryComponent < 3) {
    checkSapDiscoveryComponentApplicationProperties(o.applicationProperties!);
    checkSapDiscoveryComponentDatabaseProperties(o.databaseProperties!);
    checkUnnamed49(o.haHosts!);
    unittest.expect(o.hostProject!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
    checkUnnamed50(o.replicationSites!);
    checkUnnamed51(o.resources!);
    unittest.expect(o.sid!, unittest.equals('foo'));
    unittest.expect(o.topologyType!, unittest.equals('foo'));
  }
  buildCounterSapDiscoveryComponent--;
}

core.int buildCounterSapDiscoveryComponentApplicationProperties = 0;
api.SapDiscoveryComponentApplicationProperties
buildSapDiscoveryComponentApplicationProperties() {
  final o = api.SapDiscoveryComponentApplicationProperties();
  buildCounterSapDiscoveryComponentApplicationProperties++;
  if (buildCounterSapDiscoveryComponentApplicationProperties < 3) {
    o.abap = true;
    o.appInstanceNumber = 'foo';
    o.applicationType = 'foo';
    o.ascsInstanceNumber = 'foo';
    o.ascsUri = 'foo';
    o.ersInstanceNumber = 'foo';
    o.kernelVersion = 'foo';
    o.nfsUri = 'foo';
  }
  buildCounterSapDiscoveryComponentApplicationProperties--;
  return o;
}

void checkSapDiscoveryComponentApplicationProperties(
  api.SapDiscoveryComponentApplicationProperties o,
) {
  buildCounterSapDiscoveryComponentApplicationProperties++;
  if (buildCounterSapDiscoveryComponentApplicationProperties < 3) {
    unittest.expect(o.abap!, unittest.isTrue);
    unittest.expect(o.appInstanceNumber!, unittest.equals('foo'));
    unittest.expect(o.applicationType!, unittest.equals('foo'));
    unittest.expect(o.ascsInstanceNumber!, unittest.equals('foo'));
    unittest.expect(o.ascsUri!, unittest.equals('foo'));
    unittest.expect(o.ersInstanceNumber!, unittest.equals('foo'));
    unittest.expect(o.kernelVersion!, unittest.equals('foo'));
    unittest.expect(o.nfsUri!, unittest.equals('foo'));
  }
  buildCounterSapDiscoveryComponentApplicationProperties--;
}

core.int buildCounterSapDiscoveryComponentDatabaseProperties = 0;
api.SapDiscoveryComponentDatabaseProperties
buildSapDiscoveryComponentDatabaseProperties() {
  final o = api.SapDiscoveryComponentDatabaseProperties();
  buildCounterSapDiscoveryComponentDatabaseProperties++;
  if (buildCounterSapDiscoveryComponentDatabaseProperties < 3) {
    o.databaseSid = 'foo';
    o.databaseType = 'foo';
    o.databaseVersion = 'foo';
    o.instanceNumber = 'foo';
    o.landscapeId = 'foo';
    o.primaryInstanceUri = 'foo';
    o.sharedNfsUri = 'foo';
  }
  buildCounterSapDiscoveryComponentDatabaseProperties--;
  return o;
}

void checkSapDiscoveryComponentDatabaseProperties(
  api.SapDiscoveryComponentDatabaseProperties o,
) {
  buildCounterSapDiscoveryComponentDatabaseProperties++;
  if (buildCounterSapDiscoveryComponentDatabaseProperties < 3) {
    unittest.expect(o.databaseSid!, unittest.equals('foo'));
    unittest.expect(o.databaseType!, unittest.equals('foo'));
    unittest.expect(o.databaseVersion!, unittest.equals('foo'));
    unittest.expect(o.instanceNumber!, unittest.equals('foo'));
    unittest.expect(o.landscapeId!, unittest.equals('foo'));
    unittest.expect(o.primaryInstanceUri!, unittest.equals('foo'));
    unittest.expect(o.sharedNfsUri!, unittest.equals('foo'));
  }
  buildCounterSapDiscoveryComponentDatabaseProperties--;
}

core.int buildCounterSapDiscoveryComponentReplicationSite = 0;
api.SapDiscoveryComponentReplicationSite
buildSapDiscoveryComponentReplicationSite() {
  final o = api.SapDiscoveryComponentReplicationSite();
  buildCounterSapDiscoveryComponentReplicationSite++;
  if (buildCounterSapDiscoveryComponentReplicationSite < 3) {
    o.component = buildSapDiscoveryComponent();
    o.sourceSite = 'foo';
  }
  buildCounterSapDiscoveryComponentReplicationSite--;
  return o;
}

void checkSapDiscoveryComponentReplicationSite(
  api.SapDiscoveryComponentReplicationSite o,
) {
  buildCounterSapDiscoveryComponentReplicationSite++;
  if (buildCounterSapDiscoveryComponentReplicationSite < 3) {
    checkSapDiscoveryComponent(o.component!);
    unittest.expect(o.sourceSite!, unittest.equals('foo'));
  }
  buildCounterSapDiscoveryComponentReplicationSite--;
}

core.int buildCounterSapDiscoveryMetadata = 0;
api.SapDiscoveryMetadata buildSapDiscoveryMetadata() {
  final o = api.SapDiscoveryMetadata();
  buildCounterSapDiscoveryMetadata++;
  if (buildCounterSapDiscoveryMetadata < 3) {
    o.customerRegion = 'foo';
    o.definedSystem = 'foo';
    o.environmentType = 'foo';
    o.sapProduct = 'foo';
  }
  buildCounterSapDiscoveryMetadata--;
  return o;
}

void checkSapDiscoveryMetadata(api.SapDiscoveryMetadata o) {
  buildCounterSapDiscoveryMetadata++;
  if (buildCounterSapDiscoveryMetadata < 3) {
    unittest.expect(o.customerRegion!, unittest.equals('foo'));
    unittest.expect(o.definedSystem!, unittest.equals('foo'));
    unittest.expect(o.environmentType!, unittest.equals('foo'));
    unittest.expect(o.sapProduct!, unittest.equals('foo'));
  }
  buildCounterSapDiscoveryMetadata--;
}

core.List<core.String> buildUnnamed52() => ['foo', 'foo'];

void checkUnnamed52(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSapDiscoveryResource = 0;
api.SapDiscoveryResource buildSapDiscoveryResource() {
  final o = api.SapDiscoveryResource();
  buildCounterSapDiscoveryResource++;
  if (buildCounterSapDiscoveryResource < 3) {
    o.instanceProperties = buildSapDiscoveryResourceInstanceProperties();
    o.relatedResources = buildUnnamed52();
    o.resourceKind = 'foo';
    o.resourceType = 'foo';
    o.resourceUri = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterSapDiscoveryResource--;
  return o;
}

void checkSapDiscoveryResource(api.SapDiscoveryResource o) {
  buildCounterSapDiscoveryResource++;
  if (buildCounterSapDiscoveryResource < 3) {
    checkSapDiscoveryResourceInstanceProperties(o.instanceProperties!);
    checkUnnamed52(o.relatedResources!);
    unittest.expect(o.resourceKind!, unittest.equals('foo'));
    unittest.expect(o.resourceType!, unittest.equals('foo'));
    unittest.expect(o.resourceUri!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterSapDiscoveryResource--;
}

core.List<api.SapDiscoveryResourceInstancePropertiesAppInstance>
buildUnnamed53() => [
  buildSapDiscoveryResourceInstancePropertiesAppInstance(),
  buildSapDiscoveryResourceInstancePropertiesAppInstance(),
];

void checkUnnamed53(
  core.List<api.SapDiscoveryResourceInstancePropertiesAppInstance> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkSapDiscoveryResourceInstancePropertiesAppInstance(o[0]);
  checkSapDiscoveryResourceInstancePropertiesAppInstance(o[1]);
}

core.List<core.String> buildUnnamed54() => ['foo', 'foo'];

void checkUnnamed54(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.SapDiscoveryResourceInstancePropertiesDiskMount>
buildUnnamed55() => [
  buildSapDiscoveryResourceInstancePropertiesDiskMount(),
  buildSapDiscoveryResourceInstancePropertiesDiskMount(),
];

void checkUnnamed55(
  core.List<api.SapDiscoveryResourceInstancePropertiesDiskMount> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkSapDiscoveryResourceInstancePropertiesDiskMount(o[0]);
  checkSapDiscoveryResourceInstancePropertiesDiskMount(o[1]);
}

core.int buildCounterSapDiscoveryResourceInstanceProperties = 0;
api.SapDiscoveryResourceInstanceProperties
buildSapDiscoveryResourceInstanceProperties() {
  final o = api.SapDiscoveryResourceInstanceProperties();
  buildCounterSapDiscoveryResourceInstanceProperties++;
  if (buildCounterSapDiscoveryResourceInstanceProperties < 3) {
    o.appInstances = buildUnnamed53();
    o.clusterInstances = buildUnnamed54();
    o.diskMounts = buildUnnamed55();
    o.instanceNumber = 'foo';
    o.instanceRole = 'foo';
    o.isDrSite = true;
    o.osKernelVersion =
        buildSapDiscoveryResourceInstancePropertiesKernelVersion();
    o.virtualHostname = 'foo';
  }
  buildCounterSapDiscoveryResourceInstanceProperties--;
  return o;
}

void checkSapDiscoveryResourceInstanceProperties(
  api.SapDiscoveryResourceInstanceProperties o,
) {
  buildCounterSapDiscoveryResourceInstanceProperties++;
  if (buildCounterSapDiscoveryResourceInstanceProperties < 3) {
    checkUnnamed53(o.appInstances!);
    checkUnnamed54(o.clusterInstances!);
    checkUnnamed55(o.diskMounts!);
    unittest.expect(o.instanceNumber!, unittest.equals('foo'));
    unittest.expect(o.instanceRole!, unittest.equals('foo'));
    unittest.expect(o.isDrSite!, unittest.isTrue);
    checkSapDiscoveryResourceInstancePropertiesKernelVersion(
      o.osKernelVersion!,
    );
    unittest.expect(o.virtualHostname!, unittest.equals('foo'));
  }
  buildCounterSapDiscoveryResourceInstanceProperties--;
}

core.int buildCounterSapDiscoveryResourceInstancePropertiesAppInstance = 0;
api.SapDiscoveryResourceInstancePropertiesAppInstance
buildSapDiscoveryResourceInstancePropertiesAppInstance() {
  final o = api.SapDiscoveryResourceInstancePropertiesAppInstance();
  buildCounterSapDiscoveryResourceInstancePropertiesAppInstance++;
  if (buildCounterSapDiscoveryResourceInstancePropertiesAppInstance < 3) {
    o.name = 'foo';
    o.number = 'foo';
  }
  buildCounterSapDiscoveryResourceInstancePropertiesAppInstance--;
  return o;
}

void checkSapDiscoveryResourceInstancePropertiesAppInstance(
  api.SapDiscoveryResourceInstancePropertiesAppInstance o,
) {
  buildCounterSapDiscoveryResourceInstancePropertiesAppInstance++;
  if (buildCounterSapDiscoveryResourceInstancePropertiesAppInstance < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.number!, unittest.equals('foo'));
  }
  buildCounterSapDiscoveryResourceInstancePropertiesAppInstance--;
}

core.List<core.String> buildUnnamed56() => ['foo', 'foo'];

void checkUnnamed56(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSapDiscoveryResourceInstancePropertiesDiskMount = 0;
api.SapDiscoveryResourceInstancePropertiesDiskMount
buildSapDiscoveryResourceInstancePropertiesDiskMount() {
  final o = api.SapDiscoveryResourceInstancePropertiesDiskMount();
  buildCounterSapDiscoveryResourceInstancePropertiesDiskMount++;
  if (buildCounterSapDiscoveryResourceInstancePropertiesDiskMount < 3) {
    o.diskNames = buildUnnamed56();
    o.mountPoint = 'foo';
    o.name = 'foo';
  }
  buildCounterSapDiscoveryResourceInstancePropertiesDiskMount--;
  return o;
}

void checkSapDiscoveryResourceInstancePropertiesDiskMount(
  api.SapDiscoveryResourceInstancePropertiesDiskMount o,
) {
  buildCounterSapDiscoveryResourceInstancePropertiesDiskMount++;
  if (buildCounterSapDiscoveryResourceInstancePropertiesDiskMount < 3) {
    checkUnnamed56(o.diskNames!);
    unittest.expect(o.mountPoint!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterSapDiscoveryResourceInstancePropertiesDiskMount--;
}

core.int buildCounterSapDiscoveryResourceInstancePropertiesKernelVersion = 0;
api.SapDiscoveryResourceInstancePropertiesKernelVersion
buildSapDiscoveryResourceInstancePropertiesKernelVersion() {
  final o = api.SapDiscoveryResourceInstancePropertiesKernelVersion();
  buildCounterSapDiscoveryResourceInstancePropertiesKernelVersion++;
  if (buildCounterSapDiscoveryResourceInstancePropertiesKernelVersion < 3) {
    o.distroKernel =
        buildSapDiscoveryResourceInstancePropertiesKernelVersionVersion();
    o.osKernel =
        buildSapDiscoveryResourceInstancePropertiesKernelVersionVersion();
    o.rawString = 'foo';
  }
  buildCounterSapDiscoveryResourceInstancePropertiesKernelVersion--;
  return o;
}

void checkSapDiscoveryResourceInstancePropertiesKernelVersion(
  api.SapDiscoveryResourceInstancePropertiesKernelVersion o,
) {
  buildCounterSapDiscoveryResourceInstancePropertiesKernelVersion++;
  if (buildCounterSapDiscoveryResourceInstancePropertiesKernelVersion < 3) {
    checkSapDiscoveryResourceInstancePropertiesKernelVersionVersion(
      o.distroKernel!,
    );
    checkSapDiscoveryResourceInstancePropertiesKernelVersionVersion(
      o.osKernel!,
    );
    unittest.expect(o.rawString!, unittest.equals('foo'));
  }
  buildCounterSapDiscoveryResourceInstancePropertiesKernelVersion--;
}

core.int
buildCounterSapDiscoveryResourceInstancePropertiesKernelVersionVersion = 0;
api.SapDiscoveryResourceInstancePropertiesKernelVersionVersion
buildSapDiscoveryResourceInstancePropertiesKernelVersionVersion() {
  final o = api.SapDiscoveryResourceInstancePropertiesKernelVersionVersion();
  buildCounterSapDiscoveryResourceInstancePropertiesKernelVersionVersion++;
  if (buildCounterSapDiscoveryResourceInstancePropertiesKernelVersionVersion <
      3) {
    o.build = 42;
    o.major = 42;
    o.minor = 42;
    o.patch = 42;
    o.remainder = 'foo';
  }
  buildCounterSapDiscoveryResourceInstancePropertiesKernelVersionVersion--;
  return o;
}

void checkSapDiscoveryResourceInstancePropertiesKernelVersionVersion(
  api.SapDiscoveryResourceInstancePropertiesKernelVersionVersion o,
) {
  buildCounterSapDiscoveryResourceInstancePropertiesKernelVersionVersion++;
  if (buildCounterSapDiscoveryResourceInstancePropertiesKernelVersionVersion <
      3) {
    unittest.expect(o.build!, unittest.equals(42));
    unittest.expect(o.major!, unittest.equals(42));
    unittest.expect(o.minor!, unittest.equals(42));
    unittest.expect(o.patch!, unittest.equals(42));
    unittest.expect(o.remainder!, unittest.equals('foo'));
  }
  buildCounterSapDiscoveryResourceInstancePropertiesKernelVersionVersion--;
}

core.List<api.SapDiscoveryWorkloadPropertiesProductVersion> buildUnnamed57() =>
    [
      buildSapDiscoveryWorkloadPropertiesProductVersion(),
      buildSapDiscoveryWorkloadPropertiesProductVersion(),
    ];

void checkUnnamed57(
  core.List<api.SapDiscoveryWorkloadPropertiesProductVersion> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkSapDiscoveryWorkloadPropertiesProductVersion(o[0]);
  checkSapDiscoveryWorkloadPropertiesProductVersion(o[1]);
}

core.List<api.SapDiscoveryWorkloadPropertiesSoftwareComponentProperties>
buildUnnamed58() => [
  buildSapDiscoveryWorkloadPropertiesSoftwareComponentProperties(),
  buildSapDiscoveryWorkloadPropertiesSoftwareComponentProperties(),
];

void checkUnnamed58(
  core.List<api.SapDiscoveryWorkloadPropertiesSoftwareComponentProperties> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkSapDiscoveryWorkloadPropertiesSoftwareComponentProperties(o[0]);
  checkSapDiscoveryWorkloadPropertiesSoftwareComponentProperties(o[1]);
}

core.int buildCounterSapDiscoveryWorkloadProperties = 0;
api.SapDiscoveryWorkloadProperties buildSapDiscoveryWorkloadProperties() {
  final o = api.SapDiscoveryWorkloadProperties();
  buildCounterSapDiscoveryWorkloadProperties++;
  if (buildCounterSapDiscoveryWorkloadProperties < 3) {
    o.productVersions = buildUnnamed57();
    o.softwareComponentVersions = buildUnnamed58();
  }
  buildCounterSapDiscoveryWorkloadProperties--;
  return o;
}

void checkSapDiscoveryWorkloadProperties(api.SapDiscoveryWorkloadProperties o) {
  buildCounterSapDiscoveryWorkloadProperties++;
  if (buildCounterSapDiscoveryWorkloadProperties < 3) {
    checkUnnamed57(o.productVersions!);
    checkUnnamed58(o.softwareComponentVersions!);
  }
  buildCounterSapDiscoveryWorkloadProperties--;
}

core.int buildCounterSapDiscoveryWorkloadPropertiesProductVersion = 0;
api.SapDiscoveryWorkloadPropertiesProductVersion
buildSapDiscoveryWorkloadPropertiesProductVersion() {
  final o = api.SapDiscoveryWorkloadPropertiesProductVersion();
  buildCounterSapDiscoveryWorkloadPropertiesProductVersion++;
  if (buildCounterSapDiscoveryWorkloadPropertiesProductVersion < 3) {
    o.name = 'foo';
    o.version = 'foo';
  }
  buildCounterSapDiscoveryWorkloadPropertiesProductVersion--;
  return o;
}

void checkSapDiscoveryWorkloadPropertiesProductVersion(
  api.SapDiscoveryWorkloadPropertiesProductVersion o,
) {
  buildCounterSapDiscoveryWorkloadPropertiesProductVersion++;
  if (buildCounterSapDiscoveryWorkloadPropertiesProductVersion < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterSapDiscoveryWorkloadPropertiesProductVersion--;
}

core.int buildCounterSapDiscoveryWorkloadPropertiesSoftwareComponentProperties =
    0;
api.SapDiscoveryWorkloadPropertiesSoftwareComponentProperties
buildSapDiscoveryWorkloadPropertiesSoftwareComponentProperties() {
  final o = api.SapDiscoveryWorkloadPropertiesSoftwareComponentProperties();
  buildCounterSapDiscoveryWorkloadPropertiesSoftwareComponentProperties++;
  if (buildCounterSapDiscoveryWorkloadPropertiesSoftwareComponentProperties <
      3) {
    o.extVersion = 'foo';
    o.name = 'foo';
    o.type = 'foo';
    o.version = 'foo';
  }
  buildCounterSapDiscoveryWorkloadPropertiesSoftwareComponentProperties--;
  return o;
}

void checkSapDiscoveryWorkloadPropertiesSoftwareComponentProperties(
  api.SapDiscoveryWorkloadPropertiesSoftwareComponentProperties o,
) {
  buildCounterSapDiscoveryWorkloadPropertiesSoftwareComponentProperties++;
  if (buildCounterSapDiscoveryWorkloadPropertiesSoftwareComponentProperties <
      3) {
    unittest.expect(o.extVersion!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterSapDiscoveryWorkloadPropertiesSoftwareComponentProperties--;
}

core.List<core.String> buildUnnamed59() => ['foo', 'foo'];

void checkUnnamed59(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSapInstanceProperties = 0;
api.SapInstanceProperties buildSapInstanceProperties() {
  final o = api.SapInstanceProperties();
  buildCounterSapInstanceProperties++;
  if (buildCounterSapInstanceProperties < 3) {
    o.agentStates = buildAgentStates();
    o.numbers = buildUnnamed59();
  }
  buildCounterSapInstanceProperties--;
  return o;
}

void checkSapInstanceProperties(api.SapInstanceProperties o) {
  buildCounterSapInstanceProperties++;
  if (buildCounterSapInstanceProperties < 3) {
    checkAgentStates(o.agentStates!);
    checkUnnamed59(o.numbers!);
  }
  buildCounterSapInstanceProperties--;
}

core.int buildCounterSapSystemS4Config = 0;
api.SapSystemS4Config buildSapSystemS4Config() {
  final o = api.SapSystemS4Config();
  buildCounterSapSystemS4Config++;
  if (buildCounterSapSystemS4Config < 3) {
    o.allowStoppingForUpdate = true;
    o.ansibleRunnerServiceAccount = 'foo';
    o.app = buildAppDetails();
    o.database = buildDatabaseDetails();
    o.deploymentModel = 'foo';
    o.environmentType = 'foo';
    o.gcpProjectId = 'foo';
    o.location = buildLocationDetails();
    o.mediaBucketName = 'foo';
    o.sapBootDiskImage = 'foo';
    o.scalingMethod = 'foo';
    o.version = 'foo';
    o.vmPrefix = 'foo';
  }
  buildCounterSapSystemS4Config--;
  return o;
}

void checkSapSystemS4Config(api.SapSystemS4Config o) {
  buildCounterSapSystemS4Config++;
  if (buildCounterSapSystemS4Config < 3) {
    unittest.expect(o.allowStoppingForUpdate!, unittest.isTrue);
    unittest.expect(o.ansibleRunnerServiceAccount!, unittest.equals('foo'));
    checkAppDetails(o.app!);
    checkDatabaseDetails(o.database!);
    unittest.expect(o.deploymentModel!, unittest.equals('foo'));
    unittest.expect(o.environmentType!, unittest.equals('foo'));
    unittest.expect(o.gcpProjectId!, unittest.equals('foo'));
    checkLocationDetails(o.location!);
    unittest.expect(o.mediaBucketName!, unittest.equals('foo'));
    unittest.expect(o.sapBootDiskImage!, unittest.equals('foo'));
    unittest.expect(o.scalingMethod!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
    unittest.expect(o.vmPrefix!, unittest.equals('foo'));
  }
  buildCounterSapSystemS4Config--;
}

core.List<api.SapValidationValidationDetail> buildUnnamed60() => [
  buildSapValidationValidationDetail(),
  buildSapValidationValidationDetail(),
];

void checkUnnamed60(core.List<api.SapValidationValidationDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSapValidationValidationDetail(o[0]);
  checkSapValidationValidationDetail(o[1]);
}

core.int buildCounterSapValidation = 0;
api.SapValidation buildSapValidation() {
  final o = api.SapValidation();
  buildCounterSapValidation++;
  if (buildCounterSapValidation < 3) {
    o.projectId = 'foo';
    o.validationDetails = buildUnnamed60();
    o.zone = 'foo';
  }
  buildCounterSapValidation--;
  return o;
}

void checkSapValidation(api.SapValidation o) {
  buildCounterSapValidation++;
  if (buildCounterSapValidation < 3) {
    unittest.expect(o.projectId!, unittest.equals('foo'));
    checkUnnamed60(o.validationDetails!);
    unittest.expect(o.zone!, unittest.equals('foo'));
  }
  buildCounterSapValidation--;
}

core.Map<core.String, core.String> buildUnnamed61() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed61(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSapValidationValidationDetail = 0;
api.SapValidationValidationDetail buildSapValidationValidationDetail() {
  final o = api.SapValidationValidationDetail();
  buildCounterSapValidationValidationDetail++;
  if (buildCounterSapValidationValidationDetail < 3) {
    o.details = buildUnnamed61();
    o.isPresent = true;
    o.sapValidationType = 'foo';
  }
  buildCounterSapValidationValidationDetail--;
  return o;
}

void checkSapValidationValidationDetail(api.SapValidationValidationDetail o) {
  buildCounterSapValidationValidationDetail++;
  if (buildCounterSapValidationValidationDetail < 3) {
    checkUnnamed61(o.details!);
    unittest.expect(o.isPresent!, unittest.isTrue);
    unittest.expect(o.sapValidationType!, unittest.equals('foo'));
  }
  buildCounterSapValidationValidationDetail--;
}

core.Map<core.String, core.String> buildUnnamed62() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed62(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.Product> buildUnnamed63() => [buildProduct(), buildProduct()];

void checkUnnamed63(core.List<api.Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProduct(o[0]);
  checkProduct(o[1]);
}

core.int buildCounterSapWorkload = 0;
api.SapWorkload buildSapWorkload() {
  final o = api.SapWorkload();
  buildCounterSapWorkload++;
  if (buildCounterSapWorkload < 3) {
    o.application = buildSapComponent();
    o.architecture = 'foo';
    o.database = buildSapComponent();
    o.metadata = buildUnnamed62();
    o.products = buildUnnamed63();
  }
  buildCounterSapWorkload--;
  return o;
}

void checkSapWorkload(api.SapWorkload o) {
  buildCounterSapWorkload++;
  if (buildCounterSapWorkload < 3) {
    checkSapComponent(o.application!);
    unittest.expect(o.architecture!, unittest.equals('foo'));
    checkSapComponent(o.database!);
    checkUnnamed62(o.metadata!);
    checkUnnamed63(o.products!);
  }
  buildCounterSapWorkload--;
}

core.int buildCounterScannedResource = 0;
api.ScannedResource buildScannedResource() {
  final o = api.ScannedResource();
  buildCounterScannedResource++;
  if (buildCounterScannedResource < 3) {
    o.resource = 'foo';
    o.type = 'foo';
  }
  buildCounterScannedResource--;
  return o;
}

void checkScannedResource(api.ScannedResource o) {
  buildCounterScannedResource++;
  if (buildCounterScannedResource < 3) {
    unittest.expect(o.resource!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterScannedResource--;
}

core.List<api.IAMPermission> buildUnnamed64() => [
  buildIAMPermission(),
  buildIAMPermission(),
];

void checkUnnamed64(core.List<api.IAMPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIAMPermission(o[0]);
  checkIAMPermission(o[1]);
}

core.int buildCounterServiceStates = 0;
api.ServiceStates buildServiceStates() {
  final o = api.ServiceStates();
  buildCounterServiceStates++;
  if (buildCounterServiceStates < 3) {
    o.iamPermissions = buildUnnamed64();
    o.state = 'foo';
  }
  buildCounterServiceStates--;
  return o;
}

void checkServiceStates(api.ServiceStates o) {
  buildCounterServiceStates++;
  if (buildCounterServiceStates < 3) {
    checkUnnamed64(o.iamPermissions!);
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterServiceStates--;
}

core.int buildCounterShellCommand = 0;
api.ShellCommand buildShellCommand() {
  final o = api.ShellCommand();
  buildCounterShellCommand++;
  if (buildCounterShellCommand < 3) {
    o.args = 'foo';
    o.command = 'foo';
    o.timeoutSeconds = 42;
  }
  buildCounterShellCommand--;
  return o;
}

void checkShellCommand(api.ShellCommand o) {
  buildCounterShellCommand++;
  if (buildCounterShellCommand < 3) {
    unittest.expect(o.args!, unittest.equals('foo'));
    unittest.expect(o.command!, unittest.equals('foo'));
    unittest.expect(o.timeoutSeconds!, unittest.equals(42));
  }
  buildCounterShellCommand--;
}

core.int buildCounterSqlLocationDetails = 0;
api.SqlLocationDetails buildSqlLocationDetails() {
  final o = api.SqlLocationDetails();
  buildCounterSqlLocationDetails++;
  if (buildCounterSqlLocationDetails < 3) {
    o.dnsZone = 'foo';
    o.gcpProjectId = 'foo';
    o.internetAccess = 'foo';
    o.network = 'foo';
    o.primaryZone = 'foo';
    o.region = 'foo';
    o.secondaryZone = 'foo';
    o.subnetwork = 'foo';
    o.tertiaryZone = 'foo';
  }
  buildCounterSqlLocationDetails--;
  return o;
}

void checkSqlLocationDetails(api.SqlLocationDetails o) {
  buildCounterSqlLocationDetails++;
  if (buildCounterSqlLocationDetails < 3) {
    unittest.expect(o.dnsZone!, unittest.equals('foo'));
    unittest.expect(o.gcpProjectId!, unittest.equals('foo'));
    unittest.expect(o.internetAccess!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
    unittest.expect(o.primaryZone!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
    unittest.expect(o.secondaryZone!, unittest.equals('foo'));
    unittest.expect(o.subnetwork!, unittest.equals('foo'));
    unittest.expect(o.tertiaryZone!, unittest.equals('foo'));
  }
  buildCounterSqlLocationDetails--;
}

core.int buildCounterSqlServerWorkload = 0;
api.SqlServerWorkload buildSqlServerWorkload() {
  final o = api.SqlServerWorkload();
  buildCounterSqlServerWorkload++;
  if (buildCounterSqlServerWorkload < 3) {
    o.activeDirectory = buildActiveDirectory();
    o.computeEngineServiceAccount = 'foo';
    o.database = buildDatabase();
    o.deploymentModel = 'foo';
    o.environmentType = 'foo';
    o.fciType = 'foo';
    o.haType = 'foo';
    o.isSqlPayg = true;
    o.location = buildSqlLocationDetails();
    o.mediaBucket = 'foo';
    o.operatingSystemType = 'foo';
    o.osImage = 'foo';
    o.osImageType = 'foo';
    o.pacemaker = buildPacemaker();
    o.sqlServerEdition = 'foo';
    o.sqlServerVersion = 'foo';
    o.vmPrefix = 'foo';
  }
  buildCounterSqlServerWorkload--;
  return o;
}

void checkSqlServerWorkload(api.SqlServerWorkload o) {
  buildCounterSqlServerWorkload++;
  if (buildCounterSqlServerWorkload < 3) {
    checkActiveDirectory(o.activeDirectory!);
    unittest.expect(o.computeEngineServiceAccount!, unittest.equals('foo'));
    checkDatabase(o.database!);
    unittest.expect(o.deploymentModel!, unittest.equals('foo'));
    unittest.expect(o.environmentType!, unittest.equals('foo'));
    unittest.expect(o.fciType!, unittest.equals('foo'));
    unittest.expect(o.haType!, unittest.equals('foo'));
    unittest.expect(o.isSqlPayg!, unittest.isTrue);
    checkSqlLocationDetails(o.location!);
    unittest.expect(o.mediaBucket!, unittest.equals('foo'));
    unittest.expect(o.operatingSystemType!, unittest.equals('foo'));
    unittest.expect(o.osImage!, unittest.equals('foo'));
    unittest.expect(o.osImageType!, unittest.equals('foo'));
    checkPacemaker(o.pacemaker!);
    unittest.expect(o.sqlServerEdition!, unittest.equals('foo'));
    unittest.expect(o.sqlServerVersion!, unittest.equals('foo'));
    unittest.expect(o.vmPrefix!, unittest.equals('foo'));
  }
  buildCounterSqlServerWorkload--;
}

core.List<api.SqlserverValidationValidationDetail> buildUnnamed65() => [
  buildSqlserverValidationValidationDetail(),
  buildSqlserverValidationValidationDetail(),
];

void checkUnnamed65(core.List<api.SqlserverValidationValidationDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlserverValidationValidationDetail(o[0]);
  checkSqlserverValidationValidationDetail(o[1]);
}

core.int buildCounterSqlserverValidation = 0;
api.SqlserverValidation buildSqlserverValidation() {
  final o = api.SqlserverValidation();
  buildCounterSqlserverValidation++;
  if (buildCounterSqlserverValidation < 3) {
    o.agentVersion = 'foo';
    o.instance = 'foo';
    o.projectId = 'foo';
    o.validationDetails = buildUnnamed65();
  }
  buildCounterSqlserverValidation--;
  return o;
}

void checkSqlserverValidation(api.SqlserverValidation o) {
  buildCounterSqlserverValidation++;
  if (buildCounterSqlserverValidation < 3) {
    unittest.expect(o.agentVersion!, unittest.equals('foo'));
    unittest.expect(o.instance!, unittest.equals('foo'));
    unittest.expect(o.projectId!, unittest.equals('foo'));
    checkUnnamed65(o.validationDetails!);
  }
  buildCounterSqlserverValidation--;
}

core.Map<core.String, core.String> buildUnnamed66() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed66(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSqlserverValidationDetails = 0;
api.SqlserverValidationDetails buildSqlserverValidationDetails() {
  final o = api.SqlserverValidationDetails();
  buildCounterSqlserverValidationDetails++;
  if (buildCounterSqlserverValidationDetails < 3) {
    o.fields = buildUnnamed66();
  }
  buildCounterSqlserverValidationDetails--;
  return o;
}

void checkSqlserverValidationDetails(api.SqlserverValidationDetails o) {
  buildCounterSqlserverValidationDetails++;
  if (buildCounterSqlserverValidationDetails < 3) {
    checkUnnamed66(o.fields!);
  }
  buildCounterSqlserverValidationDetails--;
}

core.List<api.SqlserverValidationDetails> buildUnnamed67() => [
  buildSqlserverValidationDetails(),
  buildSqlserverValidationDetails(),
];

void checkUnnamed67(core.List<api.SqlserverValidationDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlserverValidationDetails(o[0]);
  checkSqlserverValidationDetails(o[1]);
}

core.int buildCounterSqlserverValidationValidationDetail = 0;
api.SqlserverValidationValidationDetail
buildSqlserverValidationValidationDetail() {
  final o = api.SqlserverValidationValidationDetail();
  buildCounterSqlserverValidationValidationDetail++;
  if (buildCounterSqlserverValidationValidationDetail < 3) {
    o.details = buildUnnamed67();
    o.type = 'foo';
  }
  buildCounterSqlserverValidationValidationDetail--;
  return o;
}

void checkSqlserverValidationValidationDetail(
  api.SqlserverValidationValidationDetail o,
) {
  buildCounterSqlserverValidationValidationDetail++;
  if (buildCounterSqlserverValidationValidationDetail < 3) {
    checkUnnamed67(o.details!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterSqlserverValidationValidationDetail--;
}

core.Map<core.String, core.Object?> buildUnnamed68() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed68(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted9['bool'], unittest.equals(true));
  unittest.expect(casted9['string'], unittest.equals('foo'));
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed69() => [
  buildUnnamed68(),
  buildUnnamed68(),
];

void checkUnnamed69(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed68(o[0]);
  checkUnnamed68(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed69();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed69(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterSummary = 0;
api.Summary buildSummary() {
  final o = api.Summary();
  buildCounterSummary++;
  if (buildCounterSummary < 3) {
    o.failures = 'foo';
    o.newFailures = 'foo';
    o.newFixes = 'foo';
  }
  buildCounterSummary--;
  return o;
}

void checkSummary(api.Summary o) {
  buildCounterSummary++;
  if (buildCounterSummary < 3) {
    unittest.expect(o.failures!, unittest.equals('foo'));
    unittest.expect(o.newFailures!, unittest.equals('foo'));
    unittest.expect(o.newFixes!, unittest.equals('foo'));
  }
  buildCounterSummary--;
}

core.int buildCounterTerraformVariable = 0;
api.TerraformVariable buildTerraformVariable() {
  final o = api.TerraformVariable();
  buildCounterTerraformVariable++;
  if (buildCounterTerraformVariable < 3) {
    o.inputValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
  }
  buildCounterTerraformVariable--;
  return o;
}

void checkTerraformVariable(api.TerraformVariable o) {
  buildCounterTerraformVariable++;
  if (buildCounterTerraformVariable < 3) {
    var casted11 = (o.inputValue!) as core.Map;
    unittest.expect(casted11, unittest.hasLength(3));
    unittest.expect(casted11['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted11['bool'], unittest.equals(true));
    unittest.expect(casted11['string'], unittest.equals('foo'));
  }
  buildCounterTerraformVariable--;
}

core.Map<core.String, core.String> buildUnnamed70() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed70(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterTorsoValidation = 0;
api.TorsoValidation buildTorsoValidation() {
  final o = api.TorsoValidation();
  buildCounterTorsoValidation++;
  if (buildCounterTorsoValidation < 3) {
    o.agentVersion = 'foo';
    o.instanceName = 'foo';
    o.projectId = 'foo';
    o.validationDetails = buildUnnamed70();
    o.workloadType = 'foo';
  }
  buildCounterTorsoValidation--;
  return o;
}

void checkTorsoValidation(api.TorsoValidation o) {
  buildCounterTorsoValidation++;
  if (buildCounterTorsoValidation < 3) {
    unittest.expect(o.agentVersion!, unittest.equals('foo'));
    unittest.expect(o.instanceName!, unittest.equals('foo'));
    unittest.expect(o.projectId!, unittest.equals('foo'));
    checkUnnamed70(o.validationDetails!);
    unittest.expect(o.workloadType!, unittest.equals('foo'));
  }
  buildCounterTorsoValidation--;
}

core.int buildCounterUpcomingMaintenanceEvent = 0;
api.UpcomingMaintenanceEvent buildUpcomingMaintenanceEvent() {
  final o = api.UpcomingMaintenanceEvent();
  buildCounterUpcomingMaintenanceEvent++;
  if (buildCounterUpcomingMaintenanceEvent < 3) {
    o.endTime = 'foo';
    o.maintenanceStatus = 'foo';
    o.onHostMaintenance = 'foo';
    o.startTime = 'foo';
    o.type = 'foo';
  }
  buildCounterUpcomingMaintenanceEvent--;
  return o;
}

void checkUpcomingMaintenanceEvent(api.UpcomingMaintenanceEvent o) {
  buildCounterUpcomingMaintenanceEvent++;
  if (buildCounterUpcomingMaintenanceEvent < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.maintenanceStatus!, unittest.equals('foo'));
    unittest.expect(o.onHostMaintenance!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterUpcomingMaintenanceEvent--;
}

core.Map<core.String, core.String> buildUnnamed71() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed71(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.RuleOutput> buildUnnamed72() => [
  buildRuleOutput(),
  buildRuleOutput(),
];

void checkUnnamed72(core.List<api.RuleOutput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRuleOutput(o[0]);
  checkRuleOutput(o[1]);
}

core.int buildCounterViolationDetails = 0;
api.ViolationDetails buildViolationDetails() {
  final o = api.ViolationDetails();
  buildCounterViolationDetails++;
  if (buildCounterViolationDetails < 3) {
    o.asset = 'foo';
    o.observed = buildUnnamed71();
    o.ruleOutput = buildUnnamed72();
    o.serviceAccount = 'foo';
  }
  buildCounterViolationDetails--;
  return o;
}

void checkViolationDetails(api.ViolationDetails o) {
  buildCounterViolationDetails++;
  if (buildCounterViolationDetails < 3) {
    unittest.expect(o.asset!, unittest.equals('foo'));
    checkUnnamed71(o.observed!);
    checkUnnamed72(o.ruleOutput!);
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
  }
  buildCounterViolationDetails--;
}

core.Map<core.String, core.String> buildUnnamed73() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed73(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterWorkloadProfile = 0;
api.WorkloadProfile buildWorkloadProfile() {
  final o = api.WorkloadProfile();
  buildCounterWorkloadProfile++;
  if (buildCounterWorkloadProfile < 3) {
    o.labels = buildUnnamed73();
    o.name = 'foo';
    o.refreshedTime = 'foo';
    o.sapWorkload = buildSapWorkload();
    o.workloadType = 'foo';
  }
  buildCounterWorkloadProfile--;
  return o;
}

void checkWorkloadProfile(api.WorkloadProfile o) {
  buildCounterWorkloadProfile++;
  if (buildCounterWorkloadProfile < 3) {
    checkUnnamed73(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.refreshedTime!, unittest.equals('foo'));
    checkSapWorkload(o.sapWorkload!);
    unittest.expect(o.workloadType!, unittest.equals('foo'));
  }
  buildCounterWorkloadProfile--;
}

core.List<api.ComponentHealth> buildUnnamed74() => [
  buildComponentHealth(),
  buildComponentHealth(),
];

void checkUnnamed74(core.List<api.ComponentHealth> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComponentHealth(o[0]);
  checkComponentHealth(o[1]);
}

core.int buildCounterWorkloadProfileHealth = 0;
api.WorkloadProfileHealth buildWorkloadProfileHealth() {
  final o = api.WorkloadProfileHealth();
  buildCounterWorkloadProfileHealth++;
  if (buildCounterWorkloadProfileHealth < 3) {
    o.checkTime = 'foo';
    o.componentsHealth = buildUnnamed74();
    o.state = 'foo';
  }
  buildCounterWorkloadProfileHealth--;
  return o;
}

void checkWorkloadProfileHealth(api.WorkloadProfileHealth o) {
  buildCounterWorkloadProfileHealth++;
  if (buildCounterWorkloadProfileHealth < 3) {
    unittest.expect(o.checkTime!, unittest.equals('foo'));
    checkUnnamed74(o.componentsHealth!);
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterWorkloadProfileHealth--;
}

core.int buildCounterWriteInsightRequest = 0;
api.WriteInsightRequest buildWriteInsightRequest() {
  final o = api.WriteInsightRequest();
  buildCounterWriteInsightRequest++;
  if (buildCounterWriteInsightRequest < 3) {
    o.agentVersion = 'foo';
    o.insight = buildInsight();
    o.requestId = 'foo';
  }
  buildCounterWriteInsightRequest--;
  return o;
}

void checkWriteInsightRequest(api.WriteInsightRequest o) {
  buildCounterWriteInsightRequest++;
  if (buildCounterWriteInsightRequest < 3) {
    unittest.expect(o.agentVersion!, unittest.equals('foo'));
    checkInsight(o.insight!);
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterWriteInsightRequest--;
}

core.int buildCounterWriteInsightResponse = 0;
api.WriteInsightResponse buildWriteInsightResponse() {
  final o = api.WriteInsightResponse();
  buildCounterWriteInsightResponse++;
  if (buildCounterWriteInsightResponse < 3) {}
  buildCounterWriteInsightResponse--;
  return o;
}

void checkWriteInsightResponse(api.WriteInsightResponse o) {
  buildCounterWriteInsightResponse++;
  if (buildCounterWriteInsightResponse < 3) {}
  buildCounterWriteInsightResponse--;
}

core.List<core.String> buildUnnamed75() => ['foo', 'foo'];

void checkUnnamed75(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-ActiveDirectory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActiveDirectory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActiveDirectory.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActiveDirectory(od);
    });
  });

  unittest.group('obj-schema-Actuation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActuation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Actuation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActuation(od);
    });
  });

  unittest.group('obj-schema-ActuationOutput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActuationOutput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActuationOutput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActuationOutput(od);
    });
  });

  unittest.group('obj-schema-AgentCommand', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentCommand();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentCommand.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentCommand(od);
    });
  });

  unittest.group('obj-schema-AgentStates', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentStates();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentStates.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentStates(od);
    });
  });

  unittest.group('obj-schema-AgentStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentStatus(od);
    });
  });

  unittest.group('obj-schema-AgentStatusConfigValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentStatusConfigValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentStatusConfigValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentStatusConfigValue(od);
    });
  });

  unittest.group('obj-schema-AgentStatusIAMPermission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentStatusIAMPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentStatusIAMPermission.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentStatusIAMPermission(od);
    });
  });

  unittest.group('obj-schema-AgentStatusReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentStatusReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentStatusReference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentStatusReference(od);
    });
  });

  unittest.group('obj-schema-AgentStatusServiceStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentStatusServiceStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentStatusServiceStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentStatusServiceStatus(od);
    });
  });

  unittest.group('obj-schema-AppDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppDetails(od);
    });
  });

  unittest.group('obj-schema-BackupProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBackupProperties(od);
    });
  });

  unittest.group('obj-schema-BigQueryDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBigQueryDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BigQueryDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBigQueryDestination(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-CloudResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudResource(od);
    });
  });

  unittest.group('obj-schema-Command', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommand();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Command.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCommand(od);
    });
  });

  unittest.group('obj-schema-ComponentHealth', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComponentHealth();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComponentHealth.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkComponentHealth(od);
    });
  });

  unittest.group('obj-schema-Database', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Database.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabase(od);
    });
  });

  unittest.group('obj-schema-DatabaseDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabaseDetails(od);
    });
  });

  unittest.group('obj-schema-DatabaseProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabaseProperties(od);
    });
  });

  unittest.group('obj-schema-Deployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Deployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeployment(od);
    });
  });

  unittest.group('obj-schema-DeploymentOutput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentOutput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentOutput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeploymentOutput(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Empty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-Evaluation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEvaluation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Evaluation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEvaluation(od);
    });
  });

  unittest.group('obj-schema-Execution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Execution.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecution(od);
    });
  });

  unittest.group('obj-schema-ExecutionResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutionResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutionResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecutionResult(od);
    });
  });

  unittest.group('obj-schema-ExternalDataSources', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternalDataSources();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternalDataSources.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExternalDataSources(od);
    });
  });

  unittest.group('obj-schema-GceInstanceFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGceInstanceFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GceInstanceFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGceInstanceFilter(od);
    });
  });

  unittest.group('obj-schema-HealthCheck', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHealthCheck();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HealthCheck.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHealthCheck(od);
    });
  });

  unittest.group('obj-schema-IAMPermission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIAMPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IAMPermission.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIAMPermission(od);
    });
  });

  unittest.group('obj-schema-Insight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Insight.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsight(od);
    });
  });

  unittest.group('obj-schema-InstanceProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInstanceProperties(od);
    });
  });

  unittest.group('obj-schema-ListActuationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListActuationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListActuationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListActuationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDeploymentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDeploymentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDeploymentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDeploymentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDiscoveredProfilesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDiscoveredProfilesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDiscoveredProfilesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDiscoveredProfilesResponse(od);
    });
  });

  unittest.group('obj-schema-ListEvaluationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEvaluationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEvaluationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListEvaluationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListExecutionResultsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListExecutionResultsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListExecutionResultsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListExecutionResultsResponse(od);
    });
  });

  unittest.group('obj-schema-ListExecutionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListExecutionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListExecutionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListExecutionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListRulesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRulesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRulesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListRulesResponse(od);
    });
  });

  unittest.group('obj-schema-ListScannedResourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListScannedResourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListScannedResourcesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListScannedResourcesResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Location.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-LocationDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocationDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocationDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocationDetails(od);
    });
  });

  unittest.group('obj-schema-Notice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Notice.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNotice(od);
    });
  });

  unittest.group('obj-schema-OpenShiftValidation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOpenShiftValidation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OpenShiftValidation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOpenShiftValidation(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Operation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-Pacemaker', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPacemaker();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Pacemaker.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPacemaker(od);
    });
  });

  unittest.group('obj-schema-Product', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProduct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Product.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProduct(od);
    });
  });

  unittest.group('obj-schema-Resource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Resource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResource(od);
    });
  });

  unittest.group('obj-schema-ResourceFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceFilter(od);
    });
  });

  unittest.group('obj-schema-ResourceStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceStatus(od);
    });
  });

  unittest.group('obj-schema-Rule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Rule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRule(od);
    });
  });

  unittest.group('obj-schema-RuleExecutionResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuleExecutionResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuleExecutionResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRuleExecutionResult(od);
    });
  });

  unittest.group('obj-schema-RuleOutput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuleOutput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuleOutput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRuleOutput(od);
    });
  });

  unittest.group('obj-schema-RunEvaluationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunEvaluationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunEvaluationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRunEvaluationRequest(od);
    });
  });

  unittest.group('obj-schema-SapComponent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapComponent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapComponent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSapComponent(od);
    });
  });

  unittest.group('obj-schema-SapDiscovery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscovery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscovery.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSapDiscovery(od);
    });
  });

  unittest.group('obj-schema-SapDiscoveryComponent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryComponent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryComponent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSapDiscoveryComponent(od);
    });
  });

  unittest.group('obj-schema-SapDiscoveryComponentApplicationProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryComponentApplicationProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryComponentApplicationProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSapDiscoveryComponentApplicationProperties(od);
    });
  });

  unittest.group('obj-schema-SapDiscoveryComponentDatabaseProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryComponentDatabaseProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryComponentDatabaseProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSapDiscoveryComponentDatabaseProperties(od);
    });
  });

  unittest.group('obj-schema-SapDiscoveryComponentReplicationSite', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryComponentReplicationSite();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryComponentReplicationSite.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSapDiscoveryComponentReplicationSite(od);
    });
  });

  unittest.group('obj-schema-SapDiscoveryMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSapDiscoveryMetadata(od);
    });
  });

  unittest.group('obj-schema-SapDiscoveryResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSapDiscoveryResource(od);
    });
  });

  unittest.group('obj-schema-SapDiscoveryResourceInstanceProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryResourceInstanceProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryResourceInstanceProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSapDiscoveryResourceInstanceProperties(od);
    });
  });

  unittest.group(
    'obj-schema-SapDiscoveryResourceInstancePropertiesAppInstance',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildSapDiscoveryResourceInstancePropertiesAppInstance();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.SapDiscoveryResourceInstancePropertiesAppInstance.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkSapDiscoveryResourceInstancePropertiesAppInstance(od);
      });
    },
  );

  unittest.group(
    'obj-schema-SapDiscoveryResourceInstancePropertiesDiskMount',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildSapDiscoveryResourceInstancePropertiesDiskMount();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.SapDiscoveryResourceInstancePropertiesDiskMount.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkSapDiscoveryResourceInstancePropertiesDiskMount(od);
      });
    },
  );

  unittest.group(
    'obj-schema-SapDiscoveryResourceInstancePropertiesKernelVersion',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildSapDiscoveryResourceInstancePropertiesKernelVersion();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.SapDiscoveryResourceInstancePropertiesKernelVersion.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkSapDiscoveryResourceInstancePropertiesKernelVersion(od);
      });
    },
  );

  unittest.group(
    'obj-schema-SapDiscoveryResourceInstancePropertiesKernelVersionVersion',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildSapDiscoveryResourceInstancePropertiesKernelVersionVersion();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.SapDiscoveryResourceInstancePropertiesKernelVersionVersion.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkSapDiscoveryResourceInstancePropertiesKernelVersionVersion(od);
      });
    },
  );

  unittest.group('obj-schema-SapDiscoveryWorkloadProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryWorkloadProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryWorkloadProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSapDiscoveryWorkloadProperties(od);
    });
  });

  unittest.group('obj-schema-SapDiscoveryWorkloadPropertiesProductVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryWorkloadPropertiesProductVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryWorkloadPropertiesProductVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSapDiscoveryWorkloadPropertiesProductVersion(od);
    });
  });

  unittest.group(
    'obj-schema-SapDiscoveryWorkloadPropertiesSoftwareComponentProperties',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildSapDiscoveryWorkloadPropertiesSoftwareComponentProperties();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.SapDiscoveryWorkloadPropertiesSoftwareComponentProperties.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkSapDiscoveryWorkloadPropertiesSoftwareComponentProperties(od);
      });
    },
  );

  unittest.group('obj-schema-SapInstanceProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapInstanceProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapInstanceProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSapInstanceProperties(od);
    });
  });

  unittest.group('obj-schema-SapSystemS4Config', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapSystemS4Config();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapSystemS4Config.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSapSystemS4Config(od);
    });
  });

  unittest.group('obj-schema-SapValidation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapValidation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapValidation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSapValidation(od);
    });
  });

  unittest.group('obj-schema-SapValidationValidationDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapValidationValidationDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapValidationValidationDetail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSapValidationValidationDetail(od);
    });
  });

  unittest.group('obj-schema-SapWorkload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapWorkload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapWorkload.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSapWorkload(od);
    });
  });

  unittest.group('obj-schema-ScannedResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScannedResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScannedResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkScannedResource(od);
    });
  });

  unittest.group('obj-schema-ServiceStates', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceStates();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceStates.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServiceStates(od);
    });
  });

  unittest.group('obj-schema-ShellCommand', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShellCommand();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShellCommand.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkShellCommand(od);
    });
  });

  unittest.group('obj-schema-SqlLocationDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlLocationDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlLocationDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSqlLocationDetails(od);
    });
  });

  unittest.group('obj-schema-SqlServerWorkload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerWorkload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerWorkload.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSqlServerWorkload(od);
    });
  });

  unittest.group('obj-schema-SqlserverValidation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlserverValidation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlserverValidation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSqlserverValidation(od);
    });
  });

  unittest.group('obj-schema-SqlserverValidationDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlserverValidationDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlserverValidationDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSqlserverValidationDetails(od);
    });
  });

  unittest.group('obj-schema-SqlserverValidationValidationDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlserverValidationValidationDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlserverValidationValidationDetail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSqlserverValidationValidationDetail(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Status.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-Summary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Summary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSummary(od);
    });
  });

  unittest.group('obj-schema-TerraformVariable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTerraformVariable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TerraformVariable.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTerraformVariable(od);
    });
  });

  unittest.group('obj-schema-TorsoValidation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTorsoValidation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TorsoValidation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTorsoValidation(od);
    });
  });

  unittest.group('obj-schema-UpcomingMaintenanceEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpcomingMaintenanceEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpcomingMaintenanceEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpcomingMaintenanceEvent(od);
    });
  });

  unittest.group('obj-schema-ViolationDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildViolationDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ViolationDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkViolationDetails(od);
    });
  });

  unittest.group('obj-schema-WorkloadProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkloadProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkloadProfile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWorkloadProfile(od);
    });
  });

  unittest.group('obj-schema-WorkloadProfileHealth', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkloadProfileHealth();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkloadProfileHealth.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWorkloadProfileHealth(od);
    });
  });

  unittest.group('obj-schema-WriteInsightRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteInsightRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteInsightRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWriteInsightRequest(od);
    });
  });

  unittest.group('obj-schema-WriteInsightResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteInsightResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteInsightResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWriteInsightResponse(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed75();
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['extraLocationTypes']!,
            unittest.equals(arg_extraLocationTypes),
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListLocationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        extraLocationTypes: arg_extraLocationTypes,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDeploymentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.deployments;
      final arg_request = buildDeployment();
      final arg_parent = 'foo';
      final arg_deploymentId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Deployment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeployment(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['deploymentId']!.first,
            unittest.equals(arg_deploymentId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        deploymentId: arg_deploymentId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.deployments;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.deployments;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildDeployment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDeployment(response as api.Deployment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.deployments;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListDeploymentsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListDeploymentsResponse(response as api.ListDeploymentsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDeploymentsActuationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(
        mock,
      ).projects.locations.deployments.actuations;
      final arg_request = buildActuation();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Actuation.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkActuation(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(
        mock,
      ).projects.locations.deployments.actuations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(
        mock,
      ).projects.locations.deployments.actuations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildActuation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkActuation(response as api.Actuation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(
        mock,
      ).projects.locations.deployments.actuations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListActuationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListActuationsResponse(response as api.ListActuationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDiscoveredprofilesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(
        mock,
      ).projects.locations.discoveredprofiles;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildWorkloadProfile());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkWorkloadProfile(response as api.WorkloadProfile);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(
        mock,
      ).projects.locations.discoveredprofiles;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListDiscoveredProfilesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListDiscoveredProfilesResponse(
        response as api.ListDiscoveredProfilesResponse,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsDiscoveredprofilesHealthResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res = api.WorkloadManagerApi(
          mock,
        ).projects.locations.discoveredprofiles.health;
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildWorkloadProfileHealth());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkWorkloadProfileHealth(response as api.WorkloadProfileHealth);
      });
    },
  );

  unittest.group('resource-ProjectsLocationsEvaluationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.evaluations;
      final arg_request = buildEvaluation();
      final arg_parent = 'foo';
      final arg_evaluationId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Evaluation.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEvaluation(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['evaluationId']!.first,
            unittest.equals(arg_evaluationId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        evaluationId: arg_evaluationId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.evaluations;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        force: arg_force,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.evaluations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEvaluation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkEvaluation(response as api.Evaluation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.evaluations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListEvaluationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListEvaluationsResponse(response as api.ListEvaluationsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.evaluations;
      final arg_request = buildEvaluation();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Evaluation.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEvaluation(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsEvaluationsExecutionsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(
        mock,
      ).projects.locations.evaluations.executions;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(
        mock,
      ).projects.locations.evaluations.executions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildExecution());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkExecution(response as api.Execution);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(
        mock,
      ).projects.locations.evaluations.executions;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListExecutionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListExecutionsResponse(response as api.ListExecutionsResponse);
    });

    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(
        mock,
      ).projects.locations.evaluations.executions;
      final arg_request = buildRunEvaluationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RunEvaluationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRunEvaluationRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.run(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
    'resource-ProjectsLocationsEvaluationsExecutionsResultsResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.WorkloadManagerApi(
          mock,
        ).projects.locations.evaluations.executions.results;
        final arg_parent = 'foo';
        final arg_filter = 'foo';
        final arg_pageSize = 42;
        final arg_pageToken = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildListExecutionResultsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkListExecutionResultsResponse(
          response as api.ListExecutionResultsResponse,
        );
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsEvaluationsExecutionsScannedResourcesResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.WorkloadManagerApi(
          mock,
        ).projects.locations.evaluations.executions.scannedResources;
        final arg_parent = 'foo';
        final arg_filter = 'foo';
        final arg_orderBy = 'foo';
        final arg_pageSize = 42;
        final arg_pageToken = 'foo';
        final arg_rule = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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

            final query = req.url.query;
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
            unittest.expect(queryMap['rule']!.first, unittest.equals(arg_rule));
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildListScannedResourcesResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          rule: arg_rule,
          $fields: arg_$fields,
        );
        checkListScannedResourcesResponse(
          response as api.ListScannedResourcesResponse,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsInsightsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.insights;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--writeInsight', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.insights;
      final arg_request = buildWriteInsightRequest();
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WriteInsightRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWriteInsightRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildWriteInsightResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.writeInsight(
        arg_request,
        arg_location,
        $fields: arg_$fields,
      );
      checkWriteInsightResponse(response as api.WriteInsightResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelOperationRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_returnPartialSuccess = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListOperationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsRulesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.rules;
      final arg_parent = 'foo';
      final arg_customRulesBucket = 'foo';
      final arg_evaluationType = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['customRulesBucket']!.first,
            unittest.equals(arg_customRulesBucket),
          );
          unittest.expect(
            queryMap['evaluationType']!.first,
            unittest.equals(arg_evaluationType),
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListRulesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        customRulesBucket: arg_customRulesBucket,
        evaluationType: arg_evaluationType,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListRulesResponse(response as api.ListRulesResponse);
    });
  });
}
