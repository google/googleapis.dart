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

import 'package:googleapis/datamigration/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAlloyDbConnectionProfile = 0;
api.AlloyDbConnectionProfile buildAlloyDbConnectionProfile() {
  final o = api.AlloyDbConnectionProfile();
  buildCounterAlloyDbConnectionProfile++;
  if (buildCounterAlloyDbConnectionProfile < 3) {
    o.clusterId = 'foo';
    o.settings = buildAlloyDbSettings();
  }
  buildCounterAlloyDbConnectionProfile--;
  return o;
}

void checkAlloyDbConnectionProfile(api.AlloyDbConnectionProfile o) {
  buildCounterAlloyDbConnectionProfile++;
  if (buildCounterAlloyDbConnectionProfile < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    checkAlloyDbSettings(o.settings!);
  }
  buildCounterAlloyDbConnectionProfile--;
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

core.int buildCounterAlloyDbSettings = 0;
api.AlloyDbSettings buildAlloyDbSettings() {
  final o = api.AlloyDbSettings();
  buildCounterAlloyDbSettings++;
  if (buildCounterAlloyDbSettings < 3) {
    o.databaseVersion = 'foo';
    o.encryptionConfig = buildEncryptionConfig();
    o.initialUser = buildUserPassword();
    o.labels = buildUnnamed0();
    o.primaryInstanceSettings = buildPrimaryInstanceSettings();
    o.vpcNetwork = 'foo';
  }
  buildCounterAlloyDbSettings--;
  return o;
}

void checkAlloyDbSettings(api.AlloyDbSettings o) {
  buildCounterAlloyDbSettings++;
  if (buildCounterAlloyDbSettings < 3) {
    unittest.expect(
      o.databaseVersion!,
      unittest.equals('foo'),
    );
    checkEncryptionConfig(o.encryptionConfig!);
    checkUserPassword(o.initialUser!);
    checkUnnamed0(o.labels!);
    checkPrimaryInstanceSettings(o.primaryInstanceSettings!);
    unittest.expect(
      o.vpcNetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterAlloyDbSettings--;
}

core.int buildCounterApplyConversionWorkspaceRequest = 0;
api.ApplyConversionWorkspaceRequest buildApplyConversionWorkspaceRequest() {
  final o = api.ApplyConversionWorkspaceRequest();
  buildCounterApplyConversionWorkspaceRequest++;
  if (buildCounterApplyConversionWorkspaceRequest < 3) {
    o.autoCommit = true;
    o.connectionProfile = 'foo';
    o.dryRun = true;
    o.filter = 'foo';
  }
  buildCounterApplyConversionWorkspaceRequest--;
  return o;
}

void checkApplyConversionWorkspaceRequest(
    api.ApplyConversionWorkspaceRequest o) {
  buildCounterApplyConversionWorkspaceRequest++;
  if (buildCounterApplyConversionWorkspaceRequest < 3) {
    unittest.expect(o.autoCommit!, unittest.isTrue);
    unittest.expect(
      o.connectionProfile!,
      unittest.equals('foo'),
    );
    unittest.expect(o.dryRun!, unittest.isTrue);
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
  }
  buildCounterApplyConversionWorkspaceRequest--;
}

core.int buildCounterApplyHash = 0;
api.ApplyHash buildApplyHash() {
  final o = api.ApplyHash();
  buildCounterApplyHash++;
  if (buildCounterApplyHash < 3) {
    o.uuidFromBytes = buildEmpty();
  }
  buildCounterApplyHash--;
  return o;
}

void checkApplyHash(api.ApplyHash o) {
  buildCounterApplyHash++;
  if (buildCounterApplyHash < 3) {
    checkEmpty(o.uuidFromBytes!);
  }
  buildCounterApplyHash--;
}

core.int buildCounterApplyJobDetails = 0;
api.ApplyJobDetails buildApplyJobDetails() {
  final o = api.ApplyJobDetails();
  buildCounterApplyJobDetails++;
  if (buildCounterApplyJobDetails < 3) {
    o.connectionProfile = 'foo';
    o.filter = 'foo';
  }
  buildCounterApplyJobDetails--;
  return o;
}

void checkApplyJobDetails(api.ApplyJobDetails o) {
  buildCounterApplyJobDetails++;
  if (buildCounterApplyJobDetails < 3) {
    unittest.expect(
      o.connectionProfile!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
  }
  buildCounterApplyJobDetails--;
}

core.int buildCounterAssignSpecificValue = 0;
api.AssignSpecificValue buildAssignSpecificValue() {
  final o = api.AssignSpecificValue();
  buildCounterAssignSpecificValue++;
  if (buildCounterAssignSpecificValue < 3) {
    o.value = 'foo';
  }
  buildCounterAssignSpecificValue--;
  return o;
}

void checkAssignSpecificValue(api.AssignSpecificValue o) {
  buildCounterAssignSpecificValue++;
  if (buildCounterAssignSpecificValue < 3) {
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterAssignSpecificValue--;
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
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
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
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterBackgroundJobLogEntry = 0;
api.BackgroundJobLogEntry buildBackgroundJobLogEntry() {
  final o = api.BackgroundJobLogEntry();
  buildCounterBackgroundJobLogEntry++;
  if (buildCounterBackgroundJobLogEntry < 3) {
    o.applyJobDetails = buildApplyJobDetails();
    o.completionComment = 'foo';
    o.completionState = 'foo';
    o.convertJobDetails = buildConvertJobDetails();
    o.finishTime = 'foo';
    o.id = 'foo';
    o.importRulesJobDetails = buildImportRulesJobDetails();
    o.jobType = 'foo';
    o.requestAutocommit = true;
    o.seedJobDetails = buildSeedJobDetails();
    o.startTime = 'foo';
  }
  buildCounterBackgroundJobLogEntry--;
  return o;
}

void checkBackgroundJobLogEntry(api.BackgroundJobLogEntry o) {
  buildCounterBackgroundJobLogEntry++;
  if (buildCounterBackgroundJobLogEntry < 3) {
    checkApplyJobDetails(o.applyJobDetails!);
    unittest.expect(
      o.completionComment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.completionState!,
      unittest.equals('foo'),
    );
    checkConvertJobDetails(o.convertJobDetails!);
    unittest.expect(
      o.finishTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkImportRulesJobDetails(o.importRulesJobDetails!);
    unittest.expect(
      o.jobType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.requestAutocommit!, unittest.isTrue);
    checkSeedJobDetails(o.seedJobDetails!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackgroundJobLogEntry--;
}

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
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
    o.members = buildUnnamed3();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed3(o.members!);
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
    o.additionalPublicIp = 'foo';
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
      o.additionalPublicIp!,
      unittest.equals('foo'),
    );
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

core.int buildCounterCloudSqlSettings = 0;
api.CloudSqlSettings buildCloudSqlSettings() {
  final o = api.CloudSqlSettings();
  buildCounterCloudSqlSettings++;
  if (buildCounterCloudSqlSettings < 3) {
    o.activationPolicy = 'foo';
    o.autoStorageIncrease = true;
    o.availabilityType = 'foo';
    o.cmekKeyName = 'foo';
    o.collation = 'foo';
    o.dataCacheConfig = buildDataCacheConfig();
    o.dataDiskSizeGb = 'foo';
    o.dataDiskType = 'foo';
    o.databaseFlags = buildUnnamed4();
    o.databaseVersion = 'foo';
    o.edition = 'foo';
    o.ipConfig = buildSqlIpConfig();
    o.rootPassword = 'foo';
    o.rootPasswordSet = true;
    o.secondaryZone = 'foo';
    o.sourceId = 'foo';
    o.storageAutoResizeLimit = 'foo';
    o.tier = 'foo';
    o.userLabels = buildUnnamed5();
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
      o.availabilityType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cmekKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.collation!,
      unittest.equals('foo'),
    );
    checkDataCacheConfig(o.dataCacheConfig!);
    unittest.expect(
      o.dataDiskSizeGb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataDiskType!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.databaseFlags!);
    unittest.expect(
      o.databaseVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.edition!,
      unittest.equals('foo'),
    );
    checkSqlIpConfig(o.ipConfig!);
    unittest.expect(
      o.rootPassword!,
      unittest.equals('foo'),
    );
    unittest.expect(o.rootPasswordSet!, unittest.isTrue);
    unittest.expect(
      o.secondaryZone!,
      unittest.equals('foo'),
    );
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
    checkUnnamed5(o.userLabels!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudSqlSettings--;
}

core.Map<core.String, core.Object?> buildUnnamed6() => {
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

void checkUnnamed6(core.Map<core.String, core.Object?> o) {
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

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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

core.int buildCounterColumnEntity = 0;
api.ColumnEntity buildColumnEntity() {
  final o = api.ColumnEntity();
  buildCounterColumnEntity++;
  if (buildCounterColumnEntity < 3) {
    o.array = true;
    o.arrayLength = 42;
    o.autoGenerated = true;
    o.charset = 'foo';
    o.collation = 'foo';
    o.comment = 'foo';
    o.customFeatures = buildUnnamed6();
    o.dataType = 'foo';
    o.defaultValue = 'foo';
    o.fractionalSecondsPrecision = 42;
    o.length = 'foo';
    o.name = 'foo';
    o.nullable = true;
    o.ordinalPosition = 42;
    o.precision = 42;
    o.scale = 42;
    o.setValues = buildUnnamed7();
    o.udt = true;
  }
  buildCounterColumnEntity--;
  return o;
}

void checkColumnEntity(api.ColumnEntity o) {
  buildCounterColumnEntity++;
  if (buildCounterColumnEntity < 3) {
    unittest.expect(o.array!, unittest.isTrue);
    unittest.expect(
      o.arrayLength!,
      unittest.equals(42),
    );
    unittest.expect(o.autoGenerated!, unittest.isTrue);
    unittest.expect(
      o.charset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.collation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.comment!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.customFeatures!);
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fractionalSecondsPrecision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.length!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.nullable!, unittest.isTrue);
    unittest.expect(
      o.ordinalPosition!,
      unittest.equals(42),
    );
    unittest.expect(
      o.precision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.scale!,
      unittest.equals(42),
    );
    checkUnnamed7(o.setValues!);
    unittest.expect(o.udt!, unittest.isTrue);
  }
  buildCounterColumnEntity--;
}

core.int buildCounterCommitConversionWorkspaceRequest = 0;
api.CommitConversionWorkspaceRequest buildCommitConversionWorkspaceRequest() {
  final o = api.CommitConversionWorkspaceRequest();
  buildCounterCommitConversionWorkspaceRequest++;
  if (buildCounterCommitConversionWorkspaceRequest < 3) {
    o.commitName = 'foo';
  }
  buildCounterCommitConversionWorkspaceRequest--;
  return o;
}

void checkCommitConversionWorkspaceRequest(
    api.CommitConversionWorkspaceRequest o) {
  buildCounterCommitConversionWorkspaceRequest++;
  if (buildCounterCommitConversionWorkspaceRequest < 3) {
    unittest.expect(
      o.commitName!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommitConversionWorkspaceRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed8() => {
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

void checkUnnamed8(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterConditionalColumnSetValue = 0;
api.ConditionalColumnSetValue buildConditionalColumnSetValue() {
  final o = api.ConditionalColumnSetValue();
  buildCounterConditionalColumnSetValue++;
  if (buildCounterConditionalColumnSetValue < 3) {
    o.customFeatures = buildUnnamed8();
    o.sourceNumericFilter = buildSourceNumericFilter();
    o.sourceTextFilter = buildSourceTextFilter();
    o.valueTransformation = buildValueTransformation();
  }
  buildCounterConditionalColumnSetValue--;
  return o;
}

void checkConditionalColumnSetValue(api.ConditionalColumnSetValue o) {
  buildCounterConditionalColumnSetValue++;
  if (buildCounterConditionalColumnSetValue < 3) {
    checkUnnamed8(o.customFeatures!);
    checkSourceNumericFilter(o.sourceNumericFilter!);
    checkSourceTextFilter(o.sourceTextFilter!);
    checkValueTransformation(o.valueTransformation!);
  }
  buildCounterConditionalColumnSetValue--;
}

core.Map<core.String, core.String> buildUnnamed9() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed9(core.Map<core.String, core.String> o) {
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
    o.alloydb = buildAlloyDbConnectionProfile();
    o.cloudsql = buildCloudSqlConnectionProfile();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.error = buildStatus();
    o.labels = buildUnnamed9();
    o.mysql = buildMySqlConnectionProfile();
    o.name = 'foo';
    o.oracle = buildOracleConnectionProfile();
    o.postgresql = buildPostgreSqlConnectionProfile();
    o.provider = 'foo';
    o.sqlserver = buildSqlServerConnectionProfile();
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterConnectionProfile--;
  return o;
}

void checkConnectionProfile(api.ConnectionProfile o) {
  buildCounterConnectionProfile++;
  if (buildCounterConnectionProfile < 3) {
    checkAlloyDbConnectionProfile(o.alloydb!);
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
    checkUnnamed9(o.labels!);
    checkMySqlConnectionProfile(o.mysql!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkOracleConnectionProfile(o.oracle!);
    checkPostgreSqlConnectionProfile(o.postgresql!);
    unittest.expect(
      o.provider!,
      unittest.equals('foo'),
    );
    checkSqlServerConnectionProfile(o.sqlserver!);
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

core.Map<core.String, core.Object?> buildUnnamed10() => {
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

void checkUnnamed10(core.Map<core.String, core.Object?> o) {
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

core.List<core.String> buildUnnamed12() => [
      'foo',
      'foo',
    ];

void checkUnnamed12(core.List<core.String> o) {
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

core.int buildCounterConstraintEntity = 0;
api.ConstraintEntity buildConstraintEntity() {
  final o = api.ConstraintEntity();
  buildCounterConstraintEntity++;
  if (buildCounterConstraintEntity < 3) {
    o.customFeatures = buildUnnamed10();
    o.name = 'foo';
    o.referenceColumns = buildUnnamed11();
    o.referenceTable = 'foo';
    o.tableColumns = buildUnnamed12();
    o.tableName = 'foo';
    o.type = 'foo';
  }
  buildCounterConstraintEntity--;
  return o;
}

void checkConstraintEntity(api.ConstraintEntity o) {
  buildCounterConstraintEntity++;
  if (buildCounterConstraintEntity < 3) {
    checkUnnamed10(o.customFeatures!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.referenceColumns!);
    unittest.expect(
      o.referenceTable!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.tableColumns!);
    unittest.expect(
      o.tableName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterConstraintEntity--;
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

core.int buildCounterConversionWorkspace = 0;
api.ConversionWorkspace buildConversionWorkspace() {
  final o = api.ConversionWorkspace();
  buildCounterConversionWorkspace++;
  if (buildCounterConversionWorkspace < 3) {
    o.createTime = 'foo';
    o.destination = buildDatabaseEngineInfo();
    o.displayName = 'foo';
    o.globalSettings = buildUnnamed13();
    o.hasUncommittedChanges = true;
    o.latestCommitId = 'foo';
    o.latestCommitTime = 'foo';
    o.name = 'foo';
    o.source = buildDatabaseEngineInfo();
    o.updateTime = 'foo';
  }
  buildCounterConversionWorkspace--;
  return o;
}

void checkConversionWorkspace(api.ConversionWorkspace o) {
  buildCounterConversionWorkspace++;
  if (buildCounterConversionWorkspace < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkDatabaseEngineInfo(o.destination!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.globalSettings!);
    unittest.expect(o.hasUncommittedChanges!, unittest.isTrue);
    unittest.expect(
      o.latestCommitId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latestCommitTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkDatabaseEngineInfo(o.source!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterConversionWorkspace--;
}

core.int buildCounterConversionWorkspaceInfo = 0;
api.ConversionWorkspaceInfo buildConversionWorkspaceInfo() {
  final o = api.ConversionWorkspaceInfo();
  buildCounterConversionWorkspaceInfo++;
  if (buildCounterConversionWorkspaceInfo < 3) {
    o.commitId = 'foo';
    o.name = 'foo';
  }
  buildCounterConversionWorkspaceInfo--;
  return o;
}

void checkConversionWorkspaceInfo(api.ConversionWorkspaceInfo o) {
  buildCounterConversionWorkspaceInfo++;
  if (buildCounterConversionWorkspaceInfo < 3) {
    unittest.expect(
      o.commitId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterConversionWorkspaceInfo--;
}

core.int buildCounterConvertConversionWorkspaceRequest = 0;
api.ConvertConversionWorkspaceRequest buildConvertConversionWorkspaceRequest() {
  final o = api.ConvertConversionWorkspaceRequest();
  buildCounterConvertConversionWorkspaceRequest++;
  if (buildCounterConvertConversionWorkspaceRequest < 3) {
    o.autoCommit = true;
    o.convertFullPath = true;
    o.filter = 'foo';
  }
  buildCounterConvertConversionWorkspaceRequest--;
  return o;
}

void checkConvertConversionWorkspaceRequest(
    api.ConvertConversionWorkspaceRequest o) {
  buildCounterConvertConversionWorkspaceRequest++;
  if (buildCounterConvertConversionWorkspaceRequest < 3) {
    unittest.expect(o.autoCommit!, unittest.isTrue);
    unittest.expect(o.convertFullPath!, unittest.isTrue);
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
  }
  buildCounterConvertConversionWorkspaceRequest--;
}

core.int buildCounterConvertJobDetails = 0;
api.ConvertJobDetails buildConvertJobDetails() {
  final o = api.ConvertJobDetails();
  buildCounterConvertJobDetails++;
  if (buildCounterConvertJobDetails < 3) {
    o.filter = 'foo';
  }
  buildCounterConvertJobDetails--;
  return o;
}

void checkConvertJobDetails(api.ConvertJobDetails o) {
  buildCounterConvertJobDetails++;
  if (buildCounterConvertJobDetails < 3) {
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
  }
  buildCounterConvertJobDetails--;
}

core.int buildCounterConvertRowIdToColumn = 0;
api.ConvertRowIdToColumn buildConvertRowIdToColumn() {
  final o = api.ConvertRowIdToColumn();
  buildCounterConvertRowIdToColumn++;
  if (buildCounterConvertRowIdToColumn < 3) {
    o.onlyIfNoPrimaryKey = true;
  }
  buildCounterConvertRowIdToColumn--;
  return o;
}

void checkConvertRowIdToColumn(api.ConvertRowIdToColumn o) {
  buildCounterConvertRowIdToColumn++;
  if (buildCounterConvertRowIdToColumn < 3) {
    unittest.expect(o.onlyIfNoPrimaryKey!, unittest.isTrue);
  }
  buildCounterConvertRowIdToColumn--;
}

core.int buildCounterDataCacheConfig = 0;
api.DataCacheConfig buildDataCacheConfig() {
  final o = api.DataCacheConfig();
  buildCounterDataCacheConfig++;
  if (buildCounterDataCacheConfig < 3) {
    o.dataCacheEnabled = true;
  }
  buildCounterDataCacheConfig--;
  return o;
}

void checkDataCacheConfig(api.DataCacheConfig o) {
  buildCounterDataCacheConfig++;
  if (buildCounterDataCacheConfig < 3) {
    unittest.expect(o.dataCacheEnabled!, unittest.isTrue);
  }
  buildCounterDataCacheConfig--;
}

core.int buildCounterDatabaseEngineInfo = 0;
api.DatabaseEngineInfo buildDatabaseEngineInfo() {
  final o = api.DatabaseEngineInfo();
  buildCounterDatabaseEngineInfo++;
  if (buildCounterDatabaseEngineInfo < 3) {
    o.engine = 'foo';
    o.version = 'foo';
  }
  buildCounterDatabaseEngineInfo--;
  return o;
}

void checkDatabaseEngineInfo(api.DatabaseEngineInfo o) {
  buildCounterDatabaseEngineInfo++;
  if (buildCounterDatabaseEngineInfo < 3) {
    unittest.expect(
      o.engine!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatabaseEngineInfo--;
}

core.List<api.EntityDdl> buildUnnamed14() => [
      buildEntityDdl(),
      buildEntityDdl(),
    ];

void checkUnnamed14(core.List<api.EntityDdl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityDdl(o[0]);
  checkEntityDdl(o[1]);
}

core.List<api.EntityIssue> buildUnnamed15() => [
      buildEntityIssue(),
      buildEntityIssue(),
    ];

void checkUnnamed15(core.List<api.EntityIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityIssue(o[0]);
  checkEntityIssue(o[1]);
}

core.List<api.EntityMapping> buildUnnamed16() => [
      buildEntityMapping(),
      buildEntityMapping(),
    ];

void checkUnnamed16(core.List<api.EntityMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityMapping(o[0]);
  checkEntityMapping(o[1]);
}

core.int buildCounterDatabaseEntity = 0;
api.DatabaseEntity buildDatabaseEntity() {
  final o = api.DatabaseEntity();
  buildCounterDatabaseEntity++;
  if (buildCounterDatabaseEntity < 3) {
    o.database = buildDatabaseInstanceEntity();
    o.databaseFunction = buildFunctionEntity();
    o.databasePackage = buildPackageEntity();
    o.entityDdl = buildUnnamed14();
    o.entityType = 'foo';
    o.issues = buildUnnamed15();
    o.mappings = buildUnnamed16();
    o.materializedView = buildMaterializedViewEntity();
    o.parentEntity = 'foo';
    o.schema = buildSchemaEntity();
    o.sequence = buildSequenceEntity();
    o.shortName = 'foo';
    o.storedProcedure = buildStoredProcedureEntity();
    o.synonym = buildSynonymEntity();
    o.table = buildTableEntity();
    o.tree = 'foo';
    o.udt = buildUDTEntity();
    o.view = buildViewEntity();
  }
  buildCounterDatabaseEntity--;
  return o;
}

void checkDatabaseEntity(api.DatabaseEntity o) {
  buildCounterDatabaseEntity++;
  if (buildCounterDatabaseEntity < 3) {
    checkDatabaseInstanceEntity(o.database!);
    checkFunctionEntity(o.databaseFunction!);
    checkPackageEntity(o.databasePackage!);
    checkUnnamed14(o.entityDdl!);
    unittest.expect(
      o.entityType!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.issues!);
    checkUnnamed16(o.mappings!);
    checkMaterializedViewEntity(o.materializedView!);
    unittest.expect(
      o.parentEntity!,
      unittest.equals('foo'),
    );
    checkSchemaEntity(o.schema!);
    checkSequenceEntity(o.sequence!);
    unittest.expect(
      o.shortName!,
      unittest.equals('foo'),
    );
    checkStoredProcedureEntity(o.storedProcedure!);
    checkSynonymEntity(o.synonym!);
    checkTableEntity(o.table!);
    unittest.expect(
      o.tree!,
      unittest.equals('foo'),
    );
    checkUDTEntity(o.udt!);
    checkViewEntity(o.view!);
  }
  buildCounterDatabaseEntity--;
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

core.int buildCounterDatabaseInstanceEntity = 0;
api.DatabaseInstanceEntity buildDatabaseInstanceEntity() {
  final o = api.DatabaseInstanceEntity();
  buildCounterDatabaseInstanceEntity++;
  if (buildCounterDatabaseInstanceEntity < 3) {
    o.customFeatures = buildUnnamed17();
  }
  buildCounterDatabaseInstanceEntity--;
  return o;
}

void checkDatabaseInstanceEntity(api.DatabaseInstanceEntity o) {
  buildCounterDatabaseInstanceEntity++;
  if (buildCounterDatabaseInstanceEntity < 3) {
    checkUnnamed17(o.customFeatures!);
  }
  buildCounterDatabaseInstanceEntity--;
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

core.int buildCounterDemoteDestinationRequest = 0;
api.DemoteDestinationRequest buildDemoteDestinationRequest() {
  final o = api.DemoteDestinationRequest();
  buildCounterDemoteDestinationRequest++;
  if (buildCounterDemoteDestinationRequest < 3) {}
  buildCounterDemoteDestinationRequest--;
  return o;
}

void checkDemoteDestinationRequest(api.DemoteDestinationRequest o) {
  buildCounterDemoteDestinationRequest++;
  if (buildCounterDemoteDestinationRequest < 3) {}
  buildCounterDemoteDestinationRequest--;
}

core.List<api.ConversionWorkspace> buildUnnamed18() => [
      buildConversionWorkspace(),
      buildConversionWorkspace(),
    ];

void checkUnnamed18(core.List<api.ConversionWorkspace> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConversionWorkspace(o[0]);
  checkConversionWorkspace(o[1]);
}

core.int buildCounterDescribeConversionWorkspaceRevisionsResponse = 0;
api.DescribeConversionWorkspaceRevisionsResponse
    buildDescribeConversionWorkspaceRevisionsResponse() {
  final o = api.DescribeConversionWorkspaceRevisionsResponse();
  buildCounterDescribeConversionWorkspaceRevisionsResponse++;
  if (buildCounterDescribeConversionWorkspaceRevisionsResponse < 3) {
    o.revisions = buildUnnamed18();
  }
  buildCounterDescribeConversionWorkspaceRevisionsResponse--;
  return o;
}

void checkDescribeConversionWorkspaceRevisionsResponse(
    api.DescribeConversionWorkspaceRevisionsResponse o) {
  buildCounterDescribeConversionWorkspaceRevisionsResponse++;
  if (buildCounterDescribeConversionWorkspaceRevisionsResponse < 3) {
    checkUnnamed18(o.revisions!);
  }
  buildCounterDescribeConversionWorkspaceRevisionsResponse--;
}

core.List<api.DatabaseEntity> buildUnnamed19() => [
      buildDatabaseEntity(),
      buildDatabaseEntity(),
    ];

void checkUnnamed19(core.List<api.DatabaseEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabaseEntity(o[0]);
  checkDatabaseEntity(o[1]);
}

core.int buildCounterDescribeDatabaseEntitiesResponse = 0;
api.DescribeDatabaseEntitiesResponse buildDescribeDatabaseEntitiesResponse() {
  final o = api.DescribeDatabaseEntitiesResponse();
  buildCounterDescribeDatabaseEntitiesResponse++;
  if (buildCounterDescribeDatabaseEntitiesResponse < 3) {
    o.databaseEntities = buildUnnamed19();
    o.nextPageToken = 'foo';
  }
  buildCounterDescribeDatabaseEntitiesResponse--;
  return o;
}

void checkDescribeDatabaseEntitiesResponse(
    api.DescribeDatabaseEntitiesResponse o) {
  buildCounterDescribeDatabaseEntitiesResponse++;
  if (buildCounterDescribeDatabaseEntitiesResponse < 3) {
    checkUnnamed19(o.databaseEntities!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterDescribeDatabaseEntitiesResponse--;
}

core.int buildCounterDoubleComparisonFilter = 0;
api.DoubleComparisonFilter buildDoubleComparisonFilter() {
  final o = api.DoubleComparisonFilter();
  buildCounterDoubleComparisonFilter++;
  if (buildCounterDoubleComparisonFilter < 3) {
    o.value = 42.0;
    o.valueComparison = 'foo';
  }
  buildCounterDoubleComparisonFilter--;
  return o;
}

void checkDoubleComparisonFilter(api.DoubleComparisonFilter o) {
  buildCounterDoubleComparisonFilter++;
  if (buildCounterDoubleComparisonFilter < 3) {
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.valueComparison!,
      unittest.equals('foo'),
    );
  }
  buildCounterDoubleComparisonFilter--;
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

core.List<api.DumpFlag> buildUnnamed20() => [
      buildDumpFlag(),
      buildDumpFlag(),
    ];

void checkUnnamed20(core.List<api.DumpFlag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDumpFlag(o[0]);
  checkDumpFlag(o[1]);
}

core.int buildCounterDumpFlags = 0;
api.DumpFlags buildDumpFlags() {
  final o = api.DumpFlags();
  buildCounterDumpFlags++;
  if (buildCounterDumpFlags < 3) {
    o.dumpFlags = buildUnnamed20();
  }
  buildCounterDumpFlags--;
  return o;
}

void checkDumpFlags(api.DumpFlags o) {
  buildCounterDumpFlags++;
  if (buildCounterDumpFlags < 3) {
    checkUnnamed20(o.dumpFlags!);
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

core.List<core.String> buildUnnamed21() => [
      'foo',
      'foo',
    ];

void checkUnnamed21(core.List<core.String> o) {
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

core.int buildCounterEntityDdl = 0;
api.EntityDdl buildEntityDdl() {
  final o = api.EntityDdl();
  buildCounterEntityDdl++;
  if (buildCounterEntityDdl < 3) {
    o.ddl = 'foo';
    o.ddlType = 'foo';
    o.entity = 'foo';
    o.entityType = 'foo';
    o.issueId = buildUnnamed21();
  }
  buildCounterEntityDdl--;
  return o;
}

void checkEntityDdl(api.EntityDdl o) {
  buildCounterEntityDdl++;
  if (buildCounterEntityDdl < 3) {
    unittest.expect(
      o.ddl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ddlType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityType!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.issueId!);
  }
  buildCounterEntityDdl--;
}

core.int buildCounterEntityIssue = 0;
api.EntityIssue buildEntityIssue() {
  final o = api.EntityIssue();
  buildCounterEntityIssue++;
  if (buildCounterEntityIssue < 3) {
    o.code = 'foo';
    o.ddl = 'foo';
    o.entityType = 'foo';
    o.id = 'foo';
    o.message = 'foo';
    o.position = buildPosition();
    o.severity = 'foo';
    o.type = 'foo';
  }
  buildCounterEntityIssue--;
  return o;
}

void checkEntityIssue(api.EntityIssue o) {
  buildCounterEntityIssue++;
  if (buildCounterEntityIssue < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ddl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    checkPosition(o.position!);
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterEntityIssue--;
}

core.List<api.EntityMappingLogEntry> buildUnnamed22() => [
      buildEntityMappingLogEntry(),
      buildEntityMappingLogEntry(),
    ];

void checkUnnamed22(core.List<api.EntityMappingLogEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityMappingLogEntry(o[0]);
  checkEntityMappingLogEntry(o[1]);
}

core.int buildCounterEntityMapping = 0;
api.EntityMapping buildEntityMapping() {
  final o = api.EntityMapping();
  buildCounterEntityMapping++;
  if (buildCounterEntityMapping < 3) {
    o.draftEntity = 'foo';
    o.draftType = 'foo';
    o.mappingLog = buildUnnamed22();
    o.sourceEntity = 'foo';
    o.sourceType = 'foo';
  }
  buildCounterEntityMapping--;
  return o;
}

void checkEntityMapping(api.EntityMapping o) {
  buildCounterEntityMapping++;
  if (buildCounterEntityMapping < 3) {
    unittest.expect(
      o.draftEntity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.draftType!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.mappingLog!);
    unittest.expect(
      o.sourceEntity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterEntityMapping--;
}

core.int buildCounterEntityMappingLogEntry = 0;
api.EntityMappingLogEntry buildEntityMappingLogEntry() {
  final o = api.EntityMappingLogEntry();
  buildCounterEntityMappingLogEntry++;
  if (buildCounterEntityMappingLogEntry < 3) {
    o.mappingComment = 'foo';
    o.ruleId = 'foo';
    o.ruleRevisionId = 'foo';
  }
  buildCounterEntityMappingLogEntry--;
  return o;
}

void checkEntityMappingLogEntry(api.EntityMappingLogEntry o) {
  buildCounterEntityMappingLogEntry++;
  if (buildCounterEntityMappingLogEntry < 3) {
    unittest.expect(
      o.mappingComment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ruleId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ruleRevisionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterEntityMappingLogEntry--;
}

core.int buildCounterEntityMove = 0;
api.EntityMove buildEntityMove() {
  final o = api.EntityMove();
  buildCounterEntityMove++;
  if (buildCounterEntityMove < 3) {
    o.newSchema = 'foo';
  }
  buildCounterEntityMove--;
  return o;
}

void checkEntityMove(api.EntityMove o) {
  buildCounterEntityMove++;
  if (buildCounterEntityMove < 3) {
    unittest.expect(
      o.newSchema!,
      unittest.equals('foo'),
    );
  }
  buildCounterEntityMove--;
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

core.int buildCounterFetchStaticIpsResponse = 0;
api.FetchStaticIpsResponse buildFetchStaticIpsResponse() {
  final o = api.FetchStaticIpsResponse();
  buildCounterFetchStaticIpsResponse++;
  if (buildCounterFetchStaticIpsResponse < 3) {
    o.nextPageToken = 'foo';
    o.staticIps = buildUnnamed23();
  }
  buildCounterFetchStaticIpsResponse--;
  return o;
}

void checkFetchStaticIpsResponse(api.FetchStaticIpsResponse o) {
  buildCounterFetchStaticIpsResponse++;
  if (buildCounterFetchStaticIpsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.staticIps!);
  }
  buildCounterFetchStaticIpsResponse--;
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

core.List<core.String> buildUnnamed25() => [
      'foo',
      'foo',
    ];

void checkUnnamed25(core.List<core.String> o) {
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

core.int buildCounterFilterTableColumns = 0;
api.FilterTableColumns buildFilterTableColumns() {
  final o = api.FilterTableColumns();
  buildCounterFilterTableColumns++;
  if (buildCounterFilterTableColumns < 3) {
    o.excludeColumns = buildUnnamed24();
    o.includeColumns = buildUnnamed25();
  }
  buildCounterFilterTableColumns--;
  return o;
}

void checkFilterTableColumns(api.FilterTableColumns o) {
  buildCounterFilterTableColumns++;
  if (buildCounterFilterTableColumns < 3) {
    checkUnnamed24(o.excludeColumns!);
    checkUnnamed25(o.includeColumns!);
  }
  buildCounterFilterTableColumns--;
}

core.int buildCounterForwardSshTunnelConnectivity = 0;
api.ForwardSshTunnelConnectivity buildForwardSshTunnelConnectivity() {
  final o = api.ForwardSshTunnelConnectivity();
  buildCounterForwardSshTunnelConnectivity++;
  if (buildCounterForwardSshTunnelConnectivity < 3) {
    o.hostname = 'foo';
    o.password = 'foo';
    o.port = 42;
    o.privateKey = 'foo';
    o.username = 'foo';
  }
  buildCounterForwardSshTunnelConnectivity--;
  return o;
}

void checkForwardSshTunnelConnectivity(api.ForwardSshTunnelConnectivity o) {
  buildCounterForwardSshTunnelConnectivity++;
  if (buildCounterForwardSshTunnelConnectivity < 3) {
    unittest.expect(
      o.hostname!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
    unittest.expect(
      o.privateKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterForwardSshTunnelConnectivity--;
}

core.Map<core.String, core.Object?> buildUnnamed26() => {
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

void checkUnnamed26(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(
    casted9['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted9['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted9['string'],
    unittest.equals('foo'),
  );
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(
    casted10['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted10['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted10['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterFunctionEntity = 0;
api.FunctionEntity buildFunctionEntity() {
  final o = api.FunctionEntity();
  buildCounterFunctionEntity++;
  if (buildCounterFunctionEntity < 3) {
    o.customFeatures = buildUnnamed26();
    o.sqlCode = 'foo';
  }
  buildCounterFunctionEntity--;
  return o;
}

void checkFunctionEntity(api.FunctionEntity o) {
  buildCounterFunctionEntity++;
  if (buildCounterFunctionEntity < 3) {
    checkUnnamed26(o.customFeatures!);
    unittest.expect(
      o.sqlCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterFunctionEntity--;
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

core.int buildCounterGenerateTcpProxyScriptRequest = 0;
api.GenerateTcpProxyScriptRequest buildGenerateTcpProxyScriptRequest() {
  final o = api.GenerateTcpProxyScriptRequest();
  buildCounterGenerateTcpProxyScriptRequest++;
  if (buildCounterGenerateTcpProxyScriptRequest < 3) {
    o.vmMachineType = 'foo';
    o.vmName = 'foo';
    o.vmSubnet = 'foo';
    o.vmZone = 'foo';
  }
  buildCounterGenerateTcpProxyScriptRequest--;
  return o;
}

void checkGenerateTcpProxyScriptRequest(api.GenerateTcpProxyScriptRequest o) {
  buildCounterGenerateTcpProxyScriptRequest++;
  if (buildCounterGenerateTcpProxyScriptRequest < 3) {
    unittest.expect(
      o.vmMachineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vmName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vmSubnet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vmZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterGenerateTcpProxyScriptRequest--;
}

core.List<api.RulesFile> buildUnnamed27() => [
      buildRulesFile(),
      buildRulesFile(),
    ];

void checkUnnamed27(core.List<api.RulesFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRulesFile(o[0]);
  checkRulesFile(o[1]);
}

core.int buildCounterImportMappingRulesRequest = 0;
api.ImportMappingRulesRequest buildImportMappingRulesRequest() {
  final o = api.ImportMappingRulesRequest();
  buildCounterImportMappingRulesRequest++;
  if (buildCounterImportMappingRulesRequest < 3) {
    o.autoCommit = true;
    o.rulesFiles = buildUnnamed27();
    o.rulesFormat = 'foo';
  }
  buildCounterImportMappingRulesRequest--;
  return o;
}

void checkImportMappingRulesRequest(api.ImportMappingRulesRequest o) {
  buildCounterImportMappingRulesRequest++;
  if (buildCounterImportMappingRulesRequest < 3) {
    unittest.expect(o.autoCommit!, unittest.isTrue);
    checkUnnamed27(o.rulesFiles!);
    unittest.expect(
      o.rulesFormat!,
      unittest.equals('foo'),
    );
  }
  buildCounterImportMappingRulesRequest--;
}

core.List<core.String> buildUnnamed28() => [
      'foo',
      'foo',
    ];

void checkUnnamed28(core.List<core.String> o) {
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

core.int buildCounterImportRulesJobDetails = 0;
api.ImportRulesJobDetails buildImportRulesJobDetails() {
  final o = api.ImportRulesJobDetails();
  buildCounterImportRulesJobDetails++;
  if (buildCounterImportRulesJobDetails < 3) {
    o.fileFormat = 'foo';
    o.files = buildUnnamed28();
  }
  buildCounterImportRulesJobDetails--;
  return o;
}

void checkImportRulesJobDetails(api.ImportRulesJobDetails o) {
  buildCounterImportRulesJobDetails++;
  if (buildCounterImportRulesJobDetails < 3) {
    unittest.expect(
      o.fileFormat!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.files!);
  }
  buildCounterImportRulesJobDetails--;
}

core.Map<core.String, core.Object?> buildUnnamed29() => {
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

void checkUnnamed29(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o['x']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(
    casted11['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted11['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted11['string'],
    unittest.equals('foo'),
  );
  var casted12 = (o['y']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(
    casted12['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted12['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted12['string'],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed30() => [
      'foo',
      'foo',
    ];

void checkUnnamed30(core.List<core.String> o) {
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

core.int buildCounterIndexEntity = 0;
api.IndexEntity buildIndexEntity() {
  final o = api.IndexEntity();
  buildCounterIndexEntity++;
  if (buildCounterIndexEntity < 3) {
    o.customFeatures = buildUnnamed29();
    o.name = 'foo';
    o.tableColumns = buildUnnamed30();
    o.type = 'foo';
    o.unique = true;
  }
  buildCounterIndexEntity--;
  return o;
}

void checkIndexEntity(api.IndexEntity o) {
  buildCounterIndexEntity++;
  if (buildCounterIndexEntity < 3) {
    checkUnnamed29(o.customFeatures!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.tableColumns!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(o.unique!, unittest.isTrue);
  }
  buildCounterIndexEntity--;
}

core.int buildCounterIntComparisonFilter = 0;
api.IntComparisonFilter buildIntComparisonFilter() {
  final o = api.IntComparisonFilter();
  buildCounterIntComparisonFilter++;
  if (buildCounterIntComparisonFilter < 3) {
    o.value = 'foo';
    o.valueComparison = 'foo';
  }
  buildCounterIntComparisonFilter--;
  return o;
}

void checkIntComparisonFilter(api.IntComparisonFilter o) {
  buildCounterIntComparisonFilter++;
  if (buildCounterIntComparisonFilter < 3) {
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valueComparison!,
      unittest.equals('foo'),
    );
  }
  buildCounterIntComparisonFilter--;
}

core.List<api.ConnectionProfile> buildUnnamed31() => [
      buildConnectionProfile(),
      buildConnectionProfile(),
    ];

void checkUnnamed31(core.List<api.ConnectionProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectionProfile(o[0]);
  checkConnectionProfile(o[1]);
}

core.List<core.String> buildUnnamed32() => [
      'foo',
      'foo',
    ];

void checkUnnamed32(core.List<core.String> o) {
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
    o.connectionProfiles = buildUnnamed31();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed32();
  }
  buildCounterListConnectionProfilesResponse--;
  return o;
}

void checkListConnectionProfilesResponse(api.ListConnectionProfilesResponse o) {
  buildCounterListConnectionProfilesResponse++;
  if (buildCounterListConnectionProfilesResponse < 3) {
    checkUnnamed31(o.connectionProfiles!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed32(o.unreachable!);
  }
  buildCounterListConnectionProfilesResponse--;
}

core.List<api.ConversionWorkspace> buildUnnamed33() => [
      buildConversionWorkspace(),
      buildConversionWorkspace(),
    ];

void checkUnnamed33(core.List<api.ConversionWorkspace> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConversionWorkspace(o[0]);
  checkConversionWorkspace(o[1]);
}

core.List<core.String> buildUnnamed34() => [
      'foo',
      'foo',
    ];

void checkUnnamed34(core.List<core.String> o) {
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

core.int buildCounterListConversionWorkspacesResponse = 0;
api.ListConversionWorkspacesResponse buildListConversionWorkspacesResponse() {
  final o = api.ListConversionWorkspacesResponse();
  buildCounterListConversionWorkspacesResponse++;
  if (buildCounterListConversionWorkspacesResponse < 3) {
    o.conversionWorkspaces = buildUnnamed33();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed34();
  }
  buildCounterListConversionWorkspacesResponse--;
  return o;
}

void checkListConversionWorkspacesResponse(
    api.ListConversionWorkspacesResponse o) {
  buildCounterListConversionWorkspacesResponse++;
  if (buildCounterListConversionWorkspacesResponse < 3) {
    checkUnnamed33(o.conversionWorkspaces!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.unreachable!);
  }
  buildCounterListConversionWorkspacesResponse--;
}

core.List<api.Location> buildUnnamed35() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed35(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed35();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed35(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.MappingRule> buildUnnamed36() => [
      buildMappingRule(),
      buildMappingRule(),
    ];

void checkUnnamed36(core.List<api.MappingRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMappingRule(o[0]);
  checkMappingRule(o[1]);
}

core.int buildCounterListMappingRulesResponse = 0;
api.ListMappingRulesResponse buildListMappingRulesResponse() {
  final o = api.ListMappingRulesResponse();
  buildCounterListMappingRulesResponse++;
  if (buildCounterListMappingRulesResponse < 3) {
    o.mappingRules = buildUnnamed36();
    o.nextPageToken = 'foo';
  }
  buildCounterListMappingRulesResponse--;
  return o;
}

void checkListMappingRulesResponse(api.ListMappingRulesResponse o) {
  buildCounterListMappingRulesResponse++;
  if (buildCounterListMappingRulesResponse < 3) {
    checkUnnamed36(o.mappingRules!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListMappingRulesResponse--;
}

core.List<api.MigrationJob> buildUnnamed37() => [
      buildMigrationJob(),
      buildMigrationJob(),
    ];

void checkUnnamed37(core.List<api.MigrationJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMigrationJob(o[0]);
  checkMigrationJob(o[1]);
}

core.List<core.String> buildUnnamed38() => [
      'foo',
      'foo',
    ];

void checkUnnamed38(core.List<core.String> o) {
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
    o.migrationJobs = buildUnnamed37();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed38();
  }
  buildCounterListMigrationJobsResponse--;
  return o;
}

void checkListMigrationJobsResponse(api.ListMigrationJobsResponse o) {
  buildCounterListMigrationJobsResponse++;
  if (buildCounterListMigrationJobsResponse < 3) {
    checkUnnamed37(o.migrationJobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed38(o.unreachable!);
  }
  buildCounterListMigrationJobsResponse--;
}

core.List<api.Operation> buildUnnamed39() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed39(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed39();
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
    checkUnnamed39(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.PrivateConnection> buildUnnamed40() => [
      buildPrivateConnection(),
      buildPrivateConnection(),
    ];

void checkUnnamed40(core.List<api.PrivateConnection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrivateConnection(o[0]);
  checkPrivateConnection(o[1]);
}

core.List<core.String> buildUnnamed41() => [
      'foo',
      'foo',
    ];

void checkUnnamed41(core.List<core.String> o) {
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

core.int buildCounterListPrivateConnectionsResponse = 0;
api.ListPrivateConnectionsResponse buildListPrivateConnectionsResponse() {
  final o = api.ListPrivateConnectionsResponse();
  buildCounterListPrivateConnectionsResponse++;
  if (buildCounterListPrivateConnectionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.privateConnections = buildUnnamed40();
    o.unreachable = buildUnnamed41();
  }
  buildCounterListPrivateConnectionsResponse--;
  return o;
}

void checkListPrivateConnectionsResponse(api.ListPrivateConnectionsResponse o) {
  buildCounterListPrivateConnectionsResponse++;
  if (buildCounterListPrivateConnectionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed40(o.privateConnections!);
    checkUnnamed41(o.unreachable!);
  }
  buildCounterListPrivateConnectionsResponse--;
}

core.Map<core.String, core.String> buildUnnamed42() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed42(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed43() => {
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

void checkUnnamed43(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o['x']!) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(
    casted13['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted13['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted13['string'],
    unittest.equals('foo'),
  );
  var casted14 = (o['y']!) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(
    casted14['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted14['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted14['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed42();
    o.locationId = 'foo';
    o.metadata = buildUnnamed43();
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
    checkUnnamed42(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed43(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterMachineConfig = 0;
api.MachineConfig buildMachineConfig() {
  final o = api.MachineConfig();
  buildCounterMachineConfig++;
  if (buildCounterMachineConfig < 3) {
    o.cpuCount = 42;
  }
  buildCounterMachineConfig--;
  return o;
}

void checkMachineConfig(api.MachineConfig o) {
  buildCounterMachineConfig++;
  if (buildCounterMachineConfig < 3) {
    unittest.expect(
      o.cpuCount!,
      unittest.equals(42),
    );
  }
  buildCounterMachineConfig--;
}

core.int buildCounterMappingRule = 0;
api.MappingRule buildMappingRule() {
  final o = api.MappingRule();
  buildCounterMappingRule++;
  if (buildCounterMappingRule < 3) {
    o.conditionalColumnSetValue = buildConditionalColumnSetValue();
    o.convertRowidColumn = buildConvertRowIdToColumn();
    o.displayName = 'foo';
    o.entityMove = buildEntityMove();
    o.filter = buildMappingRuleFilter();
    o.filterTableColumns = buildFilterTableColumns();
    o.multiColumnDataTypeChange = buildMultiColumnDatatypeChange();
    o.multiEntityRename = buildMultiEntityRename();
    o.name = 'foo';
    o.revisionCreateTime = 'foo';
    o.revisionId = 'foo';
    o.ruleOrder = 'foo';
    o.ruleScope = 'foo';
    o.setTablePrimaryKey = buildSetTablePrimaryKey();
    o.singleColumnChange = buildSingleColumnChange();
    o.singleEntityRename = buildSingleEntityRename();
    o.singlePackageChange = buildSinglePackageChange();
    o.sourceSqlChange = buildSourceSqlChange();
    o.state = 'foo';
  }
  buildCounterMappingRule--;
  return o;
}

void checkMappingRule(api.MappingRule o) {
  buildCounterMappingRule++;
  if (buildCounterMappingRule < 3) {
    checkConditionalColumnSetValue(o.conditionalColumnSetValue!);
    checkConvertRowIdToColumn(o.convertRowidColumn!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkEntityMove(o.entityMove!);
    checkMappingRuleFilter(o.filter!);
    checkFilterTableColumns(o.filterTableColumns!);
    checkMultiColumnDatatypeChange(o.multiColumnDataTypeChange!);
    checkMultiEntityRename(o.multiEntityRename!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revisionCreateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ruleOrder!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ruleScope!,
      unittest.equals('foo'),
    );
    checkSetTablePrimaryKey(o.setTablePrimaryKey!);
    checkSingleColumnChange(o.singleColumnChange!);
    checkSingleEntityRename(o.singleEntityRename!);
    checkSinglePackageChange(o.singlePackageChange!);
    checkSourceSqlChange(o.sourceSqlChange!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterMappingRule--;
}

core.List<core.String> buildUnnamed44() => [
      'foo',
      'foo',
    ];

void checkUnnamed44(core.List<core.String> o) {
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

core.int buildCounterMappingRuleFilter = 0;
api.MappingRuleFilter buildMappingRuleFilter() {
  final o = api.MappingRuleFilter();
  buildCounterMappingRuleFilter++;
  if (buildCounterMappingRuleFilter < 3) {
    o.entities = buildUnnamed44();
    o.entityNameContains = 'foo';
    o.entityNamePrefix = 'foo';
    o.entityNameSuffix = 'foo';
    o.parentEntity = 'foo';
  }
  buildCounterMappingRuleFilter--;
  return o;
}

void checkMappingRuleFilter(api.MappingRuleFilter o) {
  buildCounterMappingRuleFilter++;
  if (buildCounterMappingRuleFilter < 3) {
    checkUnnamed44(o.entities!);
    unittest.expect(
      o.entityNameContains!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityNamePrefix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityNameSuffix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parentEntity!,
      unittest.equals('foo'),
    );
  }
  buildCounterMappingRuleFilter--;
}

core.Map<core.String, core.Object?> buildUnnamed45() => {
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

void checkUnnamed45(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted15 = (o['x']!) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(
    casted15['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted15['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted15['string'],
    unittest.equals('foo'),
  );
  var casted16 = (o['y']!) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(
    casted16['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted16['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted16['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterMaterializedViewEntity = 0;
api.MaterializedViewEntity buildMaterializedViewEntity() {
  final o = api.MaterializedViewEntity();
  buildCounterMaterializedViewEntity++;
  if (buildCounterMaterializedViewEntity < 3) {
    o.customFeatures = buildUnnamed45();
    o.sqlCode = 'foo';
  }
  buildCounterMaterializedViewEntity--;
  return o;
}

void checkMaterializedViewEntity(api.MaterializedViewEntity o) {
  buildCounterMaterializedViewEntity++;
  if (buildCounterMaterializedViewEntity < 3) {
    checkUnnamed45(o.customFeatures!);
    unittest.expect(
      o.sqlCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterMaterializedViewEntity--;
}

core.Map<core.String, core.String> buildUnnamed46() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed46(core.Map<core.String, core.String> o) {
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
    o.cmekKeyName = 'foo';
    o.conversionWorkspace = buildConversionWorkspaceInfo();
    o.createTime = 'foo';
    o.destination = 'foo';
    o.destinationDatabase = buildDatabaseType();
    o.displayName = 'foo';
    o.dumpFlags = buildDumpFlags();
    o.dumpPath = 'foo';
    o.dumpType = 'foo';
    o.duration = 'foo';
    o.endTime = 'foo';
    o.error = buildStatus();
    o.filter = 'foo';
    o.labels = buildUnnamed46();
    o.name = 'foo';
    o.performanceConfig = buildPerformanceConfig();
    o.phase = 'foo';
    o.reverseSshConnectivity = buildReverseSshConnectivity();
    o.source = 'foo';
    o.sourceDatabase = buildDatabaseType();
    o.sqlserverHomogeneousMigrationJobConfig =
        buildSqlServerHomogeneousMigrationJobConfig();
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
      o.cmekKeyName!,
      unittest.equals('foo'),
    );
    checkConversionWorkspaceInfo(o.conversionWorkspace!);
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
      o.dumpType!,
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
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    checkUnnamed46(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkPerformanceConfig(o.performanceConfig!);
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
    checkSqlServerHomogeneousMigrationJobConfig(
        o.sqlserverHomogeneousMigrationJobConfig!);
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

core.Map<core.String, core.Object?> buildUnnamed47() => {
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

void checkUnnamed47(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted17 = (o['x']!) as core.Map;
  unittest.expect(casted17, unittest.hasLength(3));
  unittest.expect(
    casted17['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted17['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted17['string'],
    unittest.equals('foo'),
  );
  var casted18 = (o['y']!) as core.Map;
  unittest.expect(casted18, unittest.hasLength(3));
  unittest.expect(
    casted18['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted18['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted18['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterMultiColumnDatatypeChange = 0;
api.MultiColumnDatatypeChange buildMultiColumnDatatypeChange() {
  final o = api.MultiColumnDatatypeChange();
  buildCounterMultiColumnDatatypeChange++;
  if (buildCounterMultiColumnDatatypeChange < 3) {
    o.customFeatures = buildUnnamed47();
    o.newDataType = 'foo';
    o.overrideFractionalSecondsPrecision = 42;
    o.overrideLength = 'foo';
    o.overridePrecision = 42;
    o.overrideScale = 42;
    o.sourceDataTypeFilter = 'foo';
    o.sourceNumericFilter = buildSourceNumericFilter();
    o.sourceTextFilter = buildSourceTextFilter();
  }
  buildCounterMultiColumnDatatypeChange--;
  return o;
}

void checkMultiColumnDatatypeChange(api.MultiColumnDatatypeChange o) {
  buildCounterMultiColumnDatatypeChange++;
  if (buildCounterMultiColumnDatatypeChange < 3) {
    checkUnnamed47(o.customFeatures!);
    unittest.expect(
      o.newDataType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.overrideFractionalSecondsPrecision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.overrideLength!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.overridePrecision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.overrideScale!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sourceDataTypeFilter!,
      unittest.equals('foo'),
    );
    checkSourceNumericFilter(o.sourceNumericFilter!);
    checkSourceTextFilter(o.sourceTextFilter!);
  }
  buildCounterMultiColumnDatatypeChange--;
}

core.int buildCounterMultiEntityRename = 0;
api.MultiEntityRename buildMultiEntityRename() {
  final o = api.MultiEntityRename();
  buildCounterMultiEntityRename++;
  if (buildCounterMultiEntityRename < 3) {
    o.newNamePattern = 'foo';
    o.sourceNameTransformation = 'foo';
  }
  buildCounterMultiEntityRename--;
  return o;
}

void checkMultiEntityRename(api.MultiEntityRename o) {
  buildCounterMultiEntityRename++;
  if (buildCounterMultiEntityRename < 3) {
    unittest.expect(
      o.newNamePattern!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceNameTransformation!,
      unittest.equals('foo'),
    );
  }
  buildCounterMultiEntityRename--;
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

core.Map<core.String, core.Object?> buildUnnamed48() => {
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

void checkUnnamed48(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted19 = (o['x']!) as core.Map;
  unittest.expect(casted19, unittest.hasLength(3));
  unittest.expect(
    casted19['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted19['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted19['string'],
    unittest.equals('foo'),
  );
  var casted20 = (o['y']!) as core.Map;
  unittest.expect(casted20, unittest.hasLength(3));
  unittest.expect(
    casted20['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted20['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted20['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed49() => {
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

void checkUnnamed49(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted21 = (o['x']!) as core.Map;
  unittest.expect(casted21, unittest.hasLength(3));
  unittest.expect(
    casted21['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted21['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted21['string'],
    unittest.equals('foo'),
  );
  var casted22 = (o['y']!) as core.Map;
  unittest.expect(casted22, unittest.hasLength(3));
  unittest.expect(
    casted22['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted22['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted22['string'],
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
    o.metadata = buildUnnamed48();
    o.name = 'foo';
    o.response = buildUnnamed49();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed48(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed49(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOracleConnectionProfile = 0;
api.OracleConnectionProfile buildOracleConnectionProfile() {
  final o = api.OracleConnectionProfile();
  buildCounterOracleConnectionProfile++;
  if (buildCounterOracleConnectionProfile < 3) {
    o.databaseService = 'foo';
    o.forwardSshConnectivity = buildForwardSshTunnelConnectivity();
    o.host = 'foo';
    o.password = 'foo';
    o.passwordSet = true;
    o.port = 42;
    o.privateConnectivity = buildPrivateConnectivity();
    o.ssl = buildSslConfig();
    o.staticServiceIpConnectivity = buildStaticServiceIpConnectivity();
    o.username = 'foo';
  }
  buildCounterOracleConnectionProfile--;
  return o;
}

void checkOracleConnectionProfile(api.OracleConnectionProfile o) {
  buildCounterOracleConnectionProfile++;
  if (buildCounterOracleConnectionProfile < 3) {
    unittest.expect(
      o.databaseService!,
      unittest.equals('foo'),
    );
    checkForwardSshTunnelConnectivity(o.forwardSshConnectivity!);
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
    checkPrivateConnectivity(o.privateConnectivity!);
    checkSslConfig(o.ssl!);
    checkStaticServiceIpConnectivity(o.staticServiceIpConnectivity!);
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterOracleConnectionProfile--;
}

core.Map<core.String, core.Object?> buildUnnamed50() => {
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

void checkUnnamed50(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted23 = (o['x']!) as core.Map;
  unittest.expect(casted23, unittest.hasLength(3));
  unittest.expect(
    casted23['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted23['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted23['string'],
    unittest.equals('foo'),
  );
  var casted24 = (o['y']!) as core.Map;
  unittest.expect(casted24, unittest.hasLength(3));
  unittest.expect(
    casted24['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted24['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted24['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterPackageEntity = 0;
api.PackageEntity buildPackageEntity() {
  final o = api.PackageEntity();
  buildCounterPackageEntity++;
  if (buildCounterPackageEntity < 3) {
    o.customFeatures = buildUnnamed50();
    o.packageBody = 'foo';
    o.packageSqlCode = 'foo';
  }
  buildCounterPackageEntity--;
  return o;
}

void checkPackageEntity(api.PackageEntity o) {
  buildCounterPackageEntity++;
  if (buildCounterPackageEntity < 3) {
    checkUnnamed50(o.customFeatures!);
    unittest.expect(
      o.packageBody!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageSqlCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterPackageEntity--;
}

core.int buildCounterPerformanceConfig = 0;
api.PerformanceConfig buildPerformanceConfig() {
  final o = api.PerformanceConfig();
  buildCounterPerformanceConfig++;
  if (buildCounterPerformanceConfig < 3) {
    o.dumpParallelLevel = 'foo';
  }
  buildCounterPerformanceConfig--;
  return o;
}

void checkPerformanceConfig(api.PerformanceConfig o) {
  buildCounterPerformanceConfig++;
  if (buildCounterPerformanceConfig < 3) {
    unittest.expect(
      o.dumpParallelLevel!,
      unittest.equals('foo'),
    );
  }
  buildCounterPerformanceConfig--;
}

core.List<api.AuditConfig> buildUnnamed51() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed51(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed52() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed52(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed51();
    o.bindings = buildUnnamed52();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed51(o.auditConfigs!);
    checkUnnamed52(o.bindings!);
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

core.int buildCounterPosition = 0;
api.Position buildPosition() {
  final o = api.Position();
  buildCounterPosition++;
  if (buildCounterPosition < 3) {
    o.column = 42;
    o.length = 42;
    o.line = 42;
    o.offset = 42;
  }
  buildCounterPosition--;
  return o;
}

void checkPosition(api.Position o) {
  buildCounterPosition++;
  if (buildCounterPosition < 3) {
    unittest.expect(
      o.column!,
      unittest.equals(42),
    );
    unittest.expect(
      o.length!,
      unittest.equals(42),
    );
    unittest.expect(
      o.line!,
      unittest.equals(42),
    );
    unittest.expect(
      o.offset!,
      unittest.equals(42),
    );
  }
  buildCounterPosition--;
}

core.int buildCounterPostgreSqlConnectionProfile = 0;
api.PostgreSqlConnectionProfile buildPostgreSqlConnectionProfile() {
  final o = api.PostgreSqlConnectionProfile();
  buildCounterPostgreSqlConnectionProfile++;
  if (buildCounterPostgreSqlConnectionProfile < 3) {
    o.alloydbClusterId = 'foo';
    o.cloudSqlId = 'foo';
    o.host = 'foo';
    o.networkArchitecture = 'foo';
    o.password = 'foo';
    o.passwordSet = true;
    o.port = 42;
    o.privateServiceConnectConnectivity =
        buildPrivateServiceConnectConnectivity();
    o.ssl = buildSslConfig();
    o.staticIpConnectivity = buildStaticIpConnectivity();
    o.username = 'foo';
  }
  buildCounterPostgreSqlConnectionProfile--;
  return o;
}

void checkPostgreSqlConnectionProfile(api.PostgreSqlConnectionProfile o) {
  buildCounterPostgreSqlConnectionProfile++;
  if (buildCounterPostgreSqlConnectionProfile < 3) {
    unittest.expect(
      o.alloydbClusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cloudSqlId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.host!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkArchitecture!,
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
    checkPrivateServiceConnectConnectivity(
        o.privateServiceConnectConnectivity!);
    checkSslConfig(o.ssl!);
    checkStaticIpConnectivity(o.staticIpConnectivity!);
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostgreSqlConnectionProfile--;
}

core.Map<core.String, core.String> buildUnnamed53() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed53(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed54() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed54(core.Map<core.String, core.String> o) {
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

core.int buildCounterPrimaryInstanceSettings = 0;
api.PrimaryInstanceSettings buildPrimaryInstanceSettings() {
  final o = api.PrimaryInstanceSettings();
  buildCounterPrimaryInstanceSettings++;
  if (buildCounterPrimaryInstanceSettings < 3) {
    o.databaseFlags = buildUnnamed53();
    o.id = 'foo';
    o.labels = buildUnnamed54();
    o.machineConfig = buildMachineConfig();
    o.privateIp = 'foo';
  }
  buildCounterPrimaryInstanceSettings--;
  return o;
}

void checkPrimaryInstanceSettings(api.PrimaryInstanceSettings o) {
  buildCounterPrimaryInstanceSettings++;
  if (buildCounterPrimaryInstanceSettings < 3) {
    checkUnnamed53(o.databaseFlags!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed54(o.labels!);
    checkMachineConfig(o.machineConfig!);
    unittest.expect(
      o.privateIp!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrimaryInstanceSettings--;
}

core.Map<core.String, core.String> buildUnnamed55() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed55(core.Map<core.String, core.String> o) {
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

core.int buildCounterPrivateConnection = 0;
api.PrivateConnection buildPrivateConnection() {
  final o = api.PrivateConnection();
  buildCounterPrivateConnection++;
  if (buildCounterPrivateConnection < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.error = buildStatus();
    o.labels = buildUnnamed55();
    o.name = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
    o.vpcPeeringConfig = buildVpcPeeringConfig();
  }
  buildCounterPrivateConnection--;
  return o;
}

void checkPrivateConnection(api.PrivateConnection o) {
  buildCounterPrivateConnection++;
  if (buildCounterPrivateConnection < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkStatus(o.error!);
    checkUnnamed55(o.labels!);
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
    checkVpcPeeringConfig(o.vpcPeeringConfig!);
  }
  buildCounterPrivateConnection--;
}

core.int buildCounterPrivateConnectivity = 0;
api.PrivateConnectivity buildPrivateConnectivity() {
  final o = api.PrivateConnectivity();
  buildCounterPrivateConnectivity++;
  if (buildCounterPrivateConnectivity < 3) {
    o.privateConnection = 'foo';
  }
  buildCounterPrivateConnectivity--;
  return o;
}

void checkPrivateConnectivity(api.PrivateConnectivity o) {
  buildCounterPrivateConnectivity++;
  if (buildCounterPrivateConnectivity < 3) {
    unittest.expect(
      o.privateConnection!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrivateConnectivity--;
}

core.int buildCounterPrivateServiceConnectConnectivity = 0;
api.PrivateServiceConnectConnectivity buildPrivateServiceConnectConnectivity() {
  final o = api.PrivateServiceConnectConnectivity();
  buildCounterPrivateServiceConnectConnectivity++;
  if (buildCounterPrivateServiceConnectConnectivity < 3) {
    o.serviceAttachment = 'foo';
  }
  buildCounterPrivateServiceConnectConnectivity--;
  return o;
}

void checkPrivateServiceConnectConnectivity(
    api.PrivateServiceConnectConnectivity o) {
  buildCounterPrivateServiceConnectConnectivity++;
  if (buildCounterPrivateServiceConnectConnectivity < 3) {
    unittest.expect(
      o.serviceAttachment!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrivateServiceConnectConnectivity--;
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
  if (buildCounterRestartMigrationJobRequest < 3) {
    o.skipValidation = true;
  }
  buildCounterRestartMigrationJobRequest--;
  return o;
}

void checkRestartMigrationJobRequest(api.RestartMigrationJobRequest o) {
  buildCounterRestartMigrationJobRequest++;
  if (buildCounterRestartMigrationJobRequest < 3) {
    unittest.expect(o.skipValidation!, unittest.isTrue);
  }
  buildCounterRestartMigrationJobRequest--;
}

core.int buildCounterResumeMigrationJobRequest = 0;
api.ResumeMigrationJobRequest buildResumeMigrationJobRequest() {
  final o = api.ResumeMigrationJobRequest();
  buildCounterResumeMigrationJobRequest++;
  if (buildCounterResumeMigrationJobRequest < 3) {
    o.skipValidation = true;
  }
  buildCounterResumeMigrationJobRequest--;
  return o;
}

void checkResumeMigrationJobRequest(api.ResumeMigrationJobRequest o) {
  buildCounterResumeMigrationJobRequest++;
  if (buildCounterResumeMigrationJobRequest < 3) {
    unittest.expect(o.skipValidation!, unittest.isTrue);
  }
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

core.int buildCounterRollbackConversionWorkspaceRequest = 0;
api.RollbackConversionWorkspaceRequest
    buildRollbackConversionWorkspaceRequest() {
  final o = api.RollbackConversionWorkspaceRequest();
  buildCounterRollbackConversionWorkspaceRequest++;
  if (buildCounterRollbackConversionWorkspaceRequest < 3) {}
  buildCounterRollbackConversionWorkspaceRequest--;
  return o;
}

void checkRollbackConversionWorkspaceRequest(
    api.RollbackConversionWorkspaceRequest o) {
  buildCounterRollbackConversionWorkspaceRequest++;
  if (buildCounterRollbackConversionWorkspaceRequest < 3) {}
  buildCounterRollbackConversionWorkspaceRequest--;
}

core.int buildCounterRoundToScale = 0;
api.RoundToScale buildRoundToScale() {
  final o = api.RoundToScale();
  buildCounterRoundToScale++;
  if (buildCounterRoundToScale < 3) {
    o.scale = 42;
  }
  buildCounterRoundToScale--;
  return o;
}

void checkRoundToScale(api.RoundToScale o) {
  buildCounterRoundToScale++;
  if (buildCounterRoundToScale < 3) {
    unittest.expect(
      o.scale!,
      unittest.equals(42),
    );
  }
  buildCounterRoundToScale--;
}

core.int buildCounterRulesFile = 0;
api.RulesFile buildRulesFile() {
  final o = api.RulesFile();
  buildCounterRulesFile++;
  if (buildCounterRulesFile < 3) {
    o.rulesContent = 'foo';
    o.rulesSourceFilename = 'foo';
  }
  buildCounterRulesFile--;
  return o;
}

void checkRulesFile(api.RulesFile o) {
  buildCounterRulesFile++;
  if (buildCounterRulesFile < 3) {
    unittest.expect(
      o.rulesContent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rulesSourceFilename!,
      unittest.equals('foo'),
    );
  }
  buildCounterRulesFile--;
}

core.Map<core.String, core.Object?> buildUnnamed56() => {
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

void checkUnnamed56(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted25 = (o['x']!) as core.Map;
  unittest.expect(casted25, unittest.hasLength(3));
  unittest.expect(
    casted25['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted25['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted25['string'],
    unittest.equals('foo'),
  );
  var casted26 = (o['y']!) as core.Map;
  unittest.expect(casted26, unittest.hasLength(3));
  unittest.expect(
    casted26['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted26['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted26['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterSchemaEntity = 0;
api.SchemaEntity buildSchemaEntity() {
  final o = api.SchemaEntity();
  buildCounterSchemaEntity++;
  if (buildCounterSchemaEntity < 3) {
    o.customFeatures = buildUnnamed56();
  }
  buildCounterSchemaEntity--;
  return o;
}

void checkSchemaEntity(api.SchemaEntity o) {
  buildCounterSchemaEntity++;
  if (buildCounterSchemaEntity < 3) {
    checkUnnamed56(o.customFeatures!);
  }
  buildCounterSchemaEntity--;
}

core.List<api.BackgroundJobLogEntry> buildUnnamed57() => [
      buildBackgroundJobLogEntry(),
      buildBackgroundJobLogEntry(),
    ];

void checkUnnamed57(core.List<api.BackgroundJobLogEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackgroundJobLogEntry(o[0]);
  checkBackgroundJobLogEntry(o[1]);
}

core.int buildCounterSearchBackgroundJobsResponse = 0;
api.SearchBackgroundJobsResponse buildSearchBackgroundJobsResponse() {
  final o = api.SearchBackgroundJobsResponse();
  buildCounterSearchBackgroundJobsResponse++;
  if (buildCounterSearchBackgroundJobsResponse < 3) {
    o.jobs = buildUnnamed57();
  }
  buildCounterSearchBackgroundJobsResponse--;
  return o;
}

void checkSearchBackgroundJobsResponse(api.SearchBackgroundJobsResponse o) {
  buildCounterSearchBackgroundJobsResponse++;
  if (buildCounterSearchBackgroundJobsResponse < 3) {
    checkUnnamed57(o.jobs!);
  }
  buildCounterSearchBackgroundJobsResponse--;
}

core.int buildCounterSeedConversionWorkspaceRequest = 0;
api.SeedConversionWorkspaceRequest buildSeedConversionWorkspaceRequest() {
  final o = api.SeedConversionWorkspaceRequest();
  buildCounterSeedConversionWorkspaceRequest++;
  if (buildCounterSeedConversionWorkspaceRequest < 3) {
    o.autoCommit = true;
    o.destinationConnectionProfile = 'foo';
    o.sourceConnectionProfile = 'foo';
  }
  buildCounterSeedConversionWorkspaceRequest--;
  return o;
}

void checkSeedConversionWorkspaceRequest(api.SeedConversionWorkspaceRequest o) {
  buildCounterSeedConversionWorkspaceRequest++;
  if (buildCounterSeedConversionWorkspaceRequest < 3) {
    unittest.expect(o.autoCommit!, unittest.isTrue);
    unittest.expect(
      o.destinationConnectionProfile!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceConnectionProfile!,
      unittest.equals('foo'),
    );
  }
  buildCounterSeedConversionWorkspaceRequest--;
}

core.int buildCounterSeedJobDetails = 0;
api.SeedJobDetails buildSeedJobDetails() {
  final o = api.SeedJobDetails();
  buildCounterSeedJobDetails++;
  if (buildCounterSeedJobDetails < 3) {
    o.connectionProfile = 'foo';
  }
  buildCounterSeedJobDetails--;
  return o;
}

void checkSeedJobDetails(api.SeedJobDetails o) {
  buildCounterSeedJobDetails++;
  if (buildCounterSeedJobDetails < 3) {
    unittest.expect(
      o.connectionProfile!,
      unittest.equals('foo'),
    );
  }
  buildCounterSeedJobDetails--;
}

core.Map<core.String, core.Object?> buildUnnamed58() => {
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

void checkUnnamed58(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted27 = (o['x']!) as core.Map;
  unittest.expect(casted27, unittest.hasLength(3));
  unittest.expect(
    casted27['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted27['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted27['string'],
    unittest.equals('foo'),
  );
  var casted28 = (o['y']!) as core.Map;
  unittest.expect(casted28, unittest.hasLength(3));
  unittest.expect(
    casted28['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted28['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted28['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterSequenceEntity = 0;
api.SequenceEntity buildSequenceEntity() {
  final o = api.SequenceEntity();
  buildCounterSequenceEntity++;
  if (buildCounterSequenceEntity < 3) {
    o.cache = 'foo';
    o.customFeatures = buildUnnamed58();
    o.cycle = true;
    o.increment = 'foo';
    o.maxValue = 'foo';
    o.minValue = 'foo';
    o.startValue = 'foo';
  }
  buildCounterSequenceEntity--;
  return o;
}

void checkSequenceEntity(api.SequenceEntity o) {
  buildCounterSequenceEntity++;
  if (buildCounterSequenceEntity < 3) {
    unittest.expect(
      o.cache!,
      unittest.equals('foo'),
    );
    checkUnnamed58(o.customFeatures!);
    unittest.expect(o.cycle!, unittest.isTrue);
    unittest.expect(
      o.increment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterSequenceEntity--;
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

core.List<core.String> buildUnnamed59() => [
      'foo',
      'foo',
    ];

void checkUnnamed59(core.List<core.String> o) {
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

core.int buildCounterSetTablePrimaryKey = 0;
api.SetTablePrimaryKey buildSetTablePrimaryKey() {
  final o = api.SetTablePrimaryKey();
  buildCounterSetTablePrimaryKey++;
  if (buildCounterSetTablePrimaryKey < 3) {
    o.primaryKey = 'foo';
    o.primaryKeyColumns = buildUnnamed59();
  }
  buildCounterSetTablePrimaryKey--;
  return o;
}

void checkSetTablePrimaryKey(api.SetTablePrimaryKey o) {
  buildCounterSetTablePrimaryKey++;
  if (buildCounterSetTablePrimaryKey < 3) {
    unittest.expect(
      o.primaryKey!,
      unittest.equals('foo'),
    );
    checkUnnamed59(o.primaryKeyColumns!);
  }
  buildCounterSetTablePrimaryKey--;
}

core.Map<core.String, core.Object?> buildUnnamed60() => {
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

void checkUnnamed60(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted29 = (o['x']!) as core.Map;
  unittest.expect(casted29, unittest.hasLength(3));
  unittest.expect(
    casted29['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted29['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted29['string'],
    unittest.equals('foo'),
  );
  var casted30 = (o['y']!) as core.Map;
  unittest.expect(casted30, unittest.hasLength(3));
  unittest.expect(
    casted30['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted30['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted30['string'],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed61() => [
      'foo',
      'foo',
    ];

void checkUnnamed61(core.List<core.String> o) {
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

core.int buildCounterSingleColumnChange = 0;
api.SingleColumnChange buildSingleColumnChange() {
  final o = api.SingleColumnChange();
  buildCounterSingleColumnChange++;
  if (buildCounterSingleColumnChange < 3) {
    o.array = true;
    o.arrayLength = 42;
    o.autoGenerated = true;
    o.charset = 'foo';
    o.collation = 'foo';
    o.comment = 'foo';
    o.customFeatures = buildUnnamed60();
    o.dataType = 'foo';
    o.fractionalSecondsPrecision = 42;
    o.length = 'foo';
    o.nullable = true;
    o.precision = 42;
    o.scale = 42;
    o.setValues = buildUnnamed61();
    o.udt = true;
  }
  buildCounterSingleColumnChange--;
  return o;
}

void checkSingleColumnChange(api.SingleColumnChange o) {
  buildCounterSingleColumnChange++;
  if (buildCounterSingleColumnChange < 3) {
    unittest.expect(o.array!, unittest.isTrue);
    unittest.expect(
      o.arrayLength!,
      unittest.equals(42),
    );
    unittest.expect(o.autoGenerated!, unittest.isTrue);
    unittest.expect(
      o.charset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.collation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.comment!,
      unittest.equals('foo'),
    );
    checkUnnamed60(o.customFeatures!);
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fractionalSecondsPrecision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.length!,
      unittest.equals('foo'),
    );
    unittest.expect(o.nullable!, unittest.isTrue);
    unittest.expect(
      o.precision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.scale!,
      unittest.equals(42),
    );
    checkUnnamed61(o.setValues!);
    unittest.expect(o.udt!, unittest.isTrue);
  }
  buildCounterSingleColumnChange--;
}

core.int buildCounterSingleEntityRename = 0;
api.SingleEntityRename buildSingleEntityRename() {
  final o = api.SingleEntityRename();
  buildCounterSingleEntityRename++;
  if (buildCounterSingleEntityRename < 3) {
    o.newName = 'foo';
  }
  buildCounterSingleEntityRename--;
  return o;
}

void checkSingleEntityRename(api.SingleEntityRename o) {
  buildCounterSingleEntityRename++;
  if (buildCounterSingleEntityRename < 3) {
    unittest.expect(
      o.newName!,
      unittest.equals('foo'),
    );
  }
  buildCounterSingleEntityRename--;
}

core.int buildCounterSinglePackageChange = 0;
api.SinglePackageChange buildSinglePackageChange() {
  final o = api.SinglePackageChange();
  buildCounterSinglePackageChange++;
  if (buildCounterSinglePackageChange < 3) {
    o.packageBody = 'foo';
    o.packageDescription = 'foo';
  }
  buildCounterSinglePackageChange--;
  return o;
}

void checkSinglePackageChange(api.SinglePackageChange o) {
  buildCounterSinglePackageChange++;
  if (buildCounterSinglePackageChange < 3) {
    unittest.expect(
      o.packageBody!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageDescription!,
      unittest.equals('foo'),
    );
  }
  buildCounterSinglePackageChange--;
}

core.int buildCounterSourceNumericFilter = 0;
api.SourceNumericFilter buildSourceNumericFilter() {
  final o = api.SourceNumericFilter();
  buildCounterSourceNumericFilter++;
  if (buildCounterSourceNumericFilter < 3) {
    o.numericFilterOption = 'foo';
    o.sourceMaxPrecisionFilter = 42;
    o.sourceMaxScaleFilter = 42;
    o.sourceMinPrecisionFilter = 42;
    o.sourceMinScaleFilter = 42;
  }
  buildCounterSourceNumericFilter--;
  return o;
}

void checkSourceNumericFilter(api.SourceNumericFilter o) {
  buildCounterSourceNumericFilter++;
  if (buildCounterSourceNumericFilter < 3) {
    unittest.expect(
      o.numericFilterOption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceMaxPrecisionFilter!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sourceMaxScaleFilter!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sourceMinPrecisionFilter!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sourceMinScaleFilter!,
      unittest.equals(42),
    );
  }
  buildCounterSourceNumericFilter--;
}

core.int buildCounterSourceSqlChange = 0;
api.SourceSqlChange buildSourceSqlChange() {
  final o = api.SourceSqlChange();
  buildCounterSourceSqlChange++;
  if (buildCounterSourceSqlChange < 3) {
    o.sqlCode = 'foo';
  }
  buildCounterSourceSqlChange--;
  return o;
}

void checkSourceSqlChange(api.SourceSqlChange o) {
  buildCounterSourceSqlChange++;
  if (buildCounterSourceSqlChange < 3) {
    unittest.expect(
      o.sqlCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterSourceSqlChange--;
}

core.int buildCounterSourceTextFilter = 0;
api.SourceTextFilter buildSourceTextFilter() {
  final o = api.SourceTextFilter();
  buildCounterSourceTextFilter++;
  if (buildCounterSourceTextFilter < 3) {
    o.sourceMaxLengthFilter = 'foo';
    o.sourceMinLengthFilter = 'foo';
  }
  buildCounterSourceTextFilter--;
  return o;
}

void checkSourceTextFilter(api.SourceTextFilter o) {
  buildCounterSourceTextFilter++;
  if (buildCounterSourceTextFilter < 3) {
    unittest.expect(
      o.sourceMaxLengthFilter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceMinLengthFilter!,
      unittest.equals('foo'),
    );
  }
  buildCounterSourceTextFilter--;
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

core.List<api.SqlAclEntry> buildUnnamed62() => [
      buildSqlAclEntry(),
      buildSqlAclEntry(),
    ];

void checkUnnamed62(core.List<api.SqlAclEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlAclEntry(o[0]);
  checkSqlAclEntry(o[1]);
}

core.int buildCounterSqlIpConfig = 0;
api.SqlIpConfig buildSqlIpConfig() {
  final o = api.SqlIpConfig();
  buildCounterSqlIpConfig++;
  if (buildCounterSqlIpConfig < 3) {
    o.allocatedIpRange = 'foo';
    o.authorizedNetworks = buildUnnamed62();
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
    unittest.expect(
      o.allocatedIpRange!,
      unittest.equals('foo'),
    );
    checkUnnamed62(o.authorizedNetworks!);
    unittest.expect(o.enableIpv4!, unittest.isTrue);
    unittest.expect(
      o.privateNetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(o.requireSsl!, unittest.isTrue);
  }
  buildCounterSqlIpConfig--;
}

core.int buildCounterSqlServerBackups = 0;
api.SqlServerBackups buildSqlServerBackups() {
  final o = api.SqlServerBackups();
  buildCounterSqlServerBackups++;
  if (buildCounterSqlServerBackups < 3) {
    o.gcsBucket = 'foo';
    o.gcsPrefix = 'foo';
  }
  buildCounterSqlServerBackups--;
  return o;
}

void checkSqlServerBackups(api.SqlServerBackups o) {
  buildCounterSqlServerBackups++;
  if (buildCounterSqlServerBackups < 3) {
    unittest.expect(
      o.gcsBucket!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gcsPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterSqlServerBackups--;
}

core.int buildCounterSqlServerConnectionProfile = 0;
api.SqlServerConnectionProfile buildSqlServerConnectionProfile() {
  final o = api.SqlServerConnectionProfile();
  buildCounterSqlServerConnectionProfile++;
  if (buildCounterSqlServerConnectionProfile < 3) {
    o.backups = buildSqlServerBackups();
    o.cloudSqlId = 'foo';
    o.forwardSshConnectivity = buildForwardSshTunnelConnectivity();
    o.host = 'foo';
    o.password = 'foo';
    o.passwordSet = true;
    o.port = 42;
    o.privateConnectivity = buildPrivateConnectivity();
    o.privateServiceConnectConnectivity =
        buildPrivateServiceConnectConnectivity();
    o.ssl = buildSslConfig();
    o.staticIpConnectivity = buildStaticIpConnectivity();
    o.username = 'foo';
  }
  buildCounterSqlServerConnectionProfile--;
  return o;
}

void checkSqlServerConnectionProfile(api.SqlServerConnectionProfile o) {
  buildCounterSqlServerConnectionProfile++;
  if (buildCounterSqlServerConnectionProfile < 3) {
    checkSqlServerBackups(o.backups!);
    unittest.expect(
      o.cloudSqlId!,
      unittest.equals('foo'),
    );
    checkForwardSshTunnelConnectivity(o.forwardSshConnectivity!);
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
    checkPrivateConnectivity(o.privateConnectivity!);
    checkPrivateServiceConnectConnectivity(
        o.privateServiceConnectConnectivity!);
    checkSslConfig(o.ssl!);
    checkStaticIpConnectivity(o.staticIpConnectivity!);
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterSqlServerConnectionProfile--;
}

core.int buildCounterSqlServerDatabaseBackup = 0;
api.SqlServerDatabaseBackup buildSqlServerDatabaseBackup() {
  final o = api.SqlServerDatabaseBackup();
  buildCounterSqlServerDatabaseBackup++;
  if (buildCounterSqlServerDatabaseBackup < 3) {
    o.database = 'foo';
    o.encryptionOptions = buildSqlServerEncryptionOptions();
  }
  buildCounterSqlServerDatabaseBackup--;
  return o;
}

void checkSqlServerDatabaseBackup(api.SqlServerDatabaseBackup o) {
  buildCounterSqlServerDatabaseBackup++;
  if (buildCounterSqlServerDatabaseBackup < 3) {
    unittest.expect(
      o.database!,
      unittest.equals('foo'),
    );
    checkSqlServerEncryptionOptions(o.encryptionOptions!);
  }
  buildCounterSqlServerDatabaseBackup--;
}

core.int buildCounterSqlServerEncryptionOptions = 0;
api.SqlServerEncryptionOptions buildSqlServerEncryptionOptions() {
  final o = api.SqlServerEncryptionOptions();
  buildCounterSqlServerEncryptionOptions++;
  if (buildCounterSqlServerEncryptionOptions < 3) {
    o.certPath = 'foo';
    o.pvkPassword = 'foo';
    o.pvkPath = 'foo';
  }
  buildCounterSqlServerEncryptionOptions--;
  return o;
}

void checkSqlServerEncryptionOptions(api.SqlServerEncryptionOptions o) {
  buildCounterSqlServerEncryptionOptions++;
  if (buildCounterSqlServerEncryptionOptions < 3) {
    unittest.expect(
      o.certPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pvkPassword!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pvkPath!,
      unittest.equals('foo'),
    );
  }
  buildCounterSqlServerEncryptionOptions--;
}

core.List<api.SqlServerDatabaseBackup> buildUnnamed63() => [
      buildSqlServerDatabaseBackup(),
      buildSqlServerDatabaseBackup(),
    ];

void checkUnnamed63(core.List<api.SqlServerDatabaseBackup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlServerDatabaseBackup(o[0]);
  checkSqlServerDatabaseBackup(o[1]);
}

core.int buildCounterSqlServerHomogeneousMigrationJobConfig = 0;
api.SqlServerHomogeneousMigrationJobConfig
    buildSqlServerHomogeneousMigrationJobConfig() {
  final o = api.SqlServerHomogeneousMigrationJobConfig();
  buildCounterSqlServerHomogeneousMigrationJobConfig++;
  if (buildCounterSqlServerHomogeneousMigrationJobConfig < 3) {
    o.backupFilePattern = 'foo';
    o.databaseBackups = buildUnnamed63();
  }
  buildCounterSqlServerHomogeneousMigrationJobConfig--;
  return o;
}

void checkSqlServerHomogeneousMigrationJobConfig(
    api.SqlServerHomogeneousMigrationJobConfig o) {
  buildCounterSqlServerHomogeneousMigrationJobConfig++;
  if (buildCounterSqlServerHomogeneousMigrationJobConfig < 3) {
    unittest.expect(
      o.backupFilePattern!,
      unittest.equals('foo'),
    );
    checkUnnamed63(o.databaseBackups!);
  }
  buildCounterSqlServerHomogeneousMigrationJobConfig--;
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
  if (buildCounterStartMigrationJobRequest < 3) {
    o.skipValidation = true;
  }
  buildCounterStartMigrationJobRequest--;
  return o;
}

void checkStartMigrationJobRequest(api.StartMigrationJobRequest o) {
  buildCounterStartMigrationJobRequest++;
  if (buildCounterStartMigrationJobRequest < 3) {
    unittest.expect(o.skipValidation!, unittest.isTrue);
  }
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

core.int buildCounterStaticServiceIpConnectivity = 0;
api.StaticServiceIpConnectivity buildStaticServiceIpConnectivity() {
  final o = api.StaticServiceIpConnectivity();
  buildCounterStaticServiceIpConnectivity++;
  if (buildCounterStaticServiceIpConnectivity < 3) {}
  buildCounterStaticServiceIpConnectivity--;
  return o;
}

void checkStaticServiceIpConnectivity(api.StaticServiceIpConnectivity o) {
  buildCounterStaticServiceIpConnectivity++;
  if (buildCounterStaticServiceIpConnectivity < 3) {}
  buildCounterStaticServiceIpConnectivity--;
}

core.Map<core.String, core.Object?> buildUnnamed64() => {
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

void checkUnnamed64(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted31 = (o['x']!) as core.Map;
  unittest.expect(casted31, unittest.hasLength(3));
  unittest.expect(
    casted31['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted31['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted31['string'],
    unittest.equals('foo'),
  );
  var casted32 = (o['y']!) as core.Map;
  unittest.expect(casted32, unittest.hasLength(3));
  unittest.expect(
    casted32['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted32['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted32['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed65() => [
      buildUnnamed64(),
      buildUnnamed64(),
    ];

void checkUnnamed65(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed64(o[0]);
  checkUnnamed64(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed65();
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
    checkUnnamed65(o.details!);
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

core.Map<core.String, core.Object?> buildUnnamed66() => {
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

void checkUnnamed66(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted33 = (o['x']!) as core.Map;
  unittest.expect(casted33, unittest.hasLength(3));
  unittest.expect(
    casted33['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted33['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted33['string'],
    unittest.equals('foo'),
  );
  var casted34 = (o['y']!) as core.Map;
  unittest.expect(casted34, unittest.hasLength(3));
  unittest.expect(
    casted34['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted34['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted34['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterStoredProcedureEntity = 0;
api.StoredProcedureEntity buildStoredProcedureEntity() {
  final o = api.StoredProcedureEntity();
  buildCounterStoredProcedureEntity++;
  if (buildCounterStoredProcedureEntity < 3) {
    o.customFeatures = buildUnnamed66();
    o.sqlCode = 'foo';
  }
  buildCounterStoredProcedureEntity--;
  return o;
}

void checkStoredProcedureEntity(api.StoredProcedureEntity o) {
  buildCounterStoredProcedureEntity++;
  if (buildCounterStoredProcedureEntity < 3) {
    checkUnnamed66(o.customFeatures!);
    unittest.expect(
      o.sqlCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterStoredProcedureEntity--;
}

core.Map<core.String, core.Object?> buildUnnamed67() => {
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

void checkUnnamed67(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted35 = (o['x']!) as core.Map;
  unittest.expect(casted35, unittest.hasLength(3));
  unittest.expect(
    casted35['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted35['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted35['string'],
    unittest.equals('foo'),
  );
  var casted36 = (o['y']!) as core.Map;
  unittest.expect(casted36, unittest.hasLength(3));
  unittest.expect(
    casted36['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted36['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted36['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterSynonymEntity = 0;
api.SynonymEntity buildSynonymEntity() {
  final o = api.SynonymEntity();
  buildCounterSynonymEntity++;
  if (buildCounterSynonymEntity < 3) {
    o.customFeatures = buildUnnamed67();
    o.sourceEntity = 'foo';
    o.sourceType = 'foo';
  }
  buildCounterSynonymEntity--;
  return o;
}

void checkSynonymEntity(api.SynonymEntity o) {
  buildCounterSynonymEntity++;
  if (buildCounterSynonymEntity < 3) {
    checkUnnamed67(o.customFeatures!);
    unittest.expect(
      o.sourceEntity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterSynonymEntity--;
}

core.List<api.ColumnEntity> buildUnnamed68() => [
      buildColumnEntity(),
      buildColumnEntity(),
    ];

void checkUnnamed68(core.List<api.ColumnEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkColumnEntity(o[0]);
  checkColumnEntity(o[1]);
}

core.List<api.ConstraintEntity> buildUnnamed69() => [
      buildConstraintEntity(),
      buildConstraintEntity(),
    ];

void checkUnnamed69(core.List<api.ConstraintEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConstraintEntity(o[0]);
  checkConstraintEntity(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed70() => {
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

void checkUnnamed70(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted37 = (o['x']!) as core.Map;
  unittest.expect(casted37, unittest.hasLength(3));
  unittest.expect(
    casted37['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted37['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted37['string'],
    unittest.equals('foo'),
  );
  var casted38 = (o['y']!) as core.Map;
  unittest.expect(casted38, unittest.hasLength(3));
  unittest.expect(
    casted38['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted38['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted38['string'],
    unittest.equals('foo'),
  );
}

core.List<api.IndexEntity> buildUnnamed71() => [
      buildIndexEntity(),
      buildIndexEntity(),
    ];

void checkUnnamed71(core.List<api.IndexEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIndexEntity(o[0]);
  checkIndexEntity(o[1]);
}

core.List<api.TriggerEntity> buildUnnamed72() => [
      buildTriggerEntity(),
      buildTriggerEntity(),
    ];

void checkUnnamed72(core.List<api.TriggerEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTriggerEntity(o[0]);
  checkTriggerEntity(o[1]);
}

core.int buildCounterTableEntity = 0;
api.TableEntity buildTableEntity() {
  final o = api.TableEntity();
  buildCounterTableEntity++;
  if (buildCounterTableEntity < 3) {
    o.columns = buildUnnamed68();
    o.comment = 'foo';
    o.constraints = buildUnnamed69();
    o.customFeatures = buildUnnamed70();
    o.indices = buildUnnamed71();
    o.triggers = buildUnnamed72();
  }
  buildCounterTableEntity--;
  return o;
}

void checkTableEntity(api.TableEntity o) {
  buildCounterTableEntity++;
  if (buildCounterTableEntity < 3) {
    checkUnnamed68(o.columns!);
    unittest.expect(
      o.comment!,
      unittest.equals('foo'),
    );
    checkUnnamed69(o.constraints!);
    checkUnnamed70(o.customFeatures!);
    checkUnnamed71(o.indices!);
    checkUnnamed72(o.triggers!);
  }
  buildCounterTableEntity--;
}

core.int buildCounterTcpProxyScript = 0;
api.TcpProxyScript buildTcpProxyScript() {
  final o = api.TcpProxyScript();
  buildCounterTcpProxyScript++;
  if (buildCounterTcpProxyScript < 3) {
    o.script = 'foo';
  }
  buildCounterTcpProxyScript--;
  return o;
}

void checkTcpProxyScript(api.TcpProxyScript o) {
  buildCounterTcpProxyScript++;
  if (buildCounterTcpProxyScript < 3) {
    unittest.expect(
      o.script!,
      unittest.equals('foo'),
    );
  }
  buildCounterTcpProxyScript--;
}

core.List<core.String> buildUnnamed73() => [
      'foo',
      'foo',
    ];

void checkUnnamed73(core.List<core.String> o) {
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
    o.permissions = buildUnnamed73();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed73(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed74() => [
      'foo',
      'foo',
    ];

void checkUnnamed74(core.List<core.String> o) {
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
    o.permissions = buildUnnamed74();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed74(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed75() => {
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

void checkUnnamed75(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted39 = (o['x']!) as core.Map;
  unittest.expect(casted39, unittest.hasLength(3));
  unittest.expect(
    casted39['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted39['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted39['string'],
    unittest.equals('foo'),
  );
  var casted40 = (o['y']!) as core.Map;
  unittest.expect(casted40, unittest.hasLength(3));
  unittest.expect(
    casted40['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted40['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted40['string'],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed76() => [
      'foo',
      'foo',
    ];

void checkUnnamed76(core.List<core.String> o) {
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

core.int buildCounterTriggerEntity = 0;
api.TriggerEntity buildTriggerEntity() {
  final o = api.TriggerEntity();
  buildCounterTriggerEntity++;
  if (buildCounterTriggerEntity < 3) {
    o.customFeatures = buildUnnamed75();
    o.name = 'foo';
    o.sqlCode = 'foo';
    o.triggerType = 'foo';
    o.triggeringEvents = buildUnnamed76();
  }
  buildCounterTriggerEntity--;
  return o;
}

void checkTriggerEntity(api.TriggerEntity o) {
  buildCounterTriggerEntity++;
  if (buildCounterTriggerEntity < 3) {
    checkUnnamed75(o.customFeatures!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sqlCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerType!,
      unittest.equals('foo'),
    );
    checkUnnamed76(o.triggeringEvents!);
  }
  buildCounterTriggerEntity--;
}

core.Map<core.String, core.Object?> buildUnnamed77() => {
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

void checkUnnamed77(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted41 = (o['x']!) as core.Map;
  unittest.expect(casted41, unittest.hasLength(3));
  unittest.expect(
    casted41['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted41['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted41['string'],
    unittest.equals('foo'),
  );
  var casted42 = (o['y']!) as core.Map;
  unittest.expect(casted42, unittest.hasLength(3));
  unittest.expect(
    casted42['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted42['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted42['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterUDTEntity = 0;
api.UDTEntity buildUDTEntity() {
  final o = api.UDTEntity();
  buildCounterUDTEntity++;
  if (buildCounterUDTEntity < 3) {
    o.customFeatures = buildUnnamed77();
    o.udtBody = 'foo';
    o.udtSqlCode = 'foo';
  }
  buildCounterUDTEntity--;
  return o;
}

void checkUDTEntity(api.UDTEntity o) {
  buildCounterUDTEntity++;
  if (buildCounterUDTEntity < 3) {
    checkUnnamed77(o.customFeatures!);
    unittest.expect(
      o.udtBody!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.udtSqlCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterUDTEntity--;
}

core.int buildCounterUserPassword = 0;
api.UserPassword buildUserPassword() {
  final o = api.UserPassword();
  buildCounterUserPassword++;
  if (buildCounterUserPassword < 3) {
    o.password = 'foo';
    o.passwordSet = true;
    o.user = 'foo';
  }
  buildCounterUserPassword--;
  return o;
}

void checkUserPassword(api.UserPassword o) {
  buildCounterUserPassword++;
  if (buildCounterUserPassword < 3) {
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(o.passwordSet!, unittest.isTrue);
    unittest.expect(
      o.user!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserPassword--;
}

core.List<core.String> buildUnnamed78() => [
      'foo',
      'foo',
    ];

void checkUnnamed78(core.List<core.String> o) {
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

core.int buildCounterValueListFilter = 0;
api.ValueListFilter buildValueListFilter() {
  final o = api.ValueListFilter();
  buildCounterValueListFilter++;
  if (buildCounterValueListFilter < 3) {
    o.ignoreCase = true;
    o.valuePresentList = 'foo';
    o.values = buildUnnamed78();
  }
  buildCounterValueListFilter--;
  return o;
}

void checkValueListFilter(api.ValueListFilter o) {
  buildCounterValueListFilter++;
  if (buildCounterValueListFilter < 3) {
    unittest.expect(o.ignoreCase!, unittest.isTrue);
    unittest.expect(
      o.valuePresentList!,
      unittest.equals('foo'),
    );
    checkUnnamed78(o.values!);
  }
  buildCounterValueListFilter--;
}

core.int buildCounterValueTransformation = 0;
api.ValueTransformation buildValueTransformation() {
  final o = api.ValueTransformation();
  buildCounterValueTransformation++;
  if (buildCounterValueTransformation < 3) {
    o.applyHash = buildApplyHash();
    o.assignMaxValue = buildEmpty();
    o.assignMinValue = buildEmpty();
    o.assignNull = buildEmpty();
    o.assignSpecificValue = buildAssignSpecificValue();
    o.doubleComparison = buildDoubleComparisonFilter();
    o.intComparison = buildIntComparisonFilter();
    o.isNull = buildEmpty();
    o.roundScale = buildRoundToScale();
    o.valueList = buildValueListFilter();
  }
  buildCounterValueTransformation--;
  return o;
}

void checkValueTransformation(api.ValueTransformation o) {
  buildCounterValueTransformation++;
  if (buildCounterValueTransformation < 3) {
    checkApplyHash(o.applyHash!);
    checkEmpty(o.assignMaxValue!);
    checkEmpty(o.assignMinValue!);
    checkEmpty(o.assignNull!);
    checkAssignSpecificValue(o.assignSpecificValue!);
    checkDoubleComparisonFilter(o.doubleComparison!);
    checkIntComparisonFilter(o.intComparison!);
    checkEmpty(o.isNull!);
    checkRoundToScale(o.roundScale!);
    checkValueListFilter(o.valueList!);
  }
  buildCounterValueTransformation--;
}

core.int buildCounterVerifyMigrationJobRequest = 0;
api.VerifyMigrationJobRequest buildVerifyMigrationJobRequest() {
  final o = api.VerifyMigrationJobRequest();
  buildCounterVerifyMigrationJobRequest++;
  if (buildCounterVerifyMigrationJobRequest < 3) {
    o.migrationJob = buildMigrationJob();
    o.updateMask = 'foo';
  }
  buildCounterVerifyMigrationJobRequest--;
  return o;
}

void checkVerifyMigrationJobRequest(api.VerifyMigrationJobRequest o) {
  buildCounterVerifyMigrationJobRequest++;
  if (buildCounterVerifyMigrationJobRequest < 3) {
    checkMigrationJob(o.migrationJob!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterVerifyMigrationJobRequest--;
}

core.List<api.ConstraintEntity> buildUnnamed79() => [
      buildConstraintEntity(),
      buildConstraintEntity(),
    ];

void checkUnnamed79(core.List<api.ConstraintEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConstraintEntity(o[0]);
  checkConstraintEntity(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed80() => {
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

void checkUnnamed80(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted43 = (o['x']!) as core.Map;
  unittest.expect(casted43, unittest.hasLength(3));
  unittest.expect(
    casted43['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted43['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted43['string'],
    unittest.equals('foo'),
  );
  var casted44 = (o['y']!) as core.Map;
  unittest.expect(casted44, unittest.hasLength(3));
  unittest.expect(
    casted44['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted44['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted44['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterViewEntity = 0;
api.ViewEntity buildViewEntity() {
  final o = api.ViewEntity();
  buildCounterViewEntity++;
  if (buildCounterViewEntity < 3) {
    o.constraints = buildUnnamed79();
    o.customFeatures = buildUnnamed80();
    o.sqlCode = 'foo';
  }
  buildCounterViewEntity--;
  return o;
}

void checkViewEntity(api.ViewEntity o) {
  buildCounterViewEntity++;
  if (buildCounterViewEntity < 3) {
    checkUnnamed79(o.constraints!);
    checkUnnamed80(o.customFeatures!);
    unittest.expect(
      o.sqlCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterViewEntity--;
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

core.int buildCounterVpcPeeringConfig = 0;
api.VpcPeeringConfig buildVpcPeeringConfig() {
  final o = api.VpcPeeringConfig();
  buildCounterVpcPeeringConfig++;
  if (buildCounterVpcPeeringConfig < 3) {
    o.subnet = 'foo';
    o.vpcName = 'foo';
  }
  buildCounterVpcPeeringConfig--;
  return o;
}

void checkVpcPeeringConfig(api.VpcPeeringConfig o) {
  buildCounterVpcPeeringConfig++;
  if (buildCounterVpcPeeringConfig < 3) {
    unittest.expect(
      o.subnet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vpcName!,
      unittest.equals('foo'),
    );
  }
  buildCounterVpcPeeringConfig--;
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
  unittest.group('obj-schema-AlloyDbConnectionProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAlloyDbConnectionProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AlloyDbConnectionProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAlloyDbConnectionProfile(od);
    });
  });

  unittest.group('obj-schema-AlloyDbSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAlloyDbSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AlloyDbSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAlloyDbSettings(od);
    });
  });

  unittest.group('obj-schema-ApplyConversionWorkspaceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplyConversionWorkspaceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplyConversionWorkspaceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplyConversionWorkspaceRequest(od);
    });
  });

  unittest.group('obj-schema-ApplyHash', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplyHash();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ApplyHash.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkApplyHash(od);
    });
  });

  unittest.group('obj-schema-ApplyJobDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplyJobDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplyJobDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplyJobDetails(od);
    });
  });

  unittest.group('obj-schema-AssignSpecificValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssignSpecificValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssignSpecificValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAssignSpecificValue(od);
    });
  });

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

  unittest.group('obj-schema-BackgroundJobLogEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackgroundJobLogEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackgroundJobLogEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackgroundJobLogEntry(od);
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

  unittest.group('obj-schema-ColumnEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColumnEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ColumnEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkColumnEntity(od);
    });
  });

  unittest.group('obj-schema-CommitConversionWorkspaceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommitConversionWorkspaceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommitConversionWorkspaceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommitConversionWorkspaceRequest(od);
    });
  });

  unittest.group('obj-schema-ConditionalColumnSetValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConditionalColumnSetValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConditionalColumnSetValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConditionalColumnSetValue(od);
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

  unittest.group('obj-schema-ConstraintEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConstraintEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConstraintEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConstraintEntity(od);
    });
  });

  unittest.group('obj-schema-ConversionWorkspace', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConversionWorkspace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConversionWorkspace.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConversionWorkspace(od);
    });
  });

  unittest.group('obj-schema-ConversionWorkspaceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConversionWorkspaceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConversionWorkspaceInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConversionWorkspaceInfo(od);
    });
  });

  unittest.group('obj-schema-ConvertConversionWorkspaceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConvertConversionWorkspaceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConvertConversionWorkspaceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConvertConversionWorkspaceRequest(od);
    });
  });

  unittest.group('obj-schema-ConvertJobDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConvertJobDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConvertJobDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConvertJobDetails(od);
    });
  });

  unittest.group('obj-schema-ConvertRowIdToColumn', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConvertRowIdToColumn();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConvertRowIdToColumn.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConvertRowIdToColumn(od);
    });
  });

  unittest.group('obj-schema-DataCacheConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataCacheConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataCacheConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataCacheConfig(od);
    });
  });

  unittest.group('obj-schema-DatabaseEngineInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseEngineInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseEngineInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatabaseEngineInfo(od);
    });
  });

  unittest.group('obj-schema-DatabaseEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatabaseEntity(od);
    });
  });

  unittest.group('obj-schema-DatabaseInstanceEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseInstanceEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseInstanceEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatabaseInstanceEntity(od);
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

  unittest.group('obj-schema-DemoteDestinationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDemoteDestinationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DemoteDestinationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDemoteDestinationRequest(od);
    });
  });

  unittest.group('obj-schema-DescribeConversionWorkspaceRevisionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDescribeConversionWorkspaceRevisionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DescribeConversionWorkspaceRevisionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDescribeConversionWorkspaceRevisionsResponse(od);
    });
  });

  unittest.group('obj-schema-DescribeDatabaseEntitiesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDescribeDatabaseEntitiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DescribeDatabaseEntitiesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDescribeDatabaseEntitiesResponse(od);
    });
  });

  unittest.group('obj-schema-DoubleComparisonFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDoubleComparisonFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DoubleComparisonFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDoubleComparisonFilter(od);
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

  unittest.group('obj-schema-EncryptionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryptionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncryptionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEncryptionConfig(od);
    });
  });

  unittest.group('obj-schema-EntityDdl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityDdl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EntityDdl.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEntityDdl(od);
    });
  });

  unittest.group('obj-schema-EntityIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntityIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEntityIssue(od);
    });
  });

  unittest.group('obj-schema-EntityMapping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityMapping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntityMapping.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEntityMapping(od);
    });
  });

  unittest.group('obj-schema-EntityMappingLogEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityMappingLogEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntityMappingLogEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEntityMappingLogEntry(od);
    });
  });

  unittest.group('obj-schema-EntityMove', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityMove();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EntityMove.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEntityMove(od);
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

  unittest.group('obj-schema-FetchStaticIpsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchStaticIpsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchStaticIpsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchStaticIpsResponse(od);
    });
  });

  unittest.group('obj-schema-FilterTableColumns', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilterTableColumns();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FilterTableColumns.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFilterTableColumns(od);
    });
  });

  unittest.group('obj-schema-ForwardSshTunnelConnectivity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildForwardSshTunnelConnectivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ForwardSshTunnelConnectivity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkForwardSshTunnelConnectivity(od);
    });
  });

  unittest.group('obj-schema-FunctionEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFunctionEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FunctionEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFunctionEntity(od);
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

  unittest.group('obj-schema-GenerateTcpProxyScriptRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateTcpProxyScriptRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateTcpProxyScriptRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateTcpProxyScriptRequest(od);
    });
  });

  unittest.group('obj-schema-ImportMappingRulesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportMappingRulesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportMappingRulesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportMappingRulesRequest(od);
    });
  });

  unittest.group('obj-schema-ImportRulesJobDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportRulesJobDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportRulesJobDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportRulesJobDetails(od);
    });
  });

  unittest.group('obj-schema-IndexEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIndexEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IndexEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIndexEntity(od);
    });
  });

  unittest.group('obj-schema-IntComparisonFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntComparisonFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IntComparisonFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIntComparisonFilter(od);
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

  unittest.group('obj-schema-ListConversionWorkspacesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConversionWorkspacesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConversionWorkspacesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListConversionWorkspacesResponse(od);
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

  unittest.group('obj-schema-ListMappingRulesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMappingRulesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMappingRulesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListMappingRulesResponse(od);
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

  unittest.group('obj-schema-ListPrivateConnectionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPrivateConnectionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPrivateConnectionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPrivateConnectionsResponse(od);
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

  unittest.group('obj-schema-MachineConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMachineConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MachineConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMachineConfig(od);
    });
  });

  unittest.group('obj-schema-MappingRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMappingRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MappingRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMappingRule(od);
    });
  });

  unittest.group('obj-schema-MappingRuleFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMappingRuleFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MappingRuleFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMappingRuleFilter(od);
    });
  });

  unittest.group('obj-schema-MaterializedViewEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaterializedViewEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaterializedViewEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMaterializedViewEntity(od);
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

  unittest.group('obj-schema-MultiColumnDatatypeChange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMultiColumnDatatypeChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MultiColumnDatatypeChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMultiColumnDatatypeChange(od);
    });
  });

  unittest.group('obj-schema-MultiEntityRename', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMultiEntityRename();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MultiEntityRename.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMultiEntityRename(od);
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

  unittest.group('obj-schema-OracleConnectionProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOracleConnectionProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OracleConnectionProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOracleConnectionProfile(od);
    });
  });

  unittest.group('obj-schema-PackageEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackageEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackageEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPackageEntity(od);
    });
  });

  unittest.group('obj-schema-PerformanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerformanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PerformanceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPerformanceConfig(od);
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

  unittest.group('obj-schema-Position', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Position.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPosition(od);
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

  unittest.group('obj-schema-PrimaryInstanceSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrimaryInstanceSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrimaryInstanceSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrimaryInstanceSettings(od);
    });
  });

  unittest.group('obj-schema-PrivateConnection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrivateConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrivateConnection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrivateConnection(od);
    });
  });

  unittest.group('obj-schema-PrivateConnectivity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrivateConnectivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrivateConnectivity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrivateConnectivity(od);
    });
  });

  unittest.group('obj-schema-PrivateServiceConnectConnectivity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrivateServiceConnectConnectivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrivateServiceConnectConnectivity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrivateServiceConnectConnectivity(od);
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

  unittest.group('obj-schema-RollbackConversionWorkspaceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollbackConversionWorkspaceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollbackConversionWorkspaceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRollbackConversionWorkspaceRequest(od);
    });
  });

  unittest.group('obj-schema-RoundToScale', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRoundToScale();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RoundToScale.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRoundToScale(od);
    });
  });

  unittest.group('obj-schema-RulesFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRulesFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RulesFile.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRulesFile(od);
    });
  });

  unittest.group('obj-schema-SchemaEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchemaEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchemaEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSchemaEntity(od);
    });
  });

  unittest.group('obj-schema-SearchBackgroundJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchBackgroundJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchBackgroundJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchBackgroundJobsResponse(od);
    });
  });

  unittest.group('obj-schema-SeedConversionWorkspaceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSeedConversionWorkspaceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SeedConversionWorkspaceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSeedConversionWorkspaceRequest(od);
    });
  });

  unittest.group('obj-schema-SeedJobDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSeedJobDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SeedJobDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSeedJobDetails(od);
    });
  });

  unittest.group('obj-schema-SequenceEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSequenceEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SequenceEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSequenceEntity(od);
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

  unittest.group('obj-schema-SetTablePrimaryKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetTablePrimaryKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetTablePrimaryKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetTablePrimaryKey(od);
    });
  });

  unittest.group('obj-schema-SingleColumnChange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSingleColumnChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SingleColumnChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSingleColumnChange(od);
    });
  });

  unittest.group('obj-schema-SingleEntityRename', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSingleEntityRename();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SingleEntityRename.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSingleEntityRename(od);
    });
  });

  unittest.group('obj-schema-SinglePackageChange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSinglePackageChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SinglePackageChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSinglePackageChange(od);
    });
  });

  unittest.group('obj-schema-SourceNumericFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceNumericFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceNumericFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceNumericFilter(od);
    });
  });

  unittest.group('obj-schema-SourceSqlChange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceSqlChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceSqlChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceSqlChange(od);
    });
  });

  unittest.group('obj-schema-SourceTextFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceTextFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceTextFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceTextFilter(od);
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

  unittest.group('obj-schema-SqlServerBackups', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerBackups();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerBackups.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlServerBackups(od);
    });
  });

  unittest.group('obj-schema-SqlServerConnectionProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerConnectionProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerConnectionProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlServerConnectionProfile(od);
    });
  });

  unittest.group('obj-schema-SqlServerDatabaseBackup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerDatabaseBackup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerDatabaseBackup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlServerDatabaseBackup(od);
    });
  });

  unittest.group('obj-schema-SqlServerEncryptionOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerEncryptionOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerEncryptionOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlServerEncryptionOptions(od);
    });
  });

  unittest.group('obj-schema-SqlServerHomogeneousMigrationJobConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerHomogeneousMigrationJobConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerHomogeneousMigrationJobConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlServerHomogeneousMigrationJobConfig(od);
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

  unittest.group('obj-schema-StaticServiceIpConnectivity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStaticServiceIpConnectivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StaticServiceIpConnectivity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStaticServiceIpConnectivity(od);
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

  unittest.group('obj-schema-StoredProcedureEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStoredProcedureEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StoredProcedureEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStoredProcedureEntity(od);
    });
  });

  unittest.group('obj-schema-SynonymEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSynonymEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SynonymEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSynonymEntity(od);
    });
  });

  unittest.group('obj-schema-TableEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableEntity(od);
    });
  });

  unittest.group('obj-schema-TcpProxyScript', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTcpProxyScript();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TcpProxyScript.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTcpProxyScript(od);
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

  unittest.group('obj-schema-TriggerEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTriggerEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TriggerEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTriggerEntity(od);
    });
  });

  unittest.group('obj-schema-UDTEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUDTEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.UDTEntity.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUDTEntity(od);
    });
  });

  unittest.group('obj-schema-UserPassword', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserPassword();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserPassword.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserPassword(od);
    });
  });

  unittest.group('obj-schema-ValueListFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValueListFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValueListFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValueListFilter(od);
    });
  });

  unittest.group('obj-schema-ValueTransformation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValueTransformation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValueTransformation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValueTransformation(od);
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

  unittest.group('obj-schema-ViewEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildViewEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ViewEntity.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkViewEntity(od);
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

  unittest.group('obj-schema-VpcPeeringConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVpcPeeringConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VpcPeeringConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVpcPeeringConfig(od);
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
    unittest.test('method--fetchStaticIps', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock).projects.locations;
      final arg_name = 'foo';
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
        final resp = convert.json.encode(buildFetchStaticIpsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetchStaticIps(arg_name,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkFetchStaticIpsResponse(response as api.FetchStaticIpsResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock).projects.locations;
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
      final arg_skipValidation = true;
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConnectionProfile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConnectionProfile(obj);

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
          queryMap['connectionProfileId']!.first,
          unittest.equals(arg_connectionProfileId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['skipValidation']!.first,
          unittest.equals('$arg_skipValidation'),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
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
          skipValidation: arg_skipValidation,
          validateOnly: arg_validateOnly,
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
      final arg_skipValidation = true;
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConnectionProfile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConnectionProfile(obj);

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
          queryMap['skipValidation']!.first,
          unittest.equals('$arg_skipValidation'),
        );
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
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
          skipValidation: arg_skipValidation,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsConversionWorkspacesResource', () {
    unittest.test('method--apply', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .conversionWorkspaces;
      final arg_request = buildApplyConversionWorkspaceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApplyConversionWorkspaceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApplyConversionWorkspaceRequest(obj);

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
          await res.apply(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--commit', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .conversionWorkspaces;
      final arg_request = buildCommitConversionWorkspaceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CommitConversionWorkspaceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCommitConversionWorkspaceRequest(obj);

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
          await res.commit(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--convert', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .conversionWorkspaces;
      final arg_request = buildConvertConversionWorkspaceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConvertConversionWorkspaceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConvertConversionWorkspaceRequest(obj);

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
          await res.convert(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .conversionWorkspaces;
      final arg_request = buildConversionWorkspace();
      final arg_parent = 'foo';
      final arg_conversionWorkspaceId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConversionWorkspace.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConversionWorkspace(obj);

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
          queryMap['conversionWorkspaceId']!.first,
          unittest.equals(arg_conversionWorkspaceId),
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
          conversionWorkspaceId: arg_conversionWorkspaceId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .conversionWorkspaces;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
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

    unittest.test('method--describeConversionWorkspaceRevisions', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .conversionWorkspaces;
      final arg_conversionWorkspace = 'foo';
      final arg_commitId = 'foo';
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
          queryMap['commitId']!.first,
          unittest.equals(arg_commitId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildDescribeConversionWorkspaceRevisionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.describeConversionWorkspaceRevisions(
          arg_conversionWorkspace,
          commitId: arg_commitId,
          $fields: arg_$fields);
      checkDescribeConversionWorkspaceRevisionsResponse(
          response as api.DescribeConversionWorkspaceRevisionsResponse);
    });

    unittest.test('method--describeDatabaseEntities', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .conversionWorkspaces;
      final arg_conversionWorkspace = 'foo';
      final arg_commitId = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_tree = 'foo';
      final arg_uncommitted = true;
      final arg_view = 'foo';
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
          queryMap['commitId']!.first,
          unittest.equals(arg_commitId),
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
          queryMap['tree']!.first,
          unittest.equals(arg_tree),
        );
        unittest.expect(
          queryMap['uncommitted']!.first,
          unittest.equals('$arg_uncommitted'),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildDescribeDatabaseEntitiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.describeDatabaseEntities(
          arg_conversionWorkspace,
          commitId: arg_commitId,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          tree: arg_tree,
          uncommitted: arg_uncommitted,
          view: arg_view,
          $fields: arg_$fields);
      checkDescribeDatabaseEntitiesResponse(
          response as api.DescribeDatabaseEntitiesResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .conversionWorkspaces;
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
        final resp = convert.json.encode(buildConversionWorkspace());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConversionWorkspace(response as api.ConversionWorkspace);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .conversionWorkspaces;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          .conversionWorkspaces;
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
        final resp =
            convert.json.encode(buildListConversionWorkspacesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListConversionWorkspacesResponse(
          response as api.ListConversionWorkspacesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .conversionWorkspaces;
      final arg_request = buildConversionWorkspace();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConversionWorkspace.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConversionWorkspace(obj);

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

    unittest.test('method--rollback', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .conversionWorkspaces;
      final arg_request = buildRollbackConversionWorkspaceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RollbackConversionWorkspaceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRollbackConversionWorkspaceRequest(obj);

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
          await res.rollback(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--searchBackgroundJobs', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .conversionWorkspaces;
      final arg_conversionWorkspace = 'foo';
      final arg_completedUntilTime = 'foo';
      final arg_maxSize = 42;
      final arg_returnMostRecentPerJobType = true;
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
          queryMap['completedUntilTime']!.first,
          unittest.equals(arg_completedUntilTime),
        );
        unittest.expect(
          core.int.parse(queryMap['maxSize']!.first),
          unittest.equals(arg_maxSize),
        );
        unittest.expect(
          queryMap['returnMostRecentPerJobType']!.first,
          unittest.equals('$arg_returnMostRecentPerJobType'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSearchBackgroundJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchBackgroundJobs(arg_conversionWorkspace,
          completedUntilTime: arg_completedUntilTime,
          maxSize: arg_maxSize,
          returnMostRecentPerJobType: arg_returnMostRecentPerJobType,
          $fields: arg_$fields);
      checkSearchBackgroundJobsResponse(
          response as api.SearchBackgroundJobsResponse);
    });

    unittest.test('method--seed', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .conversionWorkspaces;
      final arg_request = buildSeedConversionWorkspaceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SeedConversionWorkspaceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSeedConversionWorkspaceRequest(obj);

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
          await res.seed(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .conversionWorkspaces;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
          .conversionWorkspaces;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

  unittest.group(
      'resource-ProjectsLocationsConversionWorkspacesMappingRulesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .conversionWorkspaces
          .mappingRules;
      final arg_request = buildMappingRule();
      final arg_parent = 'foo';
      final arg_mappingRuleId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.MappingRule.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMappingRule(obj);

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
          queryMap['mappingRuleId']!.first,
          unittest.equals(arg_mappingRuleId),
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
        final resp = convert.json.encode(buildMappingRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          mappingRuleId: arg_mappingRuleId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkMappingRule(response as api.MappingRule);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .conversionWorkspaces
          .mappingRules;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .conversionWorkspaces
          .mappingRules;
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
        final resp = convert.json.encode(buildMappingRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMappingRule(response as api.MappingRule);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .conversionWorkspaces
          .mappingRules;
      final arg_request = buildImportMappingRulesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ImportMappingRulesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkImportMappingRulesRequest(obj);

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
          await res.import(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .conversionWorkspaces
          .mappingRules;
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
        final resp = convert.json.encode(buildListMappingRulesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListMappingRulesResponse(response as api.ListMappingRulesResponse);
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

    unittest.test('method--demoteDestination', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      final arg_request = buildDemoteDestinationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DemoteDestinationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDemoteDestinationRequest(obj);

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
      final response = await res.demoteDestination(arg_request, arg_name,
          $fields: arg_$fields);
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
        final resp = convert.json.encode(buildSshScript());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generateSshScript(
          arg_request, arg_migrationJob,
          $fields: arg_$fields);
      checkSshScript(response as api.SshScript);
    });

    unittest.test('method--generateTcpProxyScript', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .migrationJobs;
      final arg_request = buildGenerateTcpProxyScriptRequest();
      final arg_migrationJob = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GenerateTcpProxyScriptRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGenerateTcpProxyScriptRequest(obj);

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
        final resp = convert.json.encode(buildTcpProxyScript());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generateTcpProxyScript(
          arg_request, arg_migrationJob,
          $fields: arg_$fields);
      checkTcpProxyScript(response as api.TcpProxyScript);
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
      final res =
          api.DatabaseMigrationServiceApi(mock).projects.locations.operations;
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
      final res =
          api.DatabaseMigrationServiceApi(mock).projects.locations.operations;
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

  unittest.group('resource-ProjectsLocationsPrivateConnectionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .privateConnections;
      final arg_request = buildPrivateConnection();
      final arg_parent = 'foo';
      final arg_privateConnectionId = 'foo';
      final arg_requestId = 'foo';
      final arg_skipValidation = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PrivateConnection.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPrivateConnection(obj);

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
          queryMap['privateConnectionId']!.first,
          unittest.equals(arg_privateConnectionId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['skipValidation']!.first,
          unittest.equals('$arg_skipValidation'),
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
          privateConnectionId: arg_privateConnectionId,
          requestId: arg_requestId,
          skipValidation: arg_skipValidation,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .privateConnections;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .privateConnections;
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
        final resp = convert.json.encode(buildPrivateConnection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPrivateConnection(response as api.PrivateConnection);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .privateConnections;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          .privateConnections;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
        final resp = convert.json.encode(buildListPrivateConnectionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPrivateConnectionsResponse(
          response as api.ListPrivateConnectionsResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DatabaseMigrationServiceApi(mock)
          .projects
          .locations
          .privateConnections;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
          .privateConnections;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
}
