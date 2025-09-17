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

import 'package:googleapis/beyondcorp/v1alpha.dart' as api;
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

core.int buildCounterApplicationEndpoint = 0;
api.ApplicationEndpoint buildApplicationEndpoint() {
  final o = api.ApplicationEndpoint();
  buildCounterApplicationEndpoint++;
  if (buildCounterApplicationEndpoint < 3) {
    o.host = 'foo';
    o.port = 42;
  }
  buildCounterApplicationEndpoint--;
  return o;
}

void checkApplicationEndpoint(api.ApplicationEndpoint o) {
  buildCounterApplicationEndpoint++;
  if (buildCounterApplicationEndpoint < 3) {
    unittest.expect(o.host!, unittest.equals('foo'));
    unittest.expect(o.port!, unittest.equals(42));
  }
  buildCounterApplicationEndpoint--;
}

core.int buildCounterCloudPubSubNotificationConfig = 0;
api.CloudPubSubNotificationConfig buildCloudPubSubNotificationConfig() {
  final o = api.CloudPubSubNotificationConfig();
  buildCounterCloudPubSubNotificationConfig++;
  if (buildCounterCloudPubSubNotificationConfig < 3) {
    o.pubsubSubscription = 'foo';
  }
  buildCounterCloudPubSubNotificationConfig--;
  return o;
}

void checkCloudPubSubNotificationConfig(api.CloudPubSubNotificationConfig o) {
  buildCounterCloudPubSubNotificationConfig++;
  if (buildCounterCloudPubSubNotificationConfig < 3) {
    unittest.expect(o.pubsubSubscription!, unittest.equals('foo'));
  }
  buildCounterCloudPubSubNotificationConfig--;
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

core.int buildCounterConnection = 0;
api.Connection buildConnection() {
  final o = api.Connection();
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    o.applicationEndpoint = buildApplicationEndpoint();
    o.connectors = buildUnnamed2();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.gateway = buildGateway();
    o.labels = buildUnnamed3();
    o.name = 'foo';
    o.state = 'foo';
    o.type = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterConnection--;
  return o;
}

void checkConnection(api.Connection o) {
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    checkApplicationEndpoint(o.applicationEndpoint!);
    checkUnnamed2(o.connectors!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGateway(o.gateway!);
    checkUnnamed3(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterConnection--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterConnectionDetails = 0;
api.ConnectionDetails buildConnectionDetails() {
  final o = api.ConnectionDetails();
  buildCounterConnectionDetails++;
  if (buildCounterConnectionDetails < 3) {
    o.connection = buildConnection();
    o.recentMigVms = buildUnnamed4();
  }
  buildCounterConnectionDetails--;
  return o;
}

void checkConnectionDetails(api.ConnectionDetails o) {
  buildCounterConnectionDetails++;
  if (buildCounterConnectionDetails < 3) {
    checkConnection(o.connection!);
    checkUnnamed4(o.recentMigVms!);
  }
  buildCounterConnectionDetails--;
}

core.Map<core.String, core.String> buildUnnamed5() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed5(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterConnector = 0;
api.Connector buildConnector() {
  final o = api.Connector();
  buildCounterConnector++;
  if (buildCounterConnector < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed5();
    o.name = 'foo';
    o.principalInfo = buildPrincipalInfo();
    o.resourceInfo = buildResourceInfo();
    o.state = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterConnector--;
  return o;
}

void checkConnector(api.Connector o) {
  buildCounterConnector++;
  if (buildCounterConnector < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed5(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPrincipalInfo(o.principalInfo!);
    checkResourceInfo(o.resourceInfo!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterConnector--;
}

core.Map<core.String, core.Object?> buildUnnamed6() => {
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

void checkUnnamed6(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterConnectorInstanceConfig = 0;
api.ConnectorInstanceConfig buildConnectorInstanceConfig() {
  final o = api.ConnectorInstanceConfig();
  buildCounterConnectorInstanceConfig++;
  if (buildCounterConnectorInstanceConfig < 3) {
    o.imageConfig = buildImageConfig();
    o.instanceConfig = buildUnnamed6();
    o.notificationConfig = buildNotificationConfig();
    o.sequenceNumber = 'foo';
  }
  buildCounterConnectorInstanceConfig--;
  return o;
}

void checkConnectorInstanceConfig(api.ConnectorInstanceConfig o) {
  buildCounterConnectorInstanceConfig++;
  if (buildCounterConnectorInstanceConfig < 3) {
    checkImageConfig(o.imageConfig!);
    checkUnnamed6(o.instanceConfig!);
    checkNotificationConfig(o.notificationConfig!);
    unittest.expect(o.sequenceNumber!, unittest.equals('foo'));
  }
  buildCounterConnectorInstanceConfig--;
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

core.int buildCounterGateway = 0;
api.Gateway buildGateway() {
  final o = api.Gateway();
  buildCounterGateway++;
  if (buildCounterGateway < 3) {
    o.type = 'foo';
    o.uri = 'foo';
    o.userPort = 42;
  }
  buildCounterGateway--;
  return o;
}

void checkGateway(api.Gateway o) {
  buildCounterGateway++;
  if (buildCounterGateway < 3) {
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
    unittest.expect(o.userPort!, unittest.equals(42));
  }
  buildCounterGateway--;
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed8() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed8(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection =
    0;
api.GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection
buildGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection() {
  final o = api.GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection();
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection < 3) {
    o.applicationEndpoint =
        buildGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint();
    o.connectors = buildUnnamed7();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.gateway =
        buildGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway();
    o.labels = buildUnnamed8();
    o.name = 'foo';
    o.satisfiesPzi = true;
    o.satisfiesPzs = true;
    o.state = 'foo';
    o.type = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection(
  api.GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection < 3) {
    checkGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint(
      o.applicationEndpoint!,
    );
    checkUnnamed7(o.connectors!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway(
      o.gateway!,
    );
    checkUnnamed8(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.satisfiesPzi!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection--;
}

core.int
buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint =
    0;
api.GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint
buildGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint() {
  final o =
      api.GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint();
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint <
      3) {
    o.host = 'foo';
    o.port = 42;
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint--;
  return o;
}

void
checkGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint(
  api.GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint
  o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint <
      3) {
    unittest.expect(o.host!, unittest.equals('foo'));
    unittest.expect(o.port!, unittest.equals(42));
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint--;
}

core.int
buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway = 0;
api.GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway
buildGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway() {
  final o =
      api.GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway();
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway <
      3) {
    o.appGateway = 'foo';
    o.ingressPort = 42;
    o.l7psc = 'foo';
    o.type = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway(
  api.GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway <
      3) {
    unittest.expect(o.appGateway!, unittest.equals('foo'));
    unittest.expect(o.ingressPort!, unittest.equals(42));
    unittest.expect(o.l7psc!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway--;
}

core.List<api.GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection>
buildUnnamed9() => [
  buildGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection(),
  buildGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection(),
];

void checkUnnamed9(
  core.List<api.GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection(o[0]);
  checkGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection(o[1]);
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse =
    0;
api.GoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse
buildGoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse() {
  final o =
      api.GoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse();
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse <
      3) {
    o.appConnections = buildUnnamed9();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed10();
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse(
  api.GoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse <
      3) {
    checkUnnamed9(o.appConnections!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed10(o.unreachable!);
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse--;
}

core.List<
  api.GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails
>
buildUnnamed11() => [
  buildGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails(),
  buildGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails(),
];

void checkUnnamed11(
  core.List<
    api.GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails(
    o[0],
  );
  checkGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails(
    o[1],
  );
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse =
    0;
api.GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse
buildGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse() {
  final o =
      api.GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse();
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse <
      3) {
    o.appConnectionDetails = buildUnnamed11();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed12();
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse--;
  return o;
}

void
checkGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse(
  api.GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse <
      3) {
    checkUnnamed11(o.appConnectionDetails!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed12(o.unreachable!);
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse--;
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails =
    0;
api.GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails
buildGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails() {
  final o =
      api.GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails();
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails <
      3) {
    o.appConnection =
        buildGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection();
    o.recentMigVms = buildUnnamed13();
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails--;
  return o;
}

void
checkGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails(
  api.GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails
  o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails <
      3) {
    checkGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection(
      o.appConnection!,
    );
    checkUnnamed13(o.recentMigVms!);
  }
  buildCounterGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails--;
}

core.Map<core.String, core.String> buildUnnamed14() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed14(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector = 0;
api.GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector
buildGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector() {
  final o = api.GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector();
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed14();
    o.name = 'foo';
    o.principalInfo =
        buildGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo();
    o.resourceInfo =
        buildGoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo();
    o.state = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector(
  api.GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed14(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo(
      o.principalInfo!,
    );
    checkGoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo(o.resourceInfo!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector--;
}

core.Map<core.String, core.Object?> buildUnnamed15() => {
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

void checkUnnamed15(core.Map<core.String, core.Object?> o) {
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

core.int
buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig =
    0;
api.GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig
buildGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig() {
  final o =
      api.GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig();
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig <
      3) {
    o.imageConfig = buildGoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig();
    o.instanceConfig = buildUnnamed15();
    o.notificationConfig =
        buildGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig();
    o.sequenceNumber = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig(
  api.GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig <
      3) {
    checkGoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig(o.imageConfig!);
    checkUnnamed15(o.instanceConfig!);
    checkGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig(
      o.notificationConfig!,
    );
    unittest.expect(o.sequenceNumber!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig--;
}

core.int
buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo =
    0;
api.GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo
buildGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo() {
  final o =
      api.GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo();
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo <
      3) {
    o.serviceAccount =
        buildGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount();
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo(
  api.GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo <
      3) {
    checkGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount(
      o.serviceAccount!,
    );
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo--;
}

core.int
buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount =
    0;
api.GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount
buildGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount() {
  final o =
      api.GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount();
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount <
      3) {
    o.email = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount--;
  return o;
}

void
checkGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount(
  api.GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount
  o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount <
      3) {
    unittest.expect(o.email!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount--;
}

core.int buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig = 0;
api.GoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig
buildGoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig() {
  final o = api.GoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig();
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig < 3) {
    o.stableImage = 'foo';
    o.targetImage = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig(
  api.GoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig < 3) {
    unittest.expect(o.stableImage!, unittest.equals('foo'));
    unittest.expect(o.targetImage!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig--;
}

core.List<api.GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector>
buildUnnamed16() => [
  buildGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector(),
  buildGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector(),
];

void checkUnnamed16(
  core.List<api.GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector(o[0]);
  checkGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector(o[1]);
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse =
    0;
api.GoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse
buildGoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse() {
  final o =
      api.GoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse();
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse <
      3) {
    o.appConnectors = buildUnnamed16();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed17();
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse(
  api.GoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse <
      3) {
    checkUnnamed16(o.appConnectors!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed17(o.unreachable!);
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse--;
}

core.int
buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig = 0;
api.GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig
buildGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig() {
  final o = api.GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig();
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig <
      3) {
    o.pubsubNotification =
        buildGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig();
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig(
  api.GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig <
      3) {
    checkGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig(
      o.pubsubNotification!,
    );
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig--;
}

core.int
buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig =
    0;
api.GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig
buildGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig() {
  final o =
      api.GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig();
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig <
      3) {
    o.pubsubSubscription = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig--;
  return o;
}

void
checkGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig(
  api.GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig
  o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig <
      3) {
    unittest.expect(o.pubsubSubscription!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig--;
}

core.int
buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest = 0;
api.GoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest
buildGoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest() {
  final o = api.GoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest();
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest <
      3) {
    o.requestId = 'foo';
    o.resourceInfo =
        buildGoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo();
    o.validateOnly = true;
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest(
  api.GoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest <
      3) {
    unittest.expect(o.requestId!, unittest.equals('foo'));
    checkGoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo(o.resourceInfo!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest--;
}

core.int
buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse =
    0;
api.GoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse
buildGoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse() {
  final o =
      api.GoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse();
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse <
      3) {
    o.instanceConfig =
        buildGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig();
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse--;
  return o;
}

void
checkGoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse(
  api.GoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse <
      3) {
    checkGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig(
      o.instanceConfig!,
    );
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed18() => {
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

void checkUnnamed18(core.Map<core.String, core.Object?> o) {
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

core.List<api.GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo>
buildUnnamed19() => [
  buildGoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo(),
  buildGoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo(),
];

void checkUnnamed19(
  core.List<api.GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo(o[0]);
  checkGoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo(o[1]);
}

core.int buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo = 0;
api.GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo
buildGoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo() {
  final o = api.GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo();
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo < 3) {
    o.id = 'foo';
    o.resource = buildUnnamed18();
    o.status = 'foo';
    o.sub = buildUnnamed19();
    o.time = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo--;
  return o;
}

void checkGoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo(
  api.GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo o,
) {
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo++;
  if (buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed18(o.resource!);
    unittest.expect(o.status!, unittest.equals('foo'));
    checkUnnamed19(o.sub!);
    unittest.expect(o.time!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo--;
}

core.int buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaGroup = 0;
api.GoogleCloudBeyondcorpPartnerservicesV1alphaGroup
buildGoogleCloudBeyondcorpPartnerservicesV1alphaGroup() {
  final o = api.GoogleCloudBeyondcorpPartnerservicesV1alphaGroup();
  buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaGroup++;
  if (buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaGroup < 3) {
    o.email = 'foo';
    o.id = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaGroup--;
  return o;
}

void checkGoogleCloudBeyondcorpPartnerservicesV1alphaGroup(
  api.GoogleCloudBeyondcorpPartnerservicesV1alphaGroup o,
) {
  buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaGroup++;
  if (buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaGroup < 3) {
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaGroup--;
}

core.List<api.GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant>
buildUnnamed20() => [
  buildGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant(),
  buildGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant(),
];

void checkUnnamed20(
  core.List<api.GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant(o[0]);
  checkGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant(o[1]);
}

core.int
buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse =
    0;
api.GoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse
buildGoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse() {
  final o =
      api.GoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse();
  buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse++;
  if (buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.partnerTenants = buildUnnamed20();
  }
  buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse--;
  return o;
}

void checkGoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse(
  api.GoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse o,
) {
  buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse++;
  if (buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed20(o.partnerTenants!);
  }
  buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse--;
}

core.int
buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata = 0;
api.GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata
buildGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata() {
  final o = api.GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata();
  buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata++;
  if (buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata <
      3) {
    o.internalTenantId = 'foo';
    o.partnerTenantId = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata--;
  return o;
}

void checkGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata(
  api.GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata o,
) {
  buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata++;
  if (buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata <
      3) {
    unittest.expect(o.internalTenantId!, unittest.equals('foo'));
    unittest.expect(o.partnerTenantId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata--;
}

core.int buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant =
    0;
api.GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant
buildGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant() {
  final o = api.GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant();
  buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant++;
  if (buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant <
      3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.group = buildGoogleCloudBeyondcorpPartnerservicesV1alphaGroup();
    o.name = 'foo';
    o.partnerMetadata =
        buildGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant--;
  return o;
}

void checkGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant(
  api.GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant o,
) {
  buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant++;
  if (buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant <
      3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudBeyondcorpPartnerservicesV1alphaGroup(o.group!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata(
      o.partnerMetadata!,
    );
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant--;
}

core.int
buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig = 0;
api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig
buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig() {
  final o = api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig();
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig <
      3) {
    o.aggregation = 'foo';
    o.customGrouping =
        buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping();
    o.endTime = 'foo';
    o.fieldFilter = 'foo';
    o.group = 'foo';
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig--;
  return o;
}

void checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig(
  api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig o,
) {
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig <
      3) {
    unittest.expect(o.aggregation!, unittest.equals('foo'));
    checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping(
      o.customGrouping!,
    );
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.fieldFilter!, unittest.equals('foo'));
    unittest.expect(o.group!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig--;
}

core.List<api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow>
buildUnnamed21() => [
  buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow(),
  buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow(),
];

void checkUnnamed21(
  core.List<api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow(o[0]);
  checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow(o[1]);
}

core.int
buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse =
    0;
api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse
buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse() {
  final o =
      api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse();
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse <
      3) {
    o.appliedConfig =
        buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig();
    o.nextPageToken = 'foo';
    o.rows = buildUnnamed21();
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse--;
  return o;
}

void
checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse(
  api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse
  o,
) {
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse <
      3) {
    checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig(
      o.appliedConfig!,
    );
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed21(o.rows!);
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse--;
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping = 0;
api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping
buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping() {
  final o =
      api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping();
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping <
      3) {
    o.fieldFilter = 'foo';
    o.groupFields = buildUnnamed22();
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping--;
  return o;
}

void checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping(
  api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping o,
) {
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping <
      3) {
    unittest.expect(o.fieldFilter!, unittest.equals('foo'));
    checkUnnamed22(o.groupFields!);
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping--;
}

core.List<api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow>
buildUnnamed23() => [
  buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow(),
  buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow(),
];

void checkUnnamed23(
  core.List<api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow(o[0]);
  checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow(o[1]);
}

core.int buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight =
    0;
api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight
buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight() {
  final o = api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight();
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight < 3) {
    o.appliedConfig =
        buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig();
    o.metadata =
        buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata();
    o.name = 'foo';
    o.rows = buildUnnamed23();
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight--;
  return o;
}

void checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight(
  api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight o,
) {
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight < 3) {
    checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig(
      o.appliedConfig!,
    );
    checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata(
      o.metadata!,
    );
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed23(o.rows!);
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight--;
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<
  api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField
>
buildUnnamed25() => [
  buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField(),
  buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField(),
];

void checkUnnamed25(
  core.List<
    api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField(
    o[0],
  );
  checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField(
    o[1],
  );
}

core.List<core.String> buildUnnamed26() => ['foo', 'foo'];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata = 0;
api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata
buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata() {
  final o =
      api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata();
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata <
      3) {
    o.aggregations = buildUnnamed24();
    o.category = 'foo';
    o.displayName = 'foo';
    o.fields = buildUnnamed25();
    o.groups = buildUnnamed26();
    o.subCategory = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata--;
  return o;
}

void checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata(
  api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata o,
) {
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata <
      3) {
    checkUnnamed24(o.aggregations!);
    unittest.expect(o.category!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed25(o.fields!);
    checkUnnamed26(o.groups!);
    unittest.expect(o.subCategory!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata--;
}

core.int
buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField =
    0;
api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField
buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField() {
  final o =
      api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField();
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField <
      3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.filterAlias = 'foo';
    o.filterable = true;
    o.groupable = true;
    o.id = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField--;
  return o;
}

void checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField(
  api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField o,
) {
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField <
      3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.filterAlias!, unittest.equals('foo'));
    unittest.expect(o.filterable!, unittest.isTrue);
    unittest.expect(o.groupable!, unittest.isTrue);
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField--;
}

core.List<api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight>
buildUnnamed27() => [
  buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight(),
  buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight(),
];

void checkUnnamed27(
  core.List<api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight(o[0]);
  checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight(o[1]);
}

core.int
buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse =
    0;
api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse
buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse() {
  final o =
      api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse();
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse <
      3) {
    o.insights = buildUnnamed27();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse--;
  return o;
}

void checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse(
  api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse o,
) {
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse <
      3) {
    checkUnnamed27(o.insights!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse--;
}

core.List<api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal>
buildUnnamed28() => [
  buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal(),
  buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal(),
];

void checkUnnamed28(
  core.List<api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal(o[0]);
  checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal(o[1]);
}

core.int buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow = 0;
api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow
buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow() {
  final o = api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow();
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow < 3) {
    o.fieldValues = buildUnnamed28();
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow--;
  return o;
}

void checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow(
  api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow o,
) {
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow < 3) {
    checkUnnamed28(o.fieldValues!);
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow--;
}

core.int
buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal = 0;
api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal
buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal() {
  final o = api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal();
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal <
      3) {
    o.displayName = 'foo';
    o.filterAlias = 'foo';
    o.id = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal--;
  return o;
}

void checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal(
  api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal o,
) {
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal <
      3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.filterAlias!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal--;
}

core.int
buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse =
    0;
api.GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse
buildGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse() {
  final o =
      api.GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse();
  buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse <
      3) {
    o.effectiveCancellationTime = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse--;
  return o;
}

void
checkGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse(
  api.GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse
  o,
) {
  buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse <
      3) {
    unittest.expect(o.effectiveCancellationTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse--;
}

core.List<api.GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription>
buildUnnamed29() => [
  buildGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription(),
  buildGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription(),
];

void checkUnnamed29(
  core.List<
    api.GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription(o[0]);
  checkGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription(o[1]);
}

core.int
buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse =
    0;
api.GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse
buildGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse() {
  final o =
      api.GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse();
  buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.subscriptions = buildUnnamed29();
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse--;
  return o;
}

void
checkGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse(
  api.GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse
  o,
) {
  buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed29(o.subscriptions!);
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse--;
}

core.int
buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse =
    0;
api.GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse
buildGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse() {
  final o =
      api.GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse();
  buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse <
      3) {}
  buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse--;
  return o;
}

void
checkGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse(
  api.GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse
  o,
) {
  buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse <
      3) {}
  buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse--;
}

core.int
buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription =
    0;
api.GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription
buildGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription() {
  final o =
      api.GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription();
  buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription <
      3) {
    o.autoRenewEnabled = true;
    o.billingAccount = 'foo';
    o.createTime = 'foo';
    o.csgCustomer = true;
    o.endTime = 'foo';
    o.name = 'foo';
    o.seatCount = 'foo';
    o.sku = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
    o.subscriberType = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription--;
  return o;
}

void checkGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription(
  api.GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription o,
) {
  buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription++;
  if (buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription <
      3) {
    unittest.expect(o.autoRenewEnabled!, unittest.isTrue);
    unittest.expect(o.billingAccount!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.csgCustomer!, unittest.isTrue);
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.seatCount!, unittest.equals('foo'));
    unittest.expect(o.sku!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.subscriberType!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription--;
}

core.List<api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher>
buildUnnamed30() => [
  buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher(),
  buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher(),
];

void checkUnnamed30(
  core.List<api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher(o[0]);
  checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher(o[1]);
}

core.List<api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream>
buildUnnamed31() => [
  buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream(),
  buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream(),
];

void checkUnnamed31(
  core.List<api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream(o[0]);
  checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream(o[1]);
}

core.int buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication =
    0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication
buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication() {
  final o = api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.endpointMatchers = buildUnnamed30();
    o.name = 'foo';
    o.updateTime = 'foo';
    o.upstreams = buildUnnamed31();
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed30(o.endpointMatchers!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkUnnamed31(o.upstreams!);
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication--;
}

core.int
buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream = 0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream
buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream() {
  final o =
      api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream <
      3) {
    o.egressPolicy =
        buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaEgressPolicy();
    o.network =
        buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstreamNetwork();
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream <
      3) {
    checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaEgressPolicy(
      o.egressPolicy!,
    );
    checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstreamNetwork(
      o.network!,
    );
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream--;
}

core.int
buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstreamNetwork =
    0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstreamNetwork
buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstreamNetwork() {
  final o =
      api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstreamNetwork();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstreamNetwork++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstreamNetwork <
      3) {
    o.name = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstreamNetwork--;
  return o;
}

void
checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstreamNetwork(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstreamNetwork o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstreamNetwork++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstreamNetwork <
      3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstreamNetwork--;
}

core.List<core.String> buildUnnamed32() => ['foo', 'foo'];

void checkUnnamed32(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaEgressPolicy =
    0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaEgressPolicy
buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaEgressPolicy() {
  final o = api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaEgressPolicy();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaEgressPolicy++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaEgressPolicy <
      3) {
    o.regions = buildUnnamed32();
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaEgressPolicy--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaEgressPolicy(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaEgressPolicy o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaEgressPolicy++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaEgressPolicy <
      3) {
    checkUnnamed32(o.regions!);
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaEgressPolicy--;
}

core.List<core.int> buildUnnamed33() => [42, 42];

void checkUnnamed33(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int
buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher = 0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher
buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher() {
  final o = api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher <
      3) {
    o.hostname = 'foo';
    o.ports = buildUnnamed33();
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher <
      3) {
    unittest.expect(o.hostname!, unittest.equals('foo'));
    checkUnnamed33(o.ports!);
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher--;
}

core.int buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaHub = 0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaHub
buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaHub() {
  final o = api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaHub();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaHub++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaHub < 3) {
    o.internetGateway =
        buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaInternetGateway();
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaHub--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaHub(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaHub o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaHub++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaHub < 3) {
    checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaInternetGateway(
      o.internetGateway!,
    );
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaHub--;
}

core.List<core.String> buildUnnamed34() => ['foo', 'foo'];

void checkUnnamed34(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaInternetGateway = 0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaInternetGateway
buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaInternetGateway() {
  final o = api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaInternetGateway();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaInternetGateway++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaInternetGateway <
      3) {
    o.assignedIps = buildUnnamed34();
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaInternetGateway--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaInternetGateway(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaInternetGateway o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaInternetGateway++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaInternetGateway <
      3) {
    checkUnnamed34(o.assignedIps!);
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaInternetGateway--;
}

core.List<api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication>
buildUnnamed35() => [
  buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication(),
  buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication(),
];

void checkUnnamed35(
  core.List<api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication(o[0]);
  checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication(o[1]);
}

core.List<core.String> buildUnnamed36() => ['foo', 'foo'];

void checkUnnamed36(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse =
    0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse
buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse() {
  final o =
      api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse <
      3) {
    o.applications = buildUnnamed35();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed36();
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse <
      3) {
    checkUnnamed35(o.applications!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed36(o.unreachable!);
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse--;
}

core.List<api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway>
buildUnnamed37() => [
  buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway(),
  buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway(),
];

void checkUnnamed37(
  core.List<api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway(o[0]);
  checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway(o[1]);
}

core.List<core.String> buildUnnamed38() => ['foo', 'foo'];

void checkUnnamed38(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse =
    0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse
buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse() {
  final o =
      api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse <
      3) {
    o.nextPageToken = 'foo';
    o.securityGateways = buildUnnamed37();
    o.unreachable = buildUnnamed38();
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse--;
  return o;
}

void
checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse
  o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed37(o.securityGateways!);
    checkUnnamed38(o.unreachable!);
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse--;
}

core.List<core.String> buildUnnamed39() => ['foo', 'foo'];

void checkUnnamed39(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaHub>
buildUnnamed40() => {
  'x': buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaHub(),
  'y': buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaHub(),
};

void checkUnnamed40(
  core.Map<core.String, api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaHub> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaHub(o['x']!);
  checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaHub(o['y']!);
}

core.int
buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway = 0;
api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway
buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway() {
  final o = api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway();
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway <
      3) {
    o.createTime = 'foo';
    o.delegatingServiceAccount = 'foo';
    o.displayName = 'foo';
    o.externalIps = buildUnnamed39();
    o.hubs = buildUnnamed40();
    o.name = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway--;
  return o;
}

void checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway(
  api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway o,
) {
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway++;
  if (buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway <
      3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.delegatingServiceAccount!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed39(o.externalIps!);
    checkUnnamed40(o.hubs!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway--;
}

core.List<api.GoogleCloudLocationLocation> buildUnnamed41() => [
  buildGoogleCloudLocationLocation(),
  buildGoogleCloudLocationLocation(),
];

void checkUnnamed41(core.List<api.GoogleCloudLocationLocation> o) {
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
    o.locations = buildUnnamed41();
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
    checkUnnamed41(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed42() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed42(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed43() => {
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

void checkUnnamed43(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudLocationLocation = 0;
api.GoogleCloudLocationLocation buildGoogleCloudLocationLocation() {
  final o = api.GoogleCloudLocationLocation();
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed42();
    o.locationId = 'foo';
    o.metadata = buildUnnamed43();
    o.name = 'foo';
  }
  buildCounterGoogleCloudLocationLocation--;
  return o;
}

void checkGoogleCloudLocationLocation(api.GoogleCloudLocationLocation o) {
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed42(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed43(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudLocationLocation--;
}

core.List<api.GoogleIamV1AuditLogConfig> buildUnnamed44() => [
  buildGoogleIamV1AuditLogConfig(),
  buildGoogleIamV1AuditLogConfig(),
];

void checkUnnamed44(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
api.GoogleIamV1AuditConfig buildGoogleIamV1AuditConfig() {
  final o = api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed44();
    o.service = 'foo';
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

void checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed44(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditConfig--;
}

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1AuditLogConfig = 0;
api.GoogleIamV1AuditLogConfig buildGoogleIamV1AuditLogConfig() {
  final o = api.GoogleIamV1AuditLogConfig();
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed45();
    o.logType = 'foo';
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

void checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed45(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

core.List<core.String> buildUnnamed46() => ['foo', 'foo'];

void checkUnnamed46(core.List<core.String> o) {
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
    o.members = buildUnnamed46();
    o.role = 'foo';
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

void checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkGoogleTypeExpr(o.condition!);
    checkUnnamed46(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1Binding--;
}

core.List<api.GoogleIamV1AuditConfig> buildUnnamed47() => [
  buildGoogleIamV1AuditConfig(),
  buildGoogleIamV1AuditConfig(),
];

void checkUnnamed47(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

core.List<api.GoogleIamV1Binding> buildUnnamed48() => [
  buildGoogleIamV1Binding(),
  buildGoogleIamV1Binding(),
];

void checkUnnamed48(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
api.GoogleIamV1Policy buildGoogleIamV1Policy() {
  final o = api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed47();
    o.bindings = buildUnnamed48();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

void checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed47(o.auditConfigs!);
    checkUnnamed48(o.bindings!);
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

core.List<core.String> buildUnnamed49() => ['foo', 'foo'];

void checkUnnamed49(core.List<core.String> o) {
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
    o.permissions = buildUnnamed49();
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
  return o;
}

void checkGoogleIamV1TestIamPermissionsRequest(
  api.GoogleIamV1TestIamPermissionsRequest o,
) {
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    checkUnnamed49(o.permissions!);
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed50() => ['foo', 'foo'];

void checkUnnamed50(core.List<core.String> o) {
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
    o.permissions = buildUnnamed50();
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
  return o;
}

void checkGoogleIamV1TestIamPermissionsResponse(
  api.GoogleIamV1TestIamPermissionsResponse o,
) {
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    checkUnnamed50(o.permissions!);
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

core.List<api.GoogleLongrunningOperation> buildUnnamed51() => [
  buildGoogleLongrunningOperation(),
  buildGoogleLongrunningOperation(),
];

void checkUnnamed51(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed51();
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
    checkUnnamed51(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed52() => {
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

void checkUnnamed52(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed53() => {
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

void checkUnnamed53(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed52();
    o.name = 'foo';
    o.response = buildUnnamed53();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed52(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed53(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.Map<core.String, core.Object?> buildUnnamed54() => {
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

void checkUnnamed54(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o['x']!) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(casted13['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted13['bool'], unittest.equals(true));
  unittest.expect(casted13['string'], unittest.equals('foo'));
  var casted14 = (o['y']!) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(casted14['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted14['bool'], unittest.equals(true));
  unittest.expect(casted14['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed55() => [
  buildUnnamed54(),
  buildUnnamed54(),
];

void checkUnnamed55(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed54(o[0]);
  checkUnnamed54(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed55();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed55(o.details!);
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

core.int buildCounterImageConfig = 0;
api.ImageConfig buildImageConfig() {
  final o = api.ImageConfig();
  buildCounterImageConfig++;
  if (buildCounterImageConfig < 3) {
    o.stableImage = 'foo';
    o.targetImage = 'foo';
  }
  buildCounterImageConfig--;
  return o;
}

void checkImageConfig(api.ImageConfig o) {
  buildCounterImageConfig++;
  if (buildCounterImageConfig < 3) {
    unittest.expect(o.stableImage!, unittest.equals('foo'));
    unittest.expect(o.targetImage!, unittest.equals('foo'));
  }
  buildCounterImageConfig--;
}

core.List<api.AppGateway> buildUnnamed56() => [
  buildAppGateway(),
  buildAppGateway(),
];

void checkUnnamed56(core.List<api.AppGateway> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppGateway(o[0]);
  checkAppGateway(o[1]);
}

core.List<core.String> buildUnnamed57() => ['foo', 'foo'];

void checkUnnamed57(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAppGatewaysResponse = 0;
api.ListAppGatewaysResponse buildListAppGatewaysResponse() {
  final o = api.ListAppGatewaysResponse();
  buildCounterListAppGatewaysResponse++;
  if (buildCounterListAppGatewaysResponse < 3) {
    o.appGateways = buildUnnamed56();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed57();
  }
  buildCounterListAppGatewaysResponse--;
  return o;
}

void checkListAppGatewaysResponse(api.ListAppGatewaysResponse o) {
  buildCounterListAppGatewaysResponse++;
  if (buildCounterListAppGatewaysResponse < 3) {
    checkUnnamed56(o.appGateways!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed57(o.unreachable!);
  }
  buildCounterListAppGatewaysResponse--;
}

core.List<api.Connection> buildUnnamed58() => [
  buildConnection(),
  buildConnection(),
];

void checkUnnamed58(core.List<api.Connection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnection(o[0]);
  checkConnection(o[1]);
}

core.List<core.String> buildUnnamed59() => ['foo', 'foo'];

void checkUnnamed59(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListConnectionsResponse = 0;
api.ListConnectionsResponse buildListConnectionsResponse() {
  final o = api.ListConnectionsResponse();
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    o.connections = buildUnnamed58();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed59();
  }
  buildCounterListConnectionsResponse--;
  return o;
}

void checkListConnectionsResponse(api.ListConnectionsResponse o) {
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    checkUnnamed58(o.connections!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed59(o.unreachable!);
  }
  buildCounterListConnectionsResponse--;
}

core.List<api.Connector> buildUnnamed60() => [
  buildConnector(),
  buildConnector(),
];

void checkUnnamed60(core.List<api.Connector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnector(o[0]);
  checkConnector(o[1]);
}

core.List<core.String> buildUnnamed61() => ['foo', 'foo'];

void checkUnnamed61(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListConnectorsResponse = 0;
api.ListConnectorsResponse buildListConnectorsResponse() {
  final o = api.ListConnectorsResponse();
  buildCounterListConnectorsResponse++;
  if (buildCounterListConnectorsResponse < 3) {
    o.connectors = buildUnnamed60();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed61();
  }
  buildCounterListConnectorsResponse--;
  return o;
}

void checkListConnectorsResponse(api.ListConnectorsResponse o) {
  buildCounterListConnectorsResponse++;
  if (buildCounterListConnectorsResponse < 3) {
    checkUnnamed60(o.connectors!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed61(o.unreachable!);
  }
  buildCounterListConnectorsResponse--;
}

core.int buildCounterNotificationConfig = 0;
api.NotificationConfig buildNotificationConfig() {
  final o = api.NotificationConfig();
  buildCounterNotificationConfig++;
  if (buildCounterNotificationConfig < 3) {
    o.pubsubNotification = buildCloudPubSubNotificationConfig();
  }
  buildCounterNotificationConfig--;
  return o;
}

void checkNotificationConfig(api.NotificationConfig o) {
  buildCounterNotificationConfig++;
  if (buildCounterNotificationConfig < 3) {
    checkCloudPubSubNotificationConfig(o.pubsubNotification!);
  }
  buildCounterNotificationConfig--;
}

core.int buildCounterPrincipalInfo = 0;
api.PrincipalInfo buildPrincipalInfo() {
  final o = api.PrincipalInfo();
  buildCounterPrincipalInfo++;
  if (buildCounterPrincipalInfo < 3) {
    o.serviceAccount = buildServiceAccount();
  }
  buildCounterPrincipalInfo--;
  return o;
}

void checkPrincipalInfo(api.PrincipalInfo o) {
  buildCounterPrincipalInfo++;
  if (buildCounterPrincipalInfo < 3) {
    checkServiceAccount(o.serviceAccount!);
  }
  buildCounterPrincipalInfo--;
}

core.int buildCounterReportStatusRequest = 0;
api.ReportStatusRequest buildReportStatusRequest() {
  final o = api.ReportStatusRequest();
  buildCounterReportStatusRequest++;
  if (buildCounterReportStatusRequest < 3) {
    o.requestId = 'foo';
    o.resourceInfo = buildResourceInfo();
    o.validateOnly = true;
  }
  buildCounterReportStatusRequest--;
  return o;
}

void checkReportStatusRequest(api.ReportStatusRequest o) {
  buildCounterReportStatusRequest++;
  if (buildCounterReportStatusRequest < 3) {
    unittest.expect(o.requestId!, unittest.equals('foo'));
    checkResourceInfo(o.resourceInfo!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterReportStatusRequest--;
}

core.List<api.ConnectionDetails> buildUnnamed62() => [
  buildConnectionDetails(),
  buildConnectionDetails(),
];

void checkUnnamed62(core.List<api.ConnectionDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectionDetails(o[0]);
  checkConnectionDetails(o[1]);
}

core.List<core.String> buildUnnamed63() => ['foo', 'foo'];

void checkUnnamed63(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterResolveConnectionsResponse = 0;
api.ResolveConnectionsResponse buildResolveConnectionsResponse() {
  final o = api.ResolveConnectionsResponse();
  buildCounterResolveConnectionsResponse++;
  if (buildCounterResolveConnectionsResponse < 3) {
    o.connectionDetails = buildUnnamed62();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed63();
  }
  buildCounterResolveConnectionsResponse--;
  return o;
}

void checkResolveConnectionsResponse(api.ResolveConnectionsResponse o) {
  buildCounterResolveConnectionsResponse++;
  if (buildCounterResolveConnectionsResponse < 3) {
    checkUnnamed62(o.connectionDetails!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed63(o.unreachable!);
  }
  buildCounterResolveConnectionsResponse--;
}

core.int buildCounterResolveInstanceConfigResponse = 0;
api.ResolveInstanceConfigResponse buildResolveInstanceConfigResponse() {
  final o = api.ResolveInstanceConfigResponse();
  buildCounterResolveInstanceConfigResponse++;
  if (buildCounterResolveInstanceConfigResponse < 3) {
    o.instanceConfig = buildConnectorInstanceConfig();
  }
  buildCounterResolveInstanceConfigResponse--;
  return o;
}

void checkResolveInstanceConfigResponse(api.ResolveInstanceConfigResponse o) {
  buildCounterResolveInstanceConfigResponse++;
  if (buildCounterResolveInstanceConfigResponse < 3) {
    checkConnectorInstanceConfig(o.instanceConfig!);
  }
  buildCounterResolveInstanceConfigResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed64() => {
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

void checkUnnamed64(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted15 = (o['x']!) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(casted15['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted15['bool'], unittest.equals(true));
  unittest.expect(casted15['string'], unittest.equals('foo'));
  var casted16 = (o['y']!) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(casted16['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted16['bool'], unittest.equals(true));
  unittest.expect(casted16['string'], unittest.equals('foo'));
}

core.List<api.ResourceInfo> buildUnnamed65() => [
  buildResourceInfo(),
  buildResourceInfo(),
];

void checkUnnamed65(core.List<api.ResourceInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceInfo(o[0]);
  checkResourceInfo(o[1]);
}

core.int buildCounterResourceInfo = 0;
api.ResourceInfo buildResourceInfo() {
  final o = api.ResourceInfo();
  buildCounterResourceInfo++;
  if (buildCounterResourceInfo < 3) {
    o.id = 'foo';
    o.resource = buildUnnamed64();
    o.status = 'foo';
    o.sub = buildUnnamed65();
    o.time = 'foo';
  }
  buildCounterResourceInfo--;
  return o;
}

void checkResourceInfo(api.ResourceInfo o) {
  buildCounterResourceInfo++;
  if (buildCounterResourceInfo < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed64(o.resource!);
    unittest.expect(o.status!, unittest.equals('foo'));
    checkUnnamed65(o.sub!);
    unittest.expect(o.time!, unittest.equals('foo'));
  }
  buildCounterResourceInfo--;
}

core.int buildCounterServiceAccount = 0;
api.ServiceAccount buildServiceAccount() {
  final o = api.ServiceAccount();
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    o.email = 'foo';
  }
  buildCounterServiceAccount--;
  return o;
}

void checkServiceAccount(api.ServiceAccount o) {
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    unittest.expect(o.email!, unittest.equals('foo'));
  }
  buildCounterServiceAccount--;
}

core.List<core.String> buildUnnamed66() => ['foo', 'foo'];

void checkUnnamed66(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed67() => ['foo', 'foo'];

void checkUnnamed67(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed68() => ['foo', 'foo'];

void checkUnnamed68(core.List<core.String> o) {
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

  unittest.group('obj-schema-ApplicationEndpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationEndpoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApplicationEndpoint(od);
    });
  });

  unittest.group('obj-schema-CloudPubSubNotificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudPubSubNotificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudPubSubNotificationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudPubSubNotificationConfig(od);
    });
  });

  unittest.group('obj-schema-Connection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Connection.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConnection(od);
    });
  });

  unittest.group('obj-schema-ConnectionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConnectionDetails(od);
    });
  });

  unittest.group('obj-schema-Connector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Connector.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConnector(od);
    });
  });

  unittest.group('obj-schema-ConnectorInstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectorInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectorInstanceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConnectorInstanceConfig(od);
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

  unittest.group('obj-schema-Gateway', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGateway();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Gateway.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGateway(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionApplicationEndpoint(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponseAppConnectionDetails(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorInstanceConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfoServiceAccount(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectorsV1alphaImageConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectorsV1alphaNotificationConfigCloudPubSubNotificationConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpPartnerservicesV1alphaGroup',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBeyondcorpPartnerservicesV1alphaGroup();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpPartnerservicesV1alphaGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpPartnerservicesV1alphaGroup(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaAppliedConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaCustomGrouping(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadata(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsightMetadataField(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRow(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaRowFieldVal(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstream(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstreamNetwork',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstreamNetwork();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstreamNetwork.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplicationUpstreamNetwork(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1alphaEgressPolicy',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaEgressPolicy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1alphaEgressPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaEgressPolicy(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaEndpointMatcher(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1alphaHub',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaHub();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaHub.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaHub(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1alphaInternetGateway',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaInternetGateway();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1alphaInternetGateway.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaInternetGateway(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway(od);
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

  unittest.group('obj-schema-ImageConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImageConfig(od);
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

  unittest.group('obj-schema-ListConnectionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConnectionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConnectionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListConnectionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListConnectorsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConnectorsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConnectorsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListConnectorsResponse(od);
    });
  });

  unittest.group('obj-schema-NotificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NotificationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNotificationConfig(od);
    });
  });

  unittest.group('obj-schema-PrincipalInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrincipalInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrincipalInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPrincipalInfo(od);
    });
  });

  unittest.group('obj-schema-ReportStatusRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportStatusRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportStatusRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportStatusRequest(od);
    });
  });

  unittest.group('obj-schema-ResolveConnectionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResolveConnectionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResolveConnectionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResolveConnectionsResponse(od);
    });
  });

  unittest.group('obj-schema-ResolveInstanceConfigResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResolveInstanceConfigResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResolveInstanceConfigResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResolveInstanceConfigResponse(od);
    });
  });

  unittest.group('obj-schema-ResourceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceInfo(od);
    });
  });

  unittest.group('obj-schema-ServiceAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceAccount.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServiceAccount(od);
    });
  });

  unittest.group('resource-OrganizationsLocationsGlobalPartnerTenantsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.BeyondCorpApi(mock).organizations.locations.global.partnerTenants;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.BeyondCorpApi(mock).organizations.locations.global.partnerTenants;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            buildGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant(
        response
            as api.GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerTenant,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.BeyondCorpApi(mock).organizations.locations.global.partnerTenants;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            buildGoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse(),
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
      checkGoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse(
        response
            as api.GoogleCloudBeyondcorpPartnerservicesV1alphaListPartnerTenantsResponse,
      );
    });
  });

  unittest.group('resource-OrganizationsLocationsInsightsResource', () {
    unittest.test('method--configuredInsight', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).organizations.locations.insights;
      final arg_insight = 'foo';
      final arg_aggregation = 'foo';
      final arg_customGrouping_fieldFilter = 'foo';
      final arg_customGrouping_groupFields = buildUnnamed66();
      final arg_endTime = 'foo';
      final arg_fieldFilter = 'foo';
      final arg_group = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_startTime = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['aggregation']!.first,
            unittest.equals(arg_aggregation),
          );
          unittest.expect(
            queryMap['customGrouping.fieldFilter']!.first,
            unittest.equals(arg_customGrouping_fieldFilter),
          );
          unittest.expect(
            queryMap['customGrouping.groupFields']!,
            unittest.equals(arg_customGrouping_groupFields),
          );
          unittest.expect(
            queryMap['endTime']!.first,
            unittest.equals(arg_endTime),
          );
          unittest.expect(
            queryMap['fieldFilter']!.first,
            unittest.equals(arg_fieldFilter),
          );
          unittest.expect(queryMap['group']!.first, unittest.equals(arg_group));
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['startTime']!.first,
            unittest.equals(arg_startTime),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.configuredInsight(
        arg_insight,
        aggregation: arg_aggregation,
        customGrouping_fieldFilter: arg_customGrouping_fieldFilter,
        customGrouping_groupFields: arg_customGrouping_groupFields,
        endTime: arg_endTime,
        fieldFilter: arg_fieldFilter,
        group: arg_group,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        startTime: arg_startTime,
        $fields: arg_$fields,
      );
      checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse(
        response
            as api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).organizations.locations.insights;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight(
        response as api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).organizations.locations.insights;
      final arg_parent = 'foo';
      final arg_aggregation = 'foo';
      final arg_endTime = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_startTime = 'foo';
      final arg_view = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['aggregation']!.first,
            unittest.equals(arg_aggregation),
          );
          unittest.expect(
            queryMap['endTime']!.first,
            unittest.equals(arg_endTime),
          );
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
            queryMap['startTime']!.first,
            unittest.equals(arg_startTime),
          );
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        aggregation: arg_aggregation,
        endTime: arg_endTime,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        startTime: arg_startTime,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse(
        response
            as api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse,
      );
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

  unittest.group('resource-OrganizationsLocationsSubscriptionsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).organizations.locations.subscriptions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          final resp = convert.json.encode(
            buildGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse(
        response
            as api.GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaCancelSubscriptionResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).organizations.locations.subscriptions;
      final arg_request =
          buildGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription(
            obj,
          );

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            buildGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription(
        response
            as api.GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).organizations.locations.subscriptions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            buildGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription(
        response
            as api.GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).organizations.locations.subscriptions;
      final arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse(
        response
            as api.GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaListSubscriptionsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).organizations.locations.subscriptions;
      final arg_request =
          buildGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription(
            obj,
          );

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          final resp = convert.json.encode(
            buildGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription(),
          );
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
      checkGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription(
        response
            as api.GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaSubscription,
      );
    });

    unittest.test('method--restart', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).organizations.locations.subscriptions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          final resp = convert.json.encode(
            buildGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.restart(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkGoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse(
        response
            as api.GoogleCloudBeyondcorpSaasplatformSubscriptionsV1alphaRestartSubscriptionResponse,
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final arg_extraLocationTypes = buildUnnamed67();
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          buildGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection();
      final arg_parent = 'foo';
      final arg_appConnectionId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            buildGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection(
        response as api.GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection,
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            buildGoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse(),
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
      checkGoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse(
        response
            as api.GoogleCloudBeyondcorpAppconnectionsV1alphaListAppConnectionsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appConnections;
      final arg_request =
          buildGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudBeyondcorpAppconnectionsV1alphaAppConnection(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            buildGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse(),
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
      checkGoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse(
        response
            as api.GoogleCloudBeyondcorpAppconnectionsV1alphaResolveAppConnectionsResponse,
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          buildGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector();
      final arg_parent = 'foo';
      final arg_appConnectorId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            buildGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector(
        response as api.GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector,
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            buildGoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse(),
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
      checkGoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse(
        response
            as api.GoogleCloudBeyondcorpAppconnectorsV1alphaListAppConnectorsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.appConnectors;
      final arg_request =
          buildGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudBeyondcorpAppconnectorsV1alphaAppConnector(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          buildGoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest();
      final arg_appConnector = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudBeyondcorpAppconnectorsV1alphaReportStatusRequest(
            obj,
          );

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            buildGoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.resolveInstanceConfig(
        arg_appConnector,
        $fields: arg_$fields,
      );
      checkGoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse(
        response
            as api.GoogleCloudBeyondcorpAppconnectorsV1alphaResolveInstanceConfigResponse,
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

  unittest.group('resource-ProjectsLocationsApplicationDomainsResource', () {
    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.applicationDomains;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.applicationDomains;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res = api.BeyondCorpApi(mock).projects.locations.applicationDomains;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

  unittest.group('resource-ProjectsLocationsApplicationsResource', () {
    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.applications;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.applications;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res = api.BeyondCorpApi(mock).projects.locations.applications;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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

  unittest.group('resource-ProjectsLocationsConnectionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.connections;
      final arg_request = buildConnection();
      final arg_parent = 'foo';
      final arg_connectionId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Connection.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkConnection(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['connectionId']!.first,
            unittest.equals(arg_connectionId),
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
        connectionId: arg_connectionId,
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
      final res = api.BeyondCorpApi(mock).projects.locations.connections;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res = api.BeyondCorpApi(mock).projects.locations.connections;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          final resp = convert.json.encode(buildConnection());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConnection(response as api.Connection);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.connections;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res = api.BeyondCorpApi(mock).projects.locations.connections;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          final resp = convert.json.encode(buildListConnectionsResponse());
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
      checkListConnectionsResponse(response as api.ListConnectionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.connections;
      final arg_request = buildConnection();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Connection.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkConnection(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res = api.BeyondCorpApi(mock).projects.locations.connections;
      final arg_parent = 'foo';
      final arg_connectorId = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['connectorId']!.first,
            unittest.equals(arg_connectorId),
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
          final resp = convert.json.encode(buildResolveConnectionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.resolve(
        arg_parent,
        connectorId: arg_connectorId,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkResolveConnectionsResponse(
        response as api.ResolveConnectionsResponse,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.connections;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
  });

  unittest.group('resource-ProjectsLocationsConnectorsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.connectors;
      final arg_request = buildConnector();
      final arg_parent = 'foo';
      final arg_connectorId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Connector.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkConnector(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['connectorId']!.first,
            unittest.equals(arg_connectorId),
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
        connectorId: arg_connectorId,
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
      final res = api.BeyondCorpApi(mock).projects.locations.connectors;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res = api.BeyondCorpApi(mock).projects.locations.connectors;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          final resp = convert.json.encode(buildConnector());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConnector(response as api.Connector);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.connectors;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res = api.BeyondCorpApi(mock).projects.locations.connectors;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          final resp = convert.json.encode(buildListConnectorsResponse());
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
      checkListConnectorsResponse(response as api.ListConnectorsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.connectors;
      final arg_request = buildConnector();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Connector.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkConnector(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
      final res = api.BeyondCorpApi(mock).projects.locations.connectors;
      final arg_request = buildReportStatusRequest();
      final arg_connector = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ReportStatusRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkReportStatusRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
        arg_connector,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--resolveInstanceConfig', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.connectors;
      final arg_connector = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            buildResolveInstanceConfigResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.resolveInstanceConfig(
        arg_connector,
        $fields: arg_$fields,
      );
      checkResolveInstanceConfigResponse(
        response as api.ResolveInstanceConfigResponse,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.connectors;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
  });

  unittest.group('resource-ProjectsLocationsInsightsResource', () {
    unittest.test('method--configuredInsight', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.insights;
      final arg_insight = 'foo';
      final arg_aggregation = 'foo';
      final arg_customGrouping_fieldFilter = 'foo';
      final arg_customGrouping_groupFields = buildUnnamed68();
      final arg_endTime = 'foo';
      final arg_fieldFilter = 'foo';
      final arg_group = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_startTime = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['aggregation']!.first,
            unittest.equals(arg_aggregation),
          );
          unittest.expect(
            queryMap['customGrouping.fieldFilter']!.first,
            unittest.equals(arg_customGrouping_fieldFilter),
          );
          unittest.expect(
            queryMap['customGrouping.groupFields']!,
            unittest.equals(arg_customGrouping_groupFields),
          );
          unittest.expect(
            queryMap['endTime']!.first,
            unittest.equals(arg_endTime),
          );
          unittest.expect(
            queryMap['fieldFilter']!.first,
            unittest.equals(arg_fieldFilter),
          );
          unittest.expect(queryMap['group']!.first, unittest.equals(arg_group));
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['startTime']!.first,
            unittest.equals(arg_startTime),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.configuredInsight(
        arg_insight,
        aggregation: arg_aggregation,
        customGrouping_fieldFilter: arg_customGrouping_fieldFilter,
        customGrouping_groupFields: arg_customGrouping_groupFields,
        endTime: arg_endTime,
        fieldFilter: arg_fieldFilter,
        group: arg_group,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        startTime: arg_startTime,
        $fields: arg_$fields,
      );
      checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse(
        response
            as api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaConfiguredInsightResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.insights;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight(
        response as api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaInsight,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.insights;
      final arg_parent = 'foo';
      final arg_aggregation = 'foo';
      final arg_endTime = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_startTime = 'foo';
      final arg_view = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['aggregation']!.first,
            unittest.equals(arg_aggregation),
          );
          unittest.expect(
            queryMap['endTime']!.first,
            unittest.equals(arg_endTime),
          );
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
            queryMap['startTime']!.first,
            unittest.equals(arg_startTime),
          );
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        aggregation: arg_aggregation,
        endTime: arg_endTime,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        startTime: arg_startTime,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkGoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse(
        response
            as api.GoogleCloudBeyondcorpSaasplatformInsightsV1alphaListInsightsResponse,
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_securityGatewayId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway(
        response
            as api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway,
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse(),
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
      checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse(
        response
            as api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaListSecurityGatewaysResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BeyondCorpApi(mock).projects.locations.securityGateways;
      final arg_request =
          buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGateway(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
          buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication();
      final arg_parent = 'foo';
      final arg_applicationId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication(
        response as api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication,
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse(),
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
      checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse(
        response
            as api.GoogleCloudBeyondcorpSecuritygatewaysV1alphaListApplicationsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.BeyondCorpApi(
            mock,
          ).projects.locations.securityGateways.applications;
      final arg_request =
          buildGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudBeyondcorpSecuritygatewaysV1alphaApplication(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
