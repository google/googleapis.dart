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

import 'package:googleapis/datastream/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAppendOnly = 0;
api.AppendOnly buildAppendOnly() {
  final o = api.AppendOnly();
  buildCounterAppendOnly++;
  if (buildCounterAppendOnly < 3) {}
  buildCounterAppendOnly--;
  return o;
}

void checkAppendOnly(api.AppendOnly o) {
  buildCounterAppendOnly++;
  if (buildCounterAppendOnly < 3) {}
  buildCounterAppendOnly--;
}

core.int buildCounterAvroFileFormat = 0;
api.AvroFileFormat buildAvroFileFormat() {
  final o = api.AvroFileFormat();
  buildCounterAvroFileFormat++;
  if (buildCounterAvroFileFormat < 3) {}
  buildCounterAvroFileFormat--;
  return o;
}

void checkAvroFileFormat(api.AvroFileFormat o) {
  buildCounterAvroFileFormat++;
  if (buildCounterAvroFileFormat < 3) {}
  buildCounterAvroFileFormat--;
}

core.int buildCounterBackfillAllStrategy = 0;
api.BackfillAllStrategy buildBackfillAllStrategy() {
  final o = api.BackfillAllStrategy();
  buildCounterBackfillAllStrategy++;
  if (buildCounterBackfillAllStrategy < 3) {
    o.mysqlExcludedObjects = buildMysqlRdbms();
    o.oracleExcludedObjects = buildOracleRdbms();
    o.postgresqlExcludedObjects = buildPostgresqlRdbms();
    o.sqlServerExcludedObjects = buildSqlServerRdbms();
  }
  buildCounterBackfillAllStrategy--;
  return o;
}

void checkBackfillAllStrategy(api.BackfillAllStrategy o) {
  buildCounterBackfillAllStrategy++;
  if (buildCounterBackfillAllStrategy < 3) {
    checkMysqlRdbms(o.mysqlExcludedObjects!);
    checkOracleRdbms(o.oracleExcludedObjects!);
    checkPostgresqlRdbms(o.postgresqlExcludedObjects!);
    checkSqlServerRdbms(o.sqlServerExcludedObjects!);
  }
  buildCounterBackfillAllStrategy--;
}

core.List<api.Error> buildUnnamed0() => [
      buildError(),
      buildError(),
    ];

void checkUnnamed0(core.List<api.Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkError(o[0]);
  checkError(o[1]);
}

core.int buildCounterBackfillJob = 0;
api.BackfillJob buildBackfillJob() {
  final o = api.BackfillJob();
  buildCounterBackfillJob++;
  if (buildCounterBackfillJob < 3) {
    o.errors = buildUnnamed0();
    o.lastEndTime = 'foo';
    o.lastStartTime = 'foo';
    o.state = 'foo';
    o.trigger = 'foo';
  }
  buildCounterBackfillJob--;
  return o;
}

void checkBackfillJob(api.BackfillJob o) {
  buildCounterBackfillJob++;
  if (buildCounterBackfillJob < 3) {
    checkUnnamed0(o.errors!);
    unittest.expect(
      o.lastEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastStartTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trigger!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackfillJob--;
}

core.int buildCounterBackfillNoneStrategy = 0;
api.BackfillNoneStrategy buildBackfillNoneStrategy() {
  final o = api.BackfillNoneStrategy();
  buildCounterBackfillNoneStrategy++;
  if (buildCounterBackfillNoneStrategy < 3) {}
  buildCounterBackfillNoneStrategy--;
  return o;
}

void checkBackfillNoneStrategy(api.BackfillNoneStrategy o) {
  buildCounterBackfillNoneStrategy++;
  if (buildCounterBackfillNoneStrategy < 3) {}
  buildCounterBackfillNoneStrategy--;
}

core.int buildCounterBigQueryDestinationConfig = 0;
api.BigQueryDestinationConfig buildBigQueryDestinationConfig() {
  final o = api.BigQueryDestinationConfig();
  buildCounterBigQueryDestinationConfig++;
  if (buildCounterBigQueryDestinationConfig < 3) {
    o.appendOnly = buildAppendOnly();
    o.dataFreshness = 'foo';
    o.merge = buildMerge();
    o.singleTargetDataset = buildSingleTargetDataset();
    o.sourceHierarchyDatasets = buildSourceHierarchyDatasets();
  }
  buildCounterBigQueryDestinationConfig--;
  return o;
}

void checkBigQueryDestinationConfig(api.BigQueryDestinationConfig o) {
  buildCounterBigQueryDestinationConfig++;
  if (buildCounterBigQueryDestinationConfig < 3) {
    checkAppendOnly(o.appendOnly!);
    unittest.expect(
      o.dataFreshness!,
      unittest.equals('foo'),
    );
    checkMerge(o.merge!);
    checkSingleTargetDataset(o.singleTargetDataset!);
    checkSourceHierarchyDatasets(o.sourceHierarchyDatasets!);
  }
  buildCounterBigQueryDestinationConfig--;
}

core.int buildCounterBigQueryProfile = 0;
api.BigQueryProfile buildBigQueryProfile() {
  final o = api.BigQueryProfile();
  buildCounterBigQueryProfile++;
  if (buildCounterBigQueryProfile < 3) {}
  buildCounterBigQueryProfile--;
  return o;
}

void checkBigQueryProfile(api.BigQueryProfile o) {
  buildCounterBigQueryProfile++;
  if (buildCounterBigQueryProfile < 3) {}
  buildCounterBigQueryProfile--;
}

core.int buildCounterBinaryLogParser = 0;
api.BinaryLogParser buildBinaryLogParser() {
  final o = api.BinaryLogParser();
  buildCounterBinaryLogParser++;
  if (buildCounterBinaryLogParser < 3) {
    o.logFileDirectories = buildLogFileDirectories();
    o.oracleAsmLogFileAccess = buildOracleAsmLogFileAccess();
  }
  buildCounterBinaryLogParser--;
  return o;
}

void checkBinaryLogParser(api.BinaryLogParser o) {
  buildCounterBinaryLogParser++;
  if (buildCounterBinaryLogParser < 3) {
    checkLogFileDirectories(o.logFileDirectories!);
    checkOracleAsmLogFileAccess(o.oracleAsmLogFileAccess!);
  }
  buildCounterBinaryLogParser--;
}

core.int buildCounterBinaryLogPosition = 0;
api.BinaryLogPosition buildBinaryLogPosition() {
  final o = api.BinaryLogPosition();
  buildCounterBinaryLogPosition++;
  if (buildCounterBinaryLogPosition < 3) {}
  buildCounterBinaryLogPosition--;
  return o;
}

void checkBinaryLogPosition(api.BinaryLogPosition o) {
  buildCounterBinaryLogPosition++;
  if (buildCounterBinaryLogPosition < 3) {}
  buildCounterBinaryLogPosition--;
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

core.int buildCounterCdcStrategy = 0;
api.CdcStrategy buildCdcStrategy() {
  final o = api.CdcStrategy();
  buildCounterCdcStrategy++;
  if (buildCounterCdcStrategy < 3) {
    o.mostRecentStartPosition = buildMostRecentStartPosition();
    o.nextAvailableStartPosition = buildNextAvailableStartPosition();
    o.specificStartPosition = buildSpecificStartPosition();
  }
  buildCounterCdcStrategy--;
  return o;
}

void checkCdcStrategy(api.CdcStrategy o) {
  buildCounterCdcStrategy++;
  if (buildCounterCdcStrategy < 3) {
    checkMostRecentStartPosition(o.mostRecentStartPosition!);
    checkNextAvailableStartPosition(o.nextAvailableStartPosition!);
    checkSpecificStartPosition(o.specificStartPosition!);
  }
  buildCounterCdcStrategy--;
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

core.int buildCounterConnectionProfile = 0;
api.ConnectionProfile buildConnectionProfile() {
  final o = api.ConnectionProfile();
  buildCounterConnectionProfile++;
  if (buildCounterConnectionProfile < 3) {
    o.bigqueryProfile = buildBigQueryProfile();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.forwardSshConnectivity = buildForwardSshTunnelConnectivity();
    o.gcsProfile = buildGcsProfile();
    o.labels = buildUnnamed1();
    o.mysqlProfile = buildMysqlProfile();
    o.name = 'foo';
    o.oracleProfile = buildOracleProfile();
    o.postgresqlProfile = buildPostgresqlProfile();
    o.privateConnectivity = buildPrivateConnectivity();
    o.sqlServerProfile = buildSqlServerProfile();
    o.staticServiceIpConnectivity = buildStaticServiceIpConnectivity();
    o.updateTime = 'foo';
  }
  buildCounterConnectionProfile--;
  return o;
}

void checkConnectionProfile(api.ConnectionProfile o) {
  buildCounterConnectionProfile++;
  if (buildCounterConnectionProfile < 3) {
    checkBigQueryProfile(o.bigqueryProfile!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkForwardSshTunnelConnectivity(o.forwardSshConnectivity!);
    checkGcsProfile(o.gcsProfile!);
    checkUnnamed1(o.labels!);
    checkMysqlProfile(o.mysqlProfile!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkOracleProfile(o.oracleProfile!);
    checkPostgresqlProfile(o.postgresqlProfile!);
    checkPrivateConnectivity(o.privateConnectivity!);
    checkSqlServerProfile(o.sqlServerProfile!);
    checkStaticServiceIpConnectivity(o.staticServiceIpConnectivity!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnectionProfile--;
}

core.int buildCounterDatasetTemplate = 0;
api.DatasetTemplate buildDatasetTemplate() {
  final o = api.DatasetTemplate();
  buildCounterDatasetTemplate++;
  if (buildCounterDatasetTemplate < 3) {
    o.datasetIdPrefix = 'foo';
    o.kmsKeyName = 'foo';
    o.location = 'foo';
  }
  buildCounterDatasetTemplate--;
  return o;
}

void checkDatasetTemplate(api.DatasetTemplate o) {
  buildCounterDatasetTemplate++;
  if (buildCounterDatasetTemplate < 3) {
    unittest.expect(
      o.datasetIdPrefix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatasetTemplate--;
}

core.int buildCounterDestinationConfig = 0;
api.DestinationConfig buildDestinationConfig() {
  final o = api.DestinationConfig();
  buildCounterDestinationConfig++;
  if (buildCounterDestinationConfig < 3) {
    o.bigqueryDestinationConfig = buildBigQueryDestinationConfig();
    o.destinationConnectionProfile = 'foo';
    o.gcsDestinationConfig = buildGcsDestinationConfig();
  }
  buildCounterDestinationConfig--;
  return o;
}

void checkDestinationConfig(api.DestinationConfig o) {
  buildCounterDestinationConfig++;
  if (buildCounterDestinationConfig < 3) {
    checkBigQueryDestinationConfig(o.bigqueryDestinationConfig!);
    unittest.expect(
      o.destinationConnectionProfile!,
      unittest.equals('foo'),
    );
    checkGcsDestinationConfig(o.gcsDestinationConfig!);
  }
  buildCounterDestinationConfig--;
}

core.int buildCounterDiscoverConnectionProfileRequest = 0;
api.DiscoverConnectionProfileRequest buildDiscoverConnectionProfileRequest() {
  final o = api.DiscoverConnectionProfileRequest();
  buildCounterDiscoverConnectionProfileRequest++;
  if (buildCounterDiscoverConnectionProfileRequest < 3) {
    o.connectionProfile = buildConnectionProfile();
    o.connectionProfileName = 'foo';
    o.fullHierarchy = true;
    o.hierarchyDepth = 42;
    o.mysqlRdbms = buildMysqlRdbms();
    o.oracleRdbms = buildOracleRdbms();
    o.postgresqlRdbms = buildPostgresqlRdbms();
    o.sqlServerRdbms = buildSqlServerRdbms();
  }
  buildCounterDiscoverConnectionProfileRequest--;
  return o;
}

void checkDiscoverConnectionProfileRequest(
    api.DiscoverConnectionProfileRequest o) {
  buildCounterDiscoverConnectionProfileRequest++;
  if (buildCounterDiscoverConnectionProfileRequest < 3) {
    checkConnectionProfile(o.connectionProfile!);
    unittest.expect(
      o.connectionProfileName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.fullHierarchy!, unittest.isTrue);
    unittest.expect(
      o.hierarchyDepth!,
      unittest.equals(42),
    );
    checkMysqlRdbms(o.mysqlRdbms!);
    checkOracleRdbms(o.oracleRdbms!);
    checkPostgresqlRdbms(o.postgresqlRdbms!);
    checkSqlServerRdbms(o.sqlServerRdbms!);
  }
  buildCounterDiscoverConnectionProfileRequest--;
}

core.int buildCounterDiscoverConnectionProfileResponse = 0;
api.DiscoverConnectionProfileResponse buildDiscoverConnectionProfileResponse() {
  final o = api.DiscoverConnectionProfileResponse();
  buildCounterDiscoverConnectionProfileResponse++;
  if (buildCounterDiscoverConnectionProfileResponse < 3) {
    o.mysqlRdbms = buildMysqlRdbms();
    o.oracleRdbms = buildOracleRdbms();
    o.postgresqlRdbms = buildPostgresqlRdbms();
    o.sqlServerRdbms = buildSqlServerRdbms();
  }
  buildCounterDiscoverConnectionProfileResponse--;
  return o;
}

void checkDiscoverConnectionProfileResponse(
    api.DiscoverConnectionProfileResponse o) {
  buildCounterDiscoverConnectionProfileResponse++;
  if (buildCounterDiscoverConnectionProfileResponse < 3) {
    checkMysqlRdbms(o.mysqlRdbms!);
    checkOracleRdbms(o.oracleRdbms!);
    checkPostgresqlRdbms(o.postgresqlRdbms!);
    checkSqlServerRdbms(o.sqlServerRdbms!);
  }
  buildCounterDiscoverConnectionProfileResponse--;
}

core.int buildCounterDropLargeObjects = 0;
api.DropLargeObjects buildDropLargeObjects() {
  final o = api.DropLargeObjects();
  buildCounterDropLargeObjects++;
  if (buildCounterDropLargeObjects < 3) {}
  buildCounterDropLargeObjects--;
  return o;
}

void checkDropLargeObjects(api.DropLargeObjects o) {
  buildCounterDropLargeObjects++;
  if (buildCounterDropLargeObjects < 3) {}
  buildCounterDropLargeObjects--;
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

core.Map<core.String, core.String> buildUnnamed2() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2(core.Map<core.String, core.String> o) {
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

core.int buildCounterError = 0;
api.Error buildError() {
  final o = api.Error();
  buildCounterError++;
  if (buildCounterError < 3) {
    o.details = buildUnnamed2();
    o.errorTime = 'foo';
    o.errorUuid = 'foo';
    o.message = 'foo';
    o.reason = 'foo';
  }
  buildCounterError--;
  return o;
}

void checkError(api.Error o) {
  buildCounterError++;
  if (buildCounterError < 3) {
    checkUnnamed2(o.details!);
    unittest.expect(
      o.errorTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorUuid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterError--;
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

core.int buildCounterFetchStaticIpsResponse = 0;
api.FetchStaticIpsResponse buildFetchStaticIpsResponse() {
  final o = api.FetchStaticIpsResponse();
  buildCounterFetchStaticIpsResponse++;
  if (buildCounterFetchStaticIpsResponse < 3) {
    o.nextPageToken = 'foo';
    o.staticIps = buildUnnamed3();
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
    checkUnnamed3(o.staticIps!);
  }
  buildCounterFetchStaticIpsResponse--;
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

core.int buildCounterGcsDestinationConfig = 0;
api.GcsDestinationConfig buildGcsDestinationConfig() {
  final o = api.GcsDestinationConfig();
  buildCounterGcsDestinationConfig++;
  if (buildCounterGcsDestinationConfig < 3) {
    o.avroFileFormat = buildAvroFileFormat();
    o.fileRotationInterval = 'foo';
    o.fileRotationMb = 42;
    o.jsonFileFormat = buildJsonFileFormat();
    o.path = 'foo';
  }
  buildCounterGcsDestinationConfig--;
  return o;
}

void checkGcsDestinationConfig(api.GcsDestinationConfig o) {
  buildCounterGcsDestinationConfig++;
  if (buildCounterGcsDestinationConfig < 3) {
    checkAvroFileFormat(o.avroFileFormat!);
    unittest.expect(
      o.fileRotationInterval!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileRotationMb!,
      unittest.equals(42),
    );
    checkJsonFileFormat(o.jsonFileFormat!);
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
  }
  buildCounterGcsDestinationConfig--;
}

core.int buildCounterGcsProfile = 0;
api.GcsProfile buildGcsProfile() {
  final o = api.GcsProfile();
  buildCounterGcsProfile++;
  if (buildCounterGcsProfile < 3) {
    o.bucket = 'foo';
    o.rootPath = 'foo';
  }
  buildCounterGcsProfile--;
  return o;
}

void checkGcsProfile(api.GcsProfile o) {
  buildCounterGcsProfile++;
  if (buildCounterGcsProfile < 3) {
    unittest.expect(
      o.bucket!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rootPath!,
      unittest.equals('foo'),
    );
  }
  buildCounterGcsProfile--;
}

core.int buildCounterGtid = 0;
api.Gtid buildGtid() {
  final o = api.Gtid();
  buildCounterGtid++;
  if (buildCounterGtid < 3) {}
  buildCounterGtid--;
  return o;
}

void checkGtid(api.Gtid o) {
  buildCounterGtid++;
  if (buildCounterGtid < 3) {}
  buildCounterGtid--;
}

core.int buildCounterJsonFileFormat = 0;
api.JsonFileFormat buildJsonFileFormat() {
  final o = api.JsonFileFormat();
  buildCounterJsonFileFormat++;
  if (buildCounterJsonFileFormat < 3) {
    o.compression = 'foo';
    o.schemaFileFormat = 'foo';
  }
  buildCounterJsonFileFormat--;
  return o;
}

void checkJsonFileFormat(api.JsonFileFormat o) {
  buildCounterJsonFileFormat++;
  if (buildCounterJsonFileFormat < 3) {
    unittest.expect(
      o.compression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.schemaFileFormat!,
      unittest.equals('foo'),
    );
  }
  buildCounterJsonFileFormat--;
}

core.List<api.ConnectionProfile> buildUnnamed4() => [
      buildConnectionProfile(),
      buildConnectionProfile(),
    ];

void checkUnnamed4(core.List<api.ConnectionProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectionProfile(o[0]);
  checkConnectionProfile(o[1]);
}

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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
    o.connectionProfiles = buildUnnamed4();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed5();
  }
  buildCounterListConnectionProfilesResponse--;
  return o;
}

void checkListConnectionProfilesResponse(api.ListConnectionProfilesResponse o) {
  buildCounterListConnectionProfilesResponse++;
  if (buildCounterListConnectionProfilesResponse < 3) {
    checkUnnamed4(o.connectionProfiles!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.unreachable!);
  }
  buildCounterListConnectionProfilesResponse--;
}

core.List<api.Location> buildUnnamed6() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed6(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed6();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed6(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed7() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed7(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed7();
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
    checkUnnamed7(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.PrivateConnection> buildUnnamed8() => [
      buildPrivateConnection(),
      buildPrivateConnection(),
    ];

void checkUnnamed8(core.List<api.PrivateConnection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrivateConnection(o[0]);
  checkPrivateConnection(o[1]);
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

core.int buildCounterListPrivateConnectionsResponse = 0;
api.ListPrivateConnectionsResponse buildListPrivateConnectionsResponse() {
  final o = api.ListPrivateConnectionsResponse();
  buildCounterListPrivateConnectionsResponse++;
  if (buildCounterListPrivateConnectionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.privateConnections = buildUnnamed8();
    o.unreachable = buildUnnamed9();
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
    checkUnnamed8(o.privateConnections!);
    checkUnnamed9(o.unreachable!);
  }
  buildCounterListPrivateConnectionsResponse--;
}

core.List<api.Route> buildUnnamed10() => [
      buildRoute(),
      buildRoute(),
    ];

void checkUnnamed10(core.List<api.Route> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoute(o[0]);
  checkRoute(o[1]);
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

core.int buildCounterListRoutesResponse = 0;
api.ListRoutesResponse buildListRoutesResponse() {
  final o = api.ListRoutesResponse();
  buildCounterListRoutesResponse++;
  if (buildCounterListRoutesResponse < 3) {
    o.nextPageToken = 'foo';
    o.routes = buildUnnamed10();
    o.unreachable = buildUnnamed11();
  }
  buildCounterListRoutesResponse--;
  return o;
}

void checkListRoutesResponse(api.ListRoutesResponse o) {
  buildCounterListRoutesResponse++;
  if (buildCounterListRoutesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.routes!);
    checkUnnamed11(o.unreachable!);
  }
  buildCounterListRoutesResponse--;
}

core.List<api.StreamObject> buildUnnamed12() => [
      buildStreamObject(),
      buildStreamObject(),
    ];

void checkUnnamed12(core.List<api.StreamObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamObject(o[0]);
  checkStreamObject(o[1]);
}

core.int buildCounterListStreamObjectsResponse = 0;
api.ListStreamObjectsResponse buildListStreamObjectsResponse() {
  final o = api.ListStreamObjectsResponse();
  buildCounterListStreamObjectsResponse++;
  if (buildCounterListStreamObjectsResponse < 3) {
    o.nextPageToken = 'foo';
    o.streamObjects = buildUnnamed12();
  }
  buildCounterListStreamObjectsResponse--;
  return o;
}

void checkListStreamObjectsResponse(api.ListStreamObjectsResponse o) {
  buildCounterListStreamObjectsResponse++;
  if (buildCounterListStreamObjectsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.streamObjects!);
  }
  buildCounterListStreamObjectsResponse--;
}

core.List<api.Stream> buildUnnamed13() => [
      buildStream(),
      buildStream(),
    ];

void checkUnnamed13(core.List<api.Stream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStream(o[0]);
  checkStream(o[1]);
}

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.int buildCounterListStreamsResponse = 0;
api.ListStreamsResponse buildListStreamsResponse() {
  final o = api.ListStreamsResponse();
  buildCounterListStreamsResponse++;
  if (buildCounterListStreamsResponse < 3) {
    o.nextPageToken = 'foo';
    o.streams = buildUnnamed13();
    o.unreachable = buildUnnamed14();
  }
  buildCounterListStreamsResponse--;
  return o;
}

void checkListStreamsResponse(api.ListStreamsResponse o) {
  buildCounterListStreamsResponse++;
  if (buildCounterListStreamsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.streams!);
    checkUnnamed14(o.unreachable!);
  }
  buildCounterListStreamsResponse--;
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
    o.labels = buildUnnamed15();
    o.locationId = 'foo';
    o.metadata = buildUnnamed16();
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
    checkUnnamed15(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterLogFileDirectories = 0;
api.LogFileDirectories buildLogFileDirectories() {
  final o = api.LogFileDirectories();
  buildCounterLogFileDirectories++;
  if (buildCounterLogFileDirectories < 3) {
    o.archivedLogDirectory = 'foo';
    o.onlineLogDirectory = 'foo';
  }
  buildCounterLogFileDirectories--;
  return o;
}

void checkLogFileDirectories(api.LogFileDirectories o) {
  buildCounterLogFileDirectories++;
  if (buildCounterLogFileDirectories < 3) {
    unittest.expect(
      o.archivedLogDirectory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.onlineLogDirectory!,
      unittest.equals('foo'),
    );
  }
  buildCounterLogFileDirectories--;
}

core.int buildCounterLogMiner = 0;
api.LogMiner buildLogMiner() {
  final o = api.LogMiner();
  buildCounterLogMiner++;
  if (buildCounterLogMiner < 3) {}
  buildCounterLogMiner--;
  return o;
}

void checkLogMiner(api.LogMiner o) {
  buildCounterLogMiner++;
  if (buildCounterLogMiner < 3) {}
  buildCounterLogMiner--;
}

core.int buildCounterLookupStreamObjectRequest = 0;
api.LookupStreamObjectRequest buildLookupStreamObjectRequest() {
  final o = api.LookupStreamObjectRequest();
  buildCounterLookupStreamObjectRequest++;
  if (buildCounterLookupStreamObjectRequest < 3) {
    o.sourceObjectIdentifier = buildSourceObjectIdentifier();
  }
  buildCounterLookupStreamObjectRequest--;
  return o;
}

void checkLookupStreamObjectRequest(api.LookupStreamObjectRequest o) {
  buildCounterLookupStreamObjectRequest++;
  if (buildCounterLookupStreamObjectRequest < 3) {
    checkSourceObjectIdentifier(o.sourceObjectIdentifier!);
  }
  buildCounterLookupStreamObjectRequest--;
}

core.int buildCounterMerge = 0;
api.Merge buildMerge() {
  final o = api.Merge();
  buildCounterMerge++;
  if (buildCounterMerge < 3) {}
  buildCounterMerge--;
  return o;
}

void checkMerge(api.Merge o) {
  buildCounterMerge++;
  if (buildCounterMerge < 3) {}
  buildCounterMerge--;
}

core.int buildCounterMostRecentStartPosition = 0;
api.MostRecentStartPosition buildMostRecentStartPosition() {
  final o = api.MostRecentStartPosition();
  buildCounterMostRecentStartPosition++;
  if (buildCounterMostRecentStartPosition < 3) {}
  buildCounterMostRecentStartPosition--;
  return o;
}

void checkMostRecentStartPosition(api.MostRecentStartPosition o) {
  buildCounterMostRecentStartPosition++;
  if (buildCounterMostRecentStartPosition < 3) {}
  buildCounterMostRecentStartPosition--;
}

core.int buildCounterMysqlColumn = 0;
api.MysqlColumn buildMysqlColumn() {
  final o = api.MysqlColumn();
  buildCounterMysqlColumn++;
  if (buildCounterMysqlColumn < 3) {
    o.collation = 'foo';
    o.column = 'foo';
    o.dataType = 'foo';
    o.length = 42;
    o.nullable = true;
    o.ordinalPosition = 42;
    o.precision = 42;
    o.primaryKey = true;
    o.scale = 42;
  }
  buildCounterMysqlColumn--;
  return o;
}

void checkMysqlColumn(api.MysqlColumn o) {
  buildCounterMysqlColumn++;
  if (buildCounterMysqlColumn < 3) {
    unittest.expect(
      o.collation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.column!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.length!,
      unittest.equals(42),
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
    unittest.expect(o.primaryKey!, unittest.isTrue);
    unittest.expect(
      o.scale!,
      unittest.equals(42),
    );
  }
  buildCounterMysqlColumn--;
}

core.List<api.MysqlTable> buildUnnamed17() => [
      buildMysqlTable(),
      buildMysqlTable(),
    ];

void checkUnnamed17(core.List<api.MysqlTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMysqlTable(o[0]);
  checkMysqlTable(o[1]);
}

core.int buildCounterMysqlDatabase = 0;
api.MysqlDatabase buildMysqlDatabase() {
  final o = api.MysqlDatabase();
  buildCounterMysqlDatabase++;
  if (buildCounterMysqlDatabase < 3) {
    o.database = 'foo';
    o.mysqlTables = buildUnnamed17();
  }
  buildCounterMysqlDatabase--;
  return o;
}

void checkMysqlDatabase(api.MysqlDatabase o) {
  buildCounterMysqlDatabase++;
  if (buildCounterMysqlDatabase < 3) {
    unittest.expect(
      o.database!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.mysqlTables!);
  }
  buildCounterMysqlDatabase--;
}

core.int buildCounterMysqlLogPosition = 0;
api.MysqlLogPosition buildMysqlLogPosition() {
  final o = api.MysqlLogPosition();
  buildCounterMysqlLogPosition++;
  if (buildCounterMysqlLogPosition < 3) {
    o.logFile = 'foo';
    o.logPosition = 42;
  }
  buildCounterMysqlLogPosition--;
  return o;
}

void checkMysqlLogPosition(api.MysqlLogPosition o) {
  buildCounterMysqlLogPosition++;
  if (buildCounterMysqlLogPosition < 3) {
    unittest.expect(
      o.logFile!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.logPosition!,
      unittest.equals(42),
    );
  }
  buildCounterMysqlLogPosition--;
}

core.int buildCounterMysqlObjectIdentifier = 0;
api.MysqlObjectIdentifier buildMysqlObjectIdentifier() {
  final o = api.MysqlObjectIdentifier();
  buildCounterMysqlObjectIdentifier++;
  if (buildCounterMysqlObjectIdentifier < 3) {
    o.database = 'foo';
    o.table = 'foo';
  }
  buildCounterMysqlObjectIdentifier--;
  return o;
}

void checkMysqlObjectIdentifier(api.MysqlObjectIdentifier o) {
  buildCounterMysqlObjectIdentifier++;
  if (buildCounterMysqlObjectIdentifier < 3) {
    unittest.expect(
      o.database!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
  }
  buildCounterMysqlObjectIdentifier--;
}

core.int buildCounterMysqlProfile = 0;
api.MysqlProfile buildMysqlProfile() {
  final o = api.MysqlProfile();
  buildCounterMysqlProfile++;
  if (buildCounterMysqlProfile < 3) {
    o.hostname = 'foo';
    o.password = 'foo';
    o.port = 42;
    o.sslConfig = buildMysqlSslConfig();
    o.username = 'foo';
  }
  buildCounterMysqlProfile--;
  return o;
}

void checkMysqlProfile(api.MysqlProfile o) {
  buildCounterMysqlProfile++;
  if (buildCounterMysqlProfile < 3) {
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
    checkMysqlSslConfig(o.sslConfig!);
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterMysqlProfile--;
}

core.List<api.MysqlDatabase> buildUnnamed18() => [
      buildMysqlDatabase(),
      buildMysqlDatabase(),
    ];

void checkUnnamed18(core.List<api.MysqlDatabase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMysqlDatabase(o[0]);
  checkMysqlDatabase(o[1]);
}

core.int buildCounterMysqlRdbms = 0;
api.MysqlRdbms buildMysqlRdbms() {
  final o = api.MysqlRdbms();
  buildCounterMysqlRdbms++;
  if (buildCounterMysqlRdbms < 3) {
    o.mysqlDatabases = buildUnnamed18();
  }
  buildCounterMysqlRdbms--;
  return o;
}

void checkMysqlRdbms(api.MysqlRdbms o) {
  buildCounterMysqlRdbms++;
  if (buildCounterMysqlRdbms < 3) {
    checkUnnamed18(o.mysqlDatabases!);
  }
  buildCounterMysqlRdbms--;
}

core.int buildCounterMysqlSourceConfig = 0;
api.MysqlSourceConfig buildMysqlSourceConfig() {
  final o = api.MysqlSourceConfig();
  buildCounterMysqlSourceConfig++;
  if (buildCounterMysqlSourceConfig < 3) {
    o.binaryLogPosition = buildBinaryLogPosition();
    o.excludeObjects = buildMysqlRdbms();
    o.gtid = buildGtid();
    o.includeObjects = buildMysqlRdbms();
    o.maxConcurrentBackfillTasks = 42;
    o.maxConcurrentCdcTasks = 42;
  }
  buildCounterMysqlSourceConfig--;
  return o;
}

void checkMysqlSourceConfig(api.MysqlSourceConfig o) {
  buildCounterMysqlSourceConfig++;
  if (buildCounterMysqlSourceConfig < 3) {
    checkBinaryLogPosition(o.binaryLogPosition!);
    checkMysqlRdbms(o.excludeObjects!);
    checkGtid(o.gtid!);
    checkMysqlRdbms(o.includeObjects!);
    unittest.expect(
      o.maxConcurrentBackfillTasks!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxConcurrentCdcTasks!,
      unittest.equals(42),
    );
  }
  buildCounterMysqlSourceConfig--;
}

core.int buildCounterMysqlSslConfig = 0;
api.MysqlSslConfig buildMysqlSslConfig() {
  final o = api.MysqlSslConfig();
  buildCounterMysqlSslConfig++;
  if (buildCounterMysqlSslConfig < 3) {
    o.caCertificate = 'foo';
    o.caCertificateSet = true;
    o.clientCertificate = 'foo';
    o.clientCertificateSet = true;
    o.clientKey = 'foo';
    o.clientKeySet = true;
  }
  buildCounterMysqlSslConfig--;
  return o;
}

void checkMysqlSslConfig(api.MysqlSslConfig o) {
  buildCounterMysqlSslConfig++;
  if (buildCounterMysqlSslConfig < 3) {
    unittest.expect(
      o.caCertificate!,
      unittest.equals('foo'),
    );
    unittest.expect(o.caCertificateSet!, unittest.isTrue);
    unittest.expect(
      o.clientCertificate!,
      unittest.equals('foo'),
    );
    unittest.expect(o.clientCertificateSet!, unittest.isTrue);
    unittest.expect(
      o.clientKey!,
      unittest.equals('foo'),
    );
    unittest.expect(o.clientKeySet!, unittest.isTrue);
  }
  buildCounterMysqlSslConfig--;
}

core.List<api.MysqlColumn> buildUnnamed19() => [
      buildMysqlColumn(),
      buildMysqlColumn(),
    ];

void checkUnnamed19(core.List<api.MysqlColumn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMysqlColumn(o[0]);
  checkMysqlColumn(o[1]);
}

core.int buildCounterMysqlTable = 0;
api.MysqlTable buildMysqlTable() {
  final o = api.MysqlTable();
  buildCounterMysqlTable++;
  if (buildCounterMysqlTable < 3) {
    o.mysqlColumns = buildUnnamed19();
    o.table = 'foo';
  }
  buildCounterMysqlTable--;
  return o;
}

void checkMysqlTable(api.MysqlTable o) {
  buildCounterMysqlTable++;
  if (buildCounterMysqlTable < 3) {
    checkUnnamed19(o.mysqlColumns!);
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
  }
  buildCounterMysqlTable--;
}

core.int buildCounterNextAvailableStartPosition = 0;
api.NextAvailableStartPosition buildNextAvailableStartPosition() {
  final o = api.NextAvailableStartPosition();
  buildCounterNextAvailableStartPosition++;
  if (buildCounterNextAvailableStartPosition < 3) {}
  buildCounterNextAvailableStartPosition--;
  return o;
}

void checkNextAvailableStartPosition(api.NextAvailableStartPosition o) {
  buildCounterNextAvailableStartPosition++;
  if (buildCounterNextAvailableStartPosition < 3) {}
  buildCounterNextAvailableStartPosition--;
}

core.Map<core.String, core.Object?> buildUnnamed20() => {
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

void checkUnnamed20(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed20();
    o.name = 'foo';
    o.response = buildUnnamed21();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed20(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.response!);
  }
  buildCounterOperation--;
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

core.int buildCounterOracleAsmConfig = 0;
api.OracleAsmConfig buildOracleAsmConfig() {
  final o = api.OracleAsmConfig();
  buildCounterOracleAsmConfig++;
  if (buildCounterOracleAsmConfig < 3) {
    o.asmService = 'foo';
    o.connectionAttributes = buildUnnamed22();
    o.hostname = 'foo';
    o.oracleSslConfig = buildOracleSslConfig();
    o.password = 'foo';
    o.port = 42;
    o.username = 'foo';
  }
  buildCounterOracleAsmConfig--;
  return o;
}

void checkOracleAsmConfig(api.OracleAsmConfig o) {
  buildCounterOracleAsmConfig++;
  if (buildCounterOracleAsmConfig < 3) {
    unittest.expect(
      o.asmService!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.connectionAttributes!);
    unittest.expect(
      o.hostname!,
      unittest.equals('foo'),
    );
    checkOracleSslConfig(o.oracleSslConfig!);
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterOracleAsmConfig--;
}

core.int buildCounterOracleAsmLogFileAccess = 0;
api.OracleAsmLogFileAccess buildOracleAsmLogFileAccess() {
  final o = api.OracleAsmLogFileAccess();
  buildCounterOracleAsmLogFileAccess++;
  if (buildCounterOracleAsmLogFileAccess < 3) {}
  buildCounterOracleAsmLogFileAccess--;
  return o;
}

void checkOracleAsmLogFileAccess(api.OracleAsmLogFileAccess o) {
  buildCounterOracleAsmLogFileAccess++;
  if (buildCounterOracleAsmLogFileAccess < 3) {}
  buildCounterOracleAsmLogFileAccess--;
}

core.int buildCounterOracleColumn = 0;
api.OracleColumn buildOracleColumn() {
  final o = api.OracleColumn();
  buildCounterOracleColumn++;
  if (buildCounterOracleColumn < 3) {
    o.column = 'foo';
    o.dataType = 'foo';
    o.encoding = 'foo';
    o.length = 42;
    o.nullable = true;
    o.ordinalPosition = 42;
    o.precision = 42;
    o.primaryKey = true;
    o.scale = 42;
  }
  buildCounterOracleColumn--;
  return o;
}

void checkOracleColumn(api.OracleColumn o) {
  buildCounterOracleColumn++;
  if (buildCounterOracleColumn < 3) {
    unittest.expect(
      o.column!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.encoding!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.length!,
      unittest.equals(42),
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
    unittest.expect(o.primaryKey!, unittest.isTrue);
    unittest.expect(
      o.scale!,
      unittest.equals(42),
    );
  }
  buildCounterOracleColumn--;
}

core.int buildCounterOracleObjectIdentifier = 0;
api.OracleObjectIdentifier buildOracleObjectIdentifier() {
  final o = api.OracleObjectIdentifier();
  buildCounterOracleObjectIdentifier++;
  if (buildCounterOracleObjectIdentifier < 3) {
    o.schema = 'foo';
    o.table = 'foo';
  }
  buildCounterOracleObjectIdentifier--;
  return o;
}

void checkOracleObjectIdentifier(api.OracleObjectIdentifier o) {
  buildCounterOracleObjectIdentifier++;
  if (buildCounterOracleObjectIdentifier < 3) {
    unittest.expect(
      o.schema!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
  }
  buildCounterOracleObjectIdentifier--;
}

core.Map<core.String, core.String> buildUnnamed23() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed23(core.Map<core.String, core.String> o) {
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

core.int buildCounterOracleProfile = 0;
api.OracleProfile buildOracleProfile() {
  final o = api.OracleProfile();
  buildCounterOracleProfile++;
  if (buildCounterOracleProfile < 3) {
    o.connectionAttributes = buildUnnamed23();
    o.databaseService = 'foo';
    o.hostname = 'foo';
    o.oracleAsmConfig = buildOracleAsmConfig();
    o.oracleSslConfig = buildOracleSslConfig();
    o.password = 'foo';
    o.port = 42;
    o.secretManagerStoredPassword = 'foo';
    o.username = 'foo';
  }
  buildCounterOracleProfile--;
  return o;
}

void checkOracleProfile(api.OracleProfile o) {
  buildCounterOracleProfile++;
  if (buildCounterOracleProfile < 3) {
    checkUnnamed23(o.connectionAttributes!);
    unittest.expect(
      o.databaseService!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hostname!,
      unittest.equals('foo'),
    );
    checkOracleAsmConfig(o.oracleAsmConfig!);
    checkOracleSslConfig(o.oracleSslConfig!);
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
    unittest.expect(
      o.secretManagerStoredPassword!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterOracleProfile--;
}

core.List<api.OracleSchema> buildUnnamed24() => [
      buildOracleSchema(),
      buildOracleSchema(),
    ];

void checkUnnamed24(core.List<api.OracleSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOracleSchema(o[0]);
  checkOracleSchema(o[1]);
}

core.int buildCounterOracleRdbms = 0;
api.OracleRdbms buildOracleRdbms() {
  final o = api.OracleRdbms();
  buildCounterOracleRdbms++;
  if (buildCounterOracleRdbms < 3) {
    o.oracleSchemas = buildUnnamed24();
  }
  buildCounterOracleRdbms--;
  return o;
}

void checkOracleRdbms(api.OracleRdbms o) {
  buildCounterOracleRdbms++;
  if (buildCounterOracleRdbms < 3) {
    checkUnnamed24(o.oracleSchemas!);
  }
  buildCounterOracleRdbms--;
}

core.List<api.OracleTable> buildUnnamed25() => [
      buildOracleTable(),
      buildOracleTable(),
    ];

void checkUnnamed25(core.List<api.OracleTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOracleTable(o[0]);
  checkOracleTable(o[1]);
}

core.int buildCounterOracleSchema = 0;
api.OracleSchema buildOracleSchema() {
  final o = api.OracleSchema();
  buildCounterOracleSchema++;
  if (buildCounterOracleSchema < 3) {
    o.oracleTables = buildUnnamed25();
    o.schema = 'foo';
  }
  buildCounterOracleSchema--;
  return o;
}

void checkOracleSchema(api.OracleSchema o) {
  buildCounterOracleSchema++;
  if (buildCounterOracleSchema < 3) {
    checkUnnamed25(o.oracleTables!);
    unittest.expect(
      o.schema!,
      unittest.equals('foo'),
    );
  }
  buildCounterOracleSchema--;
}

core.int buildCounterOracleScnPosition = 0;
api.OracleScnPosition buildOracleScnPosition() {
  final o = api.OracleScnPosition();
  buildCounterOracleScnPosition++;
  if (buildCounterOracleScnPosition < 3) {
    o.scn = 'foo';
  }
  buildCounterOracleScnPosition--;
  return o;
}

void checkOracleScnPosition(api.OracleScnPosition o) {
  buildCounterOracleScnPosition++;
  if (buildCounterOracleScnPosition < 3) {
    unittest.expect(
      o.scn!,
      unittest.equals('foo'),
    );
  }
  buildCounterOracleScnPosition--;
}

core.int buildCounterOracleSourceConfig = 0;
api.OracleSourceConfig buildOracleSourceConfig() {
  final o = api.OracleSourceConfig();
  buildCounterOracleSourceConfig++;
  if (buildCounterOracleSourceConfig < 3) {
    o.binaryLogParser = buildBinaryLogParser();
    o.dropLargeObjects = buildDropLargeObjects();
    o.excludeObjects = buildOracleRdbms();
    o.includeObjects = buildOracleRdbms();
    o.logMiner = buildLogMiner();
    o.maxConcurrentBackfillTasks = 42;
    o.maxConcurrentCdcTasks = 42;
    o.streamLargeObjects = buildStreamLargeObjects();
  }
  buildCounterOracleSourceConfig--;
  return o;
}

void checkOracleSourceConfig(api.OracleSourceConfig o) {
  buildCounterOracleSourceConfig++;
  if (buildCounterOracleSourceConfig < 3) {
    checkBinaryLogParser(o.binaryLogParser!);
    checkDropLargeObjects(o.dropLargeObjects!);
    checkOracleRdbms(o.excludeObjects!);
    checkOracleRdbms(o.includeObjects!);
    checkLogMiner(o.logMiner!);
    unittest.expect(
      o.maxConcurrentBackfillTasks!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxConcurrentCdcTasks!,
      unittest.equals(42),
    );
    checkStreamLargeObjects(o.streamLargeObjects!);
  }
  buildCounterOracleSourceConfig--;
}

core.int buildCounterOracleSslConfig = 0;
api.OracleSslConfig buildOracleSslConfig() {
  final o = api.OracleSslConfig();
  buildCounterOracleSslConfig++;
  if (buildCounterOracleSslConfig < 3) {
    o.caCertificate = 'foo';
    o.caCertificateSet = true;
  }
  buildCounterOracleSslConfig--;
  return o;
}

void checkOracleSslConfig(api.OracleSslConfig o) {
  buildCounterOracleSslConfig++;
  if (buildCounterOracleSslConfig < 3) {
    unittest.expect(
      o.caCertificate!,
      unittest.equals('foo'),
    );
    unittest.expect(o.caCertificateSet!, unittest.isTrue);
  }
  buildCounterOracleSslConfig--;
}

core.List<api.OracleColumn> buildUnnamed26() => [
      buildOracleColumn(),
      buildOracleColumn(),
    ];

void checkUnnamed26(core.List<api.OracleColumn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOracleColumn(o[0]);
  checkOracleColumn(o[1]);
}

core.int buildCounterOracleTable = 0;
api.OracleTable buildOracleTable() {
  final o = api.OracleTable();
  buildCounterOracleTable++;
  if (buildCounterOracleTable < 3) {
    o.oracleColumns = buildUnnamed26();
    o.table = 'foo';
  }
  buildCounterOracleTable--;
  return o;
}

void checkOracleTable(api.OracleTable o) {
  buildCounterOracleTable++;
  if (buildCounterOracleTable < 3) {
    checkUnnamed26(o.oracleColumns!);
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
  }
  buildCounterOracleTable--;
}

core.int buildCounterPostgresqlColumn = 0;
api.PostgresqlColumn buildPostgresqlColumn() {
  final o = api.PostgresqlColumn();
  buildCounterPostgresqlColumn++;
  if (buildCounterPostgresqlColumn < 3) {
    o.column = 'foo';
    o.dataType = 'foo';
    o.length = 42;
    o.nullable = true;
    o.ordinalPosition = 42;
    o.precision = 42;
    o.primaryKey = true;
    o.scale = 42;
  }
  buildCounterPostgresqlColumn--;
  return o;
}

void checkPostgresqlColumn(api.PostgresqlColumn o) {
  buildCounterPostgresqlColumn++;
  if (buildCounterPostgresqlColumn < 3) {
    unittest.expect(
      o.column!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.length!,
      unittest.equals(42),
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
    unittest.expect(o.primaryKey!, unittest.isTrue);
    unittest.expect(
      o.scale!,
      unittest.equals(42),
    );
  }
  buildCounterPostgresqlColumn--;
}

core.int buildCounterPostgresqlObjectIdentifier = 0;
api.PostgresqlObjectIdentifier buildPostgresqlObjectIdentifier() {
  final o = api.PostgresqlObjectIdentifier();
  buildCounterPostgresqlObjectIdentifier++;
  if (buildCounterPostgresqlObjectIdentifier < 3) {
    o.schema = 'foo';
    o.table = 'foo';
  }
  buildCounterPostgresqlObjectIdentifier--;
  return o;
}

void checkPostgresqlObjectIdentifier(api.PostgresqlObjectIdentifier o) {
  buildCounterPostgresqlObjectIdentifier++;
  if (buildCounterPostgresqlObjectIdentifier < 3) {
    unittest.expect(
      o.schema!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostgresqlObjectIdentifier--;
}

core.int buildCounterPostgresqlProfile = 0;
api.PostgresqlProfile buildPostgresqlProfile() {
  final o = api.PostgresqlProfile();
  buildCounterPostgresqlProfile++;
  if (buildCounterPostgresqlProfile < 3) {
    o.database = 'foo';
    o.hostname = 'foo';
    o.password = 'foo';
    o.port = 42;
    o.username = 'foo';
  }
  buildCounterPostgresqlProfile--;
  return o;
}

void checkPostgresqlProfile(api.PostgresqlProfile o) {
  buildCounterPostgresqlProfile++;
  if (buildCounterPostgresqlProfile < 3) {
    unittest.expect(
      o.database!,
      unittest.equals('foo'),
    );
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
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostgresqlProfile--;
}

core.List<api.PostgresqlSchema> buildUnnamed27() => [
      buildPostgresqlSchema(),
      buildPostgresqlSchema(),
    ];

void checkUnnamed27(core.List<api.PostgresqlSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostgresqlSchema(o[0]);
  checkPostgresqlSchema(o[1]);
}

core.int buildCounterPostgresqlRdbms = 0;
api.PostgresqlRdbms buildPostgresqlRdbms() {
  final o = api.PostgresqlRdbms();
  buildCounterPostgresqlRdbms++;
  if (buildCounterPostgresqlRdbms < 3) {
    o.postgresqlSchemas = buildUnnamed27();
  }
  buildCounterPostgresqlRdbms--;
  return o;
}

void checkPostgresqlRdbms(api.PostgresqlRdbms o) {
  buildCounterPostgresqlRdbms++;
  if (buildCounterPostgresqlRdbms < 3) {
    checkUnnamed27(o.postgresqlSchemas!);
  }
  buildCounterPostgresqlRdbms--;
}

core.List<api.PostgresqlTable> buildUnnamed28() => [
      buildPostgresqlTable(),
      buildPostgresqlTable(),
    ];

void checkUnnamed28(core.List<api.PostgresqlTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostgresqlTable(o[0]);
  checkPostgresqlTable(o[1]);
}

core.int buildCounterPostgresqlSchema = 0;
api.PostgresqlSchema buildPostgresqlSchema() {
  final o = api.PostgresqlSchema();
  buildCounterPostgresqlSchema++;
  if (buildCounterPostgresqlSchema < 3) {
    o.postgresqlTables = buildUnnamed28();
    o.schema = 'foo';
  }
  buildCounterPostgresqlSchema--;
  return o;
}

void checkPostgresqlSchema(api.PostgresqlSchema o) {
  buildCounterPostgresqlSchema++;
  if (buildCounterPostgresqlSchema < 3) {
    checkUnnamed28(o.postgresqlTables!);
    unittest.expect(
      o.schema!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostgresqlSchema--;
}

core.int buildCounterPostgresqlSourceConfig = 0;
api.PostgresqlSourceConfig buildPostgresqlSourceConfig() {
  final o = api.PostgresqlSourceConfig();
  buildCounterPostgresqlSourceConfig++;
  if (buildCounterPostgresqlSourceConfig < 3) {
    o.excludeObjects = buildPostgresqlRdbms();
    o.includeObjects = buildPostgresqlRdbms();
    o.maxConcurrentBackfillTasks = 42;
    o.publication = 'foo';
    o.replicationSlot = 'foo';
  }
  buildCounterPostgresqlSourceConfig--;
  return o;
}

void checkPostgresqlSourceConfig(api.PostgresqlSourceConfig o) {
  buildCounterPostgresqlSourceConfig++;
  if (buildCounterPostgresqlSourceConfig < 3) {
    checkPostgresqlRdbms(o.excludeObjects!);
    checkPostgresqlRdbms(o.includeObjects!);
    unittest.expect(
      o.maxConcurrentBackfillTasks!,
      unittest.equals(42),
    );
    unittest.expect(
      o.publication!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.replicationSlot!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostgresqlSourceConfig--;
}

core.List<api.PostgresqlColumn> buildUnnamed29() => [
      buildPostgresqlColumn(),
      buildPostgresqlColumn(),
    ];

void checkUnnamed29(core.List<api.PostgresqlColumn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostgresqlColumn(o[0]);
  checkPostgresqlColumn(o[1]);
}

core.int buildCounterPostgresqlTable = 0;
api.PostgresqlTable buildPostgresqlTable() {
  final o = api.PostgresqlTable();
  buildCounterPostgresqlTable++;
  if (buildCounterPostgresqlTable < 3) {
    o.postgresqlColumns = buildUnnamed29();
    o.table = 'foo';
  }
  buildCounterPostgresqlTable--;
  return o;
}

void checkPostgresqlTable(api.PostgresqlTable o) {
  buildCounterPostgresqlTable++;
  if (buildCounterPostgresqlTable < 3) {
    checkUnnamed29(o.postgresqlColumns!);
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostgresqlTable--;
}

core.Map<core.String, core.String> buildUnnamed30() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed30(core.Map<core.String, core.String> o) {
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
    o.error = buildError();
    o.labels = buildUnnamed30();
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
    checkError(o.error!);
    checkUnnamed30(o.labels!);
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

core.Map<core.String, core.String> buildUnnamed31() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed31(core.Map<core.String, core.String> o) {
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

core.int buildCounterRoute = 0;
api.Route buildRoute() {
  final o = api.Route();
  buildCounterRoute++;
  if (buildCounterRoute < 3) {
    o.createTime = 'foo';
    o.destinationAddress = 'foo';
    o.destinationPort = 42;
    o.displayName = 'foo';
    o.labels = buildUnnamed31();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterRoute--;
  return o;
}

void checkRoute(api.Route o) {
  buildCounterRoute++;
  if (buildCounterRoute < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destinationAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destinationPort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterRoute--;
}

core.int buildCounterRunStreamRequest = 0;
api.RunStreamRequest buildRunStreamRequest() {
  final o = api.RunStreamRequest();
  buildCounterRunStreamRequest++;
  if (buildCounterRunStreamRequest < 3) {
    o.cdcStrategy = buildCdcStrategy();
    o.force = true;
  }
  buildCounterRunStreamRequest--;
  return o;
}

void checkRunStreamRequest(api.RunStreamRequest o) {
  buildCounterRunStreamRequest++;
  if (buildCounterRunStreamRequest < 3) {
    checkCdcStrategy(o.cdcStrategy!);
    unittest.expect(o.force!, unittest.isTrue);
  }
  buildCounterRunStreamRequest--;
}

core.int buildCounterSingleTargetDataset = 0;
api.SingleTargetDataset buildSingleTargetDataset() {
  final o = api.SingleTargetDataset();
  buildCounterSingleTargetDataset++;
  if (buildCounterSingleTargetDataset < 3) {
    o.datasetId = 'foo';
  }
  buildCounterSingleTargetDataset--;
  return o;
}

void checkSingleTargetDataset(api.SingleTargetDataset o) {
  buildCounterSingleTargetDataset++;
  if (buildCounterSingleTargetDataset < 3) {
    unittest.expect(
      o.datasetId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSingleTargetDataset--;
}

core.int buildCounterSourceConfig = 0;
api.SourceConfig buildSourceConfig() {
  final o = api.SourceConfig();
  buildCounterSourceConfig++;
  if (buildCounterSourceConfig < 3) {
    o.mysqlSourceConfig = buildMysqlSourceConfig();
    o.oracleSourceConfig = buildOracleSourceConfig();
    o.postgresqlSourceConfig = buildPostgresqlSourceConfig();
    o.sourceConnectionProfile = 'foo';
    o.sqlServerSourceConfig = buildSqlServerSourceConfig();
  }
  buildCounterSourceConfig--;
  return o;
}

void checkSourceConfig(api.SourceConfig o) {
  buildCounterSourceConfig++;
  if (buildCounterSourceConfig < 3) {
    checkMysqlSourceConfig(o.mysqlSourceConfig!);
    checkOracleSourceConfig(o.oracleSourceConfig!);
    checkPostgresqlSourceConfig(o.postgresqlSourceConfig!);
    unittest.expect(
      o.sourceConnectionProfile!,
      unittest.equals('foo'),
    );
    checkSqlServerSourceConfig(o.sqlServerSourceConfig!);
  }
  buildCounterSourceConfig--;
}

core.int buildCounterSourceHierarchyDatasets = 0;
api.SourceHierarchyDatasets buildSourceHierarchyDatasets() {
  final o = api.SourceHierarchyDatasets();
  buildCounterSourceHierarchyDatasets++;
  if (buildCounterSourceHierarchyDatasets < 3) {
    o.datasetTemplate = buildDatasetTemplate();
  }
  buildCounterSourceHierarchyDatasets--;
  return o;
}

void checkSourceHierarchyDatasets(api.SourceHierarchyDatasets o) {
  buildCounterSourceHierarchyDatasets++;
  if (buildCounterSourceHierarchyDatasets < 3) {
    checkDatasetTemplate(o.datasetTemplate!);
  }
  buildCounterSourceHierarchyDatasets--;
}

core.int buildCounterSourceObjectIdentifier = 0;
api.SourceObjectIdentifier buildSourceObjectIdentifier() {
  final o = api.SourceObjectIdentifier();
  buildCounterSourceObjectIdentifier++;
  if (buildCounterSourceObjectIdentifier < 3) {
    o.mysqlIdentifier = buildMysqlObjectIdentifier();
    o.oracleIdentifier = buildOracleObjectIdentifier();
    o.postgresqlIdentifier = buildPostgresqlObjectIdentifier();
    o.sqlServerIdentifier = buildSqlServerObjectIdentifier();
  }
  buildCounterSourceObjectIdentifier--;
  return o;
}

void checkSourceObjectIdentifier(api.SourceObjectIdentifier o) {
  buildCounterSourceObjectIdentifier++;
  if (buildCounterSourceObjectIdentifier < 3) {
    checkMysqlObjectIdentifier(o.mysqlIdentifier!);
    checkOracleObjectIdentifier(o.oracleIdentifier!);
    checkPostgresqlObjectIdentifier(o.postgresqlIdentifier!);
    checkSqlServerObjectIdentifier(o.sqlServerIdentifier!);
  }
  buildCounterSourceObjectIdentifier--;
}

core.int buildCounterSpecificStartPosition = 0;
api.SpecificStartPosition buildSpecificStartPosition() {
  final o = api.SpecificStartPosition();
  buildCounterSpecificStartPosition++;
  if (buildCounterSpecificStartPosition < 3) {
    o.mysqlLogPosition = buildMysqlLogPosition();
    o.oracleScnPosition = buildOracleScnPosition();
  }
  buildCounterSpecificStartPosition--;
  return o;
}

void checkSpecificStartPosition(api.SpecificStartPosition o) {
  buildCounterSpecificStartPosition++;
  if (buildCounterSpecificStartPosition < 3) {
    checkMysqlLogPosition(o.mysqlLogPosition!);
    checkOracleScnPosition(o.oracleScnPosition!);
  }
  buildCounterSpecificStartPosition--;
}

core.int buildCounterSqlServerChangeTables = 0;
api.SqlServerChangeTables buildSqlServerChangeTables() {
  final o = api.SqlServerChangeTables();
  buildCounterSqlServerChangeTables++;
  if (buildCounterSqlServerChangeTables < 3) {}
  buildCounterSqlServerChangeTables--;
  return o;
}

void checkSqlServerChangeTables(api.SqlServerChangeTables o) {
  buildCounterSqlServerChangeTables++;
  if (buildCounterSqlServerChangeTables < 3) {}
  buildCounterSqlServerChangeTables--;
}

core.int buildCounterSqlServerColumn = 0;
api.SqlServerColumn buildSqlServerColumn() {
  final o = api.SqlServerColumn();
  buildCounterSqlServerColumn++;
  if (buildCounterSqlServerColumn < 3) {
    o.column = 'foo';
    o.dataType = 'foo';
    o.length = 42;
    o.nullable = true;
    o.ordinalPosition = 42;
    o.precision = 42;
    o.primaryKey = true;
    o.scale = 42;
  }
  buildCounterSqlServerColumn--;
  return o;
}

void checkSqlServerColumn(api.SqlServerColumn o) {
  buildCounterSqlServerColumn++;
  if (buildCounterSqlServerColumn < 3) {
    unittest.expect(
      o.column!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.length!,
      unittest.equals(42),
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
    unittest.expect(o.primaryKey!, unittest.isTrue);
    unittest.expect(
      o.scale!,
      unittest.equals(42),
    );
  }
  buildCounterSqlServerColumn--;
}

core.int buildCounterSqlServerObjectIdentifier = 0;
api.SqlServerObjectIdentifier buildSqlServerObjectIdentifier() {
  final o = api.SqlServerObjectIdentifier();
  buildCounterSqlServerObjectIdentifier++;
  if (buildCounterSqlServerObjectIdentifier < 3) {
    o.schema = 'foo';
    o.table = 'foo';
  }
  buildCounterSqlServerObjectIdentifier--;
  return o;
}

void checkSqlServerObjectIdentifier(api.SqlServerObjectIdentifier o) {
  buildCounterSqlServerObjectIdentifier++;
  if (buildCounterSqlServerObjectIdentifier < 3) {
    unittest.expect(
      o.schema!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
  }
  buildCounterSqlServerObjectIdentifier--;
}

core.int buildCounterSqlServerProfile = 0;
api.SqlServerProfile buildSqlServerProfile() {
  final o = api.SqlServerProfile();
  buildCounterSqlServerProfile++;
  if (buildCounterSqlServerProfile < 3) {
    o.database = 'foo';
    o.hostname = 'foo';
    o.password = 'foo';
    o.port = 42;
    o.username = 'foo';
  }
  buildCounterSqlServerProfile--;
  return o;
}

void checkSqlServerProfile(api.SqlServerProfile o) {
  buildCounterSqlServerProfile++;
  if (buildCounterSqlServerProfile < 3) {
    unittest.expect(
      o.database!,
      unittest.equals('foo'),
    );
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
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterSqlServerProfile--;
}

core.List<api.SqlServerSchema> buildUnnamed32() => [
      buildSqlServerSchema(),
      buildSqlServerSchema(),
    ];

void checkUnnamed32(core.List<api.SqlServerSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlServerSchema(o[0]);
  checkSqlServerSchema(o[1]);
}

core.int buildCounterSqlServerRdbms = 0;
api.SqlServerRdbms buildSqlServerRdbms() {
  final o = api.SqlServerRdbms();
  buildCounterSqlServerRdbms++;
  if (buildCounterSqlServerRdbms < 3) {
    o.schemas = buildUnnamed32();
  }
  buildCounterSqlServerRdbms--;
  return o;
}

void checkSqlServerRdbms(api.SqlServerRdbms o) {
  buildCounterSqlServerRdbms++;
  if (buildCounterSqlServerRdbms < 3) {
    checkUnnamed32(o.schemas!);
  }
  buildCounterSqlServerRdbms--;
}

core.List<api.SqlServerTable> buildUnnamed33() => [
      buildSqlServerTable(),
      buildSqlServerTable(),
    ];

void checkUnnamed33(core.List<api.SqlServerTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlServerTable(o[0]);
  checkSqlServerTable(o[1]);
}

core.int buildCounterSqlServerSchema = 0;
api.SqlServerSchema buildSqlServerSchema() {
  final o = api.SqlServerSchema();
  buildCounterSqlServerSchema++;
  if (buildCounterSqlServerSchema < 3) {
    o.schema = 'foo';
    o.tables = buildUnnamed33();
  }
  buildCounterSqlServerSchema--;
  return o;
}

void checkSqlServerSchema(api.SqlServerSchema o) {
  buildCounterSqlServerSchema++;
  if (buildCounterSqlServerSchema < 3) {
    unittest.expect(
      o.schema!,
      unittest.equals('foo'),
    );
    checkUnnamed33(o.tables!);
  }
  buildCounterSqlServerSchema--;
}

core.int buildCounterSqlServerSourceConfig = 0;
api.SqlServerSourceConfig buildSqlServerSourceConfig() {
  final o = api.SqlServerSourceConfig();
  buildCounterSqlServerSourceConfig++;
  if (buildCounterSqlServerSourceConfig < 3) {
    o.changeTables = buildSqlServerChangeTables();
    o.excludeObjects = buildSqlServerRdbms();
    o.includeObjects = buildSqlServerRdbms();
    o.maxConcurrentBackfillTasks = 42;
    o.maxConcurrentCdcTasks = 42;
    o.transactionLogs = buildSqlServerTransactionLogs();
  }
  buildCounterSqlServerSourceConfig--;
  return o;
}

void checkSqlServerSourceConfig(api.SqlServerSourceConfig o) {
  buildCounterSqlServerSourceConfig++;
  if (buildCounterSqlServerSourceConfig < 3) {
    checkSqlServerChangeTables(o.changeTables!);
    checkSqlServerRdbms(o.excludeObjects!);
    checkSqlServerRdbms(o.includeObjects!);
    unittest.expect(
      o.maxConcurrentBackfillTasks!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxConcurrentCdcTasks!,
      unittest.equals(42),
    );
    checkSqlServerTransactionLogs(o.transactionLogs!);
  }
  buildCounterSqlServerSourceConfig--;
}

core.List<api.SqlServerColumn> buildUnnamed34() => [
      buildSqlServerColumn(),
      buildSqlServerColumn(),
    ];

void checkUnnamed34(core.List<api.SqlServerColumn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlServerColumn(o[0]);
  checkSqlServerColumn(o[1]);
}

core.int buildCounterSqlServerTable = 0;
api.SqlServerTable buildSqlServerTable() {
  final o = api.SqlServerTable();
  buildCounterSqlServerTable++;
  if (buildCounterSqlServerTable < 3) {
    o.columns = buildUnnamed34();
    o.table = 'foo';
  }
  buildCounterSqlServerTable--;
  return o;
}

void checkSqlServerTable(api.SqlServerTable o) {
  buildCounterSqlServerTable++;
  if (buildCounterSqlServerTable < 3) {
    checkUnnamed34(o.columns!);
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
  }
  buildCounterSqlServerTable--;
}

core.int buildCounterSqlServerTransactionLogs = 0;
api.SqlServerTransactionLogs buildSqlServerTransactionLogs() {
  final o = api.SqlServerTransactionLogs();
  buildCounterSqlServerTransactionLogs++;
  if (buildCounterSqlServerTransactionLogs < 3) {}
  buildCounterSqlServerTransactionLogs--;
  return o;
}

void checkSqlServerTransactionLogs(api.SqlServerTransactionLogs o) {
  buildCounterSqlServerTransactionLogs++;
  if (buildCounterSqlServerTransactionLogs < 3) {}
  buildCounterSqlServerTransactionLogs--;
}

core.int buildCounterStartBackfillJobRequest = 0;
api.StartBackfillJobRequest buildStartBackfillJobRequest() {
  final o = api.StartBackfillJobRequest();
  buildCounterStartBackfillJobRequest++;
  if (buildCounterStartBackfillJobRequest < 3) {}
  buildCounterStartBackfillJobRequest--;
  return o;
}

void checkStartBackfillJobRequest(api.StartBackfillJobRequest o) {
  buildCounterStartBackfillJobRequest++;
  if (buildCounterStartBackfillJobRequest < 3) {}
  buildCounterStartBackfillJobRequest--;
}

core.int buildCounterStartBackfillJobResponse = 0;
api.StartBackfillJobResponse buildStartBackfillJobResponse() {
  final o = api.StartBackfillJobResponse();
  buildCounterStartBackfillJobResponse++;
  if (buildCounterStartBackfillJobResponse < 3) {
    o.object = buildStreamObject();
  }
  buildCounterStartBackfillJobResponse--;
  return o;
}

void checkStartBackfillJobResponse(api.StartBackfillJobResponse o) {
  buildCounterStartBackfillJobResponse++;
  if (buildCounterStartBackfillJobResponse < 3) {
    checkStreamObject(o.object!);
  }
  buildCounterStartBackfillJobResponse--;
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

core.Map<core.String, core.Object?> buildUnnamed35() => {
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

void checkUnnamed35(core.Map<core.String, core.Object?> o) {
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
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed36(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterStopBackfillJobRequest = 0;
api.StopBackfillJobRequest buildStopBackfillJobRequest() {
  final o = api.StopBackfillJobRequest();
  buildCounterStopBackfillJobRequest++;
  if (buildCounterStopBackfillJobRequest < 3) {}
  buildCounterStopBackfillJobRequest--;
  return o;
}

void checkStopBackfillJobRequest(api.StopBackfillJobRequest o) {
  buildCounterStopBackfillJobRequest++;
  if (buildCounterStopBackfillJobRequest < 3) {}
  buildCounterStopBackfillJobRequest--;
}

core.int buildCounterStopBackfillJobResponse = 0;
api.StopBackfillJobResponse buildStopBackfillJobResponse() {
  final o = api.StopBackfillJobResponse();
  buildCounterStopBackfillJobResponse++;
  if (buildCounterStopBackfillJobResponse < 3) {
    o.object = buildStreamObject();
  }
  buildCounterStopBackfillJobResponse--;
  return o;
}

void checkStopBackfillJobResponse(api.StopBackfillJobResponse o) {
  buildCounterStopBackfillJobResponse++;
  if (buildCounterStopBackfillJobResponse < 3) {
    checkStreamObject(o.object!);
  }
  buildCounterStopBackfillJobResponse--;
}

core.List<api.Error> buildUnnamed37() => [
      buildError(),
      buildError(),
    ];

void checkUnnamed37(core.List<api.Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkError(o[0]);
  checkError(o[1]);
}

core.Map<core.String, core.String> buildUnnamed38() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed38(core.Map<core.String, core.String> o) {
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

core.int buildCounterStream = 0;
api.Stream buildStream() {
  final o = api.Stream();
  buildCounterStream++;
  if (buildCounterStream < 3) {
    o.backfillAll = buildBackfillAllStrategy();
    o.backfillNone = buildBackfillNoneStrategy();
    o.createTime = 'foo';
    o.customerManagedEncryptionKey = 'foo';
    o.destinationConfig = buildDestinationConfig();
    o.displayName = 'foo';
    o.errors = buildUnnamed37();
    o.labels = buildUnnamed38();
    o.lastRecoveryTime = 'foo';
    o.name = 'foo';
    o.sourceConfig = buildSourceConfig();
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterStream--;
  return o;
}

void checkStream(api.Stream o) {
  buildCounterStream++;
  if (buildCounterStream < 3) {
    checkBackfillAllStrategy(o.backfillAll!);
    checkBackfillNoneStrategy(o.backfillNone!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerManagedEncryptionKey!,
      unittest.equals('foo'),
    );
    checkDestinationConfig(o.destinationConfig!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.errors!);
    checkUnnamed38(o.labels!);
    unittest.expect(
      o.lastRecoveryTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkSourceConfig(o.sourceConfig!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterStream--;
}

core.int buildCounterStreamLargeObjects = 0;
api.StreamLargeObjects buildStreamLargeObjects() {
  final o = api.StreamLargeObjects();
  buildCounterStreamLargeObjects++;
  if (buildCounterStreamLargeObjects < 3) {}
  buildCounterStreamLargeObjects--;
  return o;
}

void checkStreamLargeObjects(api.StreamLargeObjects o) {
  buildCounterStreamLargeObjects++;
  if (buildCounterStreamLargeObjects < 3) {}
  buildCounterStreamLargeObjects--;
}

core.List<api.Error> buildUnnamed39() => [
      buildError(),
      buildError(),
    ];

void checkUnnamed39(core.List<api.Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkError(o[0]);
  checkError(o[1]);
}

core.int buildCounterStreamObject = 0;
api.StreamObject buildStreamObject() {
  final o = api.StreamObject();
  buildCounterStreamObject++;
  if (buildCounterStreamObject < 3) {
    o.backfillJob = buildBackfillJob();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.errors = buildUnnamed39();
    o.name = 'foo';
    o.sourceObject = buildSourceObjectIdentifier();
    o.updateTime = 'foo';
  }
  buildCounterStreamObject--;
  return o;
}

void checkStreamObject(api.StreamObject o) {
  buildCounterStreamObject++;
  if (buildCounterStreamObject < 3) {
    checkBackfillJob(o.backfillJob!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.errors!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkSourceObjectIdentifier(o.sourceObject!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterStreamObject--;
}

core.int buildCounterVpcPeeringConfig = 0;
api.VpcPeeringConfig buildVpcPeeringConfig() {
  final o = api.VpcPeeringConfig();
  buildCounterVpcPeeringConfig++;
  if (buildCounterVpcPeeringConfig < 3) {
    o.subnet = 'foo';
    o.vpc = 'foo';
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
      o.vpc!,
      unittest.equals('foo'),
    );
  }
  buildCounterVpcPeeringConfig--;
}

void main() {
  unittest.group('obj-schema-AppendOnly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppendOnly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AppendOnly.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAppendOnly(od);
    });
  });

  unittest.group('obj-schema-AvroFileFormat', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAvroFileFormat();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AvroFileFormat.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAvroFileFormat(od);
    });
  });

  unittest.group('obj-schema-BackfillAllStrategy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackfillAllStrategy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackfillAllStrategy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackfillAllStrategy(od);
    });
  });

  unittest.group('obj-schema-BackfillJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackfillJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackfillJob.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackfillJob(od);
    });
  });

  unittest.group('obj-schema-BackfillNoneStrategy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackfillNoneStrategy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackfillNoneStrategy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackfillNoneStrategy(od);
    });
  });

  unittest.group('obj-schema-BigQueryDestinationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBigQueryDestinationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BigQueryDestinationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBigQueryDestinationConfig(od);
    });
  });

  unittest.group('obj-schema-BigQueryProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBigQueryProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BigQueryProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBigQueryProfile(od);
    });
  });

  unittest.group('obj-schema-BinaryLogParser', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinaryLogParser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BinaryLogParser.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBinaryLogParser(od);
    });
  });

  unittest.group('obj-schema-BinaryLogPosition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinaryLogPosition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BinaryLogPosition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBinaryLogPosition(od);
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

  unittest.group('obj-schema-CdcStrategy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCdcStrategy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CdcStrategy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCdcStrategy(od);
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

  unittest.group('obj-schema-DatasetTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatasetTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatasetTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatasetTemplate(od);
    });
  });

  unittest.group('obj-schema-DestinationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDestinationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DestinationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDestinationConfig(od);
    });
  });

  unittest.group('obj-schema-DiscoverConnectionProfileRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiscoverConnectionProfileRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiscoverConnectionProfileRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiscoverConnectionProfileRequest(od);
    });
  });

  unittest.group('obj-schema-DiscoverConnectionProfileResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiscoverConnectionProfileResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiscoverConnectionProfileResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiscoverConnectionProfileResponse(od);
    });
  });

  unittest.group('obj-schema-DropLargeObjects', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDropLargeObjects();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DropLargeObjects.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDropLargeObjects(od);
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

  unittest.group('obj-schema-Error', () {
    unittest.test('to-json--from-json', () async {
      final o = buildError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Error.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkError(od);
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

  unittest.group('obj-schema-ForwardSshTunnelConnectivity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildForwardSshTunnelConnectivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ForwardSshTunnelConnectivity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkForwardSshTunnelConnectivity(od);
    });
  });

  unittest.group('obj-schema-GcsDestinationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsDestinationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcsDestinationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGcsDestinationConfig(od);
    });
  });

  unittest.group('obj-schema-GcsProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GcsProfile.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGcsProfile(od);
    });
  });

  unittest.group('obj-schema-Gtid', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGtid();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Gtid.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGtid(od);
    });
  });

  unittest.group('obj-schema-JsonFileFormat', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJsonFileFormat();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JsonFileFormat.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJsonFileFormat(od);
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

  unittest.group('obj-schema-ListRoutesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRoutesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRoutesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRoutesResponse(od);
    });
  });

  unittest.group('obj-schema-ListStreamObjectsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListStreamObjectsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListStreamObjectsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListStreamObjectsResponse(od);
    });
  });

  unittest.group('obj-schema-ListStreamsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListStreamsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListStreamsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListStreamsResponse(od);
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

  unittest.group('obj-schema-LogFileDirectories', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLogFileDirectories();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LogFileDirectories.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLogFileDirectories(od);
    });
  });

  unittest.group('obj-schema-LogMiner', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLogMiner();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LogMiner.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLogMiner(od);
    });
  });

  unittest.group('obj-schema-LookupStreamObjectRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupStreamObjectRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupStreamObjectRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLookupStreamObjectRequest(od);
    });
  });

  unittest.group('obj-schema-Merge', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMerge();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Merge.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMerge(od);
    });
  });

  unittest.group('obj-schema-MostRecentStartPosition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMostRecentStartPosition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MostRecentStartPosition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMostRecentStartPosition(od);
    });
  });

  unittest.group('obj-schema-MysqlColumn', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMysqlColumn();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MysqlColumn.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMysqlColumn(od);
    });
  });

  unittest.group('obj-schema-MysqlDatabase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMysqlDatabase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MysqlDatabase.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMysqlDatabase(od);
    });
  });

  unittest.group('obj-schema-MysqlLogPosition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMysqlLogPosition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MysqlLogPosition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMysqlLogPosition(od);
    });
  });

  unittest.group('obj-schema-MysqlObjectIdentifier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMysqlObjectIdentifier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MysqlObjectIdentifier.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMysqlObjectIdentifier(od);
    });
  });

  unittest.group('obj-schema-MysqlProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMysqlProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MysqlProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMysqlProfile(od);
    });
  });

  unittest.group('obj-schema-MysqlRdbms', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMysqlRdbms();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MysqlRdbms.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMysqlRdbms(od);
    });
  });

  unittest.group('obj-schema-MysqlSourceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMysqlSourceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MysqlSourceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMysqlSourceConfig(od);
    });
  });

  unittest.group('obj-schema-MysqlSslConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMysqlSslConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MysqlSslConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMysqlSslConfig(od);
    });
  });

  unittest.group('obj-schema-MysqlTable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMysqlTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MysqlTable.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMysqlTable(od);
    });
  });

  unittest.group('obj-schema-NextAvailableStartPosition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNextAvailableStartPosition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NextAvailableStartPosition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNextAvailableStartPosition(od);
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

  unittest.group('obj-schema-OracleAsmConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOracleAsmConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OracleAsmConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOracleAsmConfig(od);
    });
  });

  unittest.group('obj-schema-OracleAsmLogFileAccess', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOracleAsmLogFileAccess();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OracleAsmLogFileAccess.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOracleAsmLogFileAccess(od);
    });
  });

  unittest.group('obj-schema-OracleColumn', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOracleColumn();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OracleColumn.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOracleColumn(od);
    });
  });

  unittest.group('obj-schema-OracleObjectIdentifier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOracleObjectIdentifier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OracleObjectIdentifier.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOracleObjectIdentifier(od);
    });
  });

  unittest.group('obj-schema-OracleProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOracleProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OracleProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOracleProfile(od);
    });
  });

  unittest.group('obj-schema-OracleRdbms', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOracleRdbms();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OracleRdbms.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOracleRdbms(od);
    });
  });

  unittest.group('obj-schema-OracleSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOracleSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OracleSchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOracleSchema(od);
    });
  });

  unittest.group('obj-schema-OracleScnPosition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOracleScnPosition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OracleScnPosition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOracleScnPosition(od);
    });
  });

  unittest.group('obj-schema-OracleSourceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOracleSourceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OracleSourceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOracleSourceConfig(od);
    });
  });

  unittest.group('obj-schema-OracleSslConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOracleSslConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OracleSslConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOracleSslConfig(od);
    });
  });

  unittest.group('obj-schema-OracleTable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOracleTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OracleTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOracleTable(od);
    });
  });

  unittest.group('obj-schema-PostgresqlColumn', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostgresqlColumn();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostgresqlColumn.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostgresqlColumn(od);
    });
  });

  unittest.group('obj-schema-PostgresqlObjectIdentifier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostgresqlObjectIdentifier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostgresqlObjectIdentifier.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostgresqlObjectIdentifier(od);
    });
  });

  unittest.group('obj-schema-PostgresqlProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostgresqlProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostgresqlProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostgresqlProfile(od);
    });
  });

  unittest.group('obj-schema-PostgresqlRdbms', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostgresqlRdbms();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostgresqlRdbms.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostgresqlRdbms(od);
    });
  });

  unittest.group('obj-schema-PostgresqlSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostgresqlSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostgresqlSchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostgresqlSchema(od);
    });
  });

  unittest.group('obj-schema-PostgresqlSourceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostgresqlSourceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostgresqlSourceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostgresqlSourceConfig(od);
    });
  });

  unittest.group('obj-schema-PostgresqlTable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostgresqlTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostgresqlTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostgresqlTable(od);
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

  unittest.group('obj-schema-Route', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRoute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Route.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRoute(od);
    });
  });

  unittest.group('obj-schema-RunStreamRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunStreamRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunStreamRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunStreamRequest(od);
    });
  });

  unittest.group('obj-schema-SingleTargetDataset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSingleTargetDataset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SingleTargetDataset.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSingleTargetDataset(od);
    });
  });

  unittest.group('obj-schema-SourceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceConfig(od);
    });
  });

  unittest.group('obj-schema-SourceHierarchyDatasets', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceHierarchyDatasets();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceHierarchyDatasets.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceHierarchyDatasets(od);
    });
  });

  unittest.group('obj-schema-SourceObjectIdentifier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceObjectIdentifier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceObjectIdentifier.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceObjectIdentifier(od);
    });
  });

  unittest.group('obj-schema-SpecificStartPosition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpecificStartPosition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SpecificStartPosition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpecificStartPosition(od);
    });
  });

  unittest.group('obj-schema-SqlServerChangeTables', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerChangeTables();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerChangeTables.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlServerChangeTables(od);
    });
  });

  unittest.group('obj-schema-SqlServerColumn', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerColumn();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerColumn.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlServerColumn(od);
    });
  });

  unittest.group('obj-schema-SqlServerObjectIdentifier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerObjectIdentifier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerObjectIdentifier.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlServerObjectIdentifier(od);
    });
  });

  unittest.group('obj-schema-SqlServerProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlServerProfile(od);
    });
  });

  unittest.group('obj-schema-SqlServerRdbms', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerRdbms();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerRdbms.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlServerRdbms(od);
    });
  });

  unittest.group('obj-schema-SqlServerSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerSchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlServerSchema(od);
    });
  });

  unittest.group('obj-schema-SqlServerSourceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerSourceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerSourceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlServerSourceConfig(od);
    });
  });

  unittest.group('obj-schema-SqlServerTable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlServerTable(od);
    });
  });

  unittest.group('obj-schema-SqlServerTransactionLogs', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerTransactionLogs();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerTransactionLogs.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlServerTransactionLogs(od);
    });
  });

  unittest.group('obj-schema-StartBackfillJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartBackfillJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartBackfillJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStartBackfillJobRequest(od);
    });
  });

  unittest.group('obj-schema-StartBackfillJobResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartBackfillJobResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartBackfillJobResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStartBackfillJobResponse(od);
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

  unittest.group('obj-schema-StopBackfillJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopBackfillJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopBackfillJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStopBackfillJobRequest(od);
    });
  });

  unittest.group('obj-schema-StopBackfillJobResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopBackfillJobResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopBackfillJobResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStopBackfillJobResponse(od);
    });
  });

  unittest.group('obj-schema-Stream', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStream();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Stream.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStream(od);
    });
  });

  unittest.group('obj-schema-StreamLargeObjects', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamLargeObjects();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamLargeObjects.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStreamLargeObjects(od);
    });
  });

  unittest.group('obj-schema-StreamObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamObject.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStreamObject(od);
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

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--fetchStaticIps', () async {
      final mock = HttpServerMock();
      final res = api.DatastreamApi(mock).projects.locations;
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
      final res = api.DatastreamApi(mock).projects.locations;
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
      final res = api.DatastreamApi(mock).projects.locations;
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
      final res = api.DatastreamApi(mock).projects.locations.connectionProfiles;
      final arg_request = buildConnectionProfile();
      final arg_parent = 'foo';
      final arg_connectionProfileId = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
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
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
          force: arg_force,
          requestId: arg_requestId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DatastreamApi(mock).projects.locations.connectionProfiles;
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

    unittest.test('method--discover', () async {
      final mock = HttpServerMock();
      final res = api.DatastreamApi(mock).projects.locations.connectionProfiles;
      final arg_request = buildDiscoverConnectionProfileRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DiscoverConnectionProfileRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDiscoverConnectionProfileRequest(obj);

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
            convert.json.encode(buildDiscoverConnectionProfileResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.discover(arg_request, arg_parent, $fields: arg_$fields);
      checkDiscoverConnectionProfileResponse(
          response as api.DiscoverConnectionProfileResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DatastreamApi(mock).projects.locations.connectionProfiles;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DatastreamApi(mock).projects.locations.connectionProfiles;
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
      final res = api.DatastreamApi(mock).projects.locations.connectionProfiles;
      final arg_request = buildConnectionProfile();
      final arg_name = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
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
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
          force: arg_force,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DatastreamApi(mock).projects.locations.operations;
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
      final res = api.DatastreamApi(mock).projects.locations.operations;
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
      final res = api.DatastreamApi(mock).projects.locations.operations;
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
      final res = api.DatastreamApi(mock).projects.locations.operations;
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
      final res = api.DatastreamApi(mock).projects.locations.privateConnections;
      final arg_request = buildPrivateConnection();
      final arg_parent = 'foo';
      final arg_force = true;
      final arg_privateConnectionId = 'foo';
      final arg_requestId = 'foo';
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
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
        );
        unittest.expect(
          queryMap['privateConnectionId']!.first,
          unittest.equals(arg_privateConnectionId),
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
          force: arg_force,
          privateConnectionId: arg_privateConnectionId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DatastreamApi(mock).projects.locations.privateConnections;
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
      final res = api.DatastreamApi(mock).projects.locations.privateConnections;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DatastreamApi(mock).projects.locations.privateConnections;
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
  });

  unittest.group('resource-ProjectsLocationsPrivateConnectionsRoutesResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DatastreamApi(mock).projects.locations.privateConnections.routes;
      final arg_request = buildRoute();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_routeId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Route.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRoute(obj);

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
          queryMap['routeId']!.first,
          unittest.equals(arg_routeId),
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
          requestId: arg_requestId, routeId: arg_routeId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DatastreamApi(mock).projects.locations.privateConnections.routes;
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
      final res =
          api.DatastreamApi(mock).projects.locations.privateConnections.routes;
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
        final resp = convert.json.encode(buildRoute());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRoute(response as api.Route);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DatastreamApi(mock).projects.locations.privateConnections.routes;
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
        final resp = convert.json.encode(buildListRoutesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListRoutesResponse(response as api.ListRoutesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsStreamsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DatastreamApi(mock).projects.locations.streams;
      final arg_request = buildStream();
      final arg_parent = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
      final arg_streamId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Stream.fromJson(json as core.Map<core.String, core.dynamic>);
        checkStream(obj);

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
          queryMap['streamId']!.first,
          unittest.equals(arg_streamId),
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
          force: arg_force,
          requestId: arg_requestId,
          streamId: arg_streamId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DatastreamApi(mock).projects.locations.streams;
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
      final res = api.DatastreamApi(mock).projects.locations.streams;
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
        final resp = convert.json.encode(buildStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkStream(response as api.Stream);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DatastreamApi(mock).projects.locations.streams;
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
        final resp = convert.json.encode(buildListStreamsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListStreamsResponse(response as api.ListStreamsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DatastreamApi(mock).projects.locations.streams;
      final arg_request = buildStream();
      final arg_name = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Stream.fromJson(json as core.Map<core.String, core.dynamic>);
        checkStream(obj);

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
          force: arg_force,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res = api.DatastreamApi(mock).projects.locations.streams;
      final arg_request = buildRunStreamRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RunStreamRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRunStreamRequest(obj);

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
          await res.run(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsStreamsObjectsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DatastreamApi(mock).projects.locations.streams.objects;
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
        final resp = convert.json.encode(buildStreamObject());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkStreamObject(response as api.StreamObject);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DatastreamApi(mock).projects.locations.streams.objects;
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
        final resp = convert.json.encode(buildListStreamObjectsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListStreamObjectsResponse(response as api.ListStreamObjectsResponse);
    });

    unittest.test('method--lookup', () async {
      final mock = HttpServerMock();
      final res = api.DatastreamApi(mock).projects.locations.streams.objects;
      final arg_request = buildLookupStreamObjectRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LookupStreamObjectRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLookupStreamObjectRequest(obj);

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
        final resp = convert.json.encode(buildStreamObject());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.lookup(arg_request, arg_parent, $fields: arg_$fields);
      checkStreamObject(response as api.StreamObject);
    });

    unittest.test('method--startBackfillJob', () async {
      final mock = HttpServerMock();
      final res = api.DatastreamApi(mock).projects.locations.streams.objects;
      final arg_request = buildStartBackfillJobRequest();
      final arg_object = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StartBackfillJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartBackfillJobRequest(obj);

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
        final resp = convert.json.encode(buildStartBackfillJobResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.startBackfillJob(arg_request, arg_object,
          $fields: arg_$fields);
      checkStartBackfillJobResponse(response as api.StartBackfillJobResponse);
    });

    unittest.test('method--stopBackfillJob', () async {
      final mock = HttpServerMock();
      final res = api.DatastreamApi(mock).projects.locations.streams.objects;
      final arg_request = buildStopBackfillJobRequest();
      final arg_object = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StopBackfillJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStopBackfillJobRequest(obj);

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
        final resp = convert.json.encode(buildStopBackfillJobResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.stopBackfillJob(arg_request, arg_object,
          $fields: arg_$fields);
      checkStopBackfillJobResponse(response as api.StopBackfillJobResponse);
    });
  });
}
