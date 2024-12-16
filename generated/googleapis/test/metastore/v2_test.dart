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

import 'package:googleapis/metastore/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int
    buildCounterGoogleCloudMetastoreV2AlterMetadataResourceLocationRequest = 0;
api.GoogleCloudMetastoreV2AlterMetadataResourceLocationRequest
    buildGoogleCloudMetastoreV2AlterMetadataResourceLocationRequest() {
  final o = api.GoogleCloudMetastoreV2AlterMetadataResourceLocationRequest();
  buildCounterGoogleCloudMetastoreV2AlterMetadataResourceLocationRequest++;
  if (buildCounterGoogleCloudMetastoreV2AlterMetadataResourceLocationRequest <
      3) {
    o.locationUri = 'foo';
    o.resourceName = 'foo';
  }
  buildCounterGoogleCloudMetastoreV2AlterMetadataResourceLocationRequest--;
  return o;
}

void checkGoogleCloudMetastoreV2AlterMetadataResourceLocationRequest(
    api.GoogleCloudMetastoreV2AlterMetadataResourceLocationRequest o) {
  buildCounterGoogleCloudMetastoreV2AlterMetadataResourceLocationRequest++;
  if (buildCounterGoogleCloudMetastoreV2AlterMetadataResourceLocationRequest <
      3) {
    unittest.expect(
      o.locationUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudMetastoreV2AlterMetadataResourceLocationRequest--;
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

core.int buildCounterGoogleCloudMetastoreV2AlterTablePropertiesRequest = 0;
api.GoogleCloudMetastoreV2AlterTablePropertiesRequest
    buildGoogleCloudMetastoreV2AlterTablePropertiesRequest() {
  final o = api.GoogleCloudMetastoreV2AlterTablePropertiesRequest();
  buildCounterGoogleCloudMetastoreV2AlterTablePropertiesRequest++;
  if (buildCounterGoogleCloudMetastoreV2AlterTablePropertiesRequest < 3) {
    o.properties = buildUnnamed0();
    o.tableName = 'foo';
    o.updateMask = 'foo';
  }
  buildCounterGoogleCloudMetastoreV2AlterTablePropertiesRequest--;
  return o;
}

void checkGoogleCloudMetastoreV2AlterTablePropertiesRequest(
    api.GoogleCloudMetastoreV2AlterTablePropertiesRequest o) {
  buildCounterGoogleCloudMetastoreV2AlterTablePropertiesRequest++;
  if (buildCounterGoogleCloudMetastoreV2AlterTablePropertiesRequest < 3) {
    checkUnnamed0(o.properties!);
    unittest.expect(
      o.tableName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudMetastoreV2AlterTablePropertiesRequest--;
}

core.Map<core.String, core.String> buildUnnamed1() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed1(core.Map<core.String, core.String> o) {
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

core.List<api.GoogleCloudMetastoreV2Endpoint> buildUnnamed2() => [
      buildGoogleCloudMetastoreV2Endpoint(),
      buildGoogleCloudMetastoreV2Endpoint(),
    ];

void checkUnnamed2(core.List<api.GoogleCloudMetastoreV2Endpoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMetastoreV2Endpoint(o[0]);
  checkGoogleCloudMetastoreV2Endpoint(o[1]);
}

core.int buildCounterGoogleCloudMetastoreV2AuxiliaryVersionConfig = 0;
api.GoogleCloudMetastoreV2AuxiliaryVersionConfig
    buildGoogleCloudMetastoreV2AuxiliaryVersionConfig() {
  final o = api.GoogleCloudMetastoreV2AuxiliaryVersionConfig();
  buildCounterGoogleCloudMetastoreV2AuxiliaryVersionConfig++;
  if (buildCounterGoogleCloudMetastoreV2AuxiliaryVersionConfig < 3) {
    o.configOverrides = buildUnnamed1();
    o.endpoints = buildUnnamed2();
    o.version = 'foo';
  }
  buildCounterGoogleCloudMetastoreV2AuxiliaryVersionConfig--;
  return o;
}

void checkGoogleCloudMetastoreV2AuxiliaryVersionConfig(
    api.GoogleCloudMetastoreV2AuxiliaryVersionConfig o) {
  buildCounterGoogleCloudMetastoreV2AuxiliaryVersionConfig++;
  if (buildCounterGoogleCloudMetastoreV2AuxiliaryVersionConfig < 3) {
    checkUnnamed1(o.configOverrides!);
    checkUnnamed2(o.endpoints!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudMetastoreV2AuxiliaryVersionConfig--;
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

core.int buildCounterGoogleCloudMetastoreV2Backup = 0;
api.GoogleCloudMetastoreV2Backup buildGoogleCloudMetastoreV2Backup() {
  final o = api.GoogleCloudMetastoreV2Backup();
  buildCounterGoogleCloudMetastoreV2Backup++;
  if (buildCounterGoogleCloudMetastoreV2Backup < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.endTime = 'foo';
    o.name = 'foo';
    o.restoringServices = buildUnnamed3();
    o.serviceRevision = buildGoogleCloudMetastoreV2Service();
    o.state = 'foo';
  }
  buildCounterGoogleCloudMetastoreV2Backup--;
  return o;
}

void checkGoogleCloudMetastoreV2Backup(api.GoogleCloudMetastoreV2Backup o) {
  buildCounterGoogleCloudMetastoreV2Backup++;
  if (buildCounterGoogleCloudMetastoreV2Backup < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.restoringServices!);
    checkGoogleCloudMetastoreV2Service(o.serviceRevision!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudMetastoreV2Backup--;
}

core.int buildCounterGoogleCloudMetastoreV2DataCatalogConfig = 0;
api.GoogleCloudMetastoreV2DataCatalogConfig
    buildGoogleCloudMetastoreV2DataCatalogConfig() {
  final o = api.GoogleCloudMetastoreV2DataCatalogConfig();
  buildCounterGoogleCloudMetastoreV2DataCatalogConfig++;
  if (buildCounterGoogleCloudMetastoreV2DataCatalogConfig < 3) {
    o.enabled = true;
  }
  buildCounterGoogleCloudMetastoreV2DataCatalogConfig--;
  return o;
}

void checkGoogleCloudMetastoreV2DataCatalogConfig(
    api.GoogleCloudMetastoreV2DataCatalogConfig o) {
  buildCounterGoogleCloudMetastoreV2DataCatalogConfig++;
  if (buildCounterGoogleCloudMetastoreV2DataCatalogConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterGoogleCloudMetastoreV2DataCatalogConfig--;
}

core.int buildCounterGoogleCloudMetastoreV2DatabaseDump = 0;
api.GoogleCloudMetastoreV2DatabaseDump
    buildGoogleCloudMetastoreV2DatabaseDump() {
  final o = api.GoogleCloudMetastoreV2DatabaseDump();
  buildCounterGoogleCloudMetastoreV2DatabaseDump++;
  if (buildCounterGoogleCloudMetastoreV2DatabaseDump < 3) {
    o.gcsUri = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudMetastoreV2DatabaseDump--;
  return o;
}

void checkGoogleCloudMetastoreV2DatabaseDump(
    api.GoogleCloudMetastoreV2DatabaseDump o) {
  buildCounterGoogleCloudMetastoreV2DatabaseDump++;
  if (buildCounterGoogleCloudMetastoreV2DatabaseDump < 3) {
    unittest.expect(
      o.gcsUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudMetastoreV2DatabaseDump--;
}

core.int buildCounterGoogleCloudMetastoreV2EncryptionConfig = 0;
api.GoogleCloudMetastoreV2EncryptionConfig
    buildGoogleCloudMetastoreV2EncryptionConfig() {
  final o = api.GoogleCloudMetastoreV2EncryptionConfig();
  buildCounterGoogleCloudMetastoreV2EncryptionConfig++;
  if (buildCounterGoogleCloudMetastoreV2EncryptionConfig < 3) {}
  buildCounterGoogleCloudMetastoreV2EncryptionConfig--;
  return o;
}

void checkGoogleCloudMetastoreV2EncryptionConfig(
    api.GoogleCloudMetastoreV2EncryptionConfig o) {
  buildCounterGoogleCloudMetastoreV2EncryptionConfig++;
  if (buildCounterGoogleCloudMetastoreV2EncryptionConfig < 3) {}
  buildCounterGoogleCloudMetastoreV2EncryptionConfig--;
}

core.int buildCounterGoogleCloudMetastoreV2Endpoint = 0;
api.GoogleCloudMetastoreV2Endpoint buildGoogleCloudMetastoreV2Endpoint() {
  final o = api.GoogleCloudMetastoreV2Endpoint();
  buildCounterGoogleCloudMetastoreV2Endpoint++;
  if (buildCounterGoogleCloudMetastoreV2Endpoint < 3) {
    o.endpointUri = 'foo';
    o.region = 'foo';
  }
  buildCounterGoogleCloudMetastoreV2Endpoint--;
  return o;
}

void checkGoogleCloudMetastoreV2Endpoint(api.GoogleCloudMetastoreV2Endpoint o) {
  buildCounterGoogleCloudMetastoreV2Endpoint++;
  if (buildCounterGoogleCloudMetastoreV2Endpoint < 3) {
    unittest.expect(
      o.endpointUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudMetastoreV2Endpoint--;
}

core.int buildCounterGoogleCloudMetastoreV2ExportMetadataRequest = 0;
api.GoogleCloudMetastoreV2ExportMetadataRequest
    buildGoogleCloudMetastoreV2ExportMetadataRequest() {
  final o = api.GoogleCloudMetastoreV2ExportMetadataRequest();
  buildCounterGoogleCloudMetastoreV2ExportMetadataRequest++;
  if (buildCounterGoogleCloudMetastoreV2ExportMetadataRequest < 3) {
    o.databaseDumpType = 'foo';
    o.destinationGcsFolder = 'foo';
    o.requestId = 'foo';
  }
  buildCounterGoogleCloudMetastoreV2ExportMetadataRequest--;
  return o;
}

void checkGoogleCloudMetastoreV2ExportMetadataRequest(
    api.GoogleCloudMetastoreV2ExportMetadataRequest o) {
  buildCounterGoogleCloudMetastoreV2ExportMetadataRequest++;
  if (buildCounterGoogleCloudMetastoreV2ExportMetadataRequest < 3) {
    unittest.expect(
      o.databaseDumpType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destinationGcsFolder!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudMetastoreV2ExportMetadataRequest--;
}

core.Map<core.String, api.GoogleCloudMetastoreV2AuxiliaryVersionConfig>
    buildUnnamed4() => {
          'x': buildGoogleCloudMetastoreV2AuxiliaryVersionConfig(),
          'y': buildGoogleCloudMetastoreV2AuxiliaryVersionConfig(),
        };

void checkUnnamed4(
    core.Map<core.String, api.GoogleCloudMetastoreV2AuxiliaryVersionConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMetastoreV2AuxiliaryVersionConfig(o['x']!);
  checkGoogleCloudMetastoreV2AuxiliaryVersionConfig(o['y']!);
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

core.int buildCounterGoogleCloudMetastoreV2HiveMetastoreConfig = 0;
api.GoogleCloudMetastoreV2HiveMetastoreConfig
    buildGoogleCloudMetastoreV2HiveMetastoreConfig() {
  final o = api.GoogleCloudMetastoreV2HiveMetastoreConfig();
  buildCounterGoogleCloudMetastoreV2HiveMetastoreConfig++;
  if (buildCounterGoogleCloudMetastoreV2HiveMetastoreConfig < 3) {
    o.auxiliaryVersions = buildUnnamed4();
    o.configOverrides = buildUnnamed5();
    o.endpointProtocol = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleCloudMetastoreV2HiveMetastoreConfig--;
  return o;
}

void checkGoogleCloudMetastoreV2HiveMetastoreConfig(
    api.GoogleCloudMetastoreV2HiveMetastoreConfig o) {
  buildCounterGoogleCloudMetastoreV2HiveMetastoreConfig++;
  if (buildCounterGoogleCloudMetastoreV2HiveMetastoreConfig < 3) {
    checkUnnamed4(o.auxiliaryVersions!);
    checkUnnamed5(o.configOverrides!);
    unittest.expect(
      o.endpointProtocol!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudMetastoreV2HiveMetastoreConfig--;
}

core.int buildCounterGoogleCloudMetastoreV2ImportMetadataRequest = 0;
api.GoogleCloudMetastoreV2ImportMetadataRequest
    buildGoogleCloudMetastoreV2ImportMetadataRequest() {
  final o = api.GoogleCloudMetastoreV2ImportMetadataRequest();
  buildCounterGoogleCloudMetastoreV2ImportMetadataRequest++;
  if (buildCounterGoogleCloudMetastoreV2ImportMetadataRequest < 3) {
    o.databaseDump = buildGoogleCloudMetastoreV2DatabaseDump();
    o.description = 'foo';
    o.requestId = 'foo';
  }
  buildCounterGoogleCloudMetastoreV2ImportMetadataRequest--;
  return o;
}

void checkGoogleCloudMetastoreV2ImportMetadataRequest(
    api.GoogleCloudMetastoreV2ImportMetadataRequest o) {
  buildCounterGoogleCloudMetastoreV2ImportMetadataRequest++;
  if (buildCounterGoogleCloudMetastoreV2ImportMetadataRequest < 3) {
    checkGoogleCloudMetastoreV2DatabaseDump(o.databaseDump!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudMetastoreV2ImportMetadataRequest--;
}

core.int buildCounterGoogleCloudMetastoreV2LatestBackup = 0;
api.GoogleCloudMetastoreV2LatestBackup
    buildGoogleCloudMetastoreV2LatestBackup() {
  final o = api.GoogleCloudMetastoreV2LatestBackup();
  buildCounterGoogleCloudMetastoreV2LatestBackup++;
  if (buildCounterGoogleCloudMetastoreV2LatestBackup < 3) {
    o.backupId = 'foo';
    o.duration = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleCloudMetastoreV2LatestBackup--;
  return o;
}

void checkGoogleCloudMetastoreV2LatestBackup(
    api.GoogleCloudMetastoreV2LatestBackup o) {
  buildCounterGoogleCloudMetastoreV2LatestBackup++;
  if (buildCounterGoogleCloudMetastoreV2LatestBackup < 3) {
    unittest.expect(
      o.backupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudMetastoreV2LatestBackup--;
}

core.List<api.GoogleCloudMetastoreV2Backup> buildUnnamed6() => [
      buildGoogleCloudMetastoreV2Backup(),
      buildGoogleCloudMetastoreV2Backup(),
    ];

void checkUnnamed6(core.List<api.GoogleCloudMetastoreV2Backup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMetastoreV2Backup(o[0]);
  checkGoogleCloudMetastoreV2Backup(o[1]);
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

core.int buildCounterGoogleCloudMetastoreV2ListBackupsResponse = 0;
api.GoogleCloudMetastoreV2ListBackupsResponse
    buildGoogleCloudMetastoreV2ListBackupsResponse() {
  final o = api.GoogleCloudMetastoreV2ListBackupsResponse();
  buildCounterGoogleCloudMetastoreV2ListBackupsResponse++;
  if (buildCounterGoogleCloudMetastoreV2ListBackupsResponse < 3) {
    o.backups = buildUnnamed6();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed7();
  }
  buildCounterGoogleCloudMetastoreV2ListBackupsResponse--;
  return o;
}

void checkGoogleCloudMetastoreV2ListBackupsResponse(
    api.GoogleCloudMetastoreV2ListBackupsResponse o) {
  buildCounterGoogleCloudMetastoreV2ListBackupsResponse++;
  if (buildCounterGoogleCloudMetastoreV2ListBackupsResponse < 3) {
    checkUnnamed6(o.backups!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.unreachable!);
  }
  buildCounterGoogleCloudMetastoreV2ListBackupsResponse--;
}

core.List<api.GoogleCloudMetastoreV2Service> buildUnnamed8() => [
      buildGoogleCloudMetastoreV2Service(),
      buildGoogleCloudMetastoreV2Service(),
    ];

void checkUnnamed8(core.List<api.GoogleCloudMetastoreV2Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMetastoreV2Service(o[0]);
  checkGoogleCloudMetastoreV2Service(o[1]);
}

core.List<core.String> buildUnnamed9() => [
      'foo',
      'foo',
    ];

void checkUnnamed9(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudMetastoreV2ListServicesResponse = 0;
api.GoogleCloudMetastoreV2ListServicesResponse
    buildGoogleCloudMetastoreV2ListServicesResponse() {
  final o = api.GoogleCloudMetastoreV2ListServicesResponse();
  buildCounterGoogleCloudMetastoreV2ListServicesResponse++;
  if (buildCounterGoogleCloudMetastoreV2ListServicesResponse < 3) {
    o.nextPageToken = 'foo';
    o.services = buildUnnamed8();
    o.unreachable = buildUnnamed9();
  }
  buildCounterGoogleCloudMetastoreV2ListServicesResponse--;
  return o;
}

void checkGoogleCloudMetastoreV2ListServicesResponse(
    api.GoogleCloudMetastoreV2ListServicesResponse o) {
  buildCounterGoogleCloudMetastoreV2ListServicesResponse++;
  if (buildCounterGoogleCloudMetastoreV2ListServicesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.services!);
    checkUnnamed9(o.unreachable!);
  }
  buildCounterGoogleCloudMetastoreV2ListServicesResponse--;
}

core.int buildCounterGoogleCloudMetastoreV2MetadataIntegration = 0;
api.GoogleCloudMetastoreV2MetadataIntegration
    buildGoogleCloudMetastoreV2MetadataIntegration() {
  final o = api.GoogleCloudMetastoreV2MetadataIntegration();
  buildCounterGoogleCloudMetastoreV2MetadataIntegration++;
  if (buildCounterGoogleCloudMetastoreV2MetadataIntegration < 3) {
    o.dataCatalogConfig = buildGoogleCloudMetastoreV2DataCatalogConfig();
  }
  buildCounterGoogleCloudMetastoreV2MetadataIntegration--;
  return o;
}

void checkGoogleCloudMetastoreV2MetadataIntegration(
    api.GoogleCloudMetastoreV2MetadataIntegration o) {
  buildCounterGoogleCloudMetastoreV2MetadataIntegration++;
  if (buildCounterGoogleCloudMetastoreV2MetadataIntegration < 3) {
    checkGoogleCloudMetastoreV2DataCatalogConfig(o.dataCatalogConfig!);
  }
  buildCounterGoogleCloudMetastoreV2MetadataIntegration--;
}

core.int buildCounterGoogleCloudMetastoreV2MoveTableToDatabaseRequest = 0;
api.GoogleCloudMetastoreV2MoveTableToDatabaseRequest
    buildGoogleCloudMetastoreV2MoveTableToDatabaseRequest() {
  final o = api.GoogleCloudMetastoreV2MoveTableToDatabaseRequest();
  buildCounterGoogleCloudMetastoreV2MoveTableToDatabaseRequest++;
  if (buildCounterGoogleCloudMetastoreV2MoveTableToDatabaseRequest < 3) {
    o.dbName = 'foo';
    o.destinationDbName = 'foo';
    o.tableName = 'foo';
  }
  buildCounterGoogleCloudMetastoreV2MoveTableToDatabaseRequest--;
  return o;
}

void checkGoogleCloudMetastoreV2MoveTableToDatabaseRequest(
    api.GoogleCloudMetastoreV2MoveTableToDatabaseRequest o) {
  buildCounterGoogleCloudMetastoreV2MoveTableToDatabaseRequest++;
  if (buildCounterGoogleCloudMetastoreV2MoveTableToDatabaseRequest < 3) {
    unittest.expect(
      o.dbName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destinationDbName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tableName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudMetastoreV2MoveTableToDatabaseRequest--;
}

core.int buildCounterGoogleCloudMetastoreV2QueryMetadataRequest = 0;
api.GoogleCloudMetastoreV2QueryMetadataRequest
    buildGoogleCloudMetastoreV2QueryMetadataRequest() {
  final o = api.GoogleCloudMetastoreV2QueryMetadataRequest();
  buildCounterGoogleCloudMetastoreV2QueryMetadataRequest++;
  if (buildCounterGoogleCloudMetastoreV2QueryMetadataRequest < 3) {
    o.query = 'foo';
  }
  buildCounterGoogleCloudMetastoreV2QueryMetadataRequest--;
  return o;
}

void checkGoogleCloudMetastoreV2QueryMetadataRequest(
    api.GoogleCloudMetastoreV2QueryMetadataRequest o) {
  buildCounterGoogleCloudMetastoreV2QueryMetadataRequest++;
  if (buildCounterGoogleCloudMetastoreV2QueryMetadataRequest < 3) {
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudMetastoreV2QueryMetadataRequest--;
}

core.int buildCounterGoogleCloudMetastoreV2RestoreServiceRequest = 0;
api.GoogleCloudMetastoreV2RestoreServiceRequest
    buildGoogleCloudMetastoreV2RestoreServiceRequest() {
  final o = api.GoogleCloudMetastoreV2RestoreServiceRequest();
  buildCounterGoogleCloudMetastoreV2RestoreServiceRequest++;
  if (buildCounterGoogleCloudMetastoreV2RestoreServiceRequest < 3) {
    o.backup = 'foo';
    o.backupLocation = 'foo';
    o.requestId = 'foo';
    o.restoreType = 'foo';
  }
  buildCounterGoogleCloudMetastoreV2RestoreServiceRequest--;
  return o;
}

void checkGoogleCloudMetastoreV2RestoreServiceRequest(
    api.GoogleCloudMetastoreV2RestoreServiceRequest o) {
  buildCounterGoogleCloudMetastoreV2RestoreServiceRequest++;
  if (buildCounterGoogleCloudMetastoreV2RestoreServiceRequest < 3) {
    unittest.expect(
      o.backup!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.backupLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.restoreType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudMetastoreV2RestoreServiceRequest--;
}

core.int buildCounterGoogleCloudMetastoreV2ScalingConfig = 0;
api.GoogleCloudMetastoreV2ScalingConfig
    buildGoogleCloudMetastoreV2ScalingConfig() {
  final o = api.GoogleCloudMetastoreV2ScalingConfig();
  buildCounterGoogleCloudMetastoreV2ScalingConfig++;
  if (buildCounterGoogleCloudMetastoreV2ScalingConfig < 3) {
    o.scalingFactor = 42;
  }
  buildCounterGoogleCloudMetastoreV2ScalingConfig--;
  return o;
}

void checkGoogleCloudMetastoreV2ScalingConfig(
    api.GoogleCloudMetastoreV2ScalingConfig o) {
  buildCounterGoogleCloudMetastoreV2ScalingConfig++;
  if (buildCounterGoogleCloudMetastoreV2ScalingConfig < 3) {
    unittest.expect(
      o.scalingFactor!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudMetastoreV2ScalingConfig--;
}

core.int buildCounterGoogleCloudMetastoreV2ScheduledBackup = 0;
api.GoogleCloudMetastoreV2ScheduledBackup
    buildGoogleCloudMetastoreV2ScheduledBackup() {
  final o = api.GoogleCloudMetastoreV2ScheduledBackup();
  buildCounterGoogleCloudMetastoreV2ScheduledBackup++;
  if (buildCounterGoogleCloudMetastoreV2ScheduledBackup < 3) {
    o.backupLocation = 'foo';
    o.cronSchedule = 'foo';
    o.enabled = true;
    o.latestBackup = buildGoogleCloudMetastoreV2LatestBackup();
    o.nextScheduledTime = 'foo';
    o.timeZone = 'foo';
  }
  buildCounterGoogleCloudMetastoreV2ScheduledBackup--;
  return o;
}

void checkGoogleCloudMetastoreV2ScheduledBackup(
    api.GoogleCloudMetastoreV2ScheduledBackup o) {
  buildCounterGoogleCloudMetastoreV2ScheduledBackup++;
  if (buildCounterGoogleCloudMetastoreV2ScheduledBackup < 3) {
    unittest.expect(
      o.backupLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cronSchedule!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enabled!, unittest.isTrue);
    checkGoogleCloudMetastoreV2LatestBackup(o.latestBackup!);
    unittest.expect(
      o.nextScheduledTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudMetastoreV2ScheduledBackup--;
}

core.List<api.GoogleCloudMetastoreV2Endpoint> buildUnnamed10() => [
      buildGoogleCloudMetastoreV2Endpoint(),
      buildGoogleCloudMetastoreV2Endpoint(),
    ];

void checkUnnamed10(core.List<api.GoogleCloudMetastoreV2Endpoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMetastoreV2Endpoint(o[0]);
  checkGoogleCloudMetastoreV2Endpoint(o[1]);
}

core.Map<core.String, core.String> buildUnnamed11() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed11(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudMetastoreV2Service = 0;
api.GoogleCloudMetastoreV2Service buildGoogleCloudMetastoreV2Service() {
  final o = api.GoogleCloudMetastoreV2Service();
  buildCounterGoogleCloudMetastoreV2Service++;
  if (buildCounterGoogleCloudMetastoreV2Service < 3) {
    o.createTime = 'foo';
    o.encryptionConfig = buildGoogleCloudMetastoreV2EncryptionConfig();
    o.endpoints = buildUnnamed10();
    o.hiveMetastoreConfig = buildGoogleCloudMetastoreV2HiveMetastoreConfig();
    o.labels = buildUnnamed11();
    o.metadataIntegration = buildGoogleCloudMetastoreV2MetadataIntegration();
    o.name = 'foo';
    o.scalingConfig = buildGoogleCloudMetastoreV2ScalingConfig();
    o.scheduledBackup = buildGoogleCloudMetastoreV2ScheduledBackup();
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.warehouseGcsUri = 'foo';
  }
  buildCounterGoogleCloudMetastoreV2Service--;
  return o;
}

void checkGoogleCloudMetastoreV2Service(api.GoogleCloudMetastoreV2Service o) {
  buildCounterGoogleCloudMetastoreV2Service++;
  if (buildCounterGoogleCloudMetastoreV2Service < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudMetastoreV2EncryptionConfig(o.encryptionConfig!);
    checkUnnamed10(o.endpoints!);
    checkGoogleCloudMetastoreV2HiveMetastoreConfig(o.hiveMetastoreConfig!);
    checkUnnamed11(o.labels!);
    checkGoogleCloudMetastoreV2MetadataIntegration(o.metadataIntegration!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudMetastoreV2ScalingConfig(o.scalingConfig!);
    checkGoogleCloudMetastoreV2ScheduledBackup(o.scheduledBackup!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.warehouseGcsUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudMetastoreV2Service--;
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed12();
    o.name = 'foo';
    o.response = buildUnnamed13();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed12(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed15() => [
      buildUnnamed14(),
      buildUnnamed14(),
    ];

void checkUnnamed15(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed14(o[0]);
  checkUnnamed14(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed15();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed15(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

void main() {
  unittest.group(
      'obj-schema-GoogleCloudMetastoreV2AlterMetadataResourceLocationRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudMetastoreV2AlterMetadataResourceLocationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudMetastoreV2AlterMetadataResourceLocationRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudMetastoreV2AlterMetadataResourceLocationRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudMetastoreV2AlterTablePropertiesRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudMetastoreV2AlterTablePropertiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudMetastoreV2AlterTablePropertiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudMetastoreV2AlterTablePropertiesRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudMetastoreV2AuxiliaryVersionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudMetastoreV2AuxiliaryVersionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudMetastoreV2AuxiliaryVersionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudMetastoreV2AuxiliaryVersionConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudMetastoreV2Backup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudMetastoreV2Backup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudMetastoreV2Backup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudMetastoreV2Backup(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudMetastoreV2DataCatalogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudMetastoreV2DataCatalogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudMetastoreV2DataCatalogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudMetastoreV2DataCatalogConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudMetastoreV2DatabaseDump', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudMetastoreV2DatabaseDump();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudMetastoreV2DatabaseDump.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudMetastoreV2DatabaseDump(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudMetastoreV2EncryptionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudMetastoreV2EncryptionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudMetastoreV2EncryptionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudMetastoreV2EncryptionConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudMetastoreV2Endpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudMetastoreV2Endpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudMetastoreV2Endpoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudMetastoreV2Endpoint(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudMetastoreV2ExportMetadataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudMetastoreV2ExportMetadataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudMetastoreV2ExportMetadataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudMetastoreV2ExportMetadataRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudMetastoreV2HiveMetastoreConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudMetastoreV2HiveMetastoreConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudMetastoreV2HiveMetastoreConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudMetastoreV2HiveMetastoreConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudMetastoreV2ImportMetadataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudMetastoreV2ImportMetadataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudMetastoreV2ImportMetadataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudMetastoreV2ImportMetadataRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudMetastoreV2LatestBackup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudMetastoreV2LatestBackup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudMetastoreV2LatestBackup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudMetastoreV2LatestBackup(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudMetastoreV2ListBackupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudMetastoreV2ListBackupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudMetastoreV2ListBackupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudMetastoreV2ListBackupsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudMetastoreV2ListServicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudMetastoreV2ListServicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudMetastoreV2ListServicesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudMetastoreV2ListServicesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudMetastoreV2MetadataIntegration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudMetastoreV2MetadataIntegration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudMetastoreV2MetadataIntegration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudMetastoreV2MetadataIntegration(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudMetastoreV2MoveTableToDatabaseRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudMetastoreV2MoveTableToDatabaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudMetastoreV2MoveTableToDatabaseRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudMetastoreV2MoveTableToDatabaseRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudMetastoreV2QueryMetadataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudMetastoreV2QueryMetadataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudMetastoreV2QueryMetadataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudMetastoreV2QueryMetadataRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudMetastoreV2RestoreServiceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudMetastoreV2RestoreServiceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudMetastoreV2RestoreServiceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudMetastoreV2RestoreServiceRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudMetastoreV2ScalingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudMetastoreV2ScalingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudMetastoreV2ScalingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudMetastoreV2ScalingConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudMetastoreV2ScheduledBackup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudMetastoreV2ScheduledBackup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudMetastoreV2ScheduledBackup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudMetastoreV2ScheduledBackup(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudMetastoreV2Service', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudMetastoreV2Service();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudMetastoreV2Service.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudMetastoreV2Service(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('resource-ProjectsLocationsServicesResource', () {
    unittest.test('method--alterLocation', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_request =
          buildGoogleCloudMetastoreV2AlterMetadataResourceLocationRequest();
      final arg_service = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudMetastoreV2AlterMetadataResourceLocationRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudMetastoreV2AlterMetadataResourceLocationRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.alterLocation(arg_request, arg_service,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--alterTableProperties', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_request =
          buildGoogleCloudMetastoreV2AlterTablePropertiesRequest();
      final arg_service = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudMetastoreV2AlterTablePropertiesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudMetastoreV2AlterTablePropertiesRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.alterTableProperties(arg_request, arg_service,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_request = buildGoogleCloudMetastoreV2Service();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_serviceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudMetastoreV2Service.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudMetastoreV2Service(obj);

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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          requestId: arg_requestId,
          serviceId: arg_serviceId,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--exportMetadata', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_request = buildGoogleCloudMetastoreV2ExportMetadataRequest();
      final arg_service = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudMetastoreV2ExportMetadataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudMetastoreV2ExportMetadataRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exportMetadata(arg_request, arg_service,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleCloudMetastoreV2Service());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudMetastoreV2Service(
          response as api.GoogleCloudMetastoreV2Service);
    });

    unittest.test('method--importMetadata', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_request = buildGoogleCloudMetastoreV2ImportMetadataRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudMetastoreV2ImportMetadataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudMetastoreV2ImportMetadataRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.importMetadata(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
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
          unittest.equals('v2/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudMetastoreV2ListServicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudMetastoreV2ListServicesResponse(
          response as api.GoogleCloudMetastoreV2ListServicesResponse);
    });

    unittest.test('method--moveTableToDatabase', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_request =
          buildGoogleCloudMetastoreV2MoveTableToDatabaseRequest();
      final arg_service = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudMetastoreV2MoveTableToDatabaseRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudMetastoreV2MoveTableToDatabaseRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.moveTableToDatabase(arg_request, arg_service,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_request = buildGoogleCloudMetastoreV2Service();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudMetastoreV2Service.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudMetastoreV2Service(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--queryMetadata', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_request = buildGoogleCloudMetastoreV2QueryMetadataRequest();
      final arg_service = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudMetastoreV2QueryMetadataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudMetastoreV2QueryMetadataRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.queryMetadata(arg_request, arg_service,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--restore', () async {
      final mock = HttpServerMock();
      final res = api.DataprocMetastoreApi(mock).projects.locations.services;
      final arg_request = buildGoogleCloudMetastoreV2RestoreServiceRequest();
      final arg_service = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudMetastoreV2RestoreServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudMetastoreV2RestoreServiceRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.restore(arg_request, arg_service, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsLocationsServicesBackupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocMetastoreApi(mock).projects.locations.services.backups;
      final arg_request = buildGoogleCloudMetastoreV2Backup();
      final arg_parent = 'foo';
      final arg_backupId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudMetastoreV2Backup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudMetastoreV2Backup(obj);

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
          unittest.equals('v2/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          backupId: arg_backupId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocMetastoreApi(mock).projects.locations.services.backups;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocMetastoreApi(mock).projects.locations.services.backups;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleCloudMetastoreV2Backup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudMetastoreV2Backup(
          response as api.GoogleCloudMetastoreV2Backup);
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
          unittest.equals('v2/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudMetastoreV2ListBackupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudMetastoreV2ListBackupsResponse(
          response as api.GoogleCloudMetastoreV2ListBackupsResponse);
    });
  });
}
