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

import 'package:googleapis/beyondcorp/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAllocatedConnection = 0;
api.AllocatedConnection buildAllocatedConnection() {
  final o = api.AllocatedConnection();
  buildCounterAllocatedConnection++;
  if (buildCounterAllocatedConnection < 3) {
    o.ingressPort = 42;
    o.pscUri = 'foo';
  }
  buildCounterAllocatedConnection--;
  return o;
}

void checkAllocatedConnection(api.AllocatedConnection o) {
  buildCounterAllocatedConnection++;
  if (buildCounterAllocatedConnection < 3) {
    unittest.expect(o.ingressPort!, unittest.equals(42));
    unittest.expect(o.pscUri!, unittest.equals('foo'));
  }
  buildCounterAllocatedConnection--;
}

core.List<api.AllocatedConnection> buildUnnamed0() => [
  buildAllocatedConnection(),
  buildAllocatedConnection(),
];

void checkUnnamed0(core.List<api.AllocatedConnection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAllocatedConnection(o[0]);
  checkAllocatedConnection(o[1]);
}

core.Map<core.String, core.String> buildUnnamed1() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed1(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterAppGateway = 0;
api.AppGateway buildAppGateway() {
  final o = api.AppGateway();
  buildCounterAppGateway++;
  if (buildCounterAppGateway < 3) {
    o.allocatedConnections = buildUnnamed0();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.hostType = 'foo';
    o.labels = buildUnnamed1();
    o.name = 'foo';
    o.satisfiesPzi = true;
    o.satisfiesPzs = true;
    o.state = 'foo';
    o.type = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.uri = 'foo';
  }
  buildCounterAppGateway--;
  return o;
}

void checkAppGateway(api.AppGateway o) {
  buildCounterAppGateway++;
  if (buildCounterAppGateway < 3) {
    checkUnnamed0(o.allocatedConnections!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.hostType!, unittest.equals('foo'));
    checkUnnamed1(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.satisfiesPzi!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterAppGateway--;
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

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed3() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed3(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudBeyondcorpAppconnectionsV1AppConnection = 0;
api.GoogleCloudBeyondcorpAppconnectionsV1AppConnection
buildGoogleCloudBeyondcorpAppconnectionsV1AppConnection() {
  final o = api.GoogleCloudBeyondcorpAppconnectionsV1AppConnection();
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1AppConnection++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1AppConnection < 3) {
    o.applicationEndpoint =
        buildGoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint();
    o.connectors = buildUnnamed2();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.gateway =
        buildGoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway();
    o.labels = buildUnnamed3();
    o.name = 'foo';
    o.satisfiesPzi = true;
    o.satisfiesPzs = true;
    o.state = 'foo';
    o.type = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1AppConnection--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectionsV1AppConnection(
  api.GoogleCloudBeyondcorpAppconnectionsV1AppConnection o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1AppConnection++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1AppConnection < 3) {
    checkGoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint(
      o.applicationEndpoint!,
    );
    checkUnnamed2(o.connectors!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway(o.gateway!);
    checkUnnamed3(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.satisfiesPzi!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1AppConnection--;
}

core.int
buildCounterGoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint =
    0;
api.GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint
buildGoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint() {
  final o =
      api.GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint();
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint <
      3) {
    o.host = 'foo';
    o.port = 42;
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint(
  api.GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint <
      3) {
    unittest.expect(o.host!, unittest.equals('foo'));
    unittest.expect(o.port!, unittest.equals(42));
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint--;
}

core.int buildCounterGoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway =
    0;
api.GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway
buildGoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway() {
  final o = api.GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway();
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway <
      3) {
    o.appGateway = 'foo';
    o.ingressPort = 42;
    o.l7psc = 'foo';
    o.type = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway(
  api.GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway <
      3) {
    unittest.expect(o.appGateway!, unittest.equals('foo'));
    unittest.expect(o.ingressPort!, unittest.equals(42));
    unittest.expect(o.l7psc!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway--;
}

core.List<api.GoogleCloudBeyondcorpAppconnectionsV1AppConnection>
buildUnnamed4() => [
  buildGoogleCloudBeyondcorpAppconnectionsV1AppConnection(),
  buildGoogleCloudBeyondcorpAppconnectionsV1AppConnection(),
];

void checkUnnamed4(
  core.List<api.GoogleCloudBeyondcorpAppconnectionsV1AppConnection> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpAppconnectionsV1AppConnection(o[0]);
  checkGoogleCloudBeyondcorpAppconnectionsV1AppConnection(o[1]);
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse = 0;
api.GoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse
buildGoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse() {
  final o =
      api.GoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse();
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse <
      3) {
    o.appConnections = buildUnnamed4();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed5();
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse(
  api.GoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse <
      3) {
    checkUnnamed4(o.appConnections!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed5(o.unreachable!);
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse--;
}

core.List<
  api.GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails
>
buildUnnamed6() => [
  buildGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails(),
  buildGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails(),
];

void checkUnnamed6(
  core.List<
    api.GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails(
    o[0],
  );
  checkGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails(
    o[1],
  );
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse =
    0;
api.GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse
buildGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse() {
  final o =
      api.GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse();
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse <
      3) {
    o.appConnectionDetails = buildUnnamed6();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed7();
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse(
  api.GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse <
      3) {
    checkUnnamed6(o.appConnectionDetails!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed7(o.unreachable!);
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse--;
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails =
    0;
api.GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails
buildGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails() {
  final o =
      api.GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails();
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails <
      3) {
    o.appConnection = buildGoogleCloudBeyondcorpAppconnectionsV1AppConnection();
    o.recentMigVms = buildUnnamed8();
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails--;
  return o;
}

void
checkGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails(
  api.GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails
  o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails <
      3) {
    checkGoogleCloudBeyondcorpAppconnectionsV1AppConnection(o.appConnection!);
    checkUnnamed8(o.recentMigVms!);
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails--;
}

core.Map<core.String, core.String> buildUnnamed9() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed9(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnector = 0;
api.GoogleCloudBeyondcorpAppconnectorsV1AppConnector
buildGoogleCloudBeyondcorpAppconnectorsV1AppConnector() {
  final o = api.GoogleCloudBeyondcorpAppconnectorsV1AppConnector();
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnector++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnector < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed9();
    o.name = 'foo';
    o.principalInfo =
        buildGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo();
    o.resourceInfo = buildGoogleCloudBeyondcorpAppconnectorsV1ResourceInfo();
    o.state = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnector--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectorsV1AppConnector(
  api.GoogleCloudBeyondcorpAppconnectorsV1AppConnector o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnector++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnector < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed9(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo(
      o.principalInfo!,
    );
    checkGoogleCloudBeyondcorpAppconnectorsV1ResourceInfo(o.resourceInfo!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnector--;
}

core.Map<core.String, core.Object?> buildUnnamed10() => {
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

void checkUnnamed10(core.Map<core.String, core.Object?> o) {
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

core.int
buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig = 0;
api.GoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig
buildGoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig() {
  final o =
      api.GoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig();
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig <
      3) {
    o.imageConfig = buildGoogleCloudBeyondcorpAppconnectorsV1ImageConfig();
    o.instanceConfig = buildUnnamed10();
    o.notificationConfig =
        buildGoogleCloudBeyondcorpAppconnectorsV1NotificationConfig();
    o.sequenceNumber = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig(
  api.GoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig <
      3) {
    checkGoogleCloudBeyondcorpAppconnectorsV1ImageConfig(o.imageConfig!);
    checkUnnamed10(o.instanceConfig!);
    checkGoogleCloudBeyondcorpAppconnectorsV1NotificationConfig(
      o.notificationConfig!,
    );
    unittest.expect(o.sequenceNumber!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig--;
}

core.int
buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo = 0;
api.GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo
buildGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo() {
  final o = api.GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo();
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo <
      3) {
    o.serviceAccount =
        buildGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount();
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo(
  api.GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo <
      3) {
    checkGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount(
      o.serviceAccount!,
    );
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo--;
}

core.int
buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount =
    0;
api.GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount
buildGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount() {
  final o =
      api.GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount();
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount <
      3) {
    o.email = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount--;
  return o;
}

void
checkGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount(
  api.GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount
  o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount <
      3) {
    unittest.expect(o.email!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount--;
}

core.int buildCounterGoogleCloudBeyondcorpAppconnectorsV1ImageConfig = 0;
api.GoogleCloudBeyondcorpAppconnectorsV1ImageConfig
buildGoogleCloudBeyondcorpAppconnectorsV1ImageConfig() {
  final o = api.GoogleCloudBeyondcorpAppconnectorsV1ImageConfig();
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1ImageConfig++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1ImageConfig < 3) {
    o.stableImage = 'foo';
    o.targetImage = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1ImageConfig--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectorsV1ImageConfig(
  api.GoogleCloudBeyondcorpAppconnectorsV1ImageConfig o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1ImageConfig++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1ImageConfig < 3) {
    unittest.expect(o.stableImage!, unittest.equals('foo'));
    unittest.expect(o.targetImage!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1ImageConfig--;
}

core.List<api.GoogleCloudBeyondcorpAppconnectorsV1AppConnector>
buildUnnamed11() => [
  buildGoogleCloudBeyondcorpAppconnectorsV1AppConnector(),
  buildGoogleCloudBeyondcorpAppconnectorsV1AppConnector(),
];

void checkUnnamed11(
  core.List<api.GoogleCloudBeyondcorpAppconnectorsV1AppConnector> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpAppconnectorsV1AppConnector(o[0]);
  checkGoogleCloudBeyondcorpAppconnectorsV1AppConnector(o[1]);
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse = 0;
api.GoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse
buildGoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse() {
  final o = api.GoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse();
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse <
      3) {
    o.appConnectors = buildUnnamed11();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed12();
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse(
  api.GoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse <
      3) {
    checkUnnamed11(o.appConnectors!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed12(o.unreachable!);
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse--;
}

core.int buildCounterGoogleCloudBeyondcorpAppconnectorsV1NotificationConfig = 0;
api.GoogleCloudBeyondcorpAppconnectorsV1NotificationConfig
buildGoogleCloudBeyondcorpAppconnectorsV1NotificationConfig() {
  final o = api.GoogleCloudBeyondcorpAppconnectorsV1NotificationConfig();
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1NotificationConfig++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1NotificationConfig < 3) {
    o.pubsubNotification =
        buildGoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig();
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1NotificationConfig--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectorsV1NotificationConfig(
  api.GoogleCloudBeyondcorpAppconnectorsV1NotificationConfig o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1NotificationConfig++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1NotificationConfig < 3) {
    checkGoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig(
      o.pubsubNotification!,
    );
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1NotificationConfig--;
}

core.int
buildCounterGoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig =
    0;
api.GoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig
buildGoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig() {
  final o =
      api.GoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig();
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig <
      3) {
    o.pubsubSubscription = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig--;
  return o;
}

void
checkGoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig(
  api.GoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig
  o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig <
      3) {
    unittest.expect(o.pubsubSubscription!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig--;
}

core.int buildCounterGoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest =
    0;
api.GoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest
buildGoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest() {
  final o = api.GoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest();
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest < 3) {
    o.requestId = 'foo';
    o.resourceInfo = buildGoogleCloudBeyondcorpAppconnectorsV1ResourceInfo();
    o.validateOnly = true;
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest(
  api.GoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest < 3) {
    unittest.expect(o.requestId!, unittest.equals('foo'));
    checkGoogleCloudBeyondcorpAppconnectorsV1ResourceInfo(o.resourceInfo!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest--;
}

core.int
buildCounterGoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse =
    0;
api.GoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse
buildGoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse() {
  final o =
      api.GoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse();
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse <
      3) {
    o.instanceConfig =
        buildGoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig();
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse(
  api.GoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse <
      3) {
    checkGoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig(
      o.instanceConfig!,
    );
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed13() => {
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

void checkUnnamed13(core.Map<core.String, core.Object?> o) {
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

core.List<api.GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo>
buildUnnamed14() => [
  buildGoogleCloudBeyondcorpAppconnectorsV1ResourceInfo(),
  buildGoogleCloudBeyondcorpAppconnectorsV1ResourceInfo(),
];

void checkUnnamed14(
  core.List<api.GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpAppconnectorsV1ResourceInfo(o[0]);
  checkGoogleCloudBeyondcorpAppconnectorsV1ResourceInfo(o[1]);
}

core.int buildCounterGoogleCloudBeyondcorpAppconnectorsV1ResourceInfo = 0;
api.GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo
buildGoogleCloudBeyondcorpAppconnectorsV1ResourceInfo() {
  final o = api.GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo();
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1ResourceInfo++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1ResourceInfo < 3) {
    o.id = 'foo';
    o.resource = buildUnnamed13();
    o.status = 'foo';
    o.sub = buildUnnamed14();
    o.time = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1ResourceInfo--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectorsV1ResourceInfo(
  api.GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1ResourceInfo++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1ResourceInfo < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed13(o.resource!);
    unittest.expect(o.status!, unittest.equals('foo'));
    checkUnnamed14(o.sub!);
    unittest.expect(o.time!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1ResourceInfo--;
}

core.List<api.GoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher>
buildUnnamed15() => [
  buildGoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher(),
  buildGoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher(),
];

void checkUnnamed15(
  core.List<api.GoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher(o[0]);
  checkGoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher(o[1]);
}

core.List<api.GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream>
buildUnnamed16() => [
  buildGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream(),
  buildGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream(),
];

void checkUnnamed16(
  core.List<api.GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream(o[0]);
  checkGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream(o[1]);
}

core.int buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1Application = 0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1Application
buildGoogleCloudBeyondcorpSecuritygatewaysV1Application() {
  final o = api.GoogleCloudBeyondcorpSecuritygatewaysV1Application();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1Application++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1Application < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.endpointMatchers = buildUnnamed15();
    o.name = 'foo';
    o.schema = 'foo';
    o.updateTime = 'foo';
    o.upstreams = buildUnnamed16();
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1Application--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1Application(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1Application o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1Application++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1Application < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed15(o.endpointMatchers!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.schema!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkUnnamed16(o.upstreams!);
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1Application--;
}

core.int
buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream = 0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream
buildGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream() {
  final o = api.GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream <
      3) {
    o.egressPolicy = buildGoogleCloudBeyondcorpSecuritygatewaysV1EgressPolicy();
    o.external_ =
        buildGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamExternal();
    o.network =
        buildGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamNetwork();
    o.proxyProtocol =
        buildGoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig();
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream <
      3) {
    checkGoogleCloudBeyondcorpSecuritygatewaysV1EgressPolicy(o.egressPolicy!);
    checkGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamExternal(
      o.external_!,
    );
    checkGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamNetwork(
      o.network!,
    );
    checkGoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig(
      o.proxyProtocol!,
    );
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream--;
}

core.List<api.GoogleCloudBeyondcorpSecuritygatewaysV1Endpoint>
buildUnnamed17() => [
  buildGoogleCloudBeyondcorpSecuritygatewaysV1Endpoint(),
  buildGoogleCloudBeyondcorpSecuritygatewaysV1Endpoint(),
];

void checkUnnamed17(
  core.List<api.GoogleCloudBeyondcorpSecuritygatewaysV1Endpoint> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpSecuritygatewaysV1Endpoint(o[0]);
  checkGoogleCloudBeyondcorpSecuritygatewaysV1Endpoint(o[1]);
}

core.int
buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamExternal =
    0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamExternal
buildGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamExternal() {
  final o =
      api.GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamExternal();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamExternal++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamExternal <
      3) {
    o.endpoints = buildUnnamed17();
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamExternal--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamExternal(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamExternal o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamExternal++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamExternal <
      3) {
    checkUnnamed17(o.endpoints!);
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamExternal--;
}

core.int
buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamNetwork =
    0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamNetwork
buildGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamNetwork() {
  final o =
      api.GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamNetwork();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamNetwork++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamNetwork <
      3) {
    o.name = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamNetwork--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamNetwork(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamNetwork o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamNetwork++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamNetwork <
      3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamNetwork--;
}

core.int buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeaders =
    0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeaders
buildGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeaders() {
  final o = api.GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeaders();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeaders++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeaders <
      3) {
    o.deviceInfo =
        buildGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedDeviceInfo();
    o.groupInfo =
        buildGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedGroupInfo();
    o.outputType = 'foo';
    o.userInfo =
        buildGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedUserInfo();
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeaders--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeaders(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeaders o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeaders++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeaders <
      3) {
    checkGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedDeviceInfo(
      o.deviceInfo!,
    );
    checkGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedGroupInfo(
      o.groupInfo!,
    );
    unittest.expect(o.outputType!, unittest.equals('foo'));
    checkGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedUserInfo(
      o.userInfo!,
    );
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeaders--;
}

core.int
buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedDeviceInfo =
    0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedDeviceInfo
buildGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedDeviceInfo() {
  final o =
      api.GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedDeviceInfo();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedDeviceInfo++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedDeviceInfo <
      3) {
    o.outputType = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedDeviceInfo--;
  return o;
}

void
checkGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedDeviceInfo(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedDeviceInfo
  o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedDeviceInfo++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedDeviceInfo <
      3) {
    unittest.expect(o.outputType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedDeviceInfo--;
}

core.int
buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedGroupInfo =
    0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedGroupInfo
buildGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedGroupInfo() {
  final o =
      api.GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedGroupInfo();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedGroupInfo++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedGroupInfo <
      3) {
    o.outputType = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedGroupInfo--;
  return o;
}

void
checkGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedGroupInfo(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedGroupInfo
  o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedGroupInfo++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedGroupInfo <
      3) {
    unittest.expect(o.outputType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedGroupInfo--;
}

core.int
buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedUserInfo =
    0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedUserInfo
buildGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedUserInfo() {
  final o =
      api.GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedUserInfo();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedUserInfo++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedUserInfo <
      3) {
    o.outputType = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedUserInfo--;
  return o;
}

void
checkGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedUserInfo(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedUserInfo
  o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedUserInfo++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedUserInfo <
      3) {
    unittest.expect(o.outputType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedUserInfo--;
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1EgressPolicy = 0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1EgressPolicy
buildGoogleCloudBeyondcorpSecuritygatewaysV1EgressPolicy() {
  final o = api.GoogleCloudBeyondcorpSecuritygatewaysV1EgressPolicy();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1EgressPolicy++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1EgressPolicy < 3) {
    o.regions = buildUnnamed18();
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1EgressPolicy--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1EgressPolicy(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1EgressPolicy o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1EgressPolicy++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1EgressPolicy < 3) {
    checkUnnamed18(o.regions!);
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1EgressPolicy--;
}

core.int buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1Endpoint = 0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1Endpoint
buildGoogleCloudBeyondcorpSecuritygatewaysV1Endpoint() {
  final o = api.GoogleCloudBeyondcorpSecuritygatewaysV1Endpoint();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1Endpoint++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1Endpoint < 3) {
    o.hostname = 'foo';
    o.port = 42;
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1Endpoint--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1Endpoint(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1Endpoint o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1Endpoint++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1Endpoint < 3) {
    unittest.expect(o.hostname!, unittest.equals('foo'));
    unittest.expect(o.port!, unittest.equals(42));
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1Endpoint--;
}

core.List<core.int> buildUnnamed19() => [42, 42];

void checkUnnamed19(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher = 0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher
buildGoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher() {
  final o = api.GoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher < 3) {
    o.hostname = 'foo';
    o.ports = buildUnnamed19();
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher < 3) {
    unittest.expect(o.hostname!, unittest.equals('foo'));
    checkUnnamed19(o.ports!);
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher--;
}

core.int buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1Hub = 0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1Hub
buildGoogleCloudBeyondcorpSecuritygatewaysV1Hub() {
  final o = api.GoogleCloudBeyondcorpSecuritygatewaysV1Hub();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1Hub++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1Hub < 3) {
    o.internetGateway =
        buildGoogleCloudBeyondcorpSecuritygatewaysV1InternetGateway();
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1Hub--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1Hub(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1Hub o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1Hub++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1Hub < 3) {
    checkGoogleCloudBeyondcorpSecuritygatewaysV1InternetGateway(
      o.internetGateway!,
    );
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1Hub--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1InternetGateway = 0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1InternetGateway
buildGoogleCloudBeyondcorpSecuritygatewaysV1InternetGateway() {
  final o = api.GoogleCloudBeyondcorpSecuritygatewaysV1InternetGateway();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1InternetGateway++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1InternetGateway < 3) {
    o.assignedIps = buildUnnamed20();
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1InternetGateway--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1InternetGateway(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1InternetGateway o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1InternetGateway++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1InternetGateway < 3) {
    checkUnnamed20(o.assignedIps!);
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1InternetGateway--;
}

core.List<api.GoogleCloudBeyondcorpSecuritygatewaysV1Application>
buildUnnamed21() => [
  buildGoogleCloudBeyondcorpSecuritygatewaysV1Application(),
  buildGoogleCloudBeyondcorpSecuritygatewaysV1Application(),
];

void checkUnnamed21(
  core.List<api.GoogleCloudBeyondcorpSecuritygatewaysV1Application> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpSecuritygatewaysV1Application(o[0]);
  checkGoogleCloudBeyondcorpSecuritygatewaysV1Application(o[1]);
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ListApplicationsResponse = 0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1ListApplicationsResponse
buildGoogleCloudBeyondcorpSecuritygatewaysV1ListApplicationsResponse() {
  final o =
      api.GoogleCloudBeyondcorpSecuritygatewaysV1ListApplicationsResponse();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ListApplicationsResponse++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ListApplicationsResponse <
      3) {
    o.applications = buildUnnamed21();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed22();
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ListApplicationsResponse--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1ListApplicationsResponse(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1ListApplicationsResponse o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ListApplicationsResponse++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ListApplicationsResponse <
      3) {
    checkUnnamed21(o.applications!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed22(o.unreachable!);
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ListApplicationsResponse--;
}

core.List<api.GoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway>
buildUnnamed23() => [
  buildGoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway(),
  buildGoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway(),
];

void checkUnnamed23(
  core.List<api.GoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway(o[0]);
  checkGoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway(o[1]);
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ListSecurityGatewaysResponse =
    0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1ListSecurityGatewaysResponse
buildGoogleCloudBeyondcorpSecuritygatewaysV1ListSecurityGatewaysResponse() {
  final o =
      api.GoogleCloudBeyondcorpSecuritygatewaysV1ListSecurityGatewaysResponse();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ListSecurityGatewaysResponse++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ListSecurityGatewaysResponse <
      3) {
    o.nextPageToken = 'foo';
    o.securityGateways = buildUnnamed23();
    o.unreachable = buildUnnamed24();
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ListSecurityGatewaysResponse--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1ListSecurityGatewaysResponse(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1ListSecurityGatewaysResponse o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ListSecurityGatewaysResponse++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ListSecurityGatewaysResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed23(o.securityGateways!);
    checkUnnamed24(o.unreachable!);
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ListSecurityGatewaysResponse--;
}

core.List<core.String> buildUnnamed25() => ['foo', 'foo'];

void checkUnnamed25(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed26() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed26(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig = 0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig
buildGoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig() {
  final o = api.GoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig <
      3) {
    o.allowedClientHeaders = buildUnnamed25();
    o.clientIp = true;
    o.contextualHeaders =
        buildGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeaders();
    o.gatewayIdentity = 'foo';
    o.metadataHeaders = buildUnnamed26();
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig <
      3) {
    checkUnnamed25(o.allowedClientHeaders!);
    unittest.expect(o.clientIp!, unittest.isTrue);
    checkGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeaders(
      o.contextualHeaders!,
    );
    unittest.expect(o.gatewayIdentity!, unittest.equals('foo'));
    checkUnnamed26(o.metadataHeaders!);
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig--;
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.GoogleCloudBeyondcorpSecuritygatewaysV1Hub>
buildUnnamed28() => {
  'x': buildGoogleCloudBeyondcorpSecuritygatewaysV1Hub(),
  'y': buildGoogleCloudBeyondcorpSecuritygatewaysV1Hub(),
};

void checkUnnamed28(
  core.Map<core.String, api.GoogleCloudBeyondcorpSecuritygatewaysV1Hub> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpSecuritygatewaysV1Hub(o['x']!);
  checkGoogleCloudBeyondcorpSecuritygatewaysV1Hub(o['y']!);
}

core.int buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway = 0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway
buildGoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway() {
  final o = api.GoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway < 3) {
    o.createTime = 'foo';
    o.delegatingServiceAccount = 'foo';
    o.displayName = 'foo';
    o.externalIps = buildUnnamed27();
    o.hubs = buildUnnamed28();
    o.name = 'foo';
    o.proxyProtocolConfig =
        buildGoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig();
    o.serviceDiscovery =
        buildGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscovery();
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.delegatingServiceAccount!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed27(o.externalIps!);
    checkUnnamed28(o.hubs!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig(
      o.proxyProtocolConfig!,
    );
    checkGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscovery(
      o.serviceDiscovery!,
    );
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway--;
}

core.int buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscovery =
    0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscovery
buildGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscovery() {
  final o = api.GoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscovery();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscovery++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscovery < 3) {
    o.apiGateway =
        buildGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGateway();
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscovery--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscovery(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscovery o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscovery++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscovery < 3) {
    checkGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGateway(
      o.apiGateway!,
    );
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscovery--;
}

core.int
buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGateway =
    0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGateway
buildGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGateway() {
  final o =
      api.GoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGateway();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGateway++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGateway <
      3) {
    o.resourceOverride =
        buildGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGatewayOperationDescriptor();
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGateway--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGateway(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGateway o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGateway++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGateway <
      3) {
    checkGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGatewayOperationDescriptor(
      o.resourceOverride!,
    );
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGateway--;
}

core.int
buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGatewayOperationDescriptor =
    0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGatewayOperationDescriptor
buildGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGatewayOperationDescriptor() {
  final o =
      api.GoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGatewayOperationDescriptor();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGatewayOperationDescriptor++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGatewayOperationDescriptor <
      3) {
    o.path = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGatewayOperationDescriptor--;
  return o;
}

void
checkGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGatewayOperationDescriptor(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGatewayOperationDescriptor
  o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGatewayOperationDescriptor++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGatewayOperationDescriptor <
      3) {
    unittest.expect(o.path!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGatewayOperationDescriptor--;
}

core.List<api.GoogleCloudLocationLocation> buildUnnamed29() => [
  buildGoogleCloudLocationLocation(),
  buildGoogleCloudLocationLocation(),
];

void checkUnnamed29(core.List<api.GoogleCloudLocationLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudLocationLocation(o[0]);
  checkGoogleCloudLocationLocation(o[1]);
}

core.int buildCounterGoogleCloudLocationListLocationsResponse = 0;
api.GoogleCloudLocationListLocationsResponse
buildGoogleCloudLocationListLocationsResponse() {
  final o = api.GoogleCloudLocationListLocationsResponse();
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    o.locations = buildUnnamed29();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
  return o;
}

void checkGoogleCloudLocationListLocationsResponse(
  api.GoogleCloudLocationListLocationsResponse o,
) {
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    checkUnnamed29(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed30() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed30(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed31() => {
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

void checkUnnamed31(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudLocationLocation = 0;
api.GoogleCloudLocationLocation buildGoogleCloudLocationLocation() {
  final o = api.GoogleCloudLocationLocation();
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed30();
    o.locationId = 'foo';
    o.metadata = buildUnnamed31();
    o.name = 'foo';
  }
  buildCounterGoogleCloudLocationLocation--;
  return o;
}

void checkGoogleCloudLocationLocation(api.GoogleCloudLocationLocation o) {
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed30(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed31(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudLocationLocation--;
}

core.List<api.GoogleIamV1AuditLogConfig> buildUnnamed32() => [
  buildGoogleIamV1AuditLogConfig(),
  buildGoogleIamV1AuditLogConfig(),
];

void checkUnnamed32(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
api.GoogleIamV1AuditConfig buildGoogleIamV1AuditConfig() {
  final o = api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed32();
    o.service = 'foo';
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

void checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed32(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditConfig--;
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1AuditLogConfig = 0;
api.GoogleIamV1AuditLogConfig buildGoogleIamV1AuditLogConfig() {
  final o = api.GoogleIamV1AuditLogConfig();
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed33();
    o.logType = 'foo';
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

void checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed33(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

core.List<core.String> buildUnnamed34() => ['foo', 'foo'];

void checkUnnamed34(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1Binding = 0;
api.GoogleIamV1Binding buildGoogleIamV1Binding() {
  final o = api.GoogleIamV1Binding();
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    o.condition = buildGoogleTypeExpr();
    o.members = buildUnnamed34();
    o.role = 'foo';
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

void checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkGoogleTypeExpr(o.condition!);
    checkUnnamed34(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1Binding--;
}

core.List<api.GoogleIamV1AuditConfig> buildUnnamed35() => [
  buildGoogleIamV1AuditConfig(),
  buildGoogleIamV1AuditConfig(),
];

void checkUnnamed35(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

core.List<api.GoogleIamV1Binding> buildUnnamed36() => [
  buildGoogleIamV1Binding(),
  buildGoogleIamV1Binding(),
];

void checkUnnamed36(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
api.GoogleIamV1Policy buildGoogleIamV1Policy() {
  final o = api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed35();
    o.bindings = buildUnnamed36();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

void checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed35(o.auditConfigs!);
    checkUnnamed36(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterGoogleIamV1Policy--;
}

core.int buildCounterGoogleIamV1SetIamPolicyRequest = 0;
api.GoogleIamV1SetIamPolicyRequest buildGoogleIamV1SetIamPolicyRequest() {
  final o = api.GoogleIamV1SetIamPolicyRequest();
  buildCounterGoogleIamV1SetIamPolicyRequest++;
  if (buildCounterGoogleIamV1SetIamPolicyRequest < 3) {
    o.policy = buildGoogleIamV1Policy();
    o.updateMask = 'foo';
  }
  buildCounterGoogleIamV1SetIamPolicyRequest--;
  return o;
}

void checkGoogleIamV1SetIamPolicyRequest(api.GoogleIamV1SetIamPolicyRequest o) {
  buildCounterGoogleIamV1SetIamPolicyRequest++;
  if (buildCounterGoogleIamV1SetIamPolicyRequest < 3) {
    checkGoogleIamV1Policy(o.policy!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1SetIamPolicyRequest--;
}

core.List<core.String> buildUnnamed37() => ['foo', 'foo'];

void checkUnnamed37(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1TestIamPermissionsRequest = 0;
api.GoogleIamV1TestIamPermissionsRequest
buildGoogleIamV1TestIamPermissionsRequest() {
  final o = api.GoogleIamV1TestIamPermissionsRequest();
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed37();
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
  return o;
}

void checkGoogleIamV1TestIamPermissionsRequest(
  api.GoogleIamV1TestIamPermissionsRequest o,
) {
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    checkUnnamed37(o.permissions!);
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed38() => ['foo', 'foo'];

void checkUnnamed38(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1TestIamPermissionsResponse = 0;
api.GoogleIamV1TestIamPermissionsResponse
buildGoogleIamV1TestIamPermissionsResponse() {
  final o = api.GoogleIamV1TestIamPermissionsResponse();
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed38();
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
  return o;
}

void checkGoogleIamV1TestIamPermissionsResponse(
  api.GoogleIamV1TestIamPermissionsResponse o,
) {
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    checkUnnamed38(o.permissions!);
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
}

core.int buildCounterGoogleLongrunningCancelOperationRequest = 0;
api.GoogleLongrunningCancelOperationRequest
buildGoogleLongrunningCancelOperationRequest() {
  final o = api.GoogleLongrunningCancelOperationRequest();
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
  return o;
}

void checkGoogleLongrunningCancelOperationRequest(
  api.GoogleLongrunningCancelOperationRequest o,
) {
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed39() => [
  buildGoogleLongrunningOperation(),
  buildGoogleLongrunningOperation(),
];

void checkUnnamed39(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
buildGoogleLongrunningListOperationsResponse() {
  final o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed39();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
  api.GoogleLongrunningListOperationsResponse o,
) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed39(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed40();
    o.name = 'foo';
    o.response = buildUnnamed41();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed40(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed41(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.Map<core.String, core.Object?> buildUnnamed42() => {
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

void checkUnnamed42(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o['x']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted11['bool'], unittest.equals(true));
  unittest.expect(casted11['string'], unittest.equals('foo'));
  var casted12 = (o['y']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted12['bool'], unittest.equals(true));
  unittest.expect(casted12['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed43() => [
  buildUnnamed42(),
  buildUnnamed42(),
];

void checkUnnamed43(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed42(o[0]);
  checkUnnamed42(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed43();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed43(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeExpr = 0;
api.GoogleTypeExpr buildGoogleTypeExpr() {
  final o = api.GoogleTypeExpr();
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleTypeExpr--;
  return o;
}

void checkGoogleTypeExpr(api.GoogleTypeExpr o) {
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expression!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterGoogleTypeExpr--;
}

core.List<api.AppGateway> buildUnnamed44() => [
  buildAppGateway(),
  buildAppGateway(),
];

void checkUnnamed44(core.List<api.AppGateway> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppGateway(o[0]);
  checkAppGateway(o[1]);
}

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAppGatewaysResponse = 0;
api.ListAppGatewaysResponse buildListAppGatewaysResponse() {
  final o = api.ListAppGatewaysResponse();
  buildCounterListAppGatewaysResponse++;
  if (buildCounterListAppGatewaysResponse < 3) {
    o.appGateways = buildUnnamed44();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed45();
  }
  buildCounterListAppGatewaysResponse--;
  return o;
}

void checkListAppGatewaysResponse(api.ListAppGatewaysResponse o) {
  buildCounterListAppGatewaysResponse++;
  if (buildCounterListAppGatewaysResponse < 3) {
    checkUnnamed44(o.appGateways!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed45(o.unreachable!);
  }
  buildCounterListAppGatewaysResponse--;
}

core.List<core.String> buildUnnamed46() => ['foo', 'foo'];

void checkUnnamed46(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AllocatedConnection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAllocatedConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AllocatedConnection.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAllocatedConnection(od);
    });
  });

  unittest.group('obj-schema-AppGateway', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppGateway();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppGateway.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppGateway(od);
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

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectionsV1AppConnection',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBeyondcorpAppconnectionsV1AppConnection();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectionsV1AppConnection.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectionsV1AppConnection(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectorsV1AppConnector',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBeyondcorpAppconnectorsV1AppConnector();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectorsV1AppConnector.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectorsV1AppConnector(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectorsV1ImageConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBeyondcorpAppconnectorsV1ImageConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudBeyondcorpAppconnectorsV1ImageConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectorsV1ImageConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectorsV1NotificationConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBeyondcorpAppconnectorsV1NotificationConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectorsV1NotificationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectorsV1NotificationConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBeyondcorpAppconnectorsV1ResourceInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectorsV1ResourceInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1Application',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBeyondcorpSecuritygatewaysV1Application();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1Application.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1Application(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamExternal',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamExternal();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamExternal.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamExternal(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamNetwork',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamNetwork();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamNetwork.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamNetwork(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeaders',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeaders();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeaders.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeaders(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedDeviceInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedDeviceInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedDeviceInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedDeviceInfo(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedGroupInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedGroupInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedGroupInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedGroupInfo(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedUserInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedUserInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedUserInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedUserInfo(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1EgressPolicy',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBeyondcorpSecuritygatewaysV1EgressPolicy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1EgressPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1EgressPolicy(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1Endpoint',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBeyondcorpSecuritygatewaysV1Endpoint();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudBeyondcorpSecuritygatewaysV1Endpoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1Endpoint(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1Hub', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudBeyondcorpSecuritygatewaysV1Hub();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudBeyondcorpSecuritygatewaysV1Hub.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudBeyondcorpSecuritygatewaysV1Hub(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1InternetGateway',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBeyondcorpSecuritygatewaysV1InternetGateway();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1InternetGateway.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1InternetGateway(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1ListApplicationsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSecuritygatewaysV1ListApplicationsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1ListApplicationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1ListApplicationsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1ListSecurityGatewaysResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSecuritygatewaysV1ListSecurityGatewaysResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1ListSecurityGatewaysResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1ListSecurityGatewaysResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscovery',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscovery();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscovery.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscovery(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGateway',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGateway();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGateway.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGateway(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGatewayOperationDescriptor',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGatewayOperationDescriptor();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGatewayOperationDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGatewayOperationDescriptor(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudLocationListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudLocationListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudLocationListLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudLocationListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudLocationLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudLocationLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudLocationLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudLocationLocation(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1AuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1AuditConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1AuditConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1AuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1AuditLogConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1AuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Binding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Binding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1Binding(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Policy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Policy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1Policy(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1SetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1SetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1SetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1TestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1TestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1TestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1TestIamPermissionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1TestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningCancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningCancelOperationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningListOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeExpr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeExpr.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeExpr(od);
    });
  });

  unittest.group('obj-schema-ListAppGatewaysResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAppGatewaysResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAppGatewaysResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAppGatewaysResponse(od);
    });
  });

  unittest.group('resource-OrganizationsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).organizations.locations.operations;
      final arg_request = buildGoogleLongrunningCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleLongrunningCancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleLongrunningCancelOperationRequest(obj);

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
      final res = api.BeyondCorpApi(mock).organizations.locations.operations;
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
      final res = api.BeyondCorpApi(mock).organizations.locations.operations;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).organizations.locations.operations;
      final arg_name = 'foo';
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
            buildGoogleLongrunningListOperationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningListOperationsResponse(
        response as api.GoogleLongrunningListOperationsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations;
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
          final resp = convert.json.encode(buildGoogleCloudLocationLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudLocationLocation(
        response as api.GoogleCloudLocationLocation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed46();
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
          final resp = convert.json.encode(
            buildGoogleCloudLocationListLocationsResponse(),
          );
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
      checkGoogleCloudLocationListLocationsResponse(
        response as api.GoogleCloudLocationListLocationsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAppConnectionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appConnections;
      final arg_request =
          buildGoogleCloudBeyondcorpAppconnectionsV1AppConnection();
      final arg_parent = 'foo';
      final arg_appConnectionId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudBeyondcorpAppconnectionsV1AppConnection.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudBeyondcorpAppconnectionsV1AppConnection(obj);

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
            queryMap['appConnectionId']!.first,
            unittest.equals(arg_appConnectionId),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        appConnectionId: arg_appConnectionId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appConnections;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appConnections;
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
          final resp = convert.json.encode(
            buildGoogleCloudBeyondcorpAppconnectionsV1AppConnection(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudBeyondcorpAppconnectionsV1AppConnection(
        response as api.GoogleCloudBeyondcorpAppconnectionsV1AppConnection,
      );
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appConnections;
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
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appConnections;
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
            buildGoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse(),
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
      checkGoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse(
        response
            as api.GoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appConnections;
      final arg_request =
          buildGoogleCloudBeyondcorpAppconnectionsV1AppConnection();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudBeyondcorpAppconnectionsV1AppConnection.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudBeyondcorpAppconnectionsV1AppConnection(obj);

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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--resolve', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appConnections;
      final arg_parent = 'foo';
      final arg_appConnectorId = 'foo';
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
            queryMap['appConnectorId']!.first,
            unittest.equals(arg_appConnectorId),
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
            buildGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.resolve(
        arg_parent,
        appConnectorId: arg_appConnectorId,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse(
        response
            as api.GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appConnections;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1SetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appConnections;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1TestIamPermissionsRequest(obj);

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
          final resp = convert.json.encode(
            buildGoogleIamV1TestIamPermissionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1TestIamPermissionsResponse(
        response as api.GoogleIamV1TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAppConnectorsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appConnectors;
      final arg_request =
          buildGoogleCloudBeyondcorpAppconnectorsV1AppConnector();
      final arg_parent = 'foo';
      final arg_appConnectorId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudBeyondcorpAppconnectorsV1AppConnector.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudBeyondcorpAppconnectorsV1AppConnector(obj);

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
            queryMap['appConnectorId']!.first,
            unittest.equals(arg_appConnectorId),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        appConnectorId: arg_appConnectorId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appConnectors;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appConnectors;
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
          final resp = convert.json.encode(
            buildGoogleCloudBeyondcorpAppconnectorsV1AppConnector(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudBeyondcorpAppconnectorsV1AppConnector(
        response as api.GoogleCloudBeyondcorpAppconnectorsV1AppConnector,
      );
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appConnectors;
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
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appConnectors;
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
            buildGoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse(),
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
      checkGoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse(
        response
            as api.GoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appConnectors;
      final arg_request =
          buildGoogleCloudBeyondcorpAppconnectorsV1AppConnector();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudBeyondcorpAppconnectorsV1AppConnector.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudBeyondcorpAppconnectorsV1AppConnector(obj);

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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--reportStatus', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appConnectors;
      final arg_request =
          buildGoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest();
      final arg_appConnector = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest(obj);

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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.reportStatus(
        arg_request,
        arg_appConnector,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--resolveInstanceConfig', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appConnectors;
      final arg_appConnector = 'foo';
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
          final resp = convert.json.encode(
            buildGoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.resolveInstanceConfig(
        arg_appConnector,
        $fields: arg_$fields,
      );
      checkGoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse(
        response
            as api.GoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appConnectors;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1SetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appConnectors;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1TestIamPermissionsRequest(obj);

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
          final resp = convert.json.encode(
            buildGoogleIamV1TestIamPermissionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1TestIamPermissionsResponse(
        response as api.GoogleIamV1TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAppGatewaysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appGateways;
      final arg_request = buildAppGateway();
      final arg_parent = 'foo';
      final arg_appGatewayId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AppGateway.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAppGateway(obj);

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
            queryMap['appGatewayId']!.first,
            unittest.equals(arg_appGatewayId),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        appGatewayId: arg_appGatewayId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appGateways;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appGateways;
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
          final resp = convert.json.encode(buildAppGateway());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAppGateway(response as api.AppGateway);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appGateways;
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
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appGateways;
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
          final resp = convert.json.encode(buildListAppGatewaysResponse());
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
      checkListAppGatewaysResponse(response as api.ListAppGatewaysResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appGateways;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1SetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appGateways;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1TestIamPermissionsRequest(obj);

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
          final resp = convert.json.encode(
            buildGoogleIamV1TestIamPermissionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1TestIamPermissionsResponse(
        response as api.GoogleIamV1TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.operations;
      final arg_request = buildGoogleLongrunningCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleLongrunningCancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleLongrunningCancelOperationRequest(obj);

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
      final res = api.BeyondCorpApi(mock).projects.locations.operations;
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
      final res = api.BeyondCorpApi(mock).projects.locations.operations;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.operations;
      final arg_name = 'foo';
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
            buildGoogleLongrunningListOperationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningListOperationsResponse(
        response as api.GoogleLongrunningListOperationsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsSecurityGatewaysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.securityGateways;
      final arg_request =
          buildGoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_securityGatewayId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway(obj);

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
            queryMap['securityGatewayId']!.first,
            unittest.equals(arg_securityGatewayId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        securityGatewayId: arg_securityGatewayId,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.securityGateways;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.securityGateways;
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
          final resp = convert.json.encode(
            buildGoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway(
        response as api.GoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway,
      );
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.securityGateways;
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
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.securityGateways;
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
            buildGoogleCloudBeyondcorpSecuritygatewaysV1ListSecurityGatewaysResponse(),
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
      checkGoogleCloudBeyondcorpSecuritygatewaysV1ListSecurityGatewaysResponse(
        response
            as api.GoogleCloudBeyondcorpSecuritygatewaysV1ListSecurityGatewaysResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.securityGateways;
      final arg_request =
          buildGoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway(obj);

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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
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
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.securityGateways;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1SetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.securityGateways;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1TestIamPermissionsRequest(obj);

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
          final resp = convert.json.encode(
            buildGoogleIamV1TestIamPermissionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1TestIamPermissionsResponse(
        response as api.GoogleIamV1TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsSecurityGatewaysApplicationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.BeyondCorpApi(
            mock,
          ).projects.locations.securityGateways.applications;
      final arg_request =
          buildGoogleCloudBeyondcorpSecuritygatewaysV1Application();
      final arg_parent = 'foo';
      final arg_applicationId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudBeyondcorpSecuritygatewaysV1Application.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudBeyondcorpSecuritygatewaysV1Application(obj);

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
            queryMap['applicationId']!.first,
            unittest.equals(arg_applicationId),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        applicationId: arg_applicationId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.BeyondCorpApi(
            mock,
          ).projects.locations.securityGateways.applications;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.BeyondCorpApi(
            mock,
          ).projects.locations.securityGateways.applications;
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
          final resp = convert.json.encode(
            buildGoogleCloudBeyondcorpSecuritygatewaysV1Application(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudBeyondcorpSecuritygatewaysV1Application(
        response as api.GoogleCloudBeyondcorpSecuritygatewaysV1Application,
      );
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.BeyondCorpApi(
            mock,
          ).projects.locations.securityGateways.applications;
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
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.BeyondCorpApi(
            mock,
          ).projects.locations.securityGateways.applications;
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
            buildGoogleCloudBeyondcorpSecuritygatewaysV1ListApplicationsResponse(),
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
      checkGoogleCloudBeyondcorpSecuritygatewaysV1ListApplicationsResponse(
        response
            as api.GoogleCloudBeyondcorpSecuritygatewaysV1ListApplicationsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.BeyondCorpApi(
            mock,
          ).projects.locations.securityGateways.applications;
      final arg_request =
          buildGoogleCloudBeyondcorpSecuritygatewaysV1Application();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudBeyondcorpSecuritygatewaysV1Application.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudBeyondcorpSecuritygatewaysV1Application(obj);

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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
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
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.BeyondCorpApi(
            mock,
          ).projects.locations.securityGateways.applications;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1SetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildGoogleIamV1Policy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.BeyondCorpApi(
            mock,
          ).projects.locations.securityGateways.applications;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleIamV1TestIamPermissionsRequest(obj);

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
          final resp = convert.json.encode(
            buildGoogleIamV1TestIamPermissionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkGoogleIamV1TestIamPermissionsResponse(
        response as api.GoogleIamV1TestIamPermissionsResponse,
      );
    });
  });
}
