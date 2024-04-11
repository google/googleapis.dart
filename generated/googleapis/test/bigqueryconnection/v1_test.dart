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

import 'package:googleapis/bigqueryconnection/v1.dart' as api;
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

core.int buildCounterAwsAccessRole = 0;
api.AwsAccessRole buildAwsAccessRole() {
  final o = api.AwsAccessRole();
  buildCounterAwsAccessRole++;
  if (buildCounterAwsAccessRole < 3) {
    o.iamRoleId = 'foo';
    o.identity = 'foo';
  }
  buildCounterAwsAccessRole--;
  return o;
}

void checkAwsAccessRole(api.AwsAccessRole o) {
  buildCounterAwsAccessRole++;
  if (buildCounterAwsAccessRole < 3) {
    unittest.expect(
      o.iamRoleId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.identity!,
      unittest.equals('foo'),
    );
  }
  buildCounterAwsAccessRole--;
}

core.int buildCounterAwsProperties = 0;
api.AwsProperties buildAwsProperties() {
  final o = api.AwsProperties();
  buildCounterAwsProperties++;
  if (buildCounterAwsProperties < 3) {
    o.accessRole = buildAwsAccessRole();
  }
  buildCounterAwsProperties--;
  return o;
}

void checkAwsProperties(api.AwsProperties o) {
  buildCounterAwsProperties++;
  if (buildCounterAwsProperties < 3) {
    checkAwsAccessRole(o.accessRole!);
  }
  buildCounterAwsProperties--;
}

core.int buildCounterAzureProperties = 0;
api.AzureProperties buildAzureProperties() {
  final o = api.AzureProperties();
  buildCounterAzureProperties++;
  if (buildCounterAzureProperties < 3) {
    o.application = 'foo';
    o.clientId = 'foo';
    o.customerTenantId = 'foo';
    o.federatedApplicationClientId = 'foo';
    o.identity = 'foo';
    o.objectId = 'foo';
    o.redirectUri = 'foo';
  }
  buildCounterAzureProperties--;
  return o;
}

void checkAzureProperties(api.AzureProperties o) {
  buildCounterAzureProperties++;
  if (buildCounterAzureProperties < 3) {
    unittest.expect(
      o.application!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerTenantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.federatedApplicationClientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.identity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.redirectUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterAzureProperties--;
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

core.int buildCounterCloudResourceProperties = 0;
api.CloudResourceProperties buildCloudResourceProperties() {
  final o = api.CloudResourceProperties();
  buildCounterCloudResourceProperties++;
  if (buildCounterCloudResourceProperties < 3) {
    o.serviceAccountId = 'foo';
  }
  buildCounterCloudResourceProperties--;
  return o;
}

void checkCloudResourceProperties(api.CloudResourceProperties o) {
  buildCounterCloudResourceProperties++;
  if (buildCounterCloudResourceProperties < 3) {
    unittest.expect(
      o.serviceAccountId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudResourceProperties--;
}

core.int buildCounterCloudSpannerProperties = 0;
api.CloudSpannerProperties buildCloudSpannerProperties() {
  final o = api.CloudSpannerProperties();
  buildCounterCloudSpannerProperties++;
  if (buildCounterCloudSpannerProperties < 3) {
    o.database = 'foo';
    o.databaseRole = 'foo';
    o.maxParallelism = 42;
    o.useDataBoost = true;
    o.useParallelism = true;
    o.useServerlessAnalytics = true;
  }
  buildCounterCloudSpannerProperties--;
  return o;
}

void checkCloudSpannerProperties(api.CloudSpannerProperties o) {
  buildCounterCloudSpannerProperties++;
  if (buildCounterCloudSpannerProperties < 3) {
    unittest.expect(
      o.database!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.databaseRole!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxParallelism!,
      unittest.equals(42),
    );
    unittest.expect(o.useDataBoost!, unittest.isTrue);
    unittest.expect(o.useParallelism!, unittest.isTrue);
    unittest.expect(o.useServerlessAnalytics!, unittest.isTrue);
  }
  buildCounterCloudSpannerProperties--;
}

core.int buildCounterCloudSqlCredential = 0;
api.CloudSqlCredential buildCloudSqlCredential() {
  final o = api.CloudSqlCredential();
  buildCounterCloudSqlCredential++;
  if (buildCounterCloudSqlCredential < 3) {
    o.password = 'foo';
    o.username = 'foo';
  }
  buildCounterCloudSqlCredential--;
  return o;
}

void checkCloudSqlCredential(api.CloudSqlCredential o) {
  buildCounterCloudSqlCredential++;
  if (buildCounterCloudSqlCredential < 3) {
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudSqlCredential--;
}

core.int buildCounterCloudSqlProperties = 0;
api.CloudSqlProperties buildCloudSqlProperties() {
  final o = api.CloudSqlProperties();
  buildCounterCloudSqlProperties++;
  if (buildCounterCloudSqlProperties < 3) {
    o.credential = buildCloudSqlCredential();
    o.database = 'foo';
    o.instanceId = 'foo';
    o.serviceAccountId = 'foo';
    o.type = 'foo';
  }
  buildCounterCloudSqlProperties--;
  return o;
}

void checkCloudSqlProperties(api.CloudSqlProperties o) {
  buildCounterCloudSqlProperties++;
  if (buildCounterCloudSqlProperties < 3) {
    checkCloudSqlCredential(o.credential!);
    unittest.expect(
      o.database!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudSqlProperties--;
}

core.int buildCounterConnection = 0;
api.Connection buildConnection() {
  final o = api.Connection();
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    o.aws = buildAwsProperties();
    o.azure = buildAzureProperties();
    o.cloudResource = buildCloudResourceProperties();
    o.cloudSpanner = buildCloudSpannerProperties();
    o.cloudSql = buildCloudSqlProperties();
    o.configuration = buildConnectorConfiguration();
    o.creationTime = 'foo';
    o.description = 'foo';
    o.friendlyName = 'foo';
    o.hasCredential = true;
    o.kmsKeyName = 'foo';
    o.lastModifiedTime = 'foo';
    o.name = 'foo';
    o.salesforceDataCloud = buildSalesforceDataCloudProperties();
    o.spark = buildSparkProperties();
  }
  buildCounterConnection--;
  return o;
}

void checkConnection(api.Connection o) {
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    checkAwsProperties(o.aws!);
    checkAzureProperties(o.azure!);
    checkCloudResourceProperties(o.cloudResource!);
    checkCloudSpannerProperties(o.cloudSpanner!);
    checkCloudSqlProperties(o.cloudSql!);
    checkConnectorConfiguration(o.configuration!);
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.friendlyName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hasCredential!, unittest.isTrue);
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastModifiedTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkSalesforceDataCloudProperties(o.salesforceDataCloud!);
    checkSparkProperties(o.spark!);
  }
  buildCounterConnection--;
}

core.int buildCounterConnectorConfiguration = 0;
api.ConnectorConfiguration buildConnectorConfiguration() {
  final o = api.ConnectorConfiguration();
  buildCounterConnectorConfiguration++;
  if (buildCounterConnectorConfiguration < 3) {
    o.authentication = buildConnectorConfigurationAuthentication();
    o.connectorId = 'foo';
    o.endpoint = buildConnectorConfigurationEndpoint();
    o.network = buildConnectorConfigurationNetwork();
  }
  buildCounterConnectorConfiguration--;
  return o;
}

void checkConnectorConfiguration(api.ConnectorConfiguration o) {
  buildCounterConnectorConfiguration++;
  if (buildCounterConnectorConfiguration < 3) {
    checkConnectorConfigurationAuthentication(o.authentication!);
    unittest.expect(
      o.connectorId!,
      unittest.equals('foo'),
    );
    checkConnectorConfigurationEndpoint(o.endpoint!);
    checkConnectorConfigurationNetwork(o.network!);
  }
  buildCounterConnectorConfiguration--;
}

core.int buildCounterConnectorConfigurationAuthentication = 0;
api.ConnectorConfigurationAuthentication
    buildConnectorConfigurationAuthentication() {
  final o = api.ConnectorConfigurationAuthentication();
  buildCounterConnectorConfigurationAuthentication++;
  if (buildCounterConnectorConfigurationAuthentication < 3) {
    o.usernamePassword = buildConnectorConfigurationUsernamePassword();
  }
  buildCounterConnectorConfigurationAuthentication--;
  return o;
}

void checkConnectorConfigurationAuthentication(
    api.ConnectorConfigurationAuthentication o) {
  buildCounterConnectorConfigurationAuthentication++;
  if (buildCounterConnectorConfigurationAuthentication < 3) {
    checkConnectorConfigurationUsernamePassword(o.usernamePassword!);
  }
  buildCounterConnectorConfigurationAuthentication--;
}

core.int buildCounterConnectorConfigurationEndpoint = 0;
api.ConnectorConfigurationEndpoint buildConnectorConfigurationEndpoint() {
  final o = api.ConnectorConfigurationEndpoint();
  buildCounterConnectorConfigurationEndpoint++;
  if (buildCounterConnectorConfigurationEndpoint < 3) {
    o.hostPort = 'foo';
  }
  buildCounterConnectorConfigurationEndpoint--;
  return o;
}

void checkConnectorConfigurationEndpoint(api.ConnectorConfigurationEndpoint o) {
  buildCounterConnectorConfigurationEndpoint++;
  if (buildCounterConnectorConfigurationEndpoint < 3) {
    unittest.expect(
      o.hostPort!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnectorConfigurationEndpoint--;
}

core.int buildCounterConnectorConfigurationNetwork = 0;
api.ConnectorConfigurationNetwork buildConnectorConfigurationNetwork() {
  final o = api.ConnectorConfigurationNetwork();
  buildCounterConnectorConfigurationNetwork++;
  if (buildCounterConnectorConfigurationNetwork < 3) {
    o.privateServiceConnect =
        buildConnectorConfigurationPrivateServiceConnect();
  }
  buildCounterConnectorConfigurationNetwork--;
  return o;
}

void checkConnectorConfigurationNetwork(api.ConnectorConfigurationNetwork o) {
  buildCounterConnectorConfigurationNetwork++;
  if (buildCounterConnectorConfigurationNetwork < 3) {
    checkConnectorConfigurationPrivateServiceConnect(o.privateServiceConnect!);
  }
  buildCounterConnectorConfigurationNetwork--;
}

core.int buildCounterConnectorConfigurationPrivateServiceConnect = 0;
api.ConnectorConfigurationPrivateServiceConnect
    buildConnectorConfigurationPrivateServiceConnect() {
  final o = api.ConnectorConfigurationPrivateServiceConnect();
  buildCounterConnectorConfigurationPrivateServiceConnect++;
  if (buildCounterConnectorConfigurationPrivateServiceConnect < 3) {
    o.networkAttachment = 'foo';
  }
  buildCounterConnectorConfigurationPrivateServiceConnect--;
  return o;
}

void checkConnectorConfigurationPrivateServiceConnect(
    api.ConnectorConfigurationPrivateServiceConnect o) {
  buildCounterConnectorConfigurationPrivateServiceConnect++;
  if (buildCounterConnectorConfigurationPrivateServiceConnect < 3) {
    unittest.expect(
      o.networkAttachment!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnectorConfigurationPrivateServiceConnect--;
}

core.int buildCounterConnectorConfigurationSecret = 0;
api.ConnectorConfigurationSecret buildConnectorConfigurationSecret() {
  final o = api.ConnectorConfigurationSecret();
  buildCounterConnectorConfigurationSecret++;
  if (buildCounterConnectorConfigurationSecret < 3) {
    o.plaintext = 'foo';
    o.secretType = 'foo';
  }
  buildCounterConnectorConfigurationSecret--;
  return o;
}

void checkConnectorConfigurationSecret(api.ConnectorConfigurationSecret o) {
  buildCounterConnectorConfigurationSecret++;
  if (buildCounterConnectorConfigurationSecret < 3) {
    unittest.expect(
      o.plaintext!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.secretType!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnectorConfigurationSecret--;
}

core.int buildCounterConnectorConfigurationUsernamePassword = 0;
api.ConnectorConfigurationUsernamePassword
    buildConnectorConfigurationUsernamePassword() {
  final o = api.ConnectorConfigurationUsernamePassword();
  buildCounterConnectorConfigurationUsernamePassword++;
  if (buildCounterConnectorConfigurationUsernamePassword < 3) {
    o.password = buildConnectorConfigurationSecret();
    o.username = 'foo';
  }
  buildCounterConnectorConfigurationUsernamePassword--;
  return o;
}

void checkConnectorConfigurationUsernamePassword(
    api.ConnectorConfigurationUsernamePassword o) {
  buildCounterConnectorConfigurationUsernamePassword++;
  if (buildCounterConnectorConfigurationUsernamePassword < 3) {
    checkConnectorConfigurationSecret(o.password!);
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnectorConfigurationUsernamePassword--;
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

core.int buildCounterGetIamPolicyRequest = 0;
api.GetIamPolicyRequest buildGetIamPolicyRequest() {
  final o = api.GetIamPolicyRequest();
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    o.options = buildGetPolicyOptions();
  }
  buildCounterGetIamPolicyRequest--;
  return o;
}

void checkGetIamPolicyRequest(api.GetIamPolicyRequest o) {
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    checkGetPolicyOptions(o.options!);
  }
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterGetPolicyOptions = 0;
api.GetPolicyOptions buildGetPolicyOptions() {
  final o = api.GetPolicyOptions();
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    o.requestedPolicyVersion = 42;
  }
  buildCounterGetPolicyOptions--;
  return o;
}

void checkGetPolicyOptions(api.GetPolicyOptions o) {
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    unittest.expect(
      o.requestedPolicyVersion!,
      unittest.equals(42),
    );
  }
  buildCounterGetPolicyOptions--;
}

core.List<api.Connection> buildUnnamed3() => [
      buildConnection(),
      buildConnection(),
    ];

void checkUnnamed3(core.List<api.Connection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnection(o[0]);
  checkConnection(o[1]);
}

core.int buildCounterListConnectionsResponse = 0;
api.ListConnectionsResponse buildListConnectionsResponse() {
  final o = api.ListConnectionsResponse();
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    o.connections = buildUnnamed3();
    o.nextPageToken = 'foo';
  }
  buildCounterListConnectionsResponse--;
  return o;
}

void checkListConnectionsResponse(api.ListConnectionsResponse o) {
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    checkUnnamed3(o.connections!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListConnectionsResponse--;
}

core.int buildCounterMetastoreServiceConfig = 0;
api.MetastoreServiceConfig buildMetastoreServiceConfig() {
  final o = api.MetastoreServiceConfig();
  buildCounterMetastoreServiceConfig++;
  if (buildCounterMetastoreServiceConfig < 3) {
    o.metastoreService = 'foo';
  }
  buildCounterMetastoreServiceConfig--;
  return o;
}

void checkMetastoreServiceConfig(api.MetastoreServiceConfig o) {
  buildCounterMetastoreServiceConfig++;
  if (buildCounterMetastoreServiceConfig < 3) {
    unittest.expect(
      o.metastoreService!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetastoreServiceConfig--;
}

core.List<api.AuditConfig> buildUnnamed4() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed4(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed5() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed5(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed4();
    o.bindings = buildUnnamed5();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed4(o.auditConfigs!);
    checkUnnamed5(o.bindings!);
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

core.int buildCounterSalesforceDataCloudProperties = 0;
api.SalesforceDataCloudProperties buildSalesforceDataCloudProperties() {
  final o = api.SalesforceDataCloudProperties();
  buildCounterSalesforceDataCloudProperties++;
  if (buildCounterSalesforceDataCloudProperties < 3) {
    o.identity = 'foo';
    o.instanceUri = 'foo';
    o.tenantId = 'foo';
  }
  buildCounterSalesforceDataCloudProperties--;
  return o;
}

void checkSalesforceDataCloudProperties(api.SalesforceDataCloudProperties o) {
  buildCounterSalesforceDataCloudProperties++;
  if (buildCounterSalesforceDataCloudProperties < 3) {
    unittest.expect(
      o.identity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tenantId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSalesforceDataCloudProperties--;
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

core.int buildCounterSparkHistoryServerConfig = 0;
api.SparkHistoryServerConfig buildSparkHistoryServerConfig() {
  final o = api.SparkHistoryServerConfig();
  buildCounterSparkHistoryServerConfig++;
  if (buildCounterSparkHistoryServerConfig < 3) {
    o.dataprocCluster = 'foo';
  }
  buildCounterSparkHistoryServerConfig--;
  return o;
}

void checkSparkHistoryServerConfig(api.SparkHistoryServerConfig o) {
  buildCounterSparkHistoryServerConfig++;
  if (buildCounterSparkHistoryServerConfig < 3) {
    unittest.expect(
      o.dataprocCluster!,
      unittest.equals('foo'),
    );
  }
  buildCounterSparkHistoryServerConfig--;
}

core.int buildCounterSparkProperties = 0;
api.SparkProperties buildSparkProperties() {
  final o = api.SparkProperties();
  buildCounterSparkProperties++;
  if (buildCounterSparkProperties < 3) {
    o.metastoreServiceConfig = buildMetastoreServiceConfig();
    o.serviceAccountId = 'foo';
    o.sparkHistoryServerConfig = buildSparkHistoryServerConfig();
  }
  buildCounterSparkProperties--;
  return o;
}

void checkSparkProperties(api.SparkProperties o) {
  buildCounterSparkProperties++;
  if (buildCounterSparkProperties < 3) {
    checkMetastoreServiceConfig(o.metastoreServiceConfig!);
    unittest.expect(
      o.serviceAccountId!,
      unittest.equals('foo'),
    );
    checkSparkHistoryServerConfig(o.sparkHistoryServerConfig!);
  }
  buildCounterSparkProperties--;
}

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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
    o.permissions = buildUnnamed6();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed6(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
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

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed7();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed7(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
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

  unittest.group('obj-schema-AwsAccessRole', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAwsAccessRole();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AwsAccessRole.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAwsAccessRole(od);
    });
  });

  unittest.group('obj-schema-AwsProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAwsProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AwsProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAwsProperties(od);
    });
  });

  unittest.group('obj-schema-AzureProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAzureProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AzureProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAzureProperties(od);
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

  unittest.group('obj-schema-CloudResourceProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudResourceProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudResourceProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudResourceProperties(od);
    });
  });

  unittest.group('obj-schema-CloudSpannerProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudSpannerProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudSpannerProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudSpannerProperties(od);
    });
  });

  unittest.group('obj-schema-CloudSqlCredential', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudSqlCredential();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudSqlCredential.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudSqlCredential(od);
    });
  });

  unittest.group('obj-schema-CloudSqlProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudSqlProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudSqlProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudSqlProperties(od);
    });
  });

  unittest.group('obj-schema-Connection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Connection.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkConnection(od);
    });
  });

  unittest.group('obj-schema-ConnectorConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectorConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectorConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectorConfiguration(od);
    });
  });

  unittest.group('obj-schema-ConnectorConfigurationAuthentication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectorConfigurationAuthentication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectorConfigurationAuthentication.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectorConfigurationAuthentication(od);
    });
  });

  unittest.group('obj-schema-ConnectorConfigurationEndpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectorConfigurationEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectorConfigurationEndpoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectorConfigurationEndpoint(od);
    });
  });

  unittest.group('obj-schema-ConnectorConfigurationNetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectorConfigurationNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectorConfigurationNetwork.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectorConfigurationNetwork(od);
    });
  });

  unittest.group('obj-schema-ConnectorConfigurationPrivateServiceConnect', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectorConfigurationPrivateServiceConnect();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectorConfigurationPrivateServiceConnect.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectorConfigurationPrivateServiceConnect(od);
    });
  });

  unittest.group('obj-schema-ConnectorConfigurationSecret', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectorConfigurationSecret();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectorConfigurationSecret.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectorConfigurationSecret(od);
    });
  });

  unittest.group('obj-schema-ConnectorConfigurationUsernamePassword', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectorConfigurationUsernamePassword();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectorConfigurationUsernamePassword.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectorConfigurationUsernamePassword(od);
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

  unittest.group('obj-schema-GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GetPolicyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetPolicyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetPolicyOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetPolicyOptions(od);
    });
  });

  unittest.group('obj-schema-ListConnectionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConnectionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConnectionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListConnectionsResponse(od);
    });
  });

  unittest.group('obj-schema-MetastoreServiceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetastoreServiceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetastoreServiceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetastoreServiceConfig(od);
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

  unittest.group('obj-schema-SalesforceDataCloudProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSalesforceDataCloudProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SalesforceDataCloudProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSalesforceDataCloudProperties(od);
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

  unittest.group('obj-schema-SparkHistoryServerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkHistoryServerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkHistoryServerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSparkHistoryServerConfig(od);
    });
  });

  unittest.group('obj-schema-SparkProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSparkProperties(od);
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

  unittest.group('resource-ProjectsLocationsConnectionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryConnectionServiceApi(mock).projects.locations.connections;
      final arg_request = buildConnection();
      final arg_parent = 'foo';
      final arg_connectionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Connection.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
          queryMap['connectionId']!.first,
          unittest.equals(arg_connectionId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildConnection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          connectionId: arg_connectionId, $fields: arg_$fields);
      checkConnection(response as api.Connection);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryConnectionServiceApi(mock).projects.locations.connections;
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
          api.BigQueryConnectionServiceApi(mock).projects.locations.connections;
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
        final resp = convert.json.encode(buildConnection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConnection(response as api.Connection);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryConnectionServiceApi(mock).projects.locations.connections;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryConnectionServiceApi(mock).projects.locations.connections;
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
        final resp = convert.json.encode(buildListConnectionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListConnectionsResponse(response as api.ListConnectionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryConnectionServiceApi(mock).projects.locations.connections;
      final arg_request = buildConnection();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Connection.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildConnection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkConnection(response as api.Connection);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryConnectionServiceApi(mock).projects.locations.connections;
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
      final res =
          api.BigQueryConnectionServiceApi(mock).projects.locations.connections;
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
