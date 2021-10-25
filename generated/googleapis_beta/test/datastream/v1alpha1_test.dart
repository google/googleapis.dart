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

import 'package:googleapis_beta/datastream/v1alpha1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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
  }
  buildCounterBackfillAllStrategy--;
  return o;
}

void checkBackfillAllStrategy(api.BackfillAllStrategy o) {
  buildCounterBackfillAllStrategy++;
  if (buildCounterBackfillAllStrategy < 3) {
    checkMysqlRdbms(o.mysqlExcludedObjects!);
    checkOracleRdbms(o.oracleExcludedObjects!);
  }
  buildCounterBackfillAllStrategy--;
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

core.int buildCounterConnectionProfile = 0;
api.ConnectionProfile buildConnectionProfile() {
  final o = api.ConnectionProfile();
  buildCounterConnectionProfile++;
  if (buildCounterConnectionProfile < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.forwardSshConnectivity = buildForwardSshTunnelConnectivity();
    o.gcsProfile = buildGcsProfile();
    o.labels = buildUnnamed0();
    o.mysqlProfile = buildMysqlProfile();
    o.name = 'foo';
    o.noConnectivity = buildNoConnectivitySettings();
    o.oracleProfile = buildOracleProfile();
    o.privateConnectivity = buildPrivateConnectivity();
    o.staticServiceIpConnectivity = buildStaticServiceIpConnectivity();
    o.updateTime = 'foo';
  }
  buildCounterConnectionProfile--;
  return o;
}

void checkConnectionProfile(api.ConnectionProfile o) {
  buildCounterConnectionProfile++;
  if (buildCounterConnectionProfile < 3) {
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
    checkUnnamed0(o.labels!);
    checkMysqlProfile(o.mysqlProfile!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkNoConnectivitySettings(o.noConnectivity!);
    checkOracleProfile(o.oracleProfile!);
    checkPrivateConnectivity(o.privateConnectivity!);
    checkStaticServiceIpConnectivity(o.staticServiceIpConnectivity!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnectionProfile--;
}

core.int buildCounterDestinationConfig = 0;
api.DestinationConfig buildDestinationConfig() {
  final o = api.DestinationConfig();
  buildCounterDestinationConfig++;
  if (buildCounterDestinationConfig < 3) {
    o.destinationConnectionProfileName = 'foo';
    o.gcsDestinationConfig = buildGcsDestinationConfig();
  }
  buildCounterDestinationConfig--;
  return o;
}

void checkDestinationConfig(api.DestinationConfig o) {
  buildCounterDestinationConfig++;
  if (buildCounterDestinationConfig < 3) {
    unittest.expect(
      o.destinationConnectionProfileName!,
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
    o.mysqlRdbms = buildMysqlRdbms();
    o.oracleRdbms = buildOracleRdbms();
    o.recursionDepth = 42;
    o.recursive = true;
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
    checkMysqlRdbms(o.mysqlRdbms!);
    checkOracleRdbms(o.oracleRdbms!);
    unittest.expect(
      o.recursionDepth!,
      unittest.equals(42),
    );
    unittest.expect(o.recursive!, unittest.isTrue);
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
  }
  buildCounterDiscoverConnectionProfileResponse--;
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

core.int buildCounterError = 0;
api.Error buildError() {
  final o = api.Error();
  buildCounterError++;
  if (buildCounterError < 3) {
    o.details = buildUnnamed1();
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
    checkUnnamed1(o.details!);
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

core.int buildCounterFetchErrorsRequest = 0;
api.FetchErrorsRequest buildFetchErrorsRequest() {
  final o = api.FetchErrorsRequest();
  buildCounterFetchErrorsRequest++;
  if (buildCounterFetchErrorsRequest < 3) {}
  buildCounterFetchErrorsRequest--;
  return o;
}

void checkFetchErrorsRequest(api.FetchErrorsRequest o) {
  buildCounterFetchErrorsRequest++;
  if (buildCounterFetchErrorsRequest < 3) {}
  buildCounterFetchErrorsRequest--;
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

core.int buildCounterFetchStaticIpsResponse = 0;
api.FetchStaticIpsResponse buildFetchStaticIpsResponse() {
  final o = api.FetchStaticIpsResponse();
  buildCounterFetchStaticIpsResponse++;
  if (buildCounterFetchStaticIpsResponse < 3) {
    o.nextPageToken = 'foo';
    o.staticIps = buildUnnamed2();
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
    checkUnnamed2(o.staticIps!);
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
    o.gcsFileFormat = 'foo';
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
    unittest.expect(
      o.gcsFileFormat!,
      unittest.equals('foo'),
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
    o.bucketName = 'foo';
    o.rootPath = 'foo';
  }
  buildCounterGcsProfile--;
  return o;
}

void checkGcsProfile(api.GcsProfile o) {
  buildCounterGcsProfile++;
  if (buildCounterGcsProfile < 3) {
    unittest.expect(
      o.bucketName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rootPath!,
      unittest.equals('foo'),
    );
  }
  buildCounterGcsProfile--;
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

core.List<api.ConnectionProfile> buildUnnamed3() => [
      buildConnectionProfile(),
      buildConnectionProfile(),
    ];

void checkUnnamed3(core.List<api.ConnectionProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectionProfile(o[0]);
  checkConnectionProfile(o[1]);
}

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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
    o.connectionProfiles = buildUnnamed3();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed4();
  }
  buildCounterListConnectionProfilesResponse--;
  return o;
}

void checkListConnectionProfilesResponse(api.ListConnectionProfilesResponse o) {
  buildCounterListConnectionProfilesResponse++;
  if (buildCounterListConnectionProfilesResponse < 3) {
    checkUnnamed3(o.connectionProfiles!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.unreachable!);
  }
  buildCounterListConnectionProfilesResponse--;
}

core.List<api.Location> buildUnnamed5() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed5(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed5();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed5(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed6() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed6(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed6();
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
    checkUnnamed6(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.PrivateConnection> buildUnnamed7() => [
      buildPrivateConnection(),
      buildPrivateConnection(),
    ];

void checkUnnamed7(core.List<api.PrivateConnection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrivateConnection(o[0]);
  checkPrivateConnection(o[1]);
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

core.int buildCounterListPrivateConnectionsResponse = 0;
api.ListPrivateConnectionsResponse buildListPrivateConnectionsResponse() {
  final o = api.ListPrivateConnectionsResponse();
  buildCounterListPrivateConnectionsResponse++;
  if (buildCounterListPrivateConnectionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.privateConnections = buildUnnamed7();
    o.unreachable = buildUnnamed8();
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
    checkUnnamed7(o.privateConnections!);
    checkUnnamed8(o.unreachable!);
  }
  buildCounterListPrivateConnectionsResponse--;
}

core.List<api.Route> buildUnnamed9() => [
      buildRoute(),
      buildRoute(),
    ];

void checkUnnamed9(core.List<api.Route> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoute(o[0]);
  checkRoute(o[1]);
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

core.int buildCounterListRoutesResponse = 0;
api.ListRoutesResponse buildListRoutesResponse() {
  final o = api.ListRoutesResponse();
  buildCounterListRoutesResponse++;
  if (buildCounterListRoutesResponse < 3) {
    o.nextPageToken = 'foo';
    o.routes = buildUnnamed9();
    o.unreachable = buildUnnamed10();
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
    checkUnnamed9(o.routes!);
    checkUnnamed10(o.unreachable!);
  }
  buildCounterListRoutesResponse--;
}

core.List<api.Stream> buildUnnamed11() => [
      buildStream(),
      buildStream(),
    ];

void checkUnnamed11(core.List<api.Stream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStream(o[0]);
  checkStream(o[1]);
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

core.int buildCounterListStreamsResponse = 0;
api.ListStreamsResponse buildListStreamsResponse() {
  final o = api.ListStreamsResponse();
  buildCounterListStreamsResponse++;
  if (buildCounterListStreamsResponse < 3) {
    o.nextPageToken = 'foo';
    o.streams = buildUnnamed11();
    o.unreachable = buildUnnamed12();
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
    checkUnnamed11(o.streams!);
    checkUnnamed12(o.unreachable!);
  }
  buildCounterListStreamsResponse--;
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

core.int buildCounterMysqlColumn = 0;
api.MysqlColumn buildMysqlColumn() {
  final o = api.MysqlColumn();
  buildCounterMysqlColumn++;
  if (buildCounterMysqlColumn < 3) {
    o.collation = 'foo';
    o.columnName = 'foo';
    o.dataType = 'foo';
    o.length = 42;
    o.nullable = true;
    o.ordinalPosition = 42;
    o.primaryKey = true;
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
      o.columnName!,
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
    unittest.expect(o.primaryKey!, unittest.isTrue);
  }
  buildCounterMysqlColumn--;
}

core.List<api.MysqlTable> buildUnnamed15() => [
      buildMysqlTable(),
      buildMysqlTable(),
    ];

void checkUnnamed15(core.List<api.MysqlTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMysqlTable(o[0]);
  checkMysqlTable(o[1]);
}

core.int buildCounterMysqlDatabase = 0;
api.MysqlDatabase buildMysqlDatabase() {
  final o = api.MysqlDatabase();
  buildCounterMysqlDatabase++;
  if (buildCounterMysqlDatabase < 3) {
    o.databaseName = 'foo';
    o.mysqlTables = buildUnnamed15();
  }
  buildCounterMysqlDatabase--;
  return o;
}

void checkMysqlDatabase(api.MysqlDatabase o) {
  buildCounterMysqlDatabase++;
  if (buildCounterMysqlDatabase < 3) {
    unittest.expect(
      o.databaseName!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.mysqlTables!);
  }
  buildCounterMysqlDatabase--;
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

core.List<api.MysqlDatabase> buildUnnamed16() => [
      buildMysqlDatabase(),
      buildMysqlDatabase(),
    ];

void checkUnnamed16(core.List<api.MysqlDatabase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMysqlDatabase(o[0]);
  checkMysqlDatabase(o[1]);
}

core.int buildCounterMysqlRdbms = 0;
api.MysqlRdbms buildMysqlRdbms() {
  final o = api.MysqlRdbms();
  buildCounterMysqlRdbms++;
  if (buildCounterMysqlRdbms < 3) {
    o.mysqlDatabases = buildUnnamed16();
  }
  buildCounterMysqlRdbms--;
  return o;
}

void checkMysqlRdbms(api.MysqlRdbms o) {
  buildCounterMysqlRdbms++;
  if (buildCounterMysqlRdbms < 3) {
    checkUnnamed16(o.mysqlDatabases!);
  }
  buildCounterMysqlRdbms--;
}

core.int buildCounterMysqlSourceConfig = 0;
api.MysqlSourceConfig buildMysqlSourceConfig() {
  final o = api.MysqlSourceConfig();
  buildCounterMysqlSourceConfig++;
  if (buildCounterMysqlSourceConfig < 3) {
    o.allowlist = buildMysqlRdbms();
    o.rejectlist = buildMysqlRdbms();
  }
  buildCounterMysqlSourceConfig--;
  return o;
}

void checkMysqlSourceConfig(api.MysqlSourceConfig o) {
  buildCounterMysqlSourceConfig++;
  if (buildCounterMysqlSourceConfig < 3) {
    checkMysqlRdbms(o.allowlist!);
    checkMysqlRdbms(o.rejectlist!);
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

core.List<api.MysqlColumn> buildUnnamed17() => [
      buildMysqlColumn(),
      buildMysqlColumn(),
    ];

void checkUnnamed17(core.List<api.MysqlColumn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMysqlColumn(o[0]);
  checkMysqlColumn(o[1]);
}

core.int buildCounterMysqlTable = 0;
api.MysqlTable buildMysqlTable() {
  final o = api.MysqlTable();
  buildCounterMysqlTable++;
  if (buildCounterMysqlTable < 3) {
    o.mysqlColumns = buildUnnamed17();
    o.tableName = 'foo';
  }
  buildCounterMysqlTable--;
  return o;
}

void checkMysqlTable(api.MysqlTable o) {
  buildCounterMysqlTable++;
  if (buildCounterMysqlTable < 3) {
    checkUnnamed17(o.mysqlColumns!);
    unittest.expect(
      o.tableName!,
      unittest.equals('foo'),
    );
  }
  buildCounterMysqlTable--;
}

core.int buildCounterNoConnectivitySettings = 0;
api.NoConnectivitySettings buildNoConnectivitySettings() {
  final o = api.NoConnectivitySettings();
  buildCounterNoConnectivitySettings++;
  if (buildCounterNoConnectivitySettings < 3) {}
  buildCounterNoConnectivitySettings--;
  return o;
}

void checkNoConnectivitySettings(api.NoConnectivitySettings o) {
  buildCounterNoConnectivitySettings++;
  if (buildCounterNoConnectivitySettings < 3) {}
  buildCounterNoConnectivitySettings--;
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

core.Map<core.String, core.Object?> buildUnnamed19() => {
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

void checkUnnamed19(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed18();
    o.name = 'foo';
    o.response = buildUnnamed19();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed18(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOracleColumn = 0;
api.OracleColumn buildOracleColumn() {
  final o = api.OracleColumn();
  buildCounterOracleColumn++;
  if (buildCounterOracleColumn < 3) {
    o.columnName = 'foo';
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
      o.columnName!,
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

core.Map<core.String, core.String> buildUnnamed20() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed20(core.Map<core.String, core.String> o) {
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
    o.connectionAttributes = buildUnnamed20();
    o.databaseService = 'foo';
    o.hostname = 'foo';
    o.password = 'foo';
    o.port = 42;
    o.username = 'foo';
  }
  buildCounterOracleProfile--;
  return o;
}

void checkOracleProfile(api.OracleProfile o) {
  buildCounterOracleProfile++;
  if (buildCounterOracleProfile < 3) {
    checkUnnamed20(o.connectionAttributes!);
    unittest.expect(
      o.databaseService!,
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
  buildCounterOracleProfile--;
}

core.List<api.OracleSchema> buildUnnamed21() => [
      buildOracleSchema(),
      buildOracleSchema(),
    ];

void checkUnnamed21(core.List<api.OracleSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOracleSchema(o[0]);
  checkOracleSchema(o[1]);
}

core.int buildCounterOracleRdbms = 0;
api.OracleRdbms buildOracleRdbms() {
  final o = api.OracleRdbms();
  buildCounterOracleRdbms++;
  if (buildCounterOracleRdbms < 3) {
    o.oracleSchemas = buildUnnamed21();
  }
  buildCounterOracleRdbms--;
  return o;
}

void checkOracleRdbms(api.OracleRdbms o) {
  buildCounterOracleRdbms++;
  if (buildCounterOracleRdbms < 3) {
    checkUnnamed21(o.oracleSchemas!);
  }
  buildCounterOracleRdbms--;
}

core.List<api.OracleTable> buildUnnamed22() => [
      buildOracleTable(),
      buildOracleTable(),
    ];

void checkUnnamed22(core.List<api.OracleTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOracleTable(o[0]);
  checkOracleTable(o[1]);
}

core.int buildCounterOracleSchema = 0;
api.OracleSchema buildOracleSchema() {
  final o = api.OracleSchema();
  buildCounterOracleSchema++;
  if (buildCounterOracleSchema < 3) {
    o.oracleTables = buildUnnamed22();
    o.schemaName = 'foo';
  }
  buildCounterOracleSchema--;
  return o;
}

void checkOracleSchema(api.OracleSchema o) {
  buildCounterOracleSchema++;
  if (buildCounterOracleSchema < 3) {
    checkUnnamed22(o.oracleTables!);
    unittest.expect(
      o.schemaName!,
      unittest.equals('foo'),
    );
  }
  buildCounterOracleSchema--;
}

core.int buildCounterOracleSourceConfig = 0;
api.OracleSourceConfig buildOracleSourceConfig() {
  final o = api.OracleSourceConfig();
  buildCounterOracleSourceConfig++;
  if (buildCounterOracleSourceConfig < 3) {
    o.allowlist = buildOracleRdbms();
    o.rejectlist = buildOracleRdbms();
  }
  buildCounterOracleSourceConfig--;
  return o;
}

void checkOracleSourceConfig(api.OracleSourceConfig o) {
  buildCounterOracleSourceConfig++;
  if (buildCounterOracleSourceConfig < 3) {
    checkOracleRdbms(o.allowlist!);
    checkOracleRdbms(o.rejectlist!);
  }
  buildCounterOracleSourceConfig--;
}

core.List<api.OracleColumn> buildUnnamed23() => [
      buildOracleColumn(),
      buildOracleColumn(),
    ];

void checkUnnamed23(core.List<api.OracleColumn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOracleColumn(o[0]);
  checkOracleColumn(o[1]);
}

core.int buildCounterOracleTable = 0;
api.OracleTable buildOracleTable() {
  final o = api.OracleTable();
  buildCounterOracleTable++;
  if (buildCounterOracleTable < 3) {
    o.oracleColumns = buildUnnamed23();
    o.tableName = 'foo';
  }
  buildCounterOracleTable--;
  return o;
}

void checkOracleTable(api.OracleTable o) {
  buildCounterOracleTable++;
  if (buildCounterOracleTable < 3) {
    checkUnnamed23(o.oracleColumns!);
    unittest.expect(
      o.tableName!,
      unittest.equals('foo'),
    );
  }
  buildCounterOracleTable--;
}

core.Map<core.String, core.String> buildUnnamed24() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed24(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed24();
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
    checkUnnamed24(o.labels!);
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
    o.privateConnectionName = 'foo';
  }
  buildCounterPrivateConnectivity--;
  return o;
}

void checkPrivateConnectivity(api.PrivateConnectivity o) {
  buildCounterPrivateConnectivity++;
  if (buildCounterPrivateConnectivity < 3) {
    unittest.expect(
      o.privateConnectionName!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrivateConnectivity--;
}

core.Map<core.String, core.String> buildUnnamed25() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed25(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed25();
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
    checkUnnamed25(o.labels!);
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

core.int buildCounterSourceConfig = 0;
api.SourceConfig buildSourceConfig() {
  final o = api.SourceConfig();
  buildCounterSourceConfig++;
  if (buildCounterSourceConfig < 3) {
    o.mysqlSourceConfig = buildMysqlSourceConfig();
    o.oracleSourceConfig = buildOracleSourceConfig();
    o.sourceConnectionProfileName = 'foo';
  }
  buildCounterSourceConfig--;
  return o;
}

void checkSourceConfig(api.SourceConfig o) {
  buildCounterSourceConfig++;
  if (buildCounterSourceConfig < 3) {
    checkMysqlSourceConfig(o.mysqlSourceConfig!);
    checkOracleSourceConfig(o.oracleSourceConfig!);
    unittest.expect(
      o.sourceConnectionProfileName!,
      unittest.equals('foo'),
    );
  }
  buildCounterSourceConfig--;
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed27() => [
      buildUnnamed26(),
      buildUnnamed26(),
    ];

void checkUnnamed27(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed26(o[0]);
  checkUnnamed26(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed27();
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
    checkUnnamed27(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<api.Error> buildUnnamed28() => [
      buildError(),
      buildError(),
    ];

void checkUnnamed28(core.List<api.Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkError(o[0]);
  checkError(o[1]);
}

core.Map<core.String, core.String> buildUnnamed29() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed29(core.Map<core.String, core.String> o) {
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
    o.destinationConfig = buildDestinationConfig();
    o.displayName = 'foo';
    o.errors = buildUnnamed28();
    o.labels = buildUnnamed29();
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
    checkDestinationConfig(o.destinationConfig!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.errors!);
    checkUnnamed29(o.labels!);
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

void main() {
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

  unittest.group('obj-schema-BackfillNoneStrategy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackfillNoneStrategy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackfillNoneStrategy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackfillNoneStrategy(od);
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

  unittest.group('obj-schema-ConnectionProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectionProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectionProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectionProfile(od);
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

  unittest.group('obj-schema-FetchErrorsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchErrorsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchErrorsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchErrorsRequest(od);
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

  unittest.group('obj-schema-NoConnectivitySettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNoConnectivitySettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NoConnectivitySettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNoConnectivitySettings(od);
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

  unittest.group('obj-schema-OracleColumn', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOracleColumn();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OracleColumn.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOracleColumn(od);
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

  unittest.group('obj-schema-OracleSourceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOracleSourceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OracleSourceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOracleSourceConfig(od);
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

  unittest.group('obj-schema-SourceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceConfig(od);
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

  unittest.group('obj-schema-Stream', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStream();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Stream.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStream(od);
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
      final res = api.DatastreamApi(mock).projects.locations;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
      final res = api.DatastreamApi(mock).projects.locations.connectionProfiles;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
      final res = api.DatastreamApi(mock).projects.locations.connectionProfiles;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
      final res = api.DatastreamApi(mock).projects.locations.connectionProfiles;
      final arg_request = buildConnectionProfile();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
      final res = api.DatastreamApi(mock).projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
      final res = api.DatastreamApi(mock).projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
      final res = api.DatastreamApi(mock).projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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

  unittest.group('resource-ProjectsLocationsPrivateConnectionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DatastreamApi(mock).projects.locations.privateConnections;
      final arg_request = buildPrivateConnection();
      final arg_parent = 'foo';
      final arg_privateConnectionId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PrivateConnection.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPrivateConnection(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
      final res = api.DatastreamApi(mock).projects.locations.privateConnections;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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

    unittest.test('method--fetchErrors', () async {
      final mock = HttpServerMock();
      final res = api.DatastreamApi(mock).projects.locations.streams;
      final arg_request = buildFetchErrorsRequest();
      final arg_stream = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FetchErrorsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFetchErrorsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
          await res.fetchErrors(arg_request, arg_stream, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DatastreamApi(mock).projects.locations.streams;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
}
