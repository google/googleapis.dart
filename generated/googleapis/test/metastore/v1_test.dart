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

import 'package:googleapis/metastore/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAlterMetadataResourceLocationRequest = 0;
api.AlterMetadataResourceLocationRequest
buildAlterMetadataResourceLocationRequest() {
  final o = api.AlterMetadataResourceLocationRequest();
  buildCounterAlterMetadataResourceLocationRequest++;
  if (buildCounterAlterMetadataResourceLocationRequest < 3) {
    o.locationUri = 'foo';
    o.resourceName = 'foo';
  }
  buildCounterAlterMetadataResourceLocationRequest--;
  return o;
}

void checkAlterMetadataResourceLocationRequest(
  api.AlterMetadataResourceLocationRequest o,
) {
  buildCounterAlterMetadataResourceLocationRequest++;
  if (buildCounterAlterMetadataResourceLocationRequest < 3) {
    unittest.expect(o.locationUri!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterAlterMetadataResourceLocationRequest--;
}

core.Map<core.String, core.String> buildUnnamed0() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed0(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterAlterTablePropertiesRequest = 0;
api.AlterTablePropertiesRequest buildAlterTablePropertiesRequest() {
  final o = api.AlterTablePropertiesRequest();
  buildCounterAlterTablePropertiesRequest++;
  if (buildCounterAlterTablePropertiesRequest < 3) {
    o.properties = buildUnnamed0();
    o.tableName = 'foo';
    o.updateMask = 'foo';
  }
  buildCounterAlterTablePropertiesRequest--;
  return o;
}

void checkAlterTablePropertiesRequest(api.AlterTablePropertiesRequest o) {
  buildCounterAlterTablePropertiesRequest++;
  if (buildCounterAlterTablePropertiesRequest < 3) {
    checkUnnamed0(o.properties!);
    unittest.expect(o.tableName!, unittest.equals('foo'));
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterAlterTablePropertiesRequest--;
}

core.List<api.AuditLogConfig> buildUnnamed1() => [
  buildAuditLogConfig(),
  buildAuditLogConfig(),
];

void checkUnnamed1(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed1();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed1(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed2();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed2(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterAutoscalingConfig = 0;
api.AutoscalingConfig buildAutoscalingConfig() {
  final o = api.AutoscalingConfig();
  buildCounterAutoscalingConfig++;
  if (buildCounterAutoscalingConfig < 3) {
    o.autoscalingEnabled = true;
    o.autoscalingFactor = 42.0;
    o.limitConfig = buildLimitConfig();
  }
  buildCounterAutoscalingConfig--;
  return o;
}

void checkAutoscalingConfig(api.AutoscalingConfig o) {
  buildCounterAutoscalingConfig++;
  if (buildCounterAutoscalingConfig < 3) {
    unittest.expect(o.autoscalingEnabled!, unittest.isTrue);
    unittest.expect(o.autoscalingFactor!, unittest.equals(42.0));
    checkLimitConfig(o.limitConfig!);
  }
  buildCounterAutoscalingConfig--;
}

core.Map<core.String, core.String> buildUnnamed3() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed3(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterAuxiliaryVersionConfig = 0;
api.AuxiliaryVersionConfig buildAuxiliaryVersionConfig() {
  final o = api.AuxiliaryVersionConfig();
  buildCounterAuxiliaryVersionConfig++;
  if (buildCounterAuxiliaryVersionConfig < 3) {
    o.configOverrides = buildUnnamed3();
    o.networkConfig = buildNetworkConfig();
    o.version = 'foo';
  }
  buildCounterAuxiliaryVersionConfig--;
  return o;
}

void checkAuxiliaryVersionConfig(api.AuxiliaryVersionConfig o) {
  buildCounterAuxiliaryVersionConfig++;
  if (buildCounterAuxiliaryVersionConfig < 3) {
    checkUnnamed3(o.configOverrides!);
    checkNetworkConfig(o.networkConfig!);
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterAuxiliaryVersionConfig--;
}

core.int buildCounterBackendMetastore = 0;
api.BackendMetastore buildBackendMetastore() {
  final o = api.BackendMetastore();
  buildCounterBackendMetastore++;
  if (buildCounterBackendMetastore < 3) {
    o.metastoreType = 'foo';
    o.name = 'foo';
  }
  buildCounterBackendMetastore--;
  return o;
}

void checkBackendMetastore(api.BackendMetastore o) {
  buildCounterBackendMetastore++;
  if (buildCounterBackendMetastore < 3) {
    unittest.expect(o.metastoreType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterBackendMetastore--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBackup = 0;
api.Backup buildBackup() {
  final o = api.Backup();
  buildCounterBackup++;
  if (buildCounterBackup < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.endTime = 'foo';
    o.name = 'foo';
    o.restoringServices = buildUnnamed4();
    o.serviceRevision = buildService();
    o.state = 'foo';
  }
  buildCounterBackup--;
  return o;
}

void checkBackup(api.Backup o) {
  buildCounterBackup++;
  if (buildCounterBackup < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed4(o.restoringServices!);
    checkService(o.serviceRevision!);
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterBackup--;
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed5();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed5(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCancelMigrationRequest = 0;
api.CancelMigrationRequest buildCancelMigrationRequest() {
  final o = api.CancelMigrationRequest();
  buildCounterCancelMigrationRequest++;
  if (buildCounterCancelMigrationRequest < 3) {}
  buildCounterCancelMigrationRequest--;
  return o;
}

void checkCancelMigrationRequest(api.CancelMigrationRequest o) {
  buildCounterCancelMigrationRequest++;
  if (buildCounterCancelMigrationRequest < 3) {}
  buildCounterCancelMigrationRequest--;
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

core.int buildCounterCdcConfig = 0;
api.CdcConfig buildCdcConfig() {
  final o = api.CdcConfig();
  buildCounterCdcConfig++;
  if (buildCounterCdcConfig < 3) {
    o.bucket = 'foo';
    o.password = 'foo';
    o.reverseProxySubnet = 'foo';
    o.rootPath = 'foo';
    o.subnetIpRange = 'foo';
    o.username = 'foo';
    o.vpcNetwork = 'foo';
  }
  buildCounterCdcConfig--;
  return o;
}

void checkCdcConfig(api.CdcConfig o) {
  buildCounterCdcConfig++;
  if (buildCounterCdcConfig < 3) {
    unittest.expect(o.bucket!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.reverseProxySubnet!, unittest.equals('foo'));
    unittest.expect(o.rootPath!, unittest.equals('foo'));
    unittest.expect(o.subnetIpRange!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
    unittest.expect(o.vpcNetwork!, unittest.equals('foo'));
  }
  buildCounterCdcConfig--;
}

core.int buildCounterCloudSQLConnectionConfig = 0;
api.CloudSQLConnectionConfig buildCloudSQLConnectionConfig() {
  final o = api.CloudSQLConnectionConfig();
  buildCounterCloudSQLConnectionConfig++;
  if (buildCounterCloudSQLConnectionConfig < 3) {
    o.hiveDatabaseName = 'foo';
    o.instanceConnectionName = 'foo';
    o.ipAddress = 'foo';
    o.natSubnet = 'foo';
    o.password = 'foo';
    o.port = 42;
    o.proxySubnet = 'foo';
    o.username = 'foo';
  }
  buildCounterCloudSQLConnectionConfig--;
  return o;
}

void checkCloudSQLConnectionConfig(api.CloudSQLConnectionConfig o) {
  buildCounterCloudSQLConnectionConfig++;
  if (buildCounterCloudSQLConnectionConfig < 3) {
    unittest.expect(o.hiveDatabaseName!, unittest.equals('foo'));
    unittest.expect(o.instanceConnectionName!, unittest.equals('foo'));
    unittest.expect(o.ipAddress!, unittest.equals('foo'));
    unittest.expect(o.natSubnet!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.port!, unittest.equals(42));
    unittest.expect(o.proxySubnet!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterCloudSQLConnectionConfig--;
}

core.int buildCounterCloudSQLMigrationConfig = 0;
api.CloudSQLMigrationConfig buildCloudSQLMigrationConfig() {
  final o = api.CloudSQLMigrationConfig();
  buildCounterCloudSQLMigrationConfig++;
  if (buildCounterCloudSQLMigrationConfig < 3) {
    o.cdcConfig = buildCdcConfig();
    o.cloudSqlConnectionConfig = buildCloudSQLConnectionConfig();
  }
  buildCounterCloudSQLMigrationConfig--;
  return o;
}

void checkCloudSQLMigrationConfig(api.CloudSQLMigrationConfig o) {
  buildCounterCloudSQLMigrationConfig++;
  if (buildCounterCloudSQLMigrationConfig < 3) {
    checkCdcConfig(o.cdcConfig!);
    checkCloudSQLConnectionConfig(o.cloudSqlConnectionConfig!);
  }
  buildCounterCloudSQLMigrationConfig--;
}

core.int buildCounterCompleteMigrationRequest = 0;
api.CompleteMigrationRequest buildCompleteMigrationRequest() {
  final o = api.CompleteMigrationRequest();
  buildCounterCompleteMigrationRequest++;
  if (buildCounterCompleteMigrationRequest < 3) {}
  buildCounterCompleteMigrationRequest--;
  return o;
}

void checkCompleteMigrationRequest(api.CompleteMigrationRequest o) {
  buildCounterCompleteMigrationRequest++;
  if (buildCounterCompleteMigrationRequest < 3) {}
  buildCounterCompleteMigrationRequest--;
}

core.int buildCounterConsumer = 0;
api.Consumer buildConsumer() {
  final o = api.Consumer();
  buildCounterConsumer++;
  if (buildCounterConsumer < 3) {
    o.endpointLocation = 'foo';
    o.endpointUri = 'foo';
    o.subnetwork = 'foo';
  }
  buildCounterConsumer--;
  return o;
}

void checkConsumer(api.Consumer o) {
  buildCounterConsumer++;
  if (buildCounterConsumer < 3) {
    unittest.expect(o.endpointLocation!, unittest.equals('foo'));
    unittest.expect(o.endpointUri!, unittest.equals('foo'));
    unittest.expect(o.subnetwork!, unittest.equals('foo'));
  }
  buildCounterConsumer--;
}

core.int buildCounterDataCatalogConfig = 0;
api.DataCatalogConfig buildDataCatalogConfig() {
  final o = api.DataCatalogConfig();
  buildCounterDataCatalogConfig++;
  if (buildCounterDataCatalogConfig < 3) {
    o.enabled = true;
  }
  buildCounterDataCatalogConfig--;
  return o;
}

void checkDataCatalogConfig(api.DataCatalogConfig o) {
  buildCounterDataCatalogConfig++;
  if (buildCounterDataCatalogConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterDataCatalogConfig--;
}

core.int buildCounterDatabaseDump = 0;
api.DatabaseDump buildDatabaseDump() {
  final o = api.DatabaseDump();
  buildCounterDatabaseDump++;
  if (buildCounterDatabaseDump < 3) {
    o.databaseType = 'foo';
    o.gcsUri = 'foo';
    o.sourceDatabase = 'foo';
    o.type = 'foo';
  }
  buildCounterDatabaseDump--;
  return o;
}

void checkDatabaseDump(api.DatabaseDump o) {
  buildCounterDatabaseDump++;
  if (buildCounterDatabaseDump < 3) {
    unittest.expect(o.databaseType!, unittest.equals('foo'));
    unittest.expect(o.gcsUri!, unittest.equals('foo'));
    unittest.expect(o.sourceDatabase!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterDatabaseDump--;
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
    o.kmsKey = 'foo';
  }
  buildCounterEncryptionConfig--;
  return o;
}

void checkEncryptionConfig(api.EncryptionConfig o) {
  buildCounterEncryptionConfig++;
  if (buildCounterEncryptionConfig < 3) {
    unittest.expect(o.kmsKey!, unittest.equals('foo'));
  }
  buildCounterEncryptionConfig--;
}

core.int buildCounterExportMetadataRequest = 0;
api.ExportMetadataRequest buildExportMetadataRequest() {
  final o = api.ExportMetadataRequest();
  buildCounterExportMetadataRequest++;
  if (buildCounterExportMetadataRequest < 3) {
    o.databaseDumpType = 'foo';
    o.destinationGcsFolder = 'foo';
    o.requestId = 'foo';
  }
  buildCounterExportMetadataRequest--;
  return o;
}

void checkExportMetadataRequest(api.ExportMetadataRequest o) {
  buildCounterExportMetadataRequest++;
  if (buildCounterExportMetadataRequest < 3) {
    unittest.expect(o.databaseDumpType!, unittest.equals('foo'));
    unittest.expect(o.destinationGcsFolder!, unittest.equals('foo'));
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterExportMetadataRequest--;
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
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expression!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.Map<core.String, api.BackendMetastore> buildUnnamed6() => {
  'x': buildBackendMetastore(),
  'y': buildBackendMetastore(),
};

void checkUnnamed6(core.Map<core.String, api.BackendMetastore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackendMetastore(o['x']!);
  checkBackendMetastore(o['y']!);
}

core.Map<core.String, core.String> buildUnnamed7() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed7(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed8() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed8(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterFederation = 0;
api.Federation buildFederation() {
  final o = api.Federation();
  buildCounterFederation++;
  if (buildCounterFederation < 3) {
    o.backendMetastores = buildUnnamed6();
    o.createTime = 'foo';
    o.endpointUri = 'foo';
    o.labels = buildUnnamed7();
    o.name = 'foo';
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.tags = buildUnnamed8();
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.version = 'foo';
  }
  buildCounterFederation--;
  return o;
}

void checkFederation(api.Federation o) {
  buildCounterFederation++;
  if (buildCounterFederation < 3) {
    checkUnnamed6(o.backendMetastores!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.endpointUri!, unittest.equals('foo'));
    checkUnnamed7(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.stateMessage!, unittest.equals('foo'));
    checkUnnamed8(o.tags!);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterFederation--;
}

core.Map<core.String, api.AuxiliaryVersionConfig> buildUnnamed9() => {
  'x': buildAuxiliaryVersionConfig(),
  'y': buildAuxiliaryVersionConfig(),
};

void checkUnnamed9(core.Map<core.String, api.AuxiliaryVersionConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuxiliaryVersionConfig(o['x']!);
  checkAuxiliaryVersionConfig(o['y']!);
}

core.Map<core.String, core.String> buildUnnamed10() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed10(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterHiveMetastoreConfig = 0;
api.HiveMetastoreConfig buildHiveMetastoreConfig() {
  final o = api.HiveMetastoreConfig();
  buildCounterHiveMetastoreConfig++;
  if (buildCounterHiveMetastoreConfig < 3) {
    o.auxiliaryVersions = buildUnnamed9();
    o.configOverrides = buildUnnamed10();
    o.endpointProtocol = 'foo';
    o.kerberosConfig = buildKerberosConfig();
    o.version = 'foo';
  }
  buildCounterHiveMetastoreConfig--;
  return o;
}

void checkHiveMetastoreConfig(api.HiveMetastoreConfig o) {
  buildCounterHiveMetastoreConfig++;
  if (buildCounterHiveMetastoreConfig < 3) {
    checkUnnamed9(o.auxiliaryVersions!);
    checkUnnamed10(o.configOverrides!);
    unittest.expect(o.endpointProtocol!, unittest.equals('foo'));
    checkKerberosConfig(o.kerberosConfig!);
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterHiveMetastoreConfig--;
}

core.int buildCounterKerberosConfig = 0;
api.KerberosConfig buildKerberosConfig() {
  final o = api.KerberosConfig();
  buildCounterKerberosConfig++;
  if (buildCounterKerberosConfig < 3) {
    o.keytab = buildSecret();
    o.krb5ConfigGcsUri = 'foo';
    o.principal = 'foo';
  }
  buildCounterKerberosConfig--;
  return o;
}

void checkKerberosConfig(api.KerberosConfig o) {
  buildCounterKerberosConfig++;
  if (buildCounterKerberosConfig < 3) {
    checkSecret(o.keytab!);
    unittest.expect(o.krb5ConfigGcsUri!, unittest.equals('foo'));
    unittest.expect(o.principal!, unittest.equals('foo'));
  }
  buildCounterKerberosConfig--;
}

core.int buildCounterLatestBackup = 0;
api.LatestBackup buildLatestBackup() {
  final o = api.LatestBackup();
  buildCounterLatestBackup++;
  if (buildCounterLatestBackup < 3) {
    o.backupId = 'foo';
    o.duration = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
  }
  buildCounterLatestBackup--;
  return o;
}

void checkLatestBackup(api.LatestBackup o) {
  buildCounterLatestBackup++;
  if (buildCounterLatestBackup < 3) {
    unittest.expect(o.backupId!, unittest.equals('foo'));
    unittest.expect(o.duration!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterLatestBackup--;
}

core.int buildCounterLimitConfig = 0;
api.LimitConfig buildLimitConfig() {
  final o = api.LimitConfig();
  buildCounterLimitConfig++;
  if (buildCounterLimitConfig < 3) {
    o.maxScalingFactor = 42.0;
    o.minScalingFactor = 42.0;
  }
  buildCounterLimitConfig--;
  return o;
}

void checkLimitConfig(api.LimitConfig o) {
  buildCounterLimitConfig++;
  if (buildCounterLimitConfig < 3) {
    unittest.expect(o.maxScalingFactor!, unittest.equals(42.0));
    unittest.expect(o.minScalingFactor!, unittest.equals(42.0));
  }
  buildCounterLimitConfig--;
}

core.List<api.Backup> buildUnnamed11() => [buildBackup(), buildBackup()];

void checkUnnamed11(core.List<api.Backup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackup(o[0]);
  checkBackup(o[1]);
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListBackupsResponse = 0;
api.ListBackupsResponse buildListBackupsResponse() {
  final o = api.ListBackupsResponse();
  buildCounterListBackupsResponse++;
  if (buildCounterListBackupsResponse < 3) {
    o.backups = buildUnnamed11();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed12();
  }
  buildCounterListBackupsResponse--;
  return o;
}

void checkListBackupsResponse(api.ListBackupsResponse o) {
  buildCounterListBackupsResponse++;
  if (buildCounterListBackupsResponse < 3) {
    checkUnnamed11(o.backups!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed12(o.unreachable!);
  }
  buildCounterListBackupsResponse--;
}

core.List<api.Federation> buildUnnamed13() => [
  buildFederation(),
  buildFederation(),
];

void checkUnnamed13(core.List<api.Federation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFederation(o[0]);
  checkFederation(o[1]);
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListFederationsResponse = 0;
api.ListFederationsResponse buildListFederationsResponse() {
  final o = api.ListFederationsResponse();
  buildCounterListFederationsResponse++;
  if (buildCounterListFederationsResponse < 3) {
    o.federations = buildUnnamed13();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed14();
  }
  buildCounterListFederationsResponse--;
  return o;
}

void checkListFederationsResponse(api.ListFederationsResponse o) {
  buildCounterListFederationsResponse++;
  if (buildCounterListFederationsResponse < 3) {
    checkUnnamed13(o.federations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed14(o.unreachable!);
  }
  buildCounterListFederationsResponse--;
}

core.List<api.Location> buildUnnamed15() => [buildLocation(), buildLocation()];

void checkUnnamed15(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed15();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed15(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.MetadataImport> buildUnnamed16() => [
  buildMetadataImport(),
  buildMetadataImport(),
];

void checkUnnamed16(core.List<api.MetadataImport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetadataImport(o[0]);
  checkMetadataImport(o[1]);
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListMetadataImportsResponse = 0;
api.ListMetadataImportsResponse buildListMetadataImportsResponse() {
  final o = api.ListMetadataImportsResponse();
  buildCounterListMetadataImportsResponse++;
  if (buildCounterListMetadataImportsResponse < 3) {
    o.metadataImports = buildUnnamed16();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed17();
  }
  buildCounterListMetadataImportsResponse--;
  return o;
}

void checkListMetadataImportsResponse(api.ListMetadataImportsResponse o) {
  buildCounterListMetadataImportsResponse++;
  if (buildCounterListMetadataImportsResponse < 3) {
    checkUnnamed16(o.metadataImports!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed17(o.unreachable!);
  }
  buildCounterListMetadataImportsResponse--;
}

core.List<api.MigrationExecution> buildUnnamed18() => [
  buildMigrationExecution(),
  buildMigrationExecution(),
];

void checkUnnamed18(core.List<api.MigrationExecution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMigrationExecution(o[0]);
  checkMigrationExecution(o[1]);
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListMigrationExecutionsResponse = 0;
api.ListMigrationExecutionsResponse buildListMigrationExecutionsResponse() {
  final o = api.ListMigrationExecutionsResponse();
  buildCounterListMigrationExecutionsResponse++;
  if (buildCounterListMigrationExecutionsResponse < 3) {
    o.migrationExecutions = buildUnnamed18();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed19();
  }
  buildCounterListMigrationExecutionsResponse--;
  return o;
}

void checkListMigrationExecutionsResponse(
  api.ListMigrationExecutionsResponse o,
) {
  buildCounterListMigrationExecutionsResponse++;
  if (buildCounterListMigrationExecutionsResponse < 3) {
    checkUnnamed18(o.migrationExecutions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed19(o.unreachable!);
  }
  buildCounterListMigrationExecutionsResponse--;
}

core.List<api.Operation> buildUnnamed20() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed20(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
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
    o.operations = buildUnnamed20();
    o.unreachable = buildUnnamed21();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed20(o.operations!);
    checkUnnamed21(o.unreachable!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Service> buildUnnamed22() => [buildService(), buildService()];

void checkUnnamed22(core.List<api.Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkService(o[0]);
  checkService(o[1]);
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListServicesResponse = 0;
api.ListServicesResponse buildListServicesResponse() {
  final o = api.ListServicesResponse();
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    o.nextPageToken = 'foo';
    o.services = buildUnnamed22();
    o.unreachable = buildUnnamed23();
  }
  buildCounterListServicesResponse--;
  return o;
}

void checkListServicesResponse(api.ListServicesResponse o) {
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed22(o.services!);
    checkUnnamed23(o.unreachable!);
  }
  buildCounterListServicesResponse--;
}

core.Map<core.String, core.String> buildUnnamed24() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed24(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed25() => {
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

void checkUnnamed25(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed24();
    o.locationId = 'foo';
    o.metadata = buildUnnamed25();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed24(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed25(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterMaintenanceWindow = 0;
api.MaintenanceWindow buildMaintenanceWindow() {
  final o = api.MaintenanceWindow();
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    o.dayOfWeek = 'foo';
    o.hourOfDay = 42;
  }
  buildCounterMaintenanceWindow--;
  return o;
}

void checkMaintenanceWindow(api.MaintenanceWindow o) {
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    unittest.expect(o.dayOfWeek!, unittest.equals('foo'));
    unittest.expect(o.hourOfDay!, unittest.equals(42));
  }
  buildCounterMaintenanceWindow--;
}

core.int buildCounterMetadataExport = 0;
api.MetadataExport buildMetadataExport() {
  final o = api.MetadataExport();
  buildCounterMetadataExport++;
  if (buildCounterMetadataExport < 3) {
    o.databaseDumpType = 'foo';
    o.destinationGcsUri = 'foo';
    o.endTime = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
  }
  buildCounterMetadataExport--;
  return o;
}

void checkMetadataExport(api.MetadataExport o) {
  buildCounterMetadataExport++;
  if (buildCounterMetadataExport < 3) {
    unittest.expect(o.databaseDumpType!, unittest.equals('foo'));
    unittest.expect(o.destinationGcsUri!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterMetadataExport--;
}

core.int buildCounterMetadataImport = 0;
api.MetadataImport buildMetadataImport() {
  final o = api.MetadataImport();
  buildCounterMetadataImport++;
  if (buildCounterMetadataImport < 3) {
    o.createTime = 'foo';
    o.databaseDump = buildDatabaseDump();
    o.description = 'foo';
    o.endTime = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterMetadataImport--;
  return o;
}

void checkMetadataImport(api.MetadataImport o) {
  buildCounterMetadataImport++;
  if (buildCounterMetadataImport < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkDatabaseDump(o.databaseDump!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterMetadataImport--;
}

core.int buildCounterMetadataIntegration = 0;
api.MetadataIntegration buildMetadataIntegration() {
  final o = api.MetadataIntegration();
  buildCounterMetadataIntegration++;
  if (buildCounterMetadataIntegration < 3) {
    o.dataCatalogConfig = buildDataCatalogConfig();
  }
  buildCounterMetadataIntegration--;
  return o;
}

void checkMetadataIntegration(api.MetadataIntegration o) {
  buildCounterMetadataIntegration++;
  if (buildCounterMetadataIntegration < 3) {
    checkDataCatalogConfig(o.dataCatalogConfig!);
  }
  buildCounterMetadataIntegration--;
}

core.List<api.MetadataExport> buildUnnamed26() => [
  buildMetadataExport(),
  buildMetadataExport(),
];

void checkUnnamed26(core.List<api.MetadataExport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetadataExport(o[0]);
  checkMetadataExport(o[1]);
}

core.List<api.Restore> buildUnnamed27() => [buildRestore(), buildRestore()];

void checkUnnamed27(core.List<api.Restore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRestore(o[0]);
  checkRestore(o[1]);
}

core.int buildCounterMetadataManagementActivity = 0;
api.MetadataManagementActivity buildMetadataManagementActivity() {
  final o = api.MetadataManagementActivity();
  buildCounterMetadataManagementActivity++;
  if (buildCounterMetadataManagementActivity < 3) {
    o.metadataExports = buildUnnamed26();
    o.restores = buildUnnamed27();
  }
  buildCounterMetadataManagementActivity--;
  return o;
}

void checkMetadataManagementActivity(api.MetadataManagementActivity o) {
  buildCounterMetadataManagementActivity++;
  if (buildCounterMetadataManagementActivity < 3) {
    checkUnnamed26(o.metadataExports!);
    checkUnnamed27(o.restores!);
  }
  buildCounterMetadataManagementActivity--;
}

core.int buildCounterMigrationExecution = 0;
api.MigrationExecution buildMigrationExecution() {
  final o = api.MigrationExecution();
  buildCounterMigrationExecution++;
  if (buildCounterMigrationExecution < 3) {
    o.cloudSqlMigrationConfig = buildCloudSQLMigrationConfig();
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.name = 'foo';
    o.phase = 'foo';
    o.state = 'foo';
    o.stateMessage = 'foo';
  }
  buildCounterMigrationExecution--;
  return o;
}

void checkMigrationExecution(api.MigrationExecution o) {
  buildCounterMigrationExecution++;
  if (buildCounterMigrationExecution < 3) {
    checkCloudSQLMigrationConfig(o.cloudSqlMigrationConfig!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.phase!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.stateMessage!, unittest.equals('foo'));
  }
  buildCounterMigrationExecution--;
}

core.int buildCounterMoveTableToDatabaseRequest = 0;
api.MoveTableToDatabaseRequest buildMoveTableToDatabaseRequest() {
  final o = api.MoveTableToDatabaseRequest();
  buildCounterMoveTableToDatabaseRequest++;
  if (buildCounterMoveTableToDatabaseRequest < 3) {
    o.dbName = 'foo';
    o.destinationDbName = 'foo';
    o.tableName = 'foo';
  }
  buildCounterMoveTableToDatabaseRequest--;
  return o;
}

void checkMoveTableToDatabaseRequest(api.MoveTableToDatabaseRequest o) {
  buildCounterMoveTableToDatabaseRequest++;
  if (buildCounterMoveTableToDatabaseRequest < 3) {
    unittest.expect(o.dbName!, unittest.equals('foo'));
    unittest.expect(o.destinationDbName!, unittest.equals('foo'));
    unittest.expect(o.tableName!, unittest.equals('foo'));
  }
  buildCounterMoveTableToDatabaseRequest--;
}

core.List<api.Consumer> buildUnnamed28() => [buildConsumer(), buildConsumer()];

void checkUnnamed28(core.List<api.Consumer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConsumer(o[0]);
  checkConsumer(o[1]);
}

core.int buildCounterNetworkConfig = 0;
api.NetworkConfig buildNetworkConfig() {
  final o = api.NetworkConfig();
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    o.consumers = buildUnnamed28();
  }
  buildCounterNetworkConfig--;
  return o;
}

void checkNetworkConfig(api.NetworkConfig o) {
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    checkUnnamed28(o.consumers!);
  }
  buildCounterNetworkConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed29() => {
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

void checkUnnamed29(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed30() => {
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

void checkUnnamed30(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed29();
    o.name = 'foo';
    o.response = buildUnnamed30();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed29(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed30(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.AuditConfig> buildUnnamed31() => [
  buildAuditConfig(),
  buildAuditConfig(),
];

void checkUnnamed31(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed32() => [buildBinding(), buildBinding()];

void checkUnnamed32(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed31();
    o.bindings = buildUnnamed32();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed31(o.auditConfigs!);
    checkUnnamed32(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterQueryMetadataRequest = 0;
api.QueryMetadataRequest buildQueryMetadataRequest() {
  final o = api.QueryMetadataRequest();
  buildCounterQueryMetadataRequest++;
  if (buildCounterQueryMetadataRequest < 3) {
    o.query = 'foo';
  }
  buildCounterQueryMetadataRequest--;
  return o;
}

void checkQueryMetadataRequest(api.QueryMetadataRequest o) {
  buildCounterQueryMetadataRequest++;
  if (buildCounterQueryMetadataRequest < 3) {
    unittest.expect(o.query!, unittest.equals('foo'));
  }
  buildCounterQueryMetadataRequest--;
}

core.int buildCounterRestore = 0;
api.Restore buildRestore() {
  final o = api.Restore();
  buildCounterRestore++;
  if (buildCounterRestore < 3) {
    o.backup = 'foo';
    o.backupLocation = 'foo';
    o.details = 'foo';
    o.endTime = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
    o.type = 'foo';
  }
  buildCounterRestore--;
  return o;
}

void checkRestore(api.Restore o) {
  buildCounterRestore++;
  if (buildCounterRestore < 3) {
    unittest.expect(o.backup!, unittest.equals('foo'));
    unittest.expect(o.backupLocation!, unittest.equals('foo'));
    unittest.expect(o.details!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterRestore--;
}

core.int buildCounterRestoreServiceRequest = 0;
api.RestoreServiceRequest buildRestoreServiceRequest() {
  final o = api.RestoreServiceRequest();
  buildCounterRestoreServiceRequest++;
  if (buildCounterRestoreServiceRequest < 3) {
    o.backup = 'foo';
    o.backupLocation = 'foo';
    o.requestId = 'foo';
    o.restoreType = 'foo';
  }
  buildCounterRestoreServiceRequest--;
  return o;
}

void checkRestoreServiceRequest(api.RestoreServiceRequest o) {
  buildCounterRestoreServiceRequest++;
  if (buildCounterRestoreServiceRequest < 3) {
    unittest.expect(o.backup!, unittest.equals('foo'));
    unittest.expect(o.backupLocation!, unittest.equals('foo'));
    unittest.expect(o.requestId!, unittest.equals('foo'));
    unittest.expect(o.restoreType!, unittest.equals('foo'));
  }
  buildCounterRestoreServiceRequest--;
}

core.int buildCounterScalingConfig = 0;
api.ScalingConfig buildScalingConfig() {
  final o = api.ScalingConfig();
  buildCounterScalingConfig++;
  if (buildCounterScalingConfig < 3) {
    o.autoscalingConfig = buildAutoscalingConfig();
    o.instanceSize = 'foo';
    o.scalingFactor = 42.0;
  }
  buildCounterScalingConfig--;
  return o;
}

void checkScalingConfig(api.ScalingConfig o) {
  buildCounterScalingConfig++;
  if (buildCounterScalingConfig < 3) {
    checkAutoscalingConfig(o.autoscalingConfig!);
    unittest.expect(o.instanceSize!, unittest.equals('foo'));
    unittest.expect(o.scalingFactor!, unittest.equals(42.0));
  }
  buildCounterScalingConfig--;
}

core.int buildCounterScheduledBackup = 0;
api.ScheduledBackup buildScheduledBackup() {
  final o = api.ScheduledBackup();
  buildCounterScheduledBackup++;
  if (buildCounterScheduledBackup < 3) {
    o.backupLocation = 'foo';
    o.cronSchedule = 'foo';
    o.enabled = true;
    o.latestBackup = buildLatestBackup();
    o.nextScheduledTime = 'foo';
    o.timeZone = 'foo';
  }
  buildCounterScheduledBackup--;
  return o;
}

void checkScheduledBackup(api.ScheduledBackup o) {
  buildCounterScheduledBackup++;
  if (buildCounterScheduledBackup < 3) {
    unittest.expect(o.backupLocation!, unittest.equals('foo'));
    unittest.expect(o.cronSchedule!, unittest.equals('foo'));
    unittest.expect(o.enabled!, unittest.isTrue);
    checkLatestBackup(o.latestBackup!);
    unittest.expect(o.nextScheduledTime!, unittest.equals('foo'));
    unittest.expect(o.timeZone!, unittest.equals('foo'));
  }
  buildCounterScheduledBackup--;
}

core.int buildCounterSecret = 0;
api.Secret buildSecret() {
  final o = api.Secret();
  buildCounterSecret++;
  if (buildCounterSecret < 3) {
    o.cloudSecret = 'foo';
  }
  buildCounterSecret--;
  return o;
}

void checkSecret(api.Secret o) {
  buildCounterSecret++;
  if (buildCounterSecret < 3) {
    unittest.expect(o.cloudSecret!, unittest.equals('foo'));
  }
  buildCounterSecret--;
}

core.Map<core.String, core.String> buildUnnamed33() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed33(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed34() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed34(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterService = 0;
api.Service buildService() {
  final o = api.Service();
  buildCounterService++;
  if (buildCounterService < 3) {
    o.artifactGcsUri = 'foo';
    o.createTime = 'foo';
    o.databaseType = 'foo';
    o.deletionProtection = true;
    o.encryptionConfig = buildEncryptionConfig();
    o.endpointUri = 'foo';
    o.hiveMetastoreConfig = buildHiveMetastoreConfig();
    o.labels = buildUnnamed33();
    o.maintenanceWindow = buildMaintenanceWindow();
    o.metadataIntegration = buildMetadataIntegration();
    o.metadataManagementActivity = buildMetadataManagementActivity();
    o.name = 'foo';
    o.network = 'foo';
    o.networkConfig = buildNetworkConfig();
    o.port = 42;
    o.releaseChannel = 'foo';
    o.scalingConfig = buildScalingConfig();
    o.scheduledBackup = buildScheduledBackup();
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.tags = buildUnnamed34();
    o.telemetryConfig = buildTelemetryConfig();
    o.tier = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterService--;
  return o;
}

void checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    unittest.expect(o.artifactGcsUri!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.databaseType!, unittest.equals('foo'));
    unittest.expect(o.deletionProtection!, unittest.isTrue);
    checkEncryptionConfig(o.encryptionConfig!);
    unittest.expect(o.endpointUri!, unittest.equals('foo'));
    checkHiveMetastoreConfig(o.hiveMetastoreConfig!);
    checkUnnamed33(o.labels!);
    checkMaintenanceWindow(o.maintenanceWindow!);
    checkMetadataIntegration(o.metadataIntegration!);
    checkMetadataManagementActivity(o.metadataManagementActivity!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.network!, unittest.equals('foo'));
    checkNetworkConfig(o.networkConfig!);
    unittest.expect(o.port!, unittest.equals(42));
    unittest.expect(o.releaseChannel!, unittest.equals('foo'));
    checkScalingConfig(o.scalingConfig!);
    checkScheduledBackup(o.scheduledBackup!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.stateMessage!, unittest.equals('foo'));
    checkUnnamed34(o.tags!);
    checkTelemetryConfig(o.telemetryConfig!);
    unittest.expect(o.tier!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterService--;
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
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterStartMigrationRequest = 0;
api.StartMigrationRequest buildStartMigrationRequest() {
  final o = api.StartMigrationRequest();
  buildCounterStartMigrationRequest++;
  if (buildCounterStartMigrationRequest < 3) {
    o.migrationExecution = buildMigrationExecution();
    o.requestId = 'foo';
  }
  buildCounterStartMigrationRequest--;
  return o;
}

void checkStartMigrationRequest(api.StartMigrationRequest o) {
  buildCounterStartMigrationRequest++;
  if (buildCounterStartMigrationRequest < 3) {
    checkMigrationExecution(o.migrationExecution!);
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterStartMigrationRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed35() => {
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

void checkUnnamed35(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed36() => [
  buildUnnamed35(),
  buildUnnamed35(),
];

void checkUnnamed36(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed35(o[0]);
  checkUnnamed35(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed36();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed36(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTelemetryConfig = 0;
api.TelemetryConfig buildTelemetryConfig() {
  final o = api.TelemetryConfig();
  buildCounterTelemetryConfig++;
  if (buildCounterTelemetryConfig < 3) {
    o.logFormat = 'foo';
  }
  buildCounterTelemetryConfig--;
  return o;
}

void checkTelemetryConfig(api.TelemetryConfig o) {
  buildCounterTelemetryConfig++;
  if (buildCounterTelemetryConfig < 3) {
    unittest.expect(o.logFormat!, unittest.equals('foo'));
  }
  buildCounterTelemetryConfig--;
}

core.List<core.String> buildUnnamed37() => ['foo', 'foo'];

void checkUnnamed37(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed37();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed37(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed38() => ['foo', 'foo'];

void checkUnnamed38(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed38();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed38(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<core.String> buildUnnamed39() => ['foo', 'foo'];

void checkUnnamed39(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AlterMetadataResourceLocationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAlterMetadataResourceLocationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AlterMetadataResourceLocationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAlterMetadataResourceLocationRequest(od);
    });
  });

  unittest.group('obj-schema-AlterTablePropertiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAlterTablePropertiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AlterTablePropertiesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAlterTablePropertiesRequest(od);
    });
  });

  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditLogConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-AutoscalingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoscalingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoscalingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutoscalingConfig(od);
    });
  });

  unittest.group('obj-schema-AuxiliaryVersionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuxiliaryVersionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuxiliaryVersionConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuxiliaryVersionConfig(od);
    });
  });

  unittest.group('obj-schema-BackendMetastore', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackendMetastore();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackendMetastore.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBackendMetastore(od);
    });
  });

  unittest.group('obj-schema-Backup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Backup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBackup(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Binding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-CancelMigrationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelMigrationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelMigrationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelMigrationRequest(od);
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

  unittest.group('obj-schema-CdcConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCdcConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CdcConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCdcConfig(od);
    });
  });

  unittest.group('obj-schema-CloudSQLConnectionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudSQLConnectionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudSQLConnectionConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudSQLConnectionConfig(od);
    });
  });

  unittest.group('obj-schema-CloudSQLMigrationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudSQLMigrationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudSQLMigrationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudSQLMigrationConfig(od);
    });
  });

  unittest.group('obj-schema-CompleteMigrationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompleteMigrationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompleteMigrationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCompleteMigrationRequest(od);
    });
  });

  unittest.group('obj-schema-Consumer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsumer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Consumer.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConsumer(od);
    });
  });

  unittest.group('obj-schema-DataCatalogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataCatalogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataCatalogConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataCatalogConfig(od);
    });
  });

  unittest.group('obj-schema-DatabaseDump', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseDump();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseDump.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabaseDump(od);
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

  unittest.group('obj-schema-EncryptionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryptionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncryptionConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEncryptionConfig(od);
    });
  });

  unittest.group('obj-schema-ExportMetadataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportMetadataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportMetadataRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExportMetadataRequest(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Expr.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-Federation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFederation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Federation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFederation(od);
    });
  });

  unittest.group('obj-schema-HiveMetastoreConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHiveMetastoreConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HiveMetastoreConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHiveMetastoreConfig(od);
    });
  });

  unittest.group('obj-schema-KerberosConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKerberosConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KerberosConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkKerberosConfig(od);
    });
  });

  unittest.group('obj-schema-LatestBackup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLatestBackup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LatestBackup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLatestBackup(od);
    });
  });

  unittest.group('obj-schema-LimitConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLimitConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LimitConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLimitConfig(od);
    });
  });

  unittest.group('obj-schema-ListBackupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBackupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBackupsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListBackupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListFederationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFederationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFederationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListFederationsResponse(od);
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

  unittest.group('obj-schema-ListMetadataImportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMetadataImportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMetadataImportsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMetadataImportsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMigrationExecutionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMigrationExecutionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMigrationExecutionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMigrationExecutionsResponse(od);
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

  unittest.group('obj-schema-ListServicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListServicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListServicesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListServicesResponse(od);
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

  unittest.group('obj-schema-MaintenanceWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaintenanceWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaintenanceWindow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMaintenanceWindow(od);
    });
  });

  unittest.group('obj-schema-MetadataExport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetadataExport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetadataExport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMetadataExport(od);
    });
  });

  unittest.group('obj-schema-MetadataImport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetadataImport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetadataImport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMetadataImport(od);
    });
  });

  unittest.group('obj-schema-MetadataIntegration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetadataIntegration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetadataIntegration.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMetadataIntegration(od);
    });
  });

  unittest.group('obj-schema-MetadataManagementActivity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetadataManagementActivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetadataManagementActivity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMetadataManagementActivity(od);
    });
  });

  unittest.group('obj-schema-MigrationExecution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMigrationExecution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MigrationExecution.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMigrationExecution(od);
    });
  });

  unittest.group('obj-schema-MoveTableToDatabaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoveTableToDatabaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MoveTableToDatabaseRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMoveTableToDatabaseRequest(od);
    });
  });

  unittest.group('obj-schema-NetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkConfig(od);
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

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Policy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-QueryMetadataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryMetadataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryMetadataRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueryMetadataRequest(od);
    });
  });

  unittest.group('obj-schema-Restore', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestore();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Restore.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRestore(od);
    });
  });

  unittest.group('obj-schema-RestoreServiceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestoreServiceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestoreServiceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRestoreServiceRequest(od);
    });
  });

  unittest.group('obj-schema-ScalingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScalingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScalingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkScalingConfig(od);
    });
  });

  unittest.group('obj-schema-ScheduledBackup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScheduledBackup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScheduledBackup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkScheduledBackup(od);
    });
  });

  unittest.group('obj-schema-Secret', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecret();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Secret.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecret(od);
    });
  });

  unittest.group('obj-schema-Service', () {
    unittest.test('to-json--from-json', () async {
      final o = buildService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Service.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkService(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-StartMigrationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartMigrationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartMigrationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStartMigrationRequest(od);
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

  unittest.group('obj-schema-TelemetryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTelemetryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TelemetryConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTelemetryConfig(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations;
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
      final res = api.DataprocMetastoreApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed39();
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

  unittest.group('resource-ProjectsLocationsFederationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.federations;
      final arg_request = buildFederation();
      final arg_parent = 'foo';
      final arg_federationId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Federation.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFederation(obj);

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
            queryMap['federationId']!.first,
            unittest.equals(arg_federationId),
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
        federationId: arg_federationId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.federations;
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
      final res = api.DataprocMetastoreApi(mock).projects.locations.federations;
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
          final resp = convert.json.encode(buildFederation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkFederation(response as api.Federation);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.federations;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.federations;
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
          final resp = convert.json.encode(buildListFederationsResponse());
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
      checkListFederationsResponse(response as api.ListFederationsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.federations;
      final arg_request = buildFederation();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Federation.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFederation(obj);

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

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.federations;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.federations;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

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
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.operations;
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
      final res = api.DataprocMetastoreApi(mock).projects.locations.operations;
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
      final res = api.DataprocMetastoreApi(mock).projects.locations.operations;
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
      final res = api.DataprocMetastoreApi(mock).projects.locations.operations;
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

  unittest.group('resource-ProjectsLocationsServicesResource', () {
    unittest.test('method--alterLocation', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_request = buildAlterMetadataResourceLocationRequest();
      final arg_service = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AlterMetadataResourceLocationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAlterMetadataResourceLocationRequest(obj);

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
      final response = await res.alterLocation(
        arg_request,
        arg_service,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--alterTableProperties', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_request = buildAlterTablePropertiesRequest();
      final arg_service = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AlterTablePropertiesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAlterTablePropertiesRequest(obj);

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
      final response = await res.alterTableProperties(
        arg_request,
        arg_service,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--cancelMigration', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_request = buildCancelMigrationRequest();
      final arg_service = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelMigrationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelMigrationRequest(obj);

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
      final response = await res.cancelMigration(
        arg_request,
        arg_service,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--completeMigration', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_request = buildCompleteMigrationRequest();
      final arg_service = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CompleteMigrationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCompleteMigrationRequest(obj);

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
      final response = await res.completeMigration(
        arg_request,
        arg_service,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_request = buildService();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_serviceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Service.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkService(obj);

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
            queryMap['serviceId']!.first,
            unittest.equals(arg_serviceId),
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
        serviceId: arg_serviceId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
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

    unittest.test('method--exportMetadata', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_request = buildExportMetadataRequest();
      final arg_service = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExportMetadataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExportMetadataRequest(obj);

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
      final response = await res.exportMetadata(
        arg_request,
        arg_service,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
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
          final resp = convert.json.encode(buildService());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkService(response as api.Service);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
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
          final resp = convert.json.encode(buildListServicesResponse());
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
      checkListServicesResponse(response as api.ListServicesResponse);
    });

    unittest.test('method--moveTableToDatabase', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_request = buildMoveTableToDatabaseRequest();
      final arg_service = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MoveTableToDatabaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMoveTableToDatabaseRequest(obj);

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
      final response = await res.moveTableToDatabase(
        arg_request,
        arg_service,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_request = buildService();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Service.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkService(obj);

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

    unittest.test('method--queryMetadata', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_request = buildQueryMetadataRequest();
      final arg_service = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.QueryMetadataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkQueryMetadataRequest(obj);

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
      final response = await res.queryMetadata(
        arg_request,
        arg_service,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--restore', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_request = buildRestoreServiceRequest();
      final arg_service = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RestoreServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRestoreServiceRequest(obj);

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
      final response = await res.restore(
        arg_request,
        arg_service,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--startMigration', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_request = buildStartMigrationRequest();
      final arg_service = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.StartMigrationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkStartMigrationRequest(obj);

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
      final response = await res.startMigration(
        arg_request,
        arg_service,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

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
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsServicesBackupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocMetastoreApi(mock).projects.locations.services.backups;
      final arg_request = buildBackup();
      final arg_parent = 'foo';
      final arg_backupId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Backup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBackup(obj);

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
            queryMap['backupId']!.first,
            unittest.equals(arg_backupId),
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
        backupId: arg_backupId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocMetastoreApi(mock).projects.locations.services.backups;
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
      final res =
          api.DataprocMetastoreApi(mock).projects.locations.services.backups;
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
          final resp = convert.json.encode(buildBackup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkBackup(response as api.Backup);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocMetastoreApi(mock).projects.locations.services.backups;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocMetastoreApi(mock).projects.locations.services.backups;
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
          final resp = convert.json.encode(buildListBackupsResponse());
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
      checkListBackupsResponse(response as api.ListBackupsResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocMetastoreApi(mock).projects.locations.services.backups;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });
  });

  unittest.group('resource-ProjectsLocationsServicesDatabasesResource', () {
    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocMetastoreApi(mock).projects.locations.services.databases;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocMetastoreApi(mock).projects.locations.services.databases;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });
  });

  unittest.group('resource-ProjectsLocationsServicesDatabasesTablesResource', () {
    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocMetastoreApi(
            mock,
          ).projects.locations.services.databases.tables;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocMetastoreApi(
            mock,
          ).projects.locations.services.databases.tables;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });
  });

  unittest.group('resource-ProjectsLocationsServicesMetadataImportsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocMetastoreApi(
            mock,
          ).projects.locations.services.metadataImports;
      final arg_request = buildMetadataImport();
      final arg_parent = 'foo';
      final arg_metadataImportId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MetadataImport.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMetadataImport(obj);

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
            queryMap['metadataImportId']!.first,
            unittest.equals(arg_metadataImportId),
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
        metadataImportId: arg_metadataImportId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocMetastoreApi(
            mock,
          ).projects.locations.services.metadataImports;
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
          final resp = convert.json.encode(buildMetadataImport());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMetadataImport(response as api.MetadataImport);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocMetastoreApi(
            mock,
          ).projects.locations.services.metadataImports;
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
          final resp = convert.json.encode(buildListMetadataImportsResponse());
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
      checkListMetadataImportsResponse(
        response as api.ListMetadataImportsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocMetastoreApi(
            mock,
          ).projects.locations.services.metadataImports;
      final arg_request = buildMetadataImport();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MetadataImport.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMetadataImport(obj);

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

  unittest.group('resource-ProjectsLocationsServicesMigrationExecutionsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocMetastoreApi(
            mock,
          ).projects.locations.services.migrationExecutions;
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
      final res =
          api.DataprocMetastoreApi(
            mock,
          ).projects.locations.services.migrationExecutions;
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
          final resp = convert.json.encode(buildMigrationExecution());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMigrationExecution(response as api.MigrationExecution);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocMetastoreApi(
            mock,
          ).projects.locations.services.migrationExecutions;
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
          final resp = convert.json.encode(
            buildListMigrationExecutionsResponse(),
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
        $fields: arg_$fields,
      );
      checkListMigrationExecutionsResponse(
        response as api.ListMigrationExecutionsResponse,
      );
    });
  });
}
