// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis_beta/datamigration/v1beta1.dart' as api;

import '../test_shared.dart';

core.List<api.AuditLogConfig> buildUnnamed6752() {
  var o = <api.AuditLogConfig>[];
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

void checkUnnamed6752(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0] as api.AuditLogConfig);
  checkAuditLogConfig(o[1] as api.AuditLogConfig);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  var o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed6752();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed6752(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed6753() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6753(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  var o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed6753();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed6753(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.List<core.String> buildUnnamed6754() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6754(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  var o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed6754();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition as api.Expr);
    checkUnnamed6754(o.members);
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

core.int buildCounterCloudSqlConnectionProfile = 0;
api.CloudSqlConnectionProfile buildCloudSqlConnectionProfile() {
  var o = api.CloudSqlConnectionProfile();
  buildCounterCloudSqlConnectionProfile++;
  if (buildCounterCloudSqlConnectionProfile < 3) {
    o.cloudSqlId = 'foo';
    o.privateIp = 'foo';
    o.publicIp = 'foo';
    o.settings = buildCloudSqlSettings();
  }
  buildCounterCloudSqlConnectionProfile--;
  return o;
}

void checkCloudSqlConnectionProfile(api.CloudSqlConnectionProfile o) {
  buildCounterCloudSqlConnectionProfile++;
  if (buildCounterCloudSqlConnectionProfile < 3) {
    unittest.expect(o.cloudSqlId, unittest.equals('foo'));
    unittest.expect(o.privateIp, unittest.equals('foo'));
    unittest.expect(o.publicIp, unittest.equals('foo'));
    checkCloudSqlSettings(o.settings as api.CloudSqlSettings);
  }
  buildCounterCloudSqlConnectionProfile--;
}

core.Map<core.String, core.String> buildUnnamed6755() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6755(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed6756() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6756(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterCloudSqlSettings = 0;
api.CloudSqlSettings buildCloudSqlSettings() {
  var o = api.CloudSqlSettings();
  buildCounterCloudSqlSettings++;
  if (buildCounterCloudSqlSettings < 3) {
    o.activationPolicy = 'foo';
    o.autoStorageIncrease = true;
    o.dataDiskSizeGb = 'foo';
    o.dataDiskType = 'foo';
    o.databaseFlags = buildUnnamed6755();
    o.databaseVersion = 'foo';
    o.ipConfig = buildSqlIpConfig();
    o.rootPassword = 'foo';
    o.rootPasswordSet = true;
    o.sourceId = 'foo';
    o.storageAutoResizeLimit = 'foo';
    o.tier = 'foo';
    o.userLabels = buildUnnamed6756();
    o.zone = 'foo';
  }
  buildCounterCloudSqlSettings--;
  return o;
}

void checkCloudSqlSettings(api.CloudSqlSettings o) {
  buildCounterCloudSqlSettings++;
  if (buildCounterCloudSqlSettings < 3) {
    unittest.expect(o.activationPolicy, unittest.equals('foo'));
    unittest.expect(o.autoStorageIncrease, unittest.isTrue);
    unittest.expect(o.dataDiskSizeGb, unittest.equals('foo'));
    unittest.expect(o.dataDiskType, unittest.equals('foo'));
    checkUnnamed6755(o.databaseFlags);
    unittest.expect(o.databaseVersion, unittest.equals('foo'));
    checkSqlIpConfig(o.ipConfig as api.SqlIpConfig);
    unittest.expect(o.rootPassword, unittest.equals('foo'));
    unittest.expect(o.rootPasswordSet, unittest.isTrue);
    unittest.expect(o.sourceId, unittest.equals('foo'));
    unittest.expect(o.storageAutoResizeLimit, unittest.equals('foo'));
    unittest.expect(o.tier, unittest.equals('foo'));
    checkUnnamed6756(o.userLabels);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterCloudSqlSettings--;
}

core.Map<core.String, core.String> buildUnnamed6757() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6757(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterConnectionProfile = 0;
api.ConnectionProfile buildConnectionProfile() {
  var o = api.ConnectionProfile();
  buildCounterConnectionProfile++;
  if (buildCounterConnectionProfile < 3) {
    o.cloudsql = buildCloudSqlConnectionProfile();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.error = buildStatus();
    o.labels = buildUnnamed6757();
    o.mysql = buildMySqlConnectionProfile();
    o.name = 'foo';
    o.provider = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterConnectionProfile--;
  return o;
}

void checkConnectionProfile(api.ConnectionProfile o) {
  buildCounterConnectionProfile++;
  if (buildCounterConnectionProfile < 3) {
    checkCloudSqlConnectionProfile(o.cloudsql as api.CloudSqlConnectionProfile);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkStatus(o.error as api.Status);
    checkUnnamed6757(o.labels);
    checkMySqlConnectionProfile(o.mysql as api.MySqlConnectionProfile);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.provider, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterConnectionProfile--;
}

core.int buildCounterDatabaseType = 0;
api.DatabaseType buildDatabaseType() {
  var o = api.DatabaseType();
  buildCounterDatabaseType++;
  if (buildCounterDatabaseType < 3) {
    o.engine = 'foo';
    o.provider = 'foo';
  }
  buildCounterDatabaseType--;
  return o;
}

void checkDatabaseType(api.DatabaseType o) {
  buildCounterDatabaseType++;
  if (buildCounterDatabaseType < 3) {
    unittest.expect(o.engine, unittest.equals('foo'));
    unittest.expect(o.provider, unittest.equals('foo'));
  }
  buildCounterDatabaseType--;
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

core.int buildCounterGenerateSshScriptRequest = 0;
api.GenerateSshScriptRequest buildGenerateSshScriptRequest() {
  var o = api.GenerateSshScriptRequest();
  buildCounterGenerateSshScriptRequest++;
  if (buildCounterGenerateSshScriptRequest < 3) {
    o.vm = 'foo';
    o.vmCreationConfig = buildVmCreationConfig();
    o.vmPort = 42;
    o.vmSelectionConfig = buildVmSelectionConfig();
  }
  buildCounterGenerateSshScriptRequest--;
  return o;
}

void checkGenerateSshScriptRequest(api.GenerateSshScriptRequest o) {
  buildCounterGenerateSshScriptRequest++;
  if (buildCounterGenerateSshScriptRequest < 3) {
    unittest.expect(o.vm, unittest.equals('foo'));
    checkVmCreationConfig(o.vmCreationConfig as api.VmCreationConfig);
    unittest.expect(o.vmPort, unittest.equals(42));
    checkVmSelectionConfig(o.vmSelectionConfig as api.VmSelectionConfig);
  }
  buildCounterGenerateSshScriptRequest--;
}

core.int buildCounterGoogleCloudClouddmsV1beta1OperationMetadata = 0;
api.GoogleCloudClouddmsV1beta1OperationMetadata
    buildGoogleCloudClouddmsV1beta1OperationMetadata() {
  var o = api.GoogleCloudClouddmsV1beta1OperationMetadata();
  buildCounterGoogleCloudClouddmsV1beta1OperationMetadata++;
  if (buildCounterGoogleCloudClouddmsV1beta1OperationMetadata < 3) {
    o.apiVersion = 'foo';
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.requestedCancellation = true;
    o.statusMessage = 'foo';
    o.target = 'foo';
    o.verb = 'foo';
  }
  buildCounterGoogleCloudClouddmsV1beta1OperationMetadata--;
  return o;
}

void checkGoogleCloudClouddmsV1beta1OperationMetadata(
    api.GoogleCloudClouddmsV1beta1OperationMetadata o) {
  buildCounterGoogleCloudClouddmsV1beta1OperationMetadata++;
  if (buildCounterGoogleCloudClouddmsV1beta1OperationMetadata < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.requestedCancellation, unittest.isTrue);
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.verb, unittest.equals('foo'));
  }
  buildCounterGoogleCloudClouddmsV1beta1OperationMetadata--;
}

core.List<api.ConnectionProfile> buildUnnamed6758() {
  var o = <api.ConnectionProfile>[];
  o.add(buildConnectionProfile());
  o.add(buildConnectionProfile());
  return o;
}

void checkUnnamed6758(core.List<api.ConnectionProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectionProfile(o[0] as api.ConnectionProfile);
  checkConnectionProfile(o[1] as api.ConnectionProfile);
}

core.List<core.String> buildUnnamed6759() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6759(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListConnectionProfilesResponse = 0;
api.ListConnectionProfilesResponse buildListConnectionProfilesResponse() {
  var o = api.ListConnectionProfilesResponse();
  buildCounterListConnectionProfilesResponse++;
  if (buildCounterListConnectionProfilesResponse < 3) {
    o.connectionProfiles = buildUnnamed6758();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed6759();
  }
  buildCounterListConnectionProfilesResponse--;
  return o;
}

void checkListConnectionProfilesResponse(api.ListConnectionProfilesResponse o) {
  buildCounterListConnectionProfilesResponse++;
  if (buildCounterListConnectionProfilesResponse < 3) {
    checkUnnamed6758(o.connectionProfiles);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6759(o.unreachable);
  }
  buildCounterListConnectionProfilesResponse--;
}

core.List<api.Location> buildUnnamed6760() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed6760(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0] as api.Location);
  checkLocation(o[1] as api.Location);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  var o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed6760();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed6760(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.MigrationJob> buildUnnamed6761() {
  var o = <api.MigrationJob>[];
  o.add(buildMigrationJob());
  o.add(buildMigrationJob());
  return o;
}

void checkUnnamed6761(core.List<api.MigrationJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMigrationJob(o[0] as api.MigrationJob);
  checkMigrationJob(o[1] as api.MigrationJob);
}

core.List<core.String> buildUnnamed6762() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6762(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListMigrationJobsResponse = 0;
api.ListMigrationJobsResponse buildListMigrationJobsResponse() {
  var o = api.ListMigrationJobsResponse();
  buildCounterListMigrationJobsResponse++;
  if (buildCounterListMigrationJobsResponse < 3) {
    o.migrationJobs = buildUnnamed6761();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed6762();
  }
  buildCounterListMigrationJobsResponse--;
  return o;
}

void checkListMigrationJobsResponse(api.ListMigrationJobsResponse o) {
  buildCounterListMigrationJobsResponse++;
  if (buildCounterListMigrationJobsResponse < 3) {
    checkUnnamed6761(o.migrationJobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6762(o.unreachable);
  }
  buildCounterListMigrationJobsResponse--;
}

core.List<api.Operation> buildUnnamed6763() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed6763(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed6763();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6763(o.operations);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed6764() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6764(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed6765() {
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

void checkUnnamed6765(core.Map<core.String, core.Object> o) {
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
    o.labels = buildUnnamed6764();
    o.locationId = 'foo';
    o.metadata = buildUnnamed6765();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed6764(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed6765(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.Map<core.String, core.String> buildUnnamed6766() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6766(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterMigrationJob = 0;
api.MigrationJob buildMigrationJob() {
  var o = api.MigrationJob();
  buildCounterMigrationJob++;
  if (buildCounterMigrationJob < 3) {
    o.createTime = 'foo';
    o.destination = 'foo';
    o.destinationDatabase = buildDatabaseType();
    o.displayName = 'foo';
    o.dumpPath = 'foo';
    o.duration = 'foo';
    o.endTime = 'foo';
    o.error = buildStatus();
    o.labels = buildUnnamed6766();
    o.name = 'foo';
    o.phase = 'foo';
    o.reverseSshConnectivity = buildReverseSshConnectivity();
    o.source = 'foo';
    o.sourceDatabase = buildDatabaseType();
    o.state = 'foo';
    o.staticIpConnectivity = buildStaticIpConnectivity();
    o.type = 'foo';
    o.updateTime = 'foo';
    o.vpcPeeringConnectivity = buildVpcPeeringConnectivity();
  }
  buildCounterMigrationJob--;
  return o;
}

void checkMigrationJob(api.MigrationJob o) {
  buildCounterMigrationJob++;
  if (buildCounterMigrationJob < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.destination, unittest.equals('foo'));
    checkDatabaseType(o.destinationDatabase as api.DatabaseType);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.dumpPath, unittest.equals('foo'));
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkStatus(o.error as api.Status);
    checkUnnamed6766(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.phase, unittest.equals('foo'));
    checkReverseSshConnectivity(
        o.reverseSshConnectivity as api.ReverseSshConnectivity);
    unittest.expect(o.source, unittest.equals('foo'));
    checkDatabaseType(o.sourceDatabase as api.DatabaseType);
    unittest.expect(o.state, unittest.equals('foo'));
    checkStaticIpConnectivity(
        o.staticIpConnectivity as api.StaticIpConnectivity);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
    checkVpcPeeringConnectivity(
        o.vpcPeeringConnectivity as api.VpcPeeringConnectivity);
  }
  buildCounterMigrationJob--;
}

core.int buildCounterMigrationJobVerificationError = 0;
api.MigrationJobVerificationError buildMigrationJobVerificationError() {
  var o = api.MigrationJobVerificationError();
  buildCounterMigrationJobVerificationError++;
  if (buildCounterMigrationJobVerificationError < 3) {
    o.errorCode = 'foo';
    o.errorDetailMessage = 'foo';
    o.errorMessage = 'foo';
  }
  buildCounterMigrationJobVerificationError--;
  return o;
}

void checkMigrationJobVerificationError(api.MigrationJobVerificationError o) {
  buildCounterMigrationJobVerificationError++;
  if (buildCounterMigrationJobVerificationError < 3) {
    unittest.expect(o.errorCode, unittest.equals('foo'));
    unittest.expect(o.errorDetailMessage, unittest.equals('foo'));
    unittest.expect(o.errorMessage, unittest.equals('foo'));
  }
  buildCounterMigrationJobVerificationError--;
}

core.int buildCounterMySqlConnectionProfile = 0;
api.MySqlConnectionProfile buildMySqlConnectionProfile() {
  var o = api.MySqlConnectionProfile();
  buildCounterMySqlConnectionProfile++;
  if (buildCounterMySqlConnectionProfile < 3) {
    o.cloudSqlId = 'foo';
    o.host = 'foo';
    o.password = 'foo';
    o.passwordSet = true;
    o.port = 42;
    o.ssl = buildSslConfig();
    o.username = 'foo';
  }
  buildCounterMySqlConnectionProfile--;
  return o;
}

void checkMySqlConnectionProfile(api.MySqlConnectionProfile o) {
  buildCounterMySqlConnectionProfile++;
  if (buildCounterMySqlConnectionProfile < 3) {
    unittest.expect(o.cloudSqlId, unittest.equals('foo'));
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.password, unittest.equals('foo'));
    unittest.expect(o.passwordSet, unittest.isTrue);
    unittest.expect(o.port, unittest.equals(42));
    checkSslConfig(o.ssl as api.SslConfig);
    unittest.expect(o.username, unittest.equals('foo'));
  }
  buildCounterMySqlConnectionProfile--;
}

core.Map<core.String, core.Object> buildUnnamed6767() {
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

void checkUnnamed6767(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed6768() {
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

void checkUnnamed6768(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed6767();
    o.name = 'foo';
    o.response = buildUnnamed6768();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error as api.Status);
    checkUnnamed6767(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6768(o.response);
  }
  buildCounterOperation--;
}

core.List<api.AuditConfig> buildUnnamed6769() {
  var o = <api.AuditConfig>[];
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

void checkUnnamed6769(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0] as api.AuditConfig);
  checkAuditConfig(o[1] as api.AuditConfig);
}

core.List<api.Binding> buildUnnamed6770() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed6770(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0] as api.Binding);
  checkBinding(o[1] as api.Binding);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed6769();
    o.bindings = buildUnnamed6770();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed6769(o.auditConfigs);
    checkUnnamed6770(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterPromoteMigrationJobRequest = 0;
api.PromoteMigrationJobRequest buildPromoteMigrationJobRequest() {
  var o = api.PromoteMigrationJobRequest();
  buildCounterPromoteMigrationJobRequest++;
  if (buildCounterPromoteMigrationJobRequest < 3) {}
  buildCounterPromoteMigrationJobRequest--;
  return o;
}

void checkPromoteMigrationJobRequest(api.PromoteMigrationJobRequest o) {
  buildCounterPromoteMigrationJobRequest++;
  if (buildCounterPromoteMigrationJobRequest < 3) {}
  buildCounterPromoteMigrationJobRequest--;
}

core.int buildCounterRestartMigrationJobRequest = 0;
api.RestartMigrationJobRequest buildRestartMigrationJobRequest() {
  var o = api.RestartMigrationJobRequest();
  buildCounterRestartMigrationJobRequest++;
  if (buildCounterRestartMigrationJobRequest < 3) {}
  buildCounterRestartMigrationJobRequest--;
  return o;
}

void checkRestartMigrationJobRequest(api.RestartMigrationJobRequest o) {
  buildCounterRestartMigrationJobRequest++;
  if (buildCounterRestartMigrationJobRequest < 3) {}
  buildCounterRestartMigrationJobRequest--;
}

core.int buildCounterResumeMigrationJobRequest = 0;
api.ResumeMigrationJobRequest buildResumeMigrationJobRequest() {
  var o = api.ResumeMigrationJobRequest();
  buildCounterResumeMigrationJobRequest++;
  if (buildCounterResumeMigrationJobRequest < 3) {}
  buildCounterResumeMigrationJobRequest--;
  return o;
}

void checkResumeMigrationJobRequest(api.ResumeMigrationJobRequest o) {
  buildCounterResumeMigrationJobRequest++;
  if (buildCounterResumeMigrationJobRequest < 3) {}
  buildCounterResumeMigrationJobRequest--;
}

core.int buildCounterReverseSshConnectivity = 0;
api.ReverseSshConnectivity buildReverseSshConnectivity() {
  var o = api.ReverseSshConnectivity();
  buildCounterReverseSshConnectivity++;
  if (buildCounterReverseSshConnectivity < 3) {
    o.vm = 'foo';
    o.vmIp = 'foo';
    o.vmPort = 42;
    o.vpc = 'foo';
  }
  buildCounterReverseSshConnectivity--;
  return o;
}

void checkReverseSshConnectivity(api.ReverseSshConnectivity o) {
  buildCounterReverseSshConnectivity++;
  if (buildCounterReverseSshConnectivity < 3) {
    unittest.expect(o.vm, unittest.equals('foo'));
    unittest.expect(o.vmIp, unittest.equals('foo'));
    unittest.expect(o.vmPort, unittest.equals(42));
    unittest.expect(o.vpc, unittest.equals('foo'));
  }
  buildCounterReverseSshConnectivity--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  var o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = 'foo';
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy as api.Policy);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterSqlAclEntry = 0;
api.SqlAclEntry buildSqlAclEntry() {
  var o = api.SqlAclEntry();
  buildCounterSqlAclEntry++;
  if (buildCounterSqlAclEntry < 3) {
    o.expireTime = 'foo';
    o.label = 'foo';
    o.ttl = 'foo';
    o.value = 'foo';
  }
  buildCounterSqlAclEntry--;
  return o;
}

void checkSqlAclEntry(api.SqlAclEntry o) {
  buildCounterSqlAclEntry++;
  if (buildCounterSqlAclEntry < 3) {
    unittest.expect(o.expireTime, unittest.equals('foo'));
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.ttl, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterSqlAclEntry--;
}

core.List<api.SqlAclEntry> buildUnnamed6771() {
  var o = <api.SqlAclEntry>[];
  o.add(buildSqlAclEntry());
  o.add(buildSqlAclEntry());
  return o;
}

void checkUnnamed6771(core.List<api.SqlAclEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlAclEntry(o[0] as api.SqlAclEntry);
  checkSqlAclEntry(o[1] as api.SqlAclEntry);
}

core.int buildCounterSqlIpConfig = 0;
api.SqlIpConfig buildSqlIpConfig() {
  var o = api.SqlIpConfig();
  buildCounterSqlIpConfig++;
  if (buildCounterSqlIpConfig < 3) {
    o.authorizedNetworks = buildUnnamed6771();
    o.enableIpv4 = true;
    o.privateNetwork = 'foo';
    o.requireSsl = true;
  }
  buildCounterSqlIpConfig--;
  return o;
}

void checkSqlIpConfig(api.SqlIpConfig o) {
  buildCounterSqlIpConfig++;
  if (buildCounterSqlIpConfig < 3) {
    checkUnnamed6771(o.authorizedNetworks);
    unittest.expect(o.enableIpv4, unittest.isTrue);
    unittest.expect(o.privateNetwork, unittest.equals('foo'));
    unittest.expect(o.requireSsl, unittest.isTrue);
  }
  buildCounterSqlIpConfig--;
}

core.int buildCounterSshScript = 0;
api.SshScript buildSshScript() {
  var o = api.SshScript();
  buildCounterSshScript++;
  if (buildCounterSshScript < 3) {
    o.script = 'foo';
  }
  buildCounterSshScript--;
  return o;
}

void checkSshScript(api.SshScript o) {
  buildCounterSshScript++;
  if (buildCounterSshScript < 3) {
    unittest.expect(o.script, unittest.equals('foo'));
  }
  buildCounterSshScript--;
}

core.int buildCounterSslConfig = 0;
api.SslConfig buildSslConfig() {
  var o = api.SslConfig();
  buildCounterSslConfig++;
  if (buildCounterSslConfig < 3) {
    o.caCertificate = 'foo';
    o.clientCertificate = 'foo';
    o.clientKey = 'foo';
    o.type = 'foo';
  }
  buildCounterSslConfig--;
  return o;
}

void checkSslConfig(api.SslConfig o) {
  buildCounterSslConfig++;
  if (buildCounterSslConfig < 3) {
    unittest.expect(o.caCertificate, unittest.equals('foo'));
    unittest.expect(o.clientCertificate, unittest.equals('foo'));
    unittest.expect(o.clientKey, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterSslConfig--;
}

core.int buildCounterStartMigrationJobRequest = 0;
api.StartMigrationJobRequest buildStartMigrationJobRequest() {
  var o = api.StartMigrationJobRequest();
  buildCounterStartMigrationJobRequest++;
  if (buildCounterStartMigrationJobRequest < 3) {}
  buildCounterStartMigrationJobRequest--;
  return o;
}

void checkStartMigrationJobRequest(api.StartMigrationJobRequest o) {
  buildCounterStartMigrationJobRequest++;
  if (buildCounterStartMigrationJobRequest < 3) {}
  buildCounterStartMigrationJobRequest--;
}

core.int buildCounterStaticIpConnectivity = 0;
api.StaticIpConnectivity buildStaticIpConnectivity() {
  var o = api.StaticIpConnectivity();
  buildCounterStaticIpConnectivity++;
  if (buildCounterStaticIpConnectivity < 3) {}
  buildCounterStaticIpConnectivity--;
  return o;
}

void checkStaticIpConnectivity(api.StaticIpConnectivity o) {
  buildCounterStaticIpConnectivity++;
  if (buildCounterStaticIpConnectivity < 3) {}
  buildCounterStaticIpConnectivity--;
}

core.Map<core.String, core.Object> buildUnnamed6772() {
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

void checkUnnamed6772(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed6773() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed6772());
  o.add(buildUnnamed6772());
  return o;
}

void checkUnnamed6773(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6772(o[0]);
  checkUnnamed6772(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6773();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed6773(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterStopMigrationJobRequest = 0;
api.StopMigrationJobRequest buildStopMigrationJobRequest() {
  var o = api.StopMigrationJobRequest();
  buildCounterStopMigrationJobRequest++;
  if (buildCounterStopMigrationJobRequest < 3) {}
  buildCounterStopMigrationJobRequest--;
  return o;
}

void checkStopMigrationJobRequest(api.StopMigrationJobRequest o) {
  buildCounterStopMigrationJobRequest++;
  if (buildCounterStopMigrationJobRequest < 3) {}
  buildCounterStopMigrationJobRequest--;
}

core.List<core.String> buildUnnamed6774() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6774(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  var o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed6774();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed6774(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed6775() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6775(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  var o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed6775();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed6775(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterVerifyMigrationJobRequest = 0;
api.VerifyMigrationJobRequest buildVerifyMigrationJobRequest() {
  var o = api.VerifyMigrationJobRequest();
  buildCounterVerifyMigrationJobRequest++;
  if (buildCounterVerifyMigrationJobRequest < 3) {}
  buildCounterVerifyMigrationJobRequest--;
  return o;
}

void checkVerifyMigrationJobRequest(api.VerifyMigrationJobRequest o) {
  buildCounterVerifyMigrationJobRequest++;
  if (buildCounterVerifyMigrationJobRequest < 3) {}
  buildCounterVerifyMigrationJobRequest--;
}

core.int buildCounterVmCreationConfig = 0;
api.VmCreationConfig buildVmCreationConfig() {
  var o = api.VmCreationConfig();
  buildCounterVmCreationConfig++;
  if (buildCounterVmCreationConfig < 3) {
    o.subnet = 'foo';
    o.vmMachineType = 'foo';
    o.vmZone = 'foo';
  }
  buildCounterVmCreationConfig--;
  return o;
}

void checkVmCreationConfig(api.VmCreationConfig o) {
  buildCounterVmCreationConfig++;
  if (buildCounterVmCreationConfig < 3) {
    unittest.expect(o.subnet, unittest.equals('foo'));
    unittest.expect(o.vmMachineType, unittest.equals('foo'));
    unittest.expect(o.vmZone, unittest.equals('foo'));
  }
  buildCounterVmCreationConfig--;
}

core.int buildCounterVmSelectionConfig = 0;
api.VmSelectionConfig buildVmSelectionConfig() {
  var o = api.VmSelectionConfig();
  buildCounterVmSelectionConfig++;
  if (buildCounterVmSelectionConfig < 3) {
    o.vmZone = 'foo';
  }
  buildCounterVmSelectionConfig--;
  return o;
}

void checkVmSelectionConfig(api.VmSelectionConfig o) {
  buildCounterVmSelectionConfig++;
  if (buildCounterVmSelectionConfig < 3) {
    unittest.expect(o.vmZone, unittest.equals('foo'));
  }
  buildCounterVmSelectionConfig--;
}

core.int buildCounterVpcPeeringConnectivity = 0;
api.VpcPeeringConnectivity buildVpcPeeringConnectivity() {
  var o = api.VpcPeeringConnectivity();
  buildCounterVpcPeeringConnectivity++;
  if (buildCounterVpcPeeringConnectivity < 3) {
    o.vpc = 'foo';
  }
  buildCounterVpcPeeringConnectivity--;
  return o;
}

void checkVpcPeeringConnectivity(api.VpcPeeringConnectivity o) {
  buildCounterVpcPeeringConnectivity++;
  if (buildCounterVpcPeeringConnectivity < 3) {
    unittest.expect(o.vpc, unittest.equals('foo'));
  }
  buildCounterVpcPeeringConnectivity--;
}

void main() {
  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuditConfig();
      var od = api.AuditConfig.fromJson(o.toJson());
      checkAuditConfig(od as api.AuditConfig);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuditLogConfig();
      var od = api.AuditLogConfig.fromJson(o.toJson());
      checkAuditLogConfig(od as api.AuditLogConfig);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () {
      var o = buildBinding();
      var od = api.Binding.fromJson(o.toJson());
      checkBinding(od as api.Binding);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCancelOperationRequest();
      var od = api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od as api.CancelOperationRequest);
    });
  });

  unittest.group('obj-schema-CloudSqlConnectionProfile', () {
    unittest.test('to-json--from-json', () {
      var o = buildCloudSqlConnectionProfile();
      var od = api.CloudSqlConnectionProfile.fromJson(o.toJson());
      checkCloudSqlConnectionProfile(od as api.CloudSqlConnectionProfile);
    });
  });

  unittest.group('obj-schema-CloudSqlSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildCloudSqlSettings();
      var od = api.CloudSqlSettings.fromJson(o.toJson());
      checkCloudSqlSettings(od as api.CloudSqlSettings);
    });
  });

  unittest.group('obj-schema-ConnectionProfile', () {
    unittest.test('to-json--from-json', () {
      var o = buildConnectionProfile();
      var od = api.ConnectionProfile.fromJson(o.toJson());
      checkConnectionProfile(od as api.ConnectionProfile);
    });
  });

  unittest.group('obj-schema-DatabaseType', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatabaseType();
      var od = api.DatabaseType.fromJson(o.toJson());
      checkDatabaseType(od as api.DatabaseType);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () {
      var o = buildExpr();
      var od = api.Expr.fromJson(o.toJson());
      checkExpr(od as api.Expr);
    });
  });

  unittest.group('obj-schema-GenerateSshScriptRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGenerateSshScriptRequest();
      var od = api.GenerateSshScriptRequest.fromJson(o.toJson());
      checkGenerateSshScriptRequest(od as api.GenerateSshScriptRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudClouddmsV1beta1OperationMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudClouddmsV1beta1OperationMetadata();
      var od =
          api.GoogleCloudClouddmsV1beta1OperationMetadata.fromJson(o.toJson());
      checkGoogleCloudClouddmsV1beta1OperationMetadata(
          od as api.GoogleCloudClouddmsV1beta1OperationMetadata);
    });
  });

  unittest.group('obj-schema-ListConnectionProfilesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListConnectionProfilesResponse();
      var od = api.ListConnectionProfilesResponse.fromJson(o.toJson());
      checkListConnectionProfilesResponse(
          od as api.ListConnectionProfilesResponse);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListLocationsResponse();
      var od = api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od as api.ListLocationsResponse);
    });
  });

  unittest.group('obj-schema-ListMigrationJobsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListMigrationJobsResponse();
      var od = api.ListMigrationJobsResponse.fromJson(o.toJson());
      checkListMigrationJobsResponse(od as api.ListMigrationJobsResponse);
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

  unittest.group('obj-schema-MigrationJob', () {
    unittest.test('to-json--from-json', () {
      var o = buildMigrationJob();
      var od = api.MigrationJob.fromJson(o.toJson());
      checkMigrationJob(od as api.MigrationJob);
    });
  });

  unittest.group('obj-schema-MigrationJobVerificationError', () {
    unittest.test('to-json--from-json', () {
      var o = buildMigrationJobVerificationError();
      var od = api.MigrationJobVerificationError.fromJson(o.toJson());
      checkMigrationJobVerificationError(
          od as api.MigrationJobVerificationError);
    });
  });

  unittest.group('obj-schema-MySqlConnectionProfile', () {
    unittest.test('to-json--from-json', () {
      var o = buildMySqlConnectionProfile();
      var od = api.MySqlConnectionProfile.fromJson(o.toJson());
      checkMySqlConnectionProfile(od as api.MySqlConnectionProfile);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicy();
      var od = api.Policy.fromJson(o.toJson());
      checkPolicy(od as api.Policy);
    });
  });

  unittest.group('obj-schema-PromoteMigrationJobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildPromoteMigrationJobRequest();
      var od = api.PromoteMigrationJobRequest.fromJson(o.toJson());
      checkPromoteMigrationJobRequest(od as api.PromoteMigrationJobRequest);
    });
  });

  unittest.group('obj-schema-RestartMigrationJobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRestartMigrationJobRequest();
      var od = api.RestartMigrationJobRequest.fromJson(o.toJson());
      checkRestartMigrationJobRequest(od as api.RestartMigrationJobRequest);
    });
  });

  unittest.group('obj-schema-ResumeMigrationJobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildResumeMigrationJobRequest();
      var od = api.ResumeMigrationJobRequest.fromJson(o.toJson());
      checkResumeMigrationJobRequest(od as api.ResumeMigrationJobRequest);
    });
  });

  unittest.group('obj-schema-ReverseSshConnectivity', () {
    unittest.test('to-json--from-json', () {
      var o = buildReverseSshConnectivity();
      var od = api.ReverseSshConnectivity.fromJson(o.toJson());
      checkReverseSshConnectivity(od as api.ReverseSshConnectivity);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetIamPolicyRequest();
      var od = api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od as api.SetIamPolicyRequest);
    });
  });

  unittest.group('obj-schema-SqlAclEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildSqlAclEntry();
      var od = api.SqlAclEntry.fromJson(o.toJson());
      checkSqlAclEntry(od as api.SqlAclEntry);
    });
  });

  unittest.group('obj-schema-SqlIpConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildSqlIpConfig();
      var od = api.SqlIpConfig.fromJson(o.toJson());
      checkSqlIpConfig(od as api.SqlIpConfig);
    });
  });

  unittest.group('obj-schema-SshScript', () {
    unittest.test('to-json--from-json', () {
      var o = buildSshScript();
      var od = api.SshScript.fromJson(o.toJson());
      checkSshScript(od as api.SshScript);
    });
  });

  unittest.group('obj-schema-SslConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildSslConfig();
      var od = api.SslConfig.fromJson(o.toJson());
      checkSslConfig(od as api.SslConfig);
    });
  });

  unittest.group('obj-schema-StartMigrationJobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildStartMigrationJobRequest();
      var od = api.StartMigrationJobRequest.fromJson(o.toJson());
      checkStartMigrationJobRequest(od as api.StartMigrationJobRequest);
    });
  });

  unittest.group('obj-schema-StaticIpConnectivity', () {
    unittest.test('to-json--from-json', () {
      var o = buildStaticIpConnectivity();
      var od = api.StaticIpConnectivity.fromJson(o.toJson());
      checkStaticIpConnectivity(od as api.StaticIpConnectivity);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-StopMigrationJobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildStopMigrationJobRequest();
      var od = api.StopMigrationJobRequest.fromJson(o.toJson());
      checkStopMigrationJobRequest(od as api.StopMigrationJobRequest);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsRequest();
      var od = api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od as api.TestIamPermissionsRequest);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsResponse();
      var od = api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('obj-schema-VerifyMigrationJobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildVerifyMigrationJobRequest();
      var od = api.VerifyMigrationJobRequest.fromJson(o.toJson());
      checkVerifyMigrationJobRequest(od as api.VerifyMigrationJobRequest);
    });
  });

  unittest.group('obj-schema-VmCreationConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildVmCreationConfig();
      var od = api.VmCreationConfig.fromJson(o.toJson());
      checkVmCreationConfig(od as api.VmCreationConfig);
    });
  });

  unittest.group('obj-schema-VmSelectionConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildVmSelectionConfig();
      var od = api.VmSelectionConfig.fromJson(o.toJson());
      checkVmSelectionConfig(od as api.VmSelectionConfig);
    });
  });

  unittest.group('obj-schema-VpcPeeringConnectivity', () {
    unittest.test('to-json--from-json', () {
      var o = buildVpcPeeringConnectivity();
      var od = api.VpcPeeringConnectivity.fromJson(o.toJson());
      checkVpcPeeringConnectivity(od as api.VpcPeeringConnectivity);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock).projects.locations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
      var res = api.DatabaseMigrationServiceApi(mock).projects.locations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response as api.ListLocationsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsConnectionProfilesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .connectionProfiles;
      var arg_request = buildConnectionProfile();
      var arg_parent = 'foo';
      var arg_connectionProfileId = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ConnectionProfile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConnectionProfile(obj as api.ConnectionProfile);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["connectionProfileId"].first,
            unittest.equals(arg_connectionProfileId));
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              connectionProfileId: arg_connectionProfileId,
              requestId: arg_requestId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .connectionProfiles;
      var arg_name = 'foo';
      var arg_force = true;
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              force: arg_force, requestId: arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .connectionProfiles;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildConnectionProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkConnectionProfile(response as api.ConnectionProfile);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .connectionProfiles;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .connectionProfiles;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListConnectionProfilesResponse());
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
        checkListConnectionProfilesResponse(
            response as api.ListConnectionProfilesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .connectionProfiles;
      var arg_request = buildConnectionProfile();
      var arg_name = 'foo';
      var arg_requestId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ConnectionProfile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConnectionProfile(obj as api.ConnectionProfile);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
            queryMap["requestId"].first, unittest.equals(arg_requestId));
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
              requestId: arg_requestId,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .connectionProfiles;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj as api.SetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .connectionProfiles;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(
            response as api.TestIamPermissionsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsMigrationJobsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      var arg_request = buildMigrationJob();
      var arg_parent = 'foo';
      var arg_migrationJobId = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.MigrationJob.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMigrationJob(obj as api.MigrationJob);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["migrationJobId"].first,
            unittest.equals(arg_migrationJobId));
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              migrationJobId: arg_migrationJobId,
              requestId: arg_requestId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      var arg_name = 'foo';
      var arg_force = true;
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              force: arg_force, requestId: arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--generateSshScript', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      var arg_request = buildGenerateSshScriptRequest();
      var arg_migrationJob = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GenerateSshScriptRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGenerateSshScriptRequest(obj as api.GenerateSshScriptRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildSshScript());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateSshScript(arg_request, arg_migrationJob,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSshScript(response as api.SshScript);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildMigrationJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMigrationJob(response as api.MigrationJob);
      })));
    });

    unittest.test('method--getIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListMigrationJobsResponse());
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
        checkListMigrationJobsResponse(
            response as api.ListMigrationJobsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      var arg_request = buildMigrationJob();
      var arg_name = 'foo';
      var arg_requestId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.MigrationJob.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMigrationJob(obj as api.MigrationJob);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
            queryMap["requestId"].first, unittest.equals(arg_requestId));
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
              requestId: arg_requestId,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--promote', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      var arg_request = buildPromoteMigrationJobRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PromoteMigrationJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPromoteMigrationJobRequest(obj as api.PromoteMigrationJobRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
          .promote(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--restart', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      var arg_request = buildRestartMigrationJobRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RestartMigrationJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRestartMigrationJobRequest(obj as api.RestartMigrationJobRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
          .restart(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--resume', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      var arg_request = buildResumeMigrationJobRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ResumeMigrationJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResumeMigrationJobRequest(obj as api.ResumeMigrationJobRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
          .resume(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--setIamPolicy', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj as api.SetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--start', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      var arg_request = buildStartMigrationJobRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.StartMigrationJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartMigrationJobRequest(obj as api.StartMigrationJobRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
          .start(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--stop', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      var arg_request = buildStopMigrationJobRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.StopMigrationJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStopMigrationJobRequest(obj as api.StopMigrationJobRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
          .stop(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--testIamPermissions', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(
            response as api.TestIamPermissionsResponse);
      })));
    });

    unittest.test('method--verify', () {
      var mock = HttpServerMock();
      var res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      var arg_request = buildVerifyMigrationJobRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.VerifyMigrationJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkVerifyMigrationJobRequest(obj as api.VerifyMigrationJobRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
          .verify(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      var res =
          api.DatabaseMigrationServiceApi(mock).projects.locations.operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
      var res =
          api.DatabaseMigrationServiceApi(mock).projects.locations.operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
      var res =
          api.DatabaseMigrationServiceApi(mock).projects.locations.operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
      var res =
          api.DatabaseMigrationServiceApi(mock).projects.locations.operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
