// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/composer/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAirflowMetadataRetentionPolicyConfig = 0;
api.AirflowMetadataRetentionPolicyConfig
    buildAirflowMetadataRetentionPolicyConfig() {
  final o = api.AirflowMetadataRetentionPolicyConfig();
  buildCounterAirflowMetadataRetentionPolicyConfig++;
  if (buildCounterAirflowMetadataRetentionPolicyConfig < 3) {
    o.retentionDays = 42;
    o.retentionMode = 'foo';
  }
  buildCounterAirflowMetadataRetentionPolicyConfig--;
  return o;
}

void checkAirflowMetadataRetentionPolicyConfig(
    api.AirflowMetadataRetentionPolicyConfig o) {
  buildCounterAirflowMetadataRetentionPolicyConfig++;
  if (buildCounterAirflowMetadataRetentionPolicyConfig < 3) {
    unittest.expect(
      o.retentionDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.retentionMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterAirflowMetadataRetentionPolicyConfig--;
}

core.int buildCounterAllowedIpRange = 0;
api.AllowedIpRange buildAllowedIpRange() {
  final o = api.AllowedIpRange();
  buildCounterAllowedIpRange++;
  if (buildCounterAllowedIpRange < 3) {
    o.description = 'foo';
    o.value = 'foo';
  }
  buildCounterAllowedIpRange--;
  return o;
}

void checkAllowedIpRange(api.AllowedIpRange o) {
  buildCounterAllowedIpRange++;
  if (buildCounterAllowedIpRange < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterAllowedIpRange--;
}

core.int buildCounterCidrBlock = 0;
api.CidrBlock buildCidrBlock() {
  final o = api.CidrBlock();
  buildCounterCidrBlock++;
  if (buildCounterCidrBlock < 3) {
    o.cidrBlock = 'foo';
    o.displayName = 'foo';
  }
  buildCounterCidrBlock--;
  return o;
}

void checkCidrBlock(api.CidrBlock o) {
  buildCounterCidrBlock++;
  if (buildCounterCidrBlock < 3) {
    unittest.expect(
      o.cidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterCidrBlock--;
}

core.int buildCounterCloudDataLineageIntegration = 0;
api.CloudDataLineageIntegration buildCloudDataLineageIntegration() {
  final o = api.CloudDataLineageIntegration();
  buildCounterCloudDataLineageIntegration++;
  if (buildCounterCloudDataLineageIntegration < 3) {
    o.enabled = true;
  }
  buildCounterCloudDataLineageIntegration--;
  return o;
}

void checkCloudDataLineageIntegration(api.CloudDataLineageIntegration o) {
  buildCounterCloudDataLineageIntegration++;
  if (buildCounterCloudDataLineageIntegration < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterCloudDataLineageIntegration--;
}

core.int buildCounterComposerWorkload = 0;
api.ComposerWorkload buildComposerWorkload() {
  final o = api.ComposerWorkload();
  buildCounterComposerWorkload++;
  if (buildCounterComposerWorkload < 3) {
    o.name = 'foo';
    o.status = buildComposerWorkloadStatus();
    o.type = 'foo';
  }
  buildCounterComposerWorkload--;
  return o;
}

void checkComposerWorkload(api.ComposerWorkload o) {
  buildCounterComposerWorkload++;
  if (buildCounterComposerWorkload < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkComposerWorkloadStatus(o.status!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterComposerWorkload--;
}

core.int buildCounterComposerWorkloadStatus = 0;
api.ComposerWorkloadStatus buildComposerWorkloadStatus() {
  final o = api.ComposerWorkloadStatus();
  buildCounterComposerWorkloadStatus++;
  if (buildCounterComposerWorkloadStatus < 3) {
    o.detailedStatusMessage = 'foo';
    o.state = 'foo';
    o.statusMessage = 'foo';
  }
  buildCounterComposerWorkloadStatus--;
  return o;
}

void checkComposerWorkloadStatus(api.ComposerWorkloadStatus o) {
  buildCounterComposerWorkloadStatus++;
  if (buildCounterComposerWorkloadStatus < 3) {
    unittest.expect(
      o.detailedStatusMessage!,
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
  }
  buildCounterComposerWorkloadStatus--;
}

core.int buildCounterDagProcessorResource = 0;
api.DagProcessorResource buildDagProcessorResource() {
  final o = api.DagProcessorResource();
  buildCounterDagProcessorResource++;
  if (buildCounterDagProcessorResource < 3) {
    o.count = 42;
    o.cpu = 42.0;
    o.memoryGb = 42.0;
    o.storageGb = 42.0;
  }
  buildCounterDagProcessorResource--;
  return o;
}

void checkDagProcessorResource(api.DagProcessorResource o) {
  buildCounterDagProcessorResource++;
  if (buildCounterDagProcessorResource < 3) {
    unittest.expect(
      o.count!,
      unittest.equals(42),
    );
    unittest.expect(
      o.cpu!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.memoryGb!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.storageGb!,
      unittest.equals(42.0),
    );
  }
  buildCounterDagProcessorResource--;
}

core.int buildCounterDataRetentionConfig = 0;
api.DataRetentionConfig buildDataRetentionConfig() {
  final o = api.DataRetentionConfig();
  buildCounterDataRetentionConfig++;
  if (buildCounterDataRetentionConfig < 3) {
    o.airflowMetadataRetentionConfig =
        buildAirflowMetadataRetentionPolicyConfig();
    o.taskLogsRetentionConfig = buildTaskLogsRetentionConfig();
  }
  buildCounterDataRetentionConfig--;
  return o;
}

void checkDataRetentionConfig(api.DataRetentionConfig o) {
  buildCounterDataRetentionConfig++;
  if (buildCounterDataRetentionConfig < 3) {
    checkAirflowMetadataRetentionPolicyConfig(
        o.airflowMetadataRetentionConfig!);
    checkTaskLogsRetentionConfig(o.taskLogsRetentionConfig!);
  }
  buildCounterDataRetentionConfig--;
}

core.int buildCounterDatabaseConfig = 0;
api.DatabaseConfig buildDatabaseConfig() {
  final o = api.DatabaseConfig();
  buildCounterDatabaseConfig++;
  if (buildCounterDatabaseConfig < 3) {
    o.machineType = 'foo';
    o.zone = 'foo';
  }
  buildCounterDatabaseConfig--;
  return o;
}

void checkDatabaseConfig(api.DatabaseConfig o) {
  buildCounterDatabaseConfig++;
  if (buildCounterDatabaseConfig < 3) {
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatabaseConfig--;
}

core.int buildCounterDatabaseFailoverRequest = 0;
api.DatabaseFailoverRequest buildDatabaseFailoverRequest() {
  final o = api.DatabaseFailoverRequest();
  buildCounterDatabaseFailoverRequest++;
  if (buildCounterDatabaseFailoverRequest < 3) {}
  buildCounterDatabaseFailoverRequest--;
  return o;
}

void checkDatabaseFailoverRequest(api.DatabaseFailoverRequest o) {
  buildCounterDatabaseFailoverRequest++;
  if (buildCounterDatabaseFailoverRequest < 3) {}
  buildCounterDatabaseFailoverRequest--;
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

core.int buildCounterEncryptionConfig = 0;
api.EncryptionConfig buildEncryptionConfig() {
  final o = api.EncryptionConfig();
  buildCounterEncryptionConfig++;
  if (buildCounterEncryptionConfig < 3) {
    o.kmsKeyName = 'foo';
  }
  buildCounterEncryptionConfig--;
  return o;
}

void checkEncryptionConfig(api.EncryptionConfig o) {
  buildCounterEncryptionConfig++;
  if (buildCounterEncryptionConfig < 3) {
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
  }
  buildCounterEncryptionConfig--;
}

core.Map<core.String, core.String> buildUnnamed0() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed0(core.Map<core.String, core.String> o) {
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

core.int buildCounterEnvironment = 0;
api.Environment buildEnvironment() {
  final o = api.Environment();
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    o.config = buildEnvironmentConfig();
    o.createTime = 'foo';
    o.labels = buildUnnamed0();
    o.name = 'foo';
    o.satisfiesPzs = true;
    o.state = 'foo';
    o.storageConfig = buildStorageConfig();
    o.updateTime = 'foo';
    o.uuid = 'foo';
  }
  buildCounterEnvironment--;
  return o;
}

void checkEnvironment(api.Environment o) {
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    checkEnvironmentConfig(o.config!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkStorageConfig(o.storageConfig!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uuid!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnvironment--;
}

core.int buildCounterEnvironmentConfig = 0;
api.EnvironmentConfig buildEnvironmentConfig() {
  final o = api.EnvironmentConfig();
  buildCounterEnvironmentConfig++;
  if (buildCounterEnvironmentConfig < 3) {
    o.airflowByoidUri = 'foo';
    o.airflowUri = 'foo';
    o.dagGcsPrefix = 'foo';
    o.dataRetentionConfig = buildDataRetentionConfig();
    o.databaseConfig = buildDatabaseConfig();
    o.encryptionConfig = buildEncryptionConfig();
    o.environmentSize = 'foo';
    o.gkeCluster = 'foo';
    o.maintenanceWindow = buildMaintenanceWindow();
    o.masterAuthorizedNetworksConfig = buildMasterAuthorizedNetworksConfig();
    o.nodeConfig = buildNodeConfig();
    o.nodeCount = 42;
    o.privateEnvironmentConfig = buildPrivateEnvironmentConfig();
    o.recoveryConfig = buildRecoveryConfig();
    o.resilienceMode = 'foo';
    o.softwareConfig = buildSoftwareConfig();
    o.webServerConfig = buildWebServerConfig();
    o.webServerNetworkAccessControl = buildWebServerNetworkAccessControl();
    o.workloadsConfig = buildWorkloadsConfig();
  }
  buildCounterEnvironmentConfig--;
  return o;
}

void checkEnvironmentConfig(api.EnvironmentConfig o) {
  buildCounterEnvironmentConfig++;
  if (buildCounterEnvironmentConfig < 3) {
    unittest.expect(
      o.airflowByoidUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.airflowUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dagGcsPrefix!,
      unittest.equals('foo'),
    );
    checkDataRetentionConfig(o.dataRetentionConfig!);
    checkDatabaseConfig(o.databaseConfig!);
    checkEncryptionConfig(o.encryptionConfig!);
    unittest.expect(
      o.environmentSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gkeCluster!,
      unittest.equals('foo'),
    );
    checkMaintenanceWindow(o.maintenanceWindow!);
    checkMasterAuthorizedNetworksConfig(o.masterAuthorizedNetworksConfig!);
    checkNodeConfig(o.nodeConfig!);
    unittest.expect(
      o.nodeCount!,
      unittest.equals(42),
    );
    checkPrivateEnvironmentConfig(o.privateEnvironmentConfig!);
    checkRecoveryConfig(o.recoveryConfig!);
    unittest.expect(
      o.resilienceMode!,
      unittest.equals('foo'),
    );
    checkSoftwareConfig(o.softwareConfig!);
    checkWebServerConfig(o.webServerConfig!);
    checkWebServerNetworkAccessControl(o.webServerNetworkAccessControl!);
    checkWorkloadsConfig(o.workloadsConfig!);
  }
  buildCounterEnvironmentConfig--;
}

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
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

core.int buildCounterExecuteAirflowCommandRequest = 0;
api.ExecuteAirflowCommandRequest buildExecuteAirflowCommandRequest() {
  final o = api.ExecuteAirflowCommandRequest();
  buildCounterExecuteAirflowCommandRequest++;
  if (buildCounterExecuteAirflowCommandRequest < 3) {
    o.command = 'foo';
    o.parameters = buildUnnamed1();
    o.subcommand = 'foo';
  }
  buildCounterExecuteAirflowCommandRequest--;
  return o;
}

void checkExecuteAirflowCommandRequest(api.ExecuteAirflowCommandRequest o) {
  buildCounterExecuteAirflowCommandRequest++;
  if (buildCounterExecuteAirflowCommandRequest < 3) {
    unittest.expect(
      o.command!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.parameters!);
    unittest.expect(
      o.subcommand!,
      unittest.equals('foo'),
    );
  }
  buildCounterExecuteAirflowCommandRequest--;
}

core.int buildCounterExecuteAirflowCommandResponse = 0;
api.ExecuteAirflowCommandResponse buildExecuteAirflowCommandResponse() {
  final o = api.ExecuteAirflowCommandResponse();
  buildCounterExecuteAirflowCommandResponse++;
  if (buildCounterExecuteAirflowCommandResponse < 3) {
    o.error = 'foo';
    o.executionId = 'foo';
    o.pod = 'foo';
    o.podNamespace = 'foo';
  }
  buildCounterExecuteAirflowCommandResponse--;
  return o;
}

void checkExecuteAirflowCommandResponse(api.ExecuteAirflowCommandResponse o) {
  buildCounterExecuteAirflowCommandResponse++;
  if (buildCounterExecuteAirflowCommandResponse < 3) {
    unittest.expect(
      o.error!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.executionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.podNamespace!,
      unittest.equals('foo'),
    );
  }
  buildCounterExecuteAirflowCommandResponse--;
}

core.int buildCounterExitInfo = 0;
api.ExitInfo buildExitInfo() {
  final o = api.ExitInfo();
  buildCounterExitInfo++;
  if (buildCounterExitInfo < 3) {
    o.error = 'foo';
    o.exitCode = 42;
  }
  buildCounterExitInfo--;
  return o;
}

void checkExitInfo(api.ExitInfo o) {
  buildCounterExitInfo++;
  if (buildCounterExitInfo < 3) {
    unittest.expect(
      o.error!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exitCode!,
      unittest.equals(42),
    );
  }
  buildCounterExitInfo--;
}

core.int buildCounterFetchDatabasePropertiesResponse = 0;
api.FetchDatabasePropertiesResponse buildFetchDatabasePropertiesResponse() {
  final o = api.FetchDatabasePropertiesResponse();
  buildCounterFetchDatabasePropertiesResponse++;
  if (buildCounterFetchDatabasePropertiesResponse < 3) {
    o.isFailoverReplicaAvailable = true;
    o.primaryGceZone = 'foo';
    o.secondaryGceZone = 'foo';
  }
  buildCounterFetchDatabasePropertiesResponse--;
  return o;
}

void checkFetchDatabasePropertiesResponse(
    api.FetchDatabasePropertiesResponse o) {
  buildCounterFetchDatabasePropertiesResponse++;
  if (buildCounterFetchDatabasePropertiesResponse < 3) {
    unittest.expect(o.isFailoverReplicaAvailable!, unittest.isTrue);
    unittest.expect(
      o.primaryGceZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.secondaryGceZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterFetchDatabasePropertiesResponse--;
}

core.int buildCounterIPAllocationPolicy = 0;
api.IPAllocationPolicy buildIPAllocationPolicy() {
  final o = api.IPAllocationPolicy();
  buildCounterIPAllocationPolicy++;
  if (buildCounterIPAllocationPolicy < 3) {
    o.clusterIpv4CidrBlock = 'foo';
    o.clusterSecondaryRangeName = 'foo';
    o.servicesIpv4CidrBlock = 'foo';
    o.servicesSecondaryRangeName = 'foo';
    o.useIpAliases = true;
  }
  buildCounterIPAllocationPolicy--;
  return o;
}

void checkIPAllocationPolicy(api.IPAllocationPolicy o) {
  buildCounterIPAllocationPolicy++;
  if (buildCounterIPAllocationPolicy < 3) {
    unittest.expect(
      o.clusterIpv4CidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clusterSecondaryRangeName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.servicesIpv4CidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.servicesSecondaryRangeName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.useIpAliases!, unittest.isTrue);
  }
  buildCounterIPAllocationPolicy--;
}

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
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

core.int buildCounterImageVersion = 0;
api.ImageVersion buildImageVersion() {
  final o = api.ImageVersion();
  buildCounterImageVersion++;
  if (buildCounterImageVersion < 3) {
    o.creationDisabled = true;
    o.imageVersionId = 'foo';
    o.isDefault = true;
    o.releaseDate = buildDate();
    o.supportedPythonVersions = buildUnnamed2();
    o.upgradeDisabled = true;
  }
  buildCounterImageVersion--;
  return o;
}

void checkImageVersion(api.ImageVersion o) {
  buildCounterImageVersion++;
  if (buildCounterImageVersion < 3) {
    unittest.expect(o.creationDisabled!, unittest.isTrue);
    unittest.expect(
      o.imageVersionId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isDefault!, unittest.isTrue);
    checkDate(o.releaseDate!);
    checkUnnamed2(o.supportedPythonVersions!);
    unittest.expect(o.upgradeDisabled!, unittest.isTrue);
  }
  buildCounterImageVersion--;
}

core.int buildCounterLine = 0;
api.Line buildLine() {
  final o = api.Line();
  buildCounterLine++;
  if (buildCounterLine < 3) {
    o.content = 'foo';
    o.lineNumber = 42;
  }
  buildCounterLine--;
  return o;
}

void checkLine(api.Line o) {
  buildCounterLine++;
  if (buildCounterLine < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lineNumber!,
      unittest.equals(42),
    );
  }
  buildCounterLine--;
}

core.List<api.Environment> buildUnnamed3() => [
      buildEnvironment(),
      buildEnvironment(),
    ];

void checkUnnamed3(core.List<api.Environment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvironment(o[0]);
  checkEnvironment(o[1]);
}

core.int buildCounterListEnvironmentsResponse = 0;
api.ListEnvironmentsResponse buildListEnvironmentsResponse() {
  final o = api.ListEnvironmentsResponse();
  buildCounterListEnvironmentsResponse++;
  if (buildCounterListEnvironmentsResponse < 3) {
    o.environments = buildUnnamed3();
    o.nextPageToken = 'foo';
  }
  buildCounterListEnvironmentsResponse--;
  return o;
}

void checkListEnvironmentsResponse(api.ListEnvironmentsResponse o) {
  buildCounterListEnvironmentsResponse++;
  if (buildCounterListEnvironmentsResponse < 3) {
    checkUnnamed3(o.environments!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListEnvironmentsResponse--;
}

core.List<api.ImageVersion> buildUnnamed4() => [
      buildImageVersion(),
      buildImageVersion(),
    ];

void checkUnnamed4(core.List<api.ImageVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageVersion(o[0]);
  checkImageVersion(o[1]);
}

core.int buildCounterListImageVersionsResponse = 0;
api.ListImageVersionsResponse buildListImageVersionsResponse() {
  final o = api.ListImageVersionsResponse();
  buildCounterListImageVersionsResponse++;
  if (buildCounterListImageVersionsResponse < 3) {
    o.imageVersions = buildUnnamed4();
    o.nextPageToken = 'foo';
  }
  buildCounterListImageVersionsResponse--;
  return o;
}

void checkListImageVersionsResponse(api.ListImageVersionsResponse o) {
  buildCounterListImageVersionsResponse++;
  if (buildCounterListImageVersionsResponse < 3) {
    checkUnnamed4(o.imageVersions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListImageVersionsResponse--;
}

core.List<api.Operation> buildUnnamed5() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed5(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed5();
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
    checkUnnamed5(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.UserWorkloadsConfigMap> buildUnnamed6() => [
      buildUserWorkloadsConfigMap(),
      buildUserWorkloadsConfigMap(),
    ];

void checkUnnamed6(core.List<api.UserWorkloadsConfigMap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserWorkloadsConfigMap(o[0]);
  checkUserWorkloadsConfigMap(o[1]);
}

core.int buildCounterListUserWorkloadsConfigMapsResponse = 0;
api.ListUserWorkloadsConfigMapsResponse
    buildListUserWorkloadsConfigMapsResponse() {
  final o = api.ListUserWorkloadsConfigMapsResponse();
  buildCounterListUserWorkloadsConfigMapsResponse++;
  if (buildCounterListUserWorkloadsConfigMapsResponse < 3) {
    o.nextPageToken = 'foo';
    o.userWorkloadsConfigMaps = buildUnnamed6();
  }
  buildCounterListUserWorkloadsConfigMapsResponse--;
  return o;
}

void checkListUserWorkloadsConfigMapsResponse(
    api.ListUserWorkloadsConfigMapsResponse o) {
  buildCounterListUserWorkloadsConfigMapsResponse++;
  if (buildCounterListUserWorkloadsConfigMapsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.userWorkloadsConfigMaps!);
  }
  buildCounterListUserWorkloadsConfigMapsResponse--;
}

core.List<api.UserWorkloadsSecret> buildUnnamed7() => [
      buildUserWorkloadsSecret(),
      buildUserWorkloadsSecret(),
    ];

void checkUnnamed7(core.List<api.UserWorkloadsSecret> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserWorkloadsSecret(o[0]);
  checkUserWorkloadsSecret(o[1]);
}

core.int buildCounterListUserWorkloadsSecretsResponse = 0;
api.ListUserWorkloadsSecretsResponse buildListUserWorkloadsSecretsResponse() {
  final o = api.ListUserWorkloadsSecretsResponse();
  buildCounterListUserWorkloadsSecretsResponse++;
  if (buildCounterListUserWorkloadsSecretsResponse < 3) {
    o.nextPageToken = 'foo';
    o.userWorkloadsSecrets = buildUnnamed7();
  }
  buildCounterListUserWorkloadsSecretsResponse--;
  return o;
}

void checkListUserWorkloadsSecretsResponse(
    api.ListUserWorkloadsSecretsResponse o) {
  buildCounterListUserWorkloadsSecretsResponse++;
  if (buildCounterListUserWorkloadsSecretsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.userWorkloadsSecrets!);
  }
  buildCounterListUserWorkloadsSecretsResponse--;
}

core.List<api.ComposerWorkload> buildUnnamed8() => [
      buildComposerWorkload(),
      buildComposerWorkload(),
    ];

void checkUnnamed8(core.List<api.ComposerWorkload> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComposerWorkload(o[0]);
  checkComposerWorkload(o[1]);
}

core.int buildCounterListWorkloadsResponse = 0;
api.ListWorkloadsResponse buildListWorkloadsResponse() {
  final o = api.ListWorkloadsResponse();
  buildCounterListWorkloadsResponse++;
  if (buildCounterListWorkloadsResponse < 3) {
    o.nextPageToken = 'foo';
    o.workloads = buildUnnamed8();
  }
  buildCounterListWorkloadsResponse--;
  return o;
}

void checkListWorkloadsResponse(api.ListWorkloadsResponse o) {
  buildCounterListWorkloadsResponse++;
  if (buildCounterListWorkloadsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.workloads!);
  }
  buildCounterListWorkloadsResponse--;
}

core.int buildCounterLoadSnapshotRequest = 0;
api.LoadSnapshotRequest buildLoadSnapshotRequest() {
  final o = api.LoadSnapshotRequest();
  buildCounterLoadSnapshotRequest++;
  if (buildCounterLoadSnapshotRequest < 3) {
    o.skipAirflowOverridesSetting = true;
    o.skipEnvironmentVariablesSetting = true;
    o.skipGcsDataCopying = true;
    o.skipPypiPackagesInstallation = true;
    o.snapshotPath = 'foo';
  }
  buildCounterLoadSnapshotRequest--;
  return o;
}

void checkLoadSnapshotRequest(api.LoadSnapshotRequest o) {
  buildCounterLoadSnapshotRequest++;
  if (buildCounterLoadSnapshotRequest < 3) {
    unittest.expect(o.skipAirflowOverridesSetting!, unittest.isTrue);
    unittest.expect(o.skipEnvironmentVariablesSetting!, unittest.isTrue);
    unittest.expect(o.skipGcsDataCopying!, unittest.isTrue);
    unittest.expect(o.skipPypiPackagesInstallation!, unittest.isTrue);
    unittest.expect(
      o.snapshotPath!,
      unittest.equals('foo'),
    );
  }
  buildCounterLoadSnapshotRequest--;
}

core.int buildCounterMaintenanceWindow = 0;
api.MaintenanceWindow buildMaintenanceWindow() {
  final o = api.MaintenanceWindow();
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    o.endTime = 'foo';
    o.recurrence = 'foo';
    o.startTime = 'foo';
  }
  buildCounterMaintenanceWindow--;
  return o;
}

void checkMaintenanceWindow(api.MaintenanceWindow o) {
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recurrence!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterMaintenanceWindow--;
}

core.List<api.CidrBlock> buildUnnamed9() => [
      buildCidrBlock(),
      buildCidrBlock(),
    ];

void checkUnnamed9(core.List<api.CidrBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCidrBlock(o[0]);
  checkCidrBlock(o[1]);
}

core.int buildCounterMasterAuthorizedNetworksConfig = 0;
api.MasterAuthorizedNetworksConfig buildMasterAuthorizedNetworksConfig() {
  final o = api.MasterAuthorizedNetworksConfig();
  buildCounterMasterAuthorizedNetworksConfig++;
  if (buildCounterMasterAuthorizedNetworksConfig < 3) {
    o.cidrBlocks = buildUnnamed9();
    o.enabled = true;
  }
  buildCounterMasterAuthorizedNetworksConfig--;
  return o;
}

void checkMasterAuthorizedNetworksConfig(api.MasterAuthorizedNetworksConfig o) {
  buildCounterMasterAuthorizedNetworksConfig++;
  if (buildCounterMasterAuthorizedNetworksConfig < 3) {
    checkUnnamed9(o.cidrBlocks!);
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterMasterAuthorizedNetworksConfig--;
}

core.int buildCounterNetworkingConfig = 0;
api.NetworkingConfig buildNetworkingConfig() {
  final o = api.NetworkingConfig();
  buildCounterNetworkingConfig++;
  if (buildCounterNetworkingConfig < 3) {
    o.connectionType = 'foo';
  }
  buildCounterNetworkingConfig--;
  return o;
}

void checkNetworkingConfig(api.NetworkingConfig o) {
  buildCounterNetworkingConfig++;
  if (buildCounterNetworkingConfig < 3) {
    unittest.expect(
      o.connectionType!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkingConfig--;
}

core.List<core.String> buildUnnamed10() => [
      'foo',
      'foo',
    ];

void checkUnnamed10(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed11() => [
      'foo',
      'foo',
    ];

void checkUnnamed11(core.List<core.String> o) {
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

core.int buildCounterNodeConfig = 0;
api.NodeConfig buildNodeConfig() {
  final o = api.NodeConfig();
  buildCounterNodeConfig++;
  if (buildCounterNodeConfig < 3) {
    o.composerInternalIpv4CidrBlock = 'foo';
    o.composerNetworkAttachment = 'foo';
    o.diskSizeGb = 42;
    o.enableIpMasqAgent = true;
    o.ipAllocationPolicy = buildIPAllocationPolicy();
    o.location = 'foo';
    o.machineType = 'foo';
    o.network = 'foo';
    o.oauthScopes = buildUnnamed10();
    o.serviceAccount = 'foo';
    o.subnetwork = 'foo';
    o.tags = buildUnnamed11();
  }
  buildCounterNodeConfig--;
  return o;
}

void checkNodeConfig(api.NodeConfig o) {
  buildCounterNodeConfig++;
  if (buildCounterNodeConfig < 3) {
    unittest.expect(
      o.composerInternalIpv4CidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.composerNetworkAttachment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskSizeGb!,
      unittest.equals(42),
    );
    unittest.expect(o.enableIpMasqAgent!, unittest.isTrue);
    checkIPAllocationPolicy(o.ipAllocationPolicy!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.oauthScopes!);
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.tags!);
  }
  buildCounterNodeConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed12() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed12(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed13() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed13(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed12();
    o.name = 'foo';
    o.response = buildUnnamed13();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed12(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterPollAirflowCommandRequest = 0;
api.PollAirflowCommandRequest buildPollAirflowCommandRequest() {
  final o = api.PollAirflowCommandRequest();
  buildCounterPollAirflowCommandRequest++;
  if (buildCounterPollAirflowCommandRequest < 3) {
    o.executionId = 'foo';
    o.nextLineNumber = 42;
    o.pod = 'foo';
    o.podNamespace = 'foo';
  }
  buildCounterPollAirflowCommandRequest--;
  return o;
}

void checkPollAirflowCommandRequest(api.PollAirflowCommandRequest o) {
  buildCounterPollAirflowCommandRequest++;
  if (buildCounterPollAirflowCommandRequest < 3) {
    unittest.expect(
      o.executionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextLineNumber!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.podNamespace!,
      unittest.equals('foo'),
    );
  }
  buildCounterPollAirflowCommandRequest--;
}

core.List<api.Line> buildUnnamed14() => [
      buildLine(),
      buildLine(),
    ];

void checkUnnamed14(core.List<api.Line> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLine(o[0]);
  checkLine(o[1]);
}

core.int buildCounterPollAirflowCommandResponse = 0;
api.PollAirflowCommandResponse buildPollAirflowCommandResponse() {
  final o = api.PollAirflowCommandResponse();
  buildCounterPollAirflowCommandResponse++;
  if (buildCounterPollAirflowCommandResponse < 3) {
    o.exitInfo = buildExitInfo();
    o.output = buildUnnamed14();
    o.outputEnd = true;
  }
  buildCounterPollAirflowCommandResponse--;
  return o;
}

void checkPollAirflowCommandResponse(api.PollAirflowCommandResponse o) {
  buildCounterPollAirflowCommandResponse++;
  if (buildCounterPollAirflowCommandResponse < 3) {
    checkExitInfo(o.exitInfo!);
    checkUnnamed14(o.output!);
    unittest.expect(o.outputEnd!, unittest.isTrue);
  }
  buildCounterPollAirflowCommandResponse--;
}

core.int buildCounterPrivateClusterConfig = 0;
api.PrivateClusterConfig buildPrivateClusterConfig() {
  final o = api.PrivateClusterConfig();
  buildCounterPrivateClusterConfig++;
  if (buildCounterPrivateClusterConfig < 3) {
    o.enablePrivateEndpoint = true;
    o.masterIpv4CidrBlock = 'foo';
    o.masterIpv4ReservedRange = 'foo';
  }
  buildCounterPrivateClusterConfig--;
  return o;
}

void checkPrivateClusterConfig(api.PrivateClusterConfig o) {
  buildCounterPrivateClusterConfig++;
  if (buildCounterPrivateClusterConfig < 3) {
    unittest.expect(o.enablePrivateEndpoint!, unittest.isTrue);
    unittest.expect(
      o.masterIpv4CidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.masterIpv4ReservedRange!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrivateClusterConfig--;
}

core.int buildCounterPrivateEnvironmentConfig = 0;
api.PrivateEnvironmentConfig buildPrivateEnvironmentConfig() {
  final o = api.PrivateEnvironmentConfig();
  buildCounterPrivateEnvironmentConfig++;
  if (buildCounterPrivateEnvironmentConfig < 3) {
    o.cloudComposerConnectionSubnetwork = 'foo';
    o.cloudComposerNetworkIpv4CidrBlock = 'foo';
    o.cloudComposerNetworkIpv4ReservedRange = 'foo';
    o.cloudSqlIpv4CidrBlock = 'foo';
    o.enablePrivateBuildsOnly = true;
    o.enablePrivateEnvironment = true;
    o.enablePrivatelyUsedPublicIps = true;
    o.networkingConfig = buildNetworkingConfig();
    o.privateClusterConfig = buildPrivateClusterConfig();
    o.webServerIpv4CidrBlock = 'foo';
    o.webServerIpv4ReservedRange = 'foo';
  }
  buildCounterPrivateEnvironmentConfig--;
  return o;
}

void checkPrivateEnvironmentConfig(api.PrivateEnvironmentConfig o) {
  buildCounterPrivateEnvironmentConfig++;
  if (buildCounterPrivateEnvironmentConfig < 3) {
    unittest.expect(
      o.cloudComposerConnectionSubnetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cloudComposerNetworkIpv4CidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cloudComposerNetworkIpv4ReservedRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cloudSqlIpv4CidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enablePrivateBuildsOnly!, unittest.isTrue);
    unittest.expect(o.enablePrivateEnvironment!, unittest.isTrue);
    unittest.expect(o.enablePrivatelyUsedPublicIps!, unittest.isTrue);
    checkNetworkingConfig(o.networkingConfig!);
    checkPrivateClusterConfig(o.privateClusterConfig!);
    unittest.expect(
      o.webServerIpv4CidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webServerIpv4ReservedRange!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrivateEnvironmentConfig--;
}

core.int buildCounterRecoveryConfig = 0;
api.RecoveryConfig buildRecoveryConfig() {
  final o = api.RecoveryConfig();
  buildCounterRecoveryConfig++;
  if (buildCounterRecoveryConfig < 3) {
    o.scheduledSnapshotsConfig = buildScheduledSnapshotsConfig();
  }
  buildCounterRecoveryConfig--;
  return o;
}

void checkRecoveryConfig(api.RecoveryConfig o) {
  buildCounterRecoveryConfig++;
  if (buildCounterRecoveryConfig < 3) {
    checkScheduledSnapshotsConfig(o.scheduledSnapshotsConfig!);
  }
  buildCounterRecoveryConfig--;
}

core.int buildCounterSaveSnapshotRequest = 0;
api.SaveSnapshotRequest buildSaveSnapshotRequest() {
  final o = api.SaveSnapshotRequest();
  buildCounterSaveSnapshotRequest++;
  if (buildCounterSaveSnapshotRequest < 3) {
    o.snapshotLocation = 'foo';
  }
  buildCounterSaveSnapshotRequest--;
  return o;
}

void checkSaveSnapshotRequest(api.SaveSnapshotRequest o) {
  buildCounterSaveSnapshotRequest++;
  if (buildCounterSaveSnapshotRequest < 3) {
    unittest.expect(
      o.snapshotLocation!,
      unittest.equals('foo'),
    );
  }
  buildCounterSaveSnapshotRequest--;
}

core.int buildCounterScheduledSnapshotsConfig = 0;
api.ScheduledSnapshotsConfig buildScheduledSnapshotsConfig() {
  final o = api.ScheduledSnapshotsConfig();
  buildCounterScheduledSnapshotsConfig++;
  if (buildCounterScheduledSnapshotsConfig < 3) {
    o.enabled = true;
    o.snapshotCreationSchedule = 'foo';
    o.snapshotLocation = 'foo';
    o.timeZone = 'foo';
  }
  buildCounterScheduledSnapshotsConfig--;
  return o;
}

void checkScheduledSnapshotsConfig(api.ScheduledSnapshotsConfig o) {
  buildCounterScheduledSnapshotsConfig++;
  if (buildCounterScheduledSnapshotsConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.snapshotCreationSchedule!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.snapshotLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterScheduledSnapshotsConfig--;
}

core.int buildCounterSchedulerResource = 0;
api.SchedulerResource buildSchedulerResource() {
  final o = api.SchedulerResource();
  buildCounterSchedulerResource++;
  if (buildCounterSchedulerResource < 3) {
    o.count = 42;
    o.cpu = 42.0;
    o.memoryGb = 42.0;
    o.storageGb = 42.0;
  }
  buildCounterSchedulerResource--;
  return o;
}

void checkSchedulerResource(api.SchedulerResource o) {
  buildCounterSchedulerResource++;
  if (buildCounterSchedulerResource < 3) {
    unittest.expect(
      o.count!,
      unittest.equals(42),
    );
    unittest.expect(
      o.cpu!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.memoryGb!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.storageGb!,
      unittest.equals(42.0),
    );
  }
  buildCounterSchedulerResource--;
}

core.Map<core.String, core.String> buildUnnamed15() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed15(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed16() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed16(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed17() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed17(core.Map<core.String, core.String> o) {
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

core.int buildCounterSoftwareConfig = 0;
api.SoftwareConfig buildSoftwareConfig() {
  final o = api.SoftwareConfig();
  buildCounterSoftwareConfig++;
  if (buildCounterSoftwareConfig < 3) {
    o.airflowConfigOverrides = buildUnnamed15();
    o.cloudDataLineageIntegration = buildCloudDataLineageIntegration();
    o.envVariables = buildUnnamed16();
    o.imageVersion = 'foo';
    o.pypiPackages = buildUnnamed17();
    o.pythonVersion = 'foo';
    o.schedulerCount = 42;
    o.webServerPluginsMode = 'foo';
  }
  buildCounterSoftwareConfig--;
  return o;
}

void checkSoftwareConfig(api.SoftwareConfig o) {
  buildCounterSoftwareConfig++;
  if (buildCounterSoftwareConfig < 3) {
    checkUnnamed15(o.airflowConfigOverrides!);
    checkCloudDataLineageIntegration(o.cloudDataLineageIntegration!);
    checkUnnamed16(o.envVariables!);
    unittest.expect(
      o.imageVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.pypiPackages!);
    unittest.expect(
      o.pythonVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.schedulerCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.webServerPluginsMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterSoftwareConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed18() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed18(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed19() => [
      buildUnnamed18(),
      buildUnnamed18(),
    ];

void checkUnnamed19(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed18(o[0]);
  checkUnnamed18(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed19();
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
    checkUnnamed19(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterStopAirflowCommandRequest = 0;
api.StopAirflowCommandRequest buildStopAirflowCommandRequest() {
  final o = api.StopAirflowCommandRequest();
  buildCounterStopAirflowCommandRequest++;
  if (buildCounterStopAirflowCommandRequest < 3) {
    o.executionId = 'foo';
    o.force = true;
    o.pod = 'foo';
    o.podNamespace = 'foo';
  }
  buildCounterStopAirflowCommandRequest--;
  return o;
}

void checkStopAirflowCommandRequest(api.StopAirflowCommandRequest o) {
  buildCounterStopAirflowCommandRequest++;
  if (buildCounterStopAirflowCommandRequest < 3) {
    unittest.expect(
      o.executionId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.force!, unittest.isTrue);
    unittest.expect(
      o.pod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.podNamespace!,
      unittest.equals('foo'),
    );
  }
  buildCounterStopAirflowCommandRequest--;
}

core.List<core.String> buildUnnamed20() => [
      'foo',
      'foo',
    ];

void checkUnnamed20(core.List<core.String> o) {
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

core.int buildCounterStopAirflowCommandResponse = 0;
api.StopAirflowCommandResponse buildStopAirflowCommandResponse() {
  final o = api.StopAirflowCommandResponse();
  buildCounterStopAirflowCommandResponse++;
  if (buildCounterStopAirflowCommandResponse < 3) {
    o.isDone = true;
    o.output = buildUnnamed20();
  }
  buildCounterStopAirflowCommandResponse--;
  return o;
}

void checkStopAirflowCommandResponse(api.StopAirflowCommandResponse o) {
  buildCounterStopAirflowCommandResponse++;
  if (buildCounterStopAirflowCommandResponse < 3) {
    unittest.expect(o.isDone!, unittest.isTrue);
    checkUnnamed20(o.output!);
  }
  buildCounterStopAirflowCommandResponse--;
}

core.int buildCounterStorageConfig = 0;
api.StorageConfig buildStorageConfig() {
  final o = api.StorageConfig();
  buildCounterStorageConfig++;
  if (buildCounterStorageConfig < 3) {
    o.bucket = 'foo';
  }
  buildCounterStorageConfig--;
  return o;
}

void checkStorageConfig(api.StorageConfig o) {
  buildCounterStorageConfig++;
  if (buildCounterStorageConfig < 3) {
    unittest.expect(
      o.bucket!,
      unittest.equals('foo'),
    );
  }
  buildCounterStorageConfig--;
}

core.int buildCounterTaskLogsRetentionConfig = 0;
api.TaskLogsRetentionConfig buildTaskLogsRetentionConfig() {
  final o = api.TaskLogsRetentionConfig();
  buildCounterTaskLogsRetentionConfig++;
  if (buildCounterTaskLogsRetentionConfig < 3) {
    o.storageMode = 'foo';
  }
  buildCounterTaskLogsRetentionConfig--;
  return o;
}

void checkTaskLogsRetentionConfig(api.TaskLogsRetentionConfig o) {
  buildCounterTaskLogsRetentionConfig++;
  if (buildCounterTaskLogsRetentionConfig < 3) {
    unittest.expect(
      o.storageMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterTaskLogsRetentionConfig--;
}

core.int buildCounterTriggererResource = 0;
api.TriggererResource buildTriggererResource() {
  final o = api.TriggererResource();
  buildCounterTriggererResource++;
  if (buildCounterTriggererResource < 3) {
    o.count = 42;
    o.cpu = 42.0;
    o.memoryGb = 42.0;
  }
  buildCounterTriggererResource--;
  return o;
}

void checkTriggererResource(api.TriggererResource o) {
  buildCounterTriggererResource++;
  if (buildCounterTriggererResource < 3) {
    unittest.expect(
      o.count!,
      unittest.equals(42),
    );
    unittest.expect(
      o.cpu!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.memoryGb!,
      unittest.equals(42.0),
    );
  }
  buildCounterTriggererResource--;
}

core.Map<core.String, core.String> buildUnnamed21() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed21(core.Map<core.String, core.String> o) {
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

core.int buildCounterUserWorkloadsConfigMap = 0;
api.UserWorkloadsConfigMap buildUserWorkloadsConfigMap() {
  final o = api.UserWorkloadsConfigMap();
  buildCounterUserWorkloadsConfigMap++;
  if (buildCounterUserWorkloadsConfigMap < 3) {
    o.data = buildUnnamed21();
    o.name = 'foo';
  }
  buildCounterUserWorkloadsConfigMap--;
  return o;
}

void checkUserWorkloadsConfigMap(api.UserWorkloadsConfigMap o) {
  buildCounterUserWorkloadsConfigMap++;
  if (buildCounterUserWorkloadsConfigMap < 3) {
    checkUnnamed21(o.data!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserWorkloadsConfigMap--;
}

core.Map<core.String, core.String> buildUnnamed22() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed22(core.Map<core.String, core.String> o) {
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

core.int buildCounterUserWorkloadsSecret = 0;
api.UserWorkloadsSecret buildUserWorkloadsSecret() {
  final o = api.UserWorkloadsSecret();
  buildCounterUserWorkloadsSecret++;
  if (buildCounterUserWorkloadsSecret < 3) {
    o.data = buildUnnamed22();
    o.name = 'foo';
  }
  buildCounterUserWorkloadsSecret--;
  return o;
}

void checkUserWorkloadsSecret(api.UserWorkloadsSecret o) {
  buildCounterUserWorkloadsSecret++;
  if (buildCounterUserWorkloadsSecret < 3) {
    checkUnnamed22(o.data!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserWorkloadsSecret--;
}

core.int buildCounterWebServerConfig = 0;
api.WebServerConfig buildWebServerConfig() {
  final o = api.WebServerConfig();
  buildCounterWebServerConfig++;
  if (buildCounterWebServerConfig < 3) {
    o.machineType = 'foo';
  }
  buildCounterWebServerConfig--;
  return o;
}

void checkWebServerConfig(api.WebServerConfig o) {
  buildCounterWebServerConfig++;
  if (buildCounterWebServerConfig < 3) {
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebServerConfig--;
}

core.List<api.AllowedIpRange> buildUnnamed23() => [
      buildAllowedIpRange(),
      buildAllowedIpRange(),
    ];

void checkUnnamed23(core.List<api.AllowedIpRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAllowedIpRange(o[0]);
  checkAllowedIpRange(o[1]);
}

core.int buildCounterWebServerNetworkAccessControl = 0;
api.WebServerNetworkAccessControl buildWebServerNetworkAccessControl() {
  final o = api.WebServerNetworkAccessControl();
  buildCounterWebServerNetworkAccessControl++;
  if (buildCounterWebServerNetworkAccessControl < 3) {
    o.allowedIpRanges = buildUnnamed23();
  }
  buildCounterWebServerNetworkAccessControl--;
  return o;
}

void checkWebServerNetworkAccessControl(api.WebServerNetworkAccessControl o) {
  buildCounterWebServerNetworkAccessControl++;
  if (buildCounterWebServerNetworkAccessControl < 3) {
    checkUnnamed23(o.allowedIpRanges!);
  }
  buildCounterWebServerNetworkAccessControl--;
}

core.int buildCounterWebServerResource = 0;
api.WebServerResource buildWebServerResource() {
  final o = api.WebServerResource();
  buildCounterWebServerResource++;
  if (buildCounterWebServerResource < 3) {
    o.cpu = 42.0;
    o.memoryGb = 42.0;
    o.storageGb = 42.0;
  }
  buildCounterWebServerResource--;
  return o;
}

void checkWebServerResource(api.WebServerResource o) {
  buildCounterWebServerResource++;
  if (buildCounterWebServerResource < 3) {
    unittest.expect(
      o.cpu!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.memoryGb!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.storageGb!,
      unittest.equals(42.0),
    );
  }
  buildCounterWebServerResource--;
}

core.int buildCounterWorkerResource = 0;
api.WorkerResource buildWorkerResource() {
  final o = api.WorkerResource();
  buildCounterWorkerResource++;
  if (buildCounterWorkerResource < 3) {
    o.cpu = 42.0;
    o.maxCount = 42;
    o.memoryGb = 42.0;
    o.minCount = 42;
    o.storageGb = 42.0;
  }
  buildCounterWorkerResource--;
  return o;
}

void checkWorkerResource(api.WorkerResource o) {
  buildCounterWorkerResource++;
  if (buildCounterWorkerResource < 3) {
    unittest.expect(
      o.cpu!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.maxCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.memoryGb!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.minCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.storageGb!,
      unittest.equals(42.0),
    );
  }
  buildCounterWorkerResource--;
}

core.int buildCounterWorkloadsConfig = 0;
api.WorkloadsConfig buildWorkloadsConfig() {
  final o = api.WorkloadsConfig();
  buildCounterWorkloadsConfig++;
  if (buildCounterWorkloadsConfig < 3) {
    o.dagProcessor = buildDagProcessorResource();
    o.scheduler = buildSchedulerResource();
    o.triggerer = buildTriggererResource();
    o.webServer = buildWebServerResource();
    o.worker = buildWorkerResource();
  }
  buildCounterWorkloadsConfig--;
  return o;
}

void checkWorkloadsConfig(api.WorkloadsConfig o) {
  buildCounterWorkloadsConfig++;
  if (buildCounterWorkloadsConfig < 3) {
    checkDagProcessorResource(o.dagProcessor!);
    checkSchedulerResource(o.scheduler!);
    checkTriggererResource(o.triggerer!);
    checkWebServerResource(o.webServer!);
    checkWorkerResource(o.worker!);
  }
  buildCounterWorkloadsConfig--;
}

void main() {
  unittest.group('obj-schema-AirflowMetadataRetentionPolicyConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAirflowMetadataRetentionPolicyConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AirflowMetadataRetentionPolicyConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAirflowMetadataRetentionPolicyConfig(od);
    });
  });

  unittest.group('obj-schema-AllowedIpRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAllowedIpRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AllowedIpRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAllowedIpRange(od);
    });
  });

  unittest.group('obj-schema-CidrBlock', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCidrBlock();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CidrBlock.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCidrBlock(od);
    });
  });

  unittest.group('obj-schema-CloudDataLineageIntegration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudDataLineageIntegration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudDataLineageIntegration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudDataLineageIntegration(od);
    });
  });

  unittest.group('obj-schema-ComposerWorkload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComposerWorkload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComposerWorkload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComposerWorkload(od);
    });
  });

  unittest.group('obj-schema-ComposerWorkloadStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComposerWorkloadStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComposerWorkloadStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComposerWorkloadStatus(od);
    });
  });

  unittest.group('obj-schema-DagProcessorResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDagProcessorResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DagProcessorResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDagProcessorResource(od);
    });
  });

  unittest.group('obj-schema-DataRetentionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataRetentionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataRetentionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataRetentionConfig(od);
    });
  });

  unittest.group('obj-schema-DatabaseConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatabaseConfig(od);
    });
  });

  unittest.group('obj-schema-DatabaseFailoverRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseFailoverRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseFailoverRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatabaseFailoverRequest(od);
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

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-EncryptionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryptionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncryptionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEncryptionConfig(od);
    });
  });

  unittest.group('obj-schema-Environment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvironment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Environment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnvironment(od);
    });
  });

  unittest.group('obj-schema-EnvironmentConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvironmentConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnvironmentConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnvironmentConfig(od);
    });
  });

  unittest.group('obj-schema-ExecuteAirflowCommandRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecuteAirflowCommandRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecuteAirflowCommandRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExecuteAirflowCommandRequest(od);
    });
  });

  unittest.group('obj-schema-ExecuteAirflowCommandResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecuteAirflowCommandResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecuteAirflowCommandResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExecuteAirflowCommandResponse(od);
    });
  });

  unittest.group('obj-schema-ExitInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExitInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ExitInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExitInfo(od);
    });
  });

  unittest.group('obj-schema-FetchDatabasePropertiesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchDatabasePropertiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchDatabasePropertiesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchDatabasePropertiesResponse(od);
    });
  });

  unittest.group('obj-schema-IPAllocationPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIPAllocationPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IPAllocationPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIPAllocationPolicy(od);
    });
  });

  unittest.group('obj-schema-ImageVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImageVersion(od);
    });
  });

  unittest.group('obj-schema-Line', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Line.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLine(od);
    });
  });

  unittest.group('obj-schema-ListEnvironmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEnvironmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEnvironmentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListEnvironmentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListImageVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListImageVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListImageVersionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListImageVersionsResponse(od);
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

  unittest.group('obj-schema-ListUserWorkloadsConfigMapsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUserWorkloadsConfigMapsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUserWorkloadsConfigMapsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListUserWorkloadsConfigMapsResponse(od);
    });
  });

  unittest.group('obj-schema-ListUserWorkloadsSecretsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUserWorkloadsSecretsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUserWorkloadsSecretsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListUserWorkloadsSecretsResponse(od);
    });
  });

  unittest.group('obj-schema-ListWorkloadsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWorkloadsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWorkloadsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListWorkloadsResponse(od);
    });
  });

  unittest.group('obj-schema-LoadSnapshotRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoadSnapshotRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoadSnapshotRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLoadSnapshotRequest(od);
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

  unittest.group('obj-schema-MasterAuthorizedNetworksConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMasterAuthorizedNetworksConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MasterAuthorizedNetworksConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMasterAuthorizedNetworksConfig(od);
    });
  });

  unittest.group('obj-schema-NetworkingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkingConfig(od);
    });
  });

  unittest.group('obj-schema-NodeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NodeConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNodeConfig(od);
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

  unittest.group('obj-schema-PollAirflowCommandRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPollAirflowCommandRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PollAirflowCommandRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPollAirflowCommandRequest(od);
    });
  });

  unittest.group('obj-schema-PollAirflowCommandResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPollAirflowCommandResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PollAirflowCommandResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPollAirflowCommandResponse(od);
    });
  });

  unittest.group('obj-schema-PrivateClusterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrivateClusterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrivateClusterConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrivateClusterConfig(od);
    });
  });

  unittest.group('obj-schema-PrivateEnvironmentConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrivateEnvironmentConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrivateEnvironmentConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrivateEnvironmentConfig(od);
    });
  });

  unittest.group('obj-schema-RecoveryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecoveryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RecoveryConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRecoveryConfig(od);
    });
  });

  unittest.group('obj-schema-SaveSnapshotRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSaveSnapshotRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SaveSnapshotRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSaveSnapshotRequest(od);
    });
  });

  unittest.group('obj-schema-ScheduledSnapshotsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScheduledSnapshotsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScheduledSnapshotsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScheduledSnapshotsConfig(od);
    });
  });

  unittest.group('obj-schema-SchedulerResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchedulerResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchedulerResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSchedulerResource(od);
    });
  });

  unittest.group('obj-schema-SoftwareConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoftwareConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoftwareConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSoftwareConfig(od);
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

  unittest.group('obj-schema-StopAirflowCommandRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopAirflowCommandRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopAirflowCommandRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStopAirflowCommandRequest(od);
    });
  });

  unittest.group('obj-schema-StopAirflowCommandResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopAirflowCommandResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopAirflowCommandResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStopAirflowCommandResponse(od);
    });
  });

  unittest.group('obj-schema-StorageConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStorageConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StorageConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStorageConfig(od);
    });
  });

  unittest.group('obj-schema-TaskLogsRetentionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskLogsRetentionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TaskLogsRetentionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTaskLogsRetentionConfig(od);
    });
  });

  unittest.group('obj-schema-TriggererResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTriggererResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TriggererResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTriggererResource(od);
    });
  });

  unittest.group('obj-schema-UserWorkloadsConfigMap', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserWorkloadsConfigMap();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserWorkloadsConfigMap.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserWorkloadsConfigMap(od);
    });
  });

  unittest.group('obj-schema-UserWorkloadsSecret', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserWorkloadsSecret();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserWorkloadsSecret.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserWorkloadsSecret(od);
    });
  });

  unittest.group('obj-schema-WebServerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebServerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WebServerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWebServerConfig(od);
    });
  });

  unittest.group('obj-schema-WebServerNetworkAccessControl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebServerNetworkAccessControl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WebServerNetworkAccessControl.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWebServerNetworkAccessControl(od);
    });
  });

  unittest.group('obj-schema-WebServerResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebServerResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WebServerResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWebServerResource(od);
    });
  });

  unittest.group('obj-schema-WorkerResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkerResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkerResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkerResource(od);
    });
  });

  unittest.group('obj-schema-WorkloadsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkloadsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkloadsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkloadsConfig(od);
    });
  });

  unittest.group('resource-ProjectsLocationsEnvironmentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudComposerApi(mock).projects.locations.environments;
      final arg_request = buildEnvironment();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Environment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnvironment(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--databaseFailover', () async {
      final mock = HttpServerMock();
      final res = api.CloudComposerApi(mock).projects.locations.environments;
      final arg_request = buildDatabaseFailoverRequest();
      final arg_environment = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DatabaseFailoverRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDatabaseFailoverRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.databaseFailover(arg_request, arg_environment,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudComposerApi(mock).projects.locations.environments;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--executeAirflowCommand', () async {
      final mock = HttpServerMock();
      final res = api.CloudComposerApi(mock).projects.locations.environments;
      final arg_request = buildExecuteAirflowCommandRequest();
      final arg_environment = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExecuteAirflowCommandRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExecuteAirflowCommandRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildExecuteAirflowCommandResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.executeAirflowCommand(
          arg_request, arg_environment,
          $fields: arg_$fields);
      checkExecuteAirflowCommandResponse(
          response as api.ExecuteAirflowCommandResponse);
    });

    unittest.test('method--fetchDatabaseProperties', () async {
      final mock = HttpServerMock();
      final res = api.CloudComposerApi(mock).projects.locations.environments;
      final arg_environment = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildFetchDatabasePropertiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetchDatabaseProperties(arg_environment,
          $fields: arg_$fields);
      checkFetchDatabasePropertiesResponse(
          response as api.FetchDatabasePropertiesResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudComposerApi(mock).projects.locations.environments;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEnvironment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkEnvironment(response as api.Environment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudComposerApi(mock).projects.locations.environments;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
        final resp = convert.json.encode(buildListEnvironmentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListEnvironmentsResponse(response as api.ListEnvironmentsResponse);
    });

    unittest.test('method--loadSnapshot', () async {
      final mock = HttpServerMock();
      final res = api.CloudComposerApi(mock).projects.locations.environments;
      final arg_request = buildLoadSnapshotRequest();
      final arg_environment = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LoadSnapshotRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLoadSnapshotRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.loadSnapshot(arg_request, arg_environment,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudComposerApi(mock).projects.locations.environments;
      final arg_request = buildEnvironment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Environment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnvironment(obj);

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

    unittest.test('method--pollAirflowCommand', () async {
      final mock = HttpServerMock();
      final res = api.CloudComposerApi(mock).projects.locations.environments;
      final arg_request = buildPollAirflowCommandRequest();
      final arg_environment = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PollAirflowCommandRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPollAirflowCommandRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPollAirflowCommandResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.pollAirflowCommand(
          arg_request, arg_environment,
          $fields: arg_$fields);
      checkPollAirflowCommandResponse(
          response as api.PollAirflowCommandResponse);
    });

    unittest.test('method--saveSnapshot', () async {
      final mock = HttpServerMock();
      final res = api.CloudComposerApi(mock).projects.locations.environments;
      final arg_request = buildSaveSnapshotRequest();
      final arg_environment = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SaveSnapshotRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSaveSnapshotRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.saveSnapshot(arg_request, arg_environment,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--stopAirflowCommand', () async {
      final mock = HttpServerMock();
      final res = api.CloudComposerApi(mock).projects.locations.environments;
      final arg_request = buildStopAirflowCommandRequest();
      final arg_environment = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StopAirflowCommandRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStopAirflowCommandRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildStopAirflowCommandResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.stopAirflowCommand(
          arg_request, arg_environment,
          $fields: arg_$fields);
      checkStopAirflowCommandResponse(
          response as api.StopAirflowCommandResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsEnvironmentsUserWorkloadsConfigMapsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudComposerApi(mock)
          .projects
          .locations
          .environments
          .userWorkloadsConfigMaps;
      final arg_request = buildUserWorkloadsConfigMap();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UserWorkloadsConfigMap.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUserWorkloadsConfigMap(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUserWorkloadsConfigMap());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkUserWorkloadsConfigMap(response as api.UserWorkloadsConfigMap);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudComposerApi(mock)
          .projects
          .locations
          .environments
          .userWorkloadsConfigMaps;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
      final res = api.CloudComposerApi(mock)
          .projects
          .locations
          .environments
          .userWorkloadsConfigMaps;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUserWorkloadsConfigMap());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkUserWorkloadsConfigMap(response as api.UserWorkloadsConfigMap);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudComposerApi(mock)
          .projects
          .locations
          .environments
          .userWorkloadsConfigMaps;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
        final resp =
            convert.json.encode(buildListUserWorkloadsConfigMapsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListUserWorkloadsConfigMapsResponse(
          response as api.ListUserWorkloadsConfigMapsResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.CloudComposerApi(mock)
          .projects
          .locations
          .environments
          .userWorkloadsConfigMaps;
      final arg_request = buildUserWorkloadsConfigMap();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UserWorkloadsConfigMap.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUserWorkloadsConfigMap(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUserWorkloadsConfigMap());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_name, $fields: arg_$fields);
      checkUserWorkloadsConfigMap(response as api.UserWorkloadsConfigMap);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsEnvironmentsUserWorkloadsSecretsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudComposerApi(mock)
          .projects
          .locations
          .environments
          .userWorkloadsSecrets;
      final arg_request = buildUserWorkloadsSecret();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UserWorkloadsSecret.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUserWorkloadsSecret(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUserWorkloadsSecret());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkUserWorkloadsSecret(response as api.UserWorkloadsSecret);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudComposerApi(mock)
          .projects
          .locations
          .environments
          .userWorkloadsSecrets;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
      final res = api.CloudComposerApi(mock)
          .projects
          .locations
          .environments
          .userWorkloadsSecrets;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUserWorkloadsSecret());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkUserWorkloadsSecret(response as api.UserWorkloadsSecret);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudComposerApi(mock)
          .projects
          .locations
          .environments
          .userWorkloadsSecrets;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
        final resp =
            convert.json.encode(buildListUserWorkloadsSecretsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListUserWorkloadsSecretsResponse(
          response as api.ListUserWorkloadsSecretsResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.CloudComposerApi(mock)
          .projects
          .locations
          .environments
          .userWorkloadsSecrets;
      final arg_request = buildUserWorkloadsSecret();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UserWorkloadsSecret.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUserWorkloadsSecret(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUserWorkloadsSecret());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_name, $fields: arg_$fields);
      checkUserWorkloadsSecret(response as api.UserWorkloadsSecret);
    });
  });

  unittest.group('resource-ProjectsLocationsEnvironmentsWorkloadsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudComposerApi(mock).projects.locations.environments.workloads;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListWorkloadsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListWorkloadsResponse(response as api.ListWorkloadsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsImageVersionsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudComposerApi(mock).projects.locations.imageVersions;
      final arg_parent = 'foo';
      final arg_includePastReleases = true;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['includePastReleases']!.first,
          unittest.equals('$arg_includePastReleases'),
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
        final resp = convert.json.encode(buildListImageVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          includePastReleases: arg_includePastReleases,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListImageVersionsResponse(response as api.ListImageVersionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudComposerApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
      final res = api.CloudComposerApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
      final res = api.CloudComposerApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
