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

import 'package:googleapis/datamigration/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.AuditLogConfig> buildUnnamed0() => [
      buildAuditLogConfig(),
      buildAuditLogConfig(),
    ];

void checkUnnamed0(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed0();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed0(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
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

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed1();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed1(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
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

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed2();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed2(o.members!);
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

core.int buildCounterCloudSqlConnectionProfile = 0;
api.CloudSqlConnectionProfile buildCloudSqlConnectionProfile() {
  final o = api.CloudSqlConnectionProfile();
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
    unittest.expect(
      o.cloudSqlId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privateIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publicIp!,
      unittest.equals('foo'),
    );
    checkCloudSqlSettings(o.settings!);
  }
  buildCounterCloudSqlConnectionProfile--;
}

core.Map<core.String, core.String> buildUnnamed3() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed3(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed4() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed4(core.Map<core.String, core.String> o) {
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

core.int buildCounterCloudSqlSettings = 0;
api.CloudSqlSettings buildCloudSqlSettings() {
  final o = api.CloudSqlSettings();
  buildCounterCloudSqlSettings++;
  if (buildCounterCloudSqlSettings < 3) {
    o.activationPolicy = 'foo';
    o.autoStorageIncrease = true;
    o.cmekKeyName = 'foo';
    o.collation = 'foo';
    o.dataDiskSizeGb = 'foo';
    o.dataDiskType = 'foo';
    o.databaseFlags = buildUnnamed3();
    o.databaseVersion = 'foo';
    o.ipConfig = buildSqlIpConfig();
    o.rootPassword = 'foo';
    o.rootPasswordSet = true;
    o.sourceId = 'foo';
    o.storageAutoResizeLimit = 'foo';
    o.tier = 'foo';
    o.userLabels = buildUnnamed4();
    o.zone = 'foo';
  }
  buildCounterCloudSqlSettings--;
  return o;
}

void checkCloudSqlSettings(api.CloudSqlSettings o) {
  buildCounterCloudSqlSettings++;
  if (buildCounterCloudSqlSettings < 3) {
    unittest.expect(
      o.activationPolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(o.autoStorageIncrease!, unittest.isTrue);
    unittest.expect(
      o.cmekKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.collation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataDiskSizeGb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataDiskType!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.databaseFlags!);
    unittest.expect(
      o.databaseVersion!,
      unittest.equals('foo'),
    );
    checkSqlIpConfig(o.ipConfig!);
    unittest.expect(
      o.rootPassword!,
      unittest.equals('foo'),
    );
    unittest.expect(o.rootPasswordSet!, unittest.isTrue);
    unittest.expect(
      o.sourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageAutoResizeLimit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tier!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.userLabels!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudSqlSettings--;
}

core.Map<core.String, core.String> buildUnnamed5() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed5(core.Map<core.String, core.String> o) {
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

core.int buildCounterConnectionProfile = 0;
api.ConnectionProfile buildConnectionProfile() {
  final o = api.ConnectionProfile();
  buildCounterConnectionProfile++;
  if (buildCounterConnectionProfile < 3) {
    o.cloudsql = buildCloudSqlConnectionProfile();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.error = buildStatus();
    o.labels = buildUnnamed5();
    o.mysql = buildMySqlConnectionProfile();
    o.name = 'foo';
    o.postgresql = buildPostgreSqlConnectionProfile();
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
    checkCloudSqlConnectionProfile(o.cloudsql!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkStatus(o.error!);
    checkUnnamed5(o.labels!);
    checkMySqlConnectionProfile(o.mysql!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkPostgreSqlConnectionProfile(o.postgresql!);
    unittest.expect(
      o.provider!,
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
  buildCounterConnectionProfile--;
}

core.int buildCounterDatabaseType = 0;
api.DatabaseType buildDatabaseType() {
  final o = api.DatabaseType();
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
    unittest.expect(
      o.engine!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.provider!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatabaseType--;
}

core.int buildCounterDumpFlag = 0;
api.DumpFlag buildDumpFlag() {
  final o = api.DumpFlag();
  buildCounterDumpFlag++;
  if (buildCounterDumpFlag < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterDumpFlag--;
  return o;
}

void checkDumpFlag(api.DumpFlag o) {
  buildCounterDumpFlag++;
  if (buildCounterDumpFlag < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterDumpFlag--;
}

core.List<api.DumpFlag> buildUnnamed6() => [
      buildDumpFlag(),
      buildDumpFlag(),
    ];

void checkUnnamed6(core.List<api.DumpFlag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDumpFlag(o[0]);
  checkDumpFlag(o[1]);
}

core.int buildCounterDumpFlags = 0;
api.DumpFlags buildDumpFlags() {
  final o = api.DumpFlags();
  buildCounterDumpFlags++;
  if (buildCounterDumpFlags < 3) {
    o.dumpFlags = buildUnnamed6();
  }
  buildCounterDumpFlags--;
  return o;
}

void checkDumpFlags(api.DumpFlags o) {
  buildCounterDumpFlags++;
  if (buildCounterDumpFlags < 3) {
    checkUnnamed6(o.dumpFlags!);
  }
  buildCounterDumpFlags--;
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

core.int buildCounterGenerateSshScriptRequest = 0;
api.GenerateSshScriptRequest buildGenerateSshScriptRequest() {
  final o = api.GenerateSshScriptRequest();
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
    unittest.expect(
      o.vm!,
      unittest.equals('foo'),
    );
    checkVmCreationConfig(o.vmCreationConfig!);
    unittest.expect(
      o.vmPort!,
      unittest.equals(42),
    );
    checkVmSelectionConfig(o.vmSelectionConfig!);
  }
  buildCounterGenerateSshScriptRequest--;
}

core.List<api.ConnectionProfile> buildUnnamed7() => [
      buildConnectionProfile(),
      buildConnectionProfile(),
    ];

void checkUnnamed7(core.List<api.ConnectionProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectionProfile(o[0]);
  checkConnectionProfile(o[1]);
}

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
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

core.int buildCounterListConnectionProfilesResponse = 0;
api.ListConnectionProfilesResponse buildListConnectionProfilesResponse() {
  final o = api.ListConnectionProfilesResponse();
  buildCounterListConnectionProfilesResponse++;
  if (buildCounterListConnectionProfilesResponse < 3) {
    o.connectionProfiles = buildUnnamed7();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed8();
  }
  buildCounterListConnectionProfilesResponse--;
  return o;
}

void checkListConnectionProfilesResponse(api.ListConnectionProfilesResponse o) {
  buildCounterListConnectionProfilesResponse++;
  if (buildCounterListConnectionProfilesResponse < 3) {
    checkUnnamed7(o.connectionProfiles!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.unreachable!);
  }
  buildCounterListConnectionProfilesResponse--;
}

core.List<api.Location> buildUnnamed9() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed9(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed9();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed9(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.MigrationJob> buildUnnamed10() => [
      buildMigrationJob(),
      buildMigrationJob(),
    ];

void checkUnnamed10(core.List<api.MigrationJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMigrationJob(o[0]);
  checkMigrationJob(o[1]);
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

core.int buildCounterListMigrationJobsResponse = 0;
api.ListMigrationJobsResponse buildListMigrationJobsResponse() {
  final o = api.ListMigrationJobsResponse();
  buildCounterListMigrationJobsResponse++;
  if (buildCounterListMigrationJobsResponse < 3) {
    o.migrationJobs = buildUnnamed10();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed11();
  }
  buildCounterListMigrationJobsResponse--;
  return o;
}

void checkListMigrationJobsResponse(api.ListMigrationJobsResponse o) {
  buildCounterListMigrationJobsResponse++;
  if (buildCounterListMigrationJobsResponse < 3) {
    checkUnnamed10(o.migrationJobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.unreachable!);
  }
  buildCounterListMigrationJobsResponse--;
}

core.List<api.Operation> buildUnnamed12() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed12(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed12();
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
    checkUnnamed12(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed13() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed13(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed14() => {
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

void checkUnnamed14(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed13();
    o.locationId = 'foo';
    o.metadata = buildUnnamed14();
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
    checkUnnamed13(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
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

core.int buildCounterMigrationJob = 0;
api.MigrationJob buildMigrationJob() {
  final o = api.MigrationJob();
  buildCounterMigrationJob++;
  if (buildCounterMigrationJob < 3) {
    o.createTime = 'foo';
    o.destination = 'foo';
    o.destinationDatabase = buildDatabaseType();
    o.displayName = 'foo';
    o.dumpFlags = buildDumpFlags();
    o.dumpPath = 'foo';
    o.duration = 'foo';
    o.endTime = 'foo';
    o.error = buildStatus();
    o.labels = buildUnnamed15();
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destination!,
      unittest.equals('foo'),
    );
    checkDatabaseType(o.destinationDatabase!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkDumpFlags(o.dumpFlags!);
    unittest.expect(
      o.dumpPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkStatus(o.error!);
    checkUnnamed15(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phase!,
      unittest.equals('foo'),
    );
    checkReverseSshConnectivity(o.reverseSshConnectivity!);
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
    checkDatabaseType(o.sourceDatabase!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkStaticIpConnectivity(o.staticIpConnectivity!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkVpcPeeringConnectivity(o.vpcPeeringConnectivity!);
  }
  buildCounterMigrationJob--;
}

core.int buildCounterMySqlConnectionProfile = 0;
api.MySqlConnectionProfile buildMySqlConnectionProfile() {
  final o = api.MySqlConnectionProfile();
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
    unittest.expect(
      o.cloudSqlId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.host!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(o.passwordSet!, unittest.isTrue);
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
    checkSslConfig(o.ssl!);
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterMySqlConnectionProfile--;
}

core.Map<core.String, core.Object?> buildUnnamed16() => {
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

void checkUnnamed16(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed17() => {
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

void checkUnnamed17(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed16();
    o.name = 'foo';
    o.response = buildUnnamed17();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed16(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.AuditConfig> buildUnnamed18() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed18(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed19() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed19(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed18();
    o.bindings = buildUnnamed19();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed18(o.auditConfigs!);
    checkUnnamed19(o.bindings!);
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

core.int buildCounterPostgreSqlConnectionProfile = 0;
api.PostgreSqlConnectionProfile buildPostgreSqlConnectionProfile() {
  final o = api.PostgreSqlConnectionProfile();
  buildCounterPostgreSqlConnectionProfile++;
  if (buildCounterPostgreSqlConnectionProfile < 3) {
    o.cloudSqlId = 'foo';
    o.host = 'foo';
    o.password = 'foo';
    o.passwordSet = true;
    o.port = 42;
    o.ssl = buildSslConfig();
    o.username = 'foo';
  }
  buildCounterPostgreSqlConnectionProfile--;
  return o;
}

void checkPostgreSqlConnectionProfile(api.PostgreSqlConnectionProfile o) {
  buildCounterPostgreSqlConnectionProfile++;
  if (buildCounterPostgreSqlConnectionProfile < 3) {
    unittest.expect(
      o.cloudSqlId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.host!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(o.passwordSet!, unittest.isTrue);
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
    checkSslConfig(o.ssl!);
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostgreSqlConnectionProfile--;
}

core.int buildCounterPromoteMigrationJobRequest = 0;
api.PromoteMigrationJobRequest buildPromoteMigrationJobRequest() {
  final o = api.PromoteMigrationJobRequest();
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
  final o = api.RestartMigrationJobRequest();
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
  final o = api.ResumeMigrationJobRequest();
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
  final o = api.ReverseSshConnectivity();
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
    unittest.expect(
      o.vm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vmIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vmPort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.vpc!,
      unittest.equals('foo'),
    );
  }
  buildCounterReverseSshConnectivity--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
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
    checkPolicy(o.policy!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterSqlAclEntry = 0;
api.SqlAclEntry buildSqlAclEntry() {
  final o = api.SqlAclEntry();
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
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ttl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterSqlAclEntry--;
}

core.List<api.SqlAclEntry> buildUnnamed20() => [
      buildSqlAclEntry(),
      buildSqlAclEntry(),
    ];

void checkUnnamed20(core.List<api.SqlAclEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlAclEntry(o[0]);
  checkSqlAclEntry(o[1]);
}

core.int buildCounterSqlIpConfig = 0;
api.SqlIpConfig buildSqlIpConfig() {
  final o = api.SqlIpConfig();
  buildCounterSqlIpConfig++;
  if (buildCounterSqlIpConfig < 3) {
    o.authorizedNetworks = buildUnnamed20();
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
    checkUnnamed20(o.authorizedNetworks!);
    unittest.expect(o.enableIpv4!, unittest.isTrue);
    unittest.expect(
      o.privateNetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(o.requireSsl!, unittest.isTrue);
  }
  buildCounterSqlIpConfig--;
}

core.int buildCounterSshScript = 0;
api.SshScript buildSshScript() {
  final o = api.SshScript();
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
    unittest.expect(
      o.script!,
      unittest.equals('foo'),
    );
  }
  buildCounterSshScript--;
}

core.int buildCounterSslConfig = 0;
api.SslConfig buildSslConfig() {
  final o = api.SslConfig();
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
    unittest.expect(
      o.caCertificate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientCertificate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterSslConfig--;
}

core.int buildCounterStartMigrationJobRequest = 0;
api.StartMigrationJobRequest buildStartMigrationJobRequest() {
  final o = api.StartMigrationJobRequest();
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
  final o = api.StaticIpConnectivity();
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

core.Map<core.String, core.Object?> buildUnnamed21() => {
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

void checkUnnamed21(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed22() => [
      buildUnnamed21(),
      buildUnnamed21(),
    ];

void checkUnnamed22(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed21(o[0]);
  checkUnnamed21(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed22();
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
    checkUnnamed22(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterStopMigrationJobRequest = 0;
api.StopMigrationJobRequest buildStopMigrationJobRequest() {
  final o = api.StopMigrationJobRequest();
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

core.List<core.String> buildUnnamed23() => [
      'foo',
      'foo',
    ];

void checkUnnamed23(core.List<core.String> o) {
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
    o.permissions = buildUnnamed23();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed23(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
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
    o.permissions = buildUnnamed24();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed24(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterVerifyMigrationJobRequest = 0;
api.VerifyMigrationJobRequest buildVerifyMigrationJobRequest() {
  final o = api.VerifyMigrationJobRequest();
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
  final o = api.VmCreationConfig();
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
    unittest.expect(
      o.subnet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vmMachineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vmZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmCreationConfig--;
}

core.int buildCounterVmSelectionConfig = 0;
api.VmSelectionConfig buildVmSelectionConfig() {
  final o = api.VmSelectionConfig();
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
    unittest.expect(
      o.vmZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmSelectionConfig--;
}

core.int buildCounterVpcPeeringConnectivity = 0;
api.VpcPeeringConnectivity buildVpcPeeringConnectivity() {
  final o = api.VpcPeeringConnectivity();
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
    unittest.expect(
      o.vpc!,
      unittest.equals('foo'),
    );
  }
  buildCounterVpcPeeringConnectivity--;
}

void main() {
  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditLogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditLogConfig(od);
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

  unittest.group('obj-schema-CloudSqlConnectionProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudSqlConnectionProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudSqlConnectionProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudSqlConnectionProfile(od);
    });
  });

  unittest.group('obj-schema-CloudSqlSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudSqlSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudSqlSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudSqlSettings(od);
    });
  });

  unittest.group('obj-schema-ConnectionProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectionProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectionProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectionProfile(od);
    });
  });

  unittest.group('obj-schema-DatabaseType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatabaseType(od);
    });
  });

  unittest.group('obj-schema-DumpFlag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDumpFlag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DumpFlag.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDumpFlag(od);
    });
  });

  unittest.group('obj-schema-DumpFlags', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDumpFlags();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DumpFlags.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDumpFlags(od);
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

  unittest.group('obj-schema-GenerateSshScriptRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateSshScriptRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateSshScriptRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateSshScriptRequest(od);
    });
  });

  unittest.group('obj-schema-ListConnectionProfilesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConnectionProfilesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConnectionProfilesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListConnectionProfilesResponse(od);
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

  unittest.group('obj-schema-ListMigrationJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMigrationJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMigrationJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListMigrationJobsResponse(od);
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

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-MigrationJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMigrationJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MigrationJob.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMigrationJob(od);
    });
  });

  unittest.group('obj-schema-MySqlConnectionProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMySqlConnectionProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MySqlConnectionProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMySqlConnectionProfile(od);
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

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-PostgreSqlConnectionProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostgreSqlConnectionProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostgreSqlConnectionProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostgreSqlConnectionProfile(od);
    });
  });

  unittest.group('obj-schema-PromoteMigrationJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPromoteMigrationJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PromoteMigrationJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPromoteMigrationJobRequest(od);
    });
  });

  unittest.group('obj-schema-RestartMigrationJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestartMigrationJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestartMigrationJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRestartMigrationJobRequest(od);
    });
  });

  unittest.group('obj-schema-ResumeMigrationJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResumeMigrationJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResumeMigrationJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResumeMigrationJobRequest(od);
    });
  });

  unittest.group('obj-schema-ReverseSshConnectivity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReverseSshConnectivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReverseSshConnectivity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReverseSshConnectivity(od);
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

  unittest.group('obj-schema-SqlAclEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlAclEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlAclEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlAclEntry(od);
    });
  });

  unittest.group('obj-schema-SqlIpConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlIpConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlIpConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlIpConfig(od);
    });
  });

  unittest.group('obj-schema-SshScript', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSshScript();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SshScript.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSshScript(od);
    });
  });

  unittest.group('obj-schema-SslConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSslConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SslConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSslConfig(od);
    });
  });

  unittest.group('obj-schema-StartMigrationJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartMigrationJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartMigrationJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStartMigrationJobRequest(od);
    });
  });

  unittest.group('obj-schema-StaticIpConnectivity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStaticIpConnectivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StaticIpConnectivity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStaticIpConnectivity(od);
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

  unittest.group('obj-schema-StopMigrationJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopMigrationJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopMigrationJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStopMigrationJobRequest(od);
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

  unittest.group('obj-schema-VerifyMigrationJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerifyMigrationJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerifyMigrationJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVerifyMigrationJobRequest(od);
    });
  });

  unittest.group('obj-schema-VmCreationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmCreationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmCreationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmCreationConfig(od);
    });
  });

  unittest.group('obj-schema-VmSelectionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmSelectionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmSelectionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmSelectionConfig(od);
    });
  });

  unittest.group('obj-schema-VpcPeeringConnectivity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVpcPeeringConnectivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VpcPeeringConnectivity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVpcPeeringConnectivity(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock).projects.locations;
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
      final res = api.DatabaseMigrationServiceApi(mock).projects.locations;
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

  unittest.group('resource-ProjectsLocationsConnectionProfilesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .connectionProfiles;
      final arg_request = buildConnectionProfile();
      final arg_parent = 'foo';
      final arg_connectionProfileId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConnectionProfile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConnectionProfile(obj);

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
          queryMap['connectionProfileId']!.first,
          unittest.equals(arg_connectionProfileId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
          connectionProfileId: arg_connectionProfileId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .connectionProfiles;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          force: arg_force, requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .connectionProfiles;
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
        final resp = convert.json.encode(buildConnectionProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConnectionProfile(response as api.ConnectionProfile);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .connectionProfiles;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .connectionProfiles;
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
        final resp = convert.json.encode(buildListConnectionProfilesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListConnectionProfilesResponse(
          response as api.ListConnectionProfilesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .connectionProfiles;
      final arg_request = buildConnectionProfile();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConnectionProfile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConnectionProfile(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .connectionProfiles;
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
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .connectionProfiles;
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
  });

  unittest.group('resource-ProjectsLocationsMigrationJobsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      final arg_request = buildMigrationJob();
      final arg_parent = 'foo';
      final arg_migrationJobId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.MigrationJob.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMigrationJob(obj);

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
          queryMap['migrationJobId']!.first,
          unittest.equals(arg_migrationJobId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
          migrationJobId: arg_migrationJobId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          force: arg_force, requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--generateSshScript', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      final arg_request = buildGenerateSshScriptRequest();
      final arg_migrationJob = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GenerateSshScriptRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGenerateSshScriptRequest(obj);

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
        final resp = convert.json.encode(buildSshScript());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generateSshScript(
          arg_request, arg_migrationJob,
          $fields: arg_$fields);
      checkSshScript(response as api.SshScript);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
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
        final resp = convert.json.encode(buildMigrationJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMigrationJob(response as api.MigrationJob);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
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
        final resp = convert.json.encode(buildListMigrationJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListMigrationJobsResponse(response as api.ListMigrationJobsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      final arg_request = buildMigrationJob();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.MigrationJob.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMigrationJob(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--promote', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      final arg_request = buildPromoteMigrationJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PromoteMigrationJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPromoteMigrationJobRequest(obj);

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
          await res.promote(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--restart', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      final arg_request = buildRestartMigrationJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RestartMigrationJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRestartMigrationJobRequest(obj);

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
          await res.restart(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--resume', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      final arg_request = buildResumeMigrationJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResumeMigrationJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResumeMigrationJobRequest(obj);

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
          await res.resume(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
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

    unittest.test('method--start', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      final arg_request = buildStartMigrationJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StartMigrationJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartMigrationJobRequest(obj);

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
          await res.start(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      final arg_request = buildStopMigrationJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StopMigrationJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStopMigrationJobRequest(obj);

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
          await res.stop(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
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

    unittest.test('method--verify', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      final arg_request = buildVerifyMigrationJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.VerifyMigrationJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkVerifyMigrationJobRequest(obj);

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
          await res.verify(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res =
          api.DatabaseMigrationServiceApi(mock).projects.locations.operations;
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
      final res =
          api.DatabaseMigrationServiceApi(mock).projects.locations.operations;
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
      final res =
          api.DatabaseMigrationServiceApi(mock).projects.locations.operations;
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
      final res =
          api.DatabaseMigrationServiceApi(mock).projects.locations.operations;
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
