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

import 'package:googleapis/connectors/v1.dart' as api;
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

core.List<api.ConfigVariable> buildUnnamed2() => [
      buildConfigVariable(),
      buildConfigVariable(),
    ];

void checkUnnamed2(core.List<api.ConfigVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigVariable(o[0]);
  checkConfigVariable(o[1]);
}

core.int buildCounterAuthConfig = 0;
api.AuthConfig buildAuthConfig() {
  final o = api.AuthConfig();
  buildCounterAuthConfig++;
  if (buildCounterAuthConfig < 3) {
    o.additionalVariables = buildUnnamed2();
    o.authKey = 'foo';
    o.authType = 'foo';
    o.oauth2AuthCodeFlow = buildOauth2AuthCodeFlow();
    o.oauth2AuthCodeFlowGoogleManaged = buildOauth2AuthCodeFlowGoogleManaged();
    o.oauth2ClientCredentials = buildOauth2ClientCredentials();
    o.oauth2JwtBearer = buildOauth2JwtBearer();
    o.sshPublicKey = buildSshPublicKey();
    o.userPassword = buildUserPassword();
  }
  buildCounterAuthConfig--;
  return o;
}

void checkAuthConfig(api.AuthConfig o) {
  buildCounterAuthConfig++;
  if (buildCounterAuthConfig < 3) {
    checkUnnamed2(o.additionalVariables!);
    unittest.expect(
      o.authKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.authType!,
      unittest.equals('foo'),
    );
    checkOauth2AuthCodeFlow(o.oauth2AuthCodeFlow!);
    checkOauth2AuthCodeFlowGoogleManaged(o.oauth2AuthCodeFlowGoogleManaged!);
    checkOauth2ClientCredentials(o.oauth2ClientCredentials!);
    checkOauth2JwtBearer(o.oauth2JwtBearer!);
    checkSshPublicKey(o.sshPublicKey!);
    checkUserPassword(o.userPassword!);
  }
  buildCounterAuthConfig--;
}

core.List<api.ConfigVariableTemplate> buildUnnamed3() => [
      buildConfigVariableTemplate(),
      buildConfigVariableTemplate(),
    ];

void checkUnnamed3(core.List<api.ConfigVariableTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigVariableTemplate(o[0]);
  checkConfigVariableTemplate(o[1]);
}

core.int buildCounterAuthConfigTemplate = 0;
api.AuthConfigTemplate buildAuthConfigTemplate() {
  final o = api.AuthConfigTemplate();
  buildCounterAuthConfigTemplate++;
  if (buildCounterAuthConfigTemplate < 3) {
    o.authKey = 'foo';
    o.authType = 'foo';
    o.configVariableTemplates = buildUnnamed3();
    o.description = 'foo';
    o.displayName = 'foo';
    o.isDefault = true;
  }
  buildCounterAuthConfigTemplate--;
  return o;
}

void checkAuthConfigTemplate(api.AuthConfigTemplate o) {
  buildCounterAuthConfigTemplate++;
  if (buildCounterAuthConfigTemplate < 3) {
    unittest.expect(
      o.authKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.authType!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.configVariableTemplates!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isDefault!, unittest.isTrue);
  }
  buildCounterAuthConfigTemplate--;
}

core.int buildCounterAuthField = 0;
api.AuthField buildAuthField() {
  final o = api.AuthField();
  buildCounterAuthField++;
  if (buildCounterAuthField < 3) {
    o.dataType = 'foo';
    o.description = 'foo';
    o.key = 'foo';
  }
  buildCounterAuthField--;
  return o;
}

void checkAuthField(api.AuthField o) {
  buildCounterAuthField++;
  if (buildCounterAuthField < 3) {
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuthField--;
}

core.Map<core.String, api.AuthProperty> buildUnnamed4() => {
      'x': buildAuthProperty(),
      'y': buildAuthProperty(),
    };

void checkUnnamed4(core.Map<core.String, api.AuthProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthProperty(o['x']!);
  checkAuthProperty(o['y']!);
}

core.int buildCounterAuthObject = 0;
api.AuthObject buildAuthObject() {
  final o = api.AuthObject();
  buildCounterAuthObject++;
  if (buildCounterAuthObject < 3) {
    o.additionalProperties = true;
    o.authKey = 'foo';
    o.authType = 'foo';
    o.description = 'foo';
    o.isDefault = true;
    o.properties = buildUnnamed4();
    o.type = 'foo';
  }
  buildCounterAuthObject--;
  return o;
}

void checkAuthObject(api.AuthObject o) {
  buildCounterAuthObject++;
  if (buildCounterAuthObject < 3) {
    unittest.expect(o.additionalProperties!, unittest.isTrue);
    unittest.expect(
      o.authKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.authType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isDefault!, unittest.isTrue);
    checkUnnamed4(o.properties!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuthObject--;
}

core.int buildCounterAuthProperty = 0;
api.AuthProperty buildAuthProperty() {
  final o = api.AuthProperty();
  buildCounterAuthProperty++;
  if (buildCounterAuthProperty < 3) {
    o.description = 'foo';
    o.type = 'foo';
  }
  buildCounterAuthProperty--;
  return o;
}

void checkAuthProperty(api.AuthProperty o) {
  buildCounterAuthProperty++;
  if (buildCounterAuthProperty < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuthProperty--;
}

core.List<api.AuthField> buildUnnamed5() => [
      buildAuthField(),
      buildAuthField(),
    ];

void checkUnnamed5(core.List<api.AuthField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthField(o[0]);
  checkAuthField(o[1]);
}

core.int buildCounterAuthSchema = 0;
api.AuthSchema buildAuthSchema() {
  final o = api.AuthSchema();
  buildCounterAuthSchema++;
  if (buildCounterAuthSchema < 3) {
    o.authFields = buildUnnamed5();
    o.authKey = 'foo';
    o.authType = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.isDefault = true;
  }
  buildCounterAuthSchema--;
  return o;
}

void checkAuthSchema(api.AuthSchema o) {
  buildCounterAuthSchema++;
  if (buildCounterAuthSchema < 3) {
    checkUnnamed5(o.authFields!);
    unittest.expect(
      o.authKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.authType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isDefault!, unittest.isTrue);
  }
  buildCounterAuthSchema--;
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

core.int buildCounterAuthorizationCodeLink = 0;
api.AuthorizationCodeLink buildAuthorizationCodeLink() {
  final o = api.AuthorizationCodeLink();
  buildCounterAuthorizationCodeLink++;
  if (buildCounterAuthorizationCodeLink < 3) {
    o.clientId = 'foo';
    o.clientSecret = buildSecret();
    o.enablePkce = true;
    o.omitQueryParams = true;
    o.scopes = buildUnnamed6();
    o.uri = 'foo';
  }
  buildCounterAuthorizationCodeLink--;
  return o;
}

void checkAuthorizationCodeLink(api.AuthorizationCodeLink o) {
  buildCounterAuthorizationCodeLink++;
  if (buildCounterAuthorizationCodeLink < 3) {
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    checkSecret(o.clientSecret!);
    unittest.expect(o.enablePkce!, unittest.isTrue);
    unittest.expect(o.omitQueryParams!, unittest.isTrue);
    checkUnnamed6(o.scopes!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuthorizationCodeLink--;
}

core.int buildCounterBillingConfig = 0;
api.BillingConfig buildBillingConfig() {
  final o = api.BillingConfig();
  buildCounterBillingConfig++;
  if (buildCounterBillingConfig < 3) {
    o.billingCategory = 'foo';
  }
  buildCounterBillingConfig--;
  return o;
}

void checkBillingConfig(api.BillingConfig o) {
  buildCounterBillingConfig++;
  if (buildCounterBillingConfig < 3) {
    unittest.expect(
      o.billingCategory!,
      unittest.equals('foo'),
    );
  }
  buildCounterBillingConfig--;
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

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed7();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed7(o.members!);
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

core.int buildCounterConfigVariable = 0;
api.ConfigVariable buildConfigVariable() {
  final o = api.ConfigVariable();
  buildCounterConfigVariable++;
  if (buildCounterConfigVariable < 3) {
    o.boolValue = true;
    o.encryptionKeyValue = buildEncryptionKey();
    o.intValue = 'foo';
    o.key = 'foo';
    o.secretValue = buildSecret();
    o.stringValue = 'foo';
  }
  buildCounterConfigVariable--;
  return o;
}

void checkConfigVariable(api.ConfigVariable o) {
  buildCounterConfigVariable++;
  if (buildCounterConfigVariable < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    checkEncryptionKey(o.encryptionKeyValue!);
    unittest.expect(
      o.intValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkSecret(o.secretValue!);
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigVariable--;
}

core.List<api.EnumOption> buildUnnamed8() => [
      buildEnumOption(),
      buildEnumOption(),
    ];

void checkUnnamed8(core.List<api.EnumOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnumOption(o[0]);
  checkEnumOption(o[1]);
}

core.int buildCounterConfigVariableTemplate = 0;
api.ConfigVariableTemplate buildConfigVariableTemplate() {
  final o = api.ConfigVariableTemplate();
  buildCounterConfigVariableTemplate++;
  if (buildCounterConfigVariableTemplate < 3) {
    o.authorizationCodeLink = buildAuthorizationCodeLink();
    o.description = 'foo';
    o.displayName = 'foo';
    o.enumOptions = buildUnnamed8();
    o.enumSource = 'foo';
    o.isAdvanced = true;
    o.key = 'foo';
    o.locationType = 'foo';
    o.multipleSelectConfig = buildMultipleSelectConfig();
    o.required = true;
    o.requiredCondition = buildLogicalExpression();
    o.roleGrant = buildRoleGrant();
    o.state = 'foo';
    o.validationRegex = 'foo';
    o.valueType = 'foo';
  }
  buildCounterConfigVariableTemplate--;
  return o;
}

void checkConfigVariableTemplate(api.ConfigVariableTemplate o) {
  buildCounterConfigVariableTemplate++;
  if (buildCounterConfigVariableTemplate < 3) {
    checkAuthorizationCodeLink(o.authorizationCodeLink!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.enumOptions!);
    unittest.expect(
      o.enumSource!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isAdvanced!, unittest.isTrue);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationType!,
      unittest.equals('foo'),
    );
    checkMultipleSelectConfig(o.multipleSelectConfig!);
    unittest.expect(o.required!, unittest.isTrue);
    checkLogicalExpression(o.requiredCondition!);
    checkRoleGrant(o.roleGrant!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.validationRegex!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigVariableTemplate--;
}

core.List<api.ConfigVariable> buildUnnamed9() => [
      buildConfigVariable(),
      buildConfigVariable(),
    ];

void checkUnnamed9(core.List<api.ConfigVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigVariable(o[0]);
  checkConfigVariable(o[1]);
}

core.List<api.DestinationConfig> buildUnnamed10() => [
      buildDestinationConfig(),
      buildDestinationConfig(),
    ];

void checkUnnamed10(core.List<api.DestinationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDestinationConfig(o[0]);
  checkDestinationConfig(o[1]);
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

core.int buildCounterConnection = 0;
api.Connection buildConnection() {
  final o = api.Connection();
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    o.asyncOperationsEnabled = true;
    o.authConfig = buildAuthConfig();
    o.authOverrideEnabled = true;
    o.billingConfig = buildBillingConfig();
    o.configVariables = buildUnnamed9();
    o.connectionRevision = 'foo';
    o.connectorVersion = 'foo';
    o.connectorVersionInfraConfig = buildConnectorVersionInfraConfig();
    o.connectorVersionLaunchStage = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.destinationConfigs = buildUnnamed10();
    o.envoyImageLocation = 'foo';
    o.eventingConfig = buildEventingConfig();
    o.eventingEnablementType = 'foo';
    o.eventingRuntimeData = buildEventingRuntimeData();
    o.host = 'foo';
    o.imageLocation = 'foo';
    o.isTrustedTester = true;
    o.labels = buildUnnamed11();
    o.lockConfig = buildLockConfig();
    o.logConfig = buildConnectorsLogConfig();
    o.name = 'foo';
    o.nodeConfig = buildNodeConfig();
    o.serviceAccount = 'foo';
    o.serviceDirectory = 'foo';
    o.sslConfig = buildSslConfig();
    o.status = buildConnectionStatus();
    o.subscriptionType = 'foo';
    o.suspended = true;
    o.tlsServiceDirectory = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterConnection--;
  return o;
}

void checkConnection(api.Connection o) {
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    unittest.expect(o.asyncOperationsEnabled!, unittest.isTrue);
    checkAuthConfig(o.authConfig!);
    unittest.expect(o.authOverrideEnabled!, unittest.isTrue);
    checkBillingConfig(o.billingConfig!);
    checkUnnamed9(o.configVariables!);
    unittest.expect(
      o.connectionRevision!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.connectorVersion!,
      unittest.equals('foo'),
    );
    checkConnectorVersionInfraConfig(o.connectorVersionInfraConfig!);
    unittest.expect(
      o.connectorVersionLaunchStage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.destinationConfigs!);
    unittest.expect(
      o.envoyImageLocation!,
      unittest.equals('foo'),
    );
    checkEventingConfig(o.eventingConfig!);
    unittest.expect(
      o.eventingEnablementType!,
      unittest.equals('foo'),
    );
    checkEventingRuntimeData(o.eventingRuntimeData!);
    unittest.expect(
      o.host!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isTrustedTester!, unittest.isTrue);
    checkUnnamed11(o.labels!);
    checkLockConfig(o.lockConfig!);
    checkConnectorsLogConfig(o.logConfig!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkNodeConfig(o.nodeConfig!);
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceDirectory!,
      unittest.equals('foo'),
    );
    checkSslConfig(o.sslConfig!);
    checkConnectionStatus(o.status!);
    unittest.expect(
      o.subscriptionType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.suspended!, unittest.isTrue);
    unittest.expect(
      o.tlsServiceDirectory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnection--;
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

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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

core.int buildCounterConnectionSchemaMetadata = 0;
api.ConnectionSchemaMetadata buildConnectionSchemaMetadata() {
  final o = api.ConnectionSchemaMetadata();
  buildCounterConnectionSchemaMetadata++;
  if (buildCounterConnectionSchemaMetadata < 3) {
    o.actions = buildUnnamed12();
    o.entities = buildUnnamed13();
    o.errorMessage = 'foo';
    o.name = 'foo';
    o.refreshTime = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterConnectionSchemaMetadata--;
  return o;
}

void checkConnectionSchemaMetadata(api.ConnectionSchemaMetadata o) {
  buildCounterConnectionSchemaMetadata++;
  if (buildCounterConnectionSchemaMetadata < 3) {
    checkUnnamed12(o.actions!);
    checkUnnamed13(o.entities!);
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.refreshTime!,
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
  buildCounterConnectionSchemaMetadata--;
}

core.int buildCounterConnectionStatus = 0;
api.ConnectionStatus buildConnectionStatus() {
  final o = api.ConnectionStatus();
  buildCounterConnectionStatus++;
  if (buildCounterConnectionStatus < 3) {
    o.description = 'foo';
    o.state = 'foo';
    o.status = 'foo';
  }
  buildCounterConnectionStatus--;
  return o;
}

void checkConnectionStatus(api.ConnectionStatus o) {
  buildCounterConnectionStatus++;
  if (buildCounterConnectionStatus < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnectionStatus--;
}

core.Map<core.String, core.String> buildUnnamed14() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed14(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed15() => [
      'foo',
      'foo',
    ];

void checkUnnamed15(core.List<core.String> o) {
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

core.int buildCounterConnector = 0;
api.Connector buildConnector() {
  final o = api.Connector();
  buildCounterConnector++;
  if (buildCounterConnector < 3) {
    o.category = 'foo';
    o.connectorType = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.documentationUri = 'foo';
    o.eventingDetails = buildEventingDetails();
    o.externalUri = 'foo';
    o.labels = buildUnnamed14();
    o.launchStage = 'foo';
    o.name = 'foo';
    o.tags = buildUnnamed15();
    o.updateTime = 'foo';
    o.webAssetsLocation = 'foo';
  }
  buildCounterConnector--;
  return o;
}

void checkConnector(api.Connector o) {
  buildCounterConnector++;
  if (buildCounterConnector < 3) {
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.connectorType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.documentationUri!,
      unittest.equals('foo'),
    );
    checkEventingDetails(o.eventingDetails!);
    unittest.expect(
      o.externalUri!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.labels!);
    unittest.expect(
      o.launchStage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.tags!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webAssetsLocation!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnector--;
}

core.int buildCounterConnectorInfraConfig = 0;
api.ConnectorInfraConfig buildConnectorInfraConfig() {
  final o = api.ConnectorInfraConfig();
  buildCounterConnectorInfraConfig++;
  if (buildCounterConnectorInfraConfig < 3) {
    o.alwaysAllocateCpu = true;
    o.connectionRatelimitWindowSeconds = 'foo';
    o.connectorVersioningEnabled = true;
    o.deploymentModel = 'foo';
    o.hpaConfig = buildHPAConfig();
    o.internalclientRatelimitThreshold = 'foo';
    o.maxInstanceRequestConcurrency = 42;
    o.migrateDeploymentModel = true;
    o.migrateTls = true;
    o.provisionCloudSpanner = true;
    o.ratelimitThreshold = 'foo';
    o.resourceLimits = buildResourceLimits();
    o.resourceRequests = buildResourceRequests();
    o.sharedDeployment = 'foo';
  }
  buildCounterConnectorInfraConfig--;
  return o;
}

void checkConnectorInfraConfig(api.ConnectorInfraConfig o) {
  buildCounterConnectorInfraConfig++;
  if (buildCounterConnectorInfraConfig < 3) {
    unittest.expect(o.alwaysAllocateCpu!, unittest.isTrue);
    unittest.expect(
      o.connectionRatelimitWindowSeconds!,
      unittest.equals('foo'),
    );
    unittest.expect(o.connectorVersioningEnabled!, unittest.isTrue);
    unittest.expect(
      o.deploymentModel!,
      unittest.equals('foo'),
    );
    checkHPAConfig(o.hpaConfig!);
    unittest.expect(
      o.internalclientRatelimitThreshold!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxInstanceRequestConcurrency!,
      unittest.equals(42),
    );
    unittest.expect(o.migrateDeploymentModel!, unittest.isTrue);
    unittest.expect(o.migrateTls!, unittest.isTrue);
    unittest.expect(o.provisionCloudSpanner!, unittest.isTrue);
    unittest.expect(
      o.ratelimitThreshold!,
      unittest.equals('foo'),
    );
    checkResourceLimits(o.resourceLimits!);
    checkResourceRequests(o.resourceRequests!);
    unittest.expect(
      o.sharedDeployment!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnectorInfraConfig--;
}

core.List<api.AuthConfigTemplate> buildUnnamed16() => [
      buildAuthConfigTemplate(),
      buildAuthConfigTemplate(),
    ];

void checkUnnamed16(core.List<api.AuthConfigTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthConfigTemplate(o[0]);
  checkAuthConfigTemplate(o[1]);
}

core.List<api.ConfigVariableTemplate> buildUnnamed17() => [
      buildConfigVariableTemplate(),
      buildConfigVariableTemplate(),
    ];

void checkUnnamed17(core.List<api.ConfigVariableTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigVariableTemplate(o[0]);
  checkConfigVariableTemplate(o[1]);
}

core.List<api.DestinationConfigTemplate> buildUnnamed18() => [
      buildDestinationConfigTemplate(),
      buildDestinationConfigTemplate(),
    ];

void checkUnnamed18(core.List<api.DestinationConfigTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDestinationConfigTemplate(o[0]);
  checkDestinationConfigTemplate(o[1]);
}

core.Map<core.String, core.String> buildUnnamed19() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed19(core.Map<core.String, core.String> o) {
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

core.List<api.RoleGrant> buildUnnamed20() => [
      buildRoleGrant(),
      buildRoleGrant(),
    ];

void checkUnnamed20(core.List<api.RoleGrant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoleGrant(o[0]);
  checkRoleGrant(o[1]);
}

core.List<api.StandardAction> buildUnnamed21() => [
      buildStandardAction(),
      buildStandardAction(),
    ];

void checkUnnamed21(core.List<api.StandardAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStandardAction(o[0]);
  checkStandardAction(o[1]);
}

core.List<api.StandardEntity> buildUnnamed22() => [
      buildStandardEntity(),
      buildStandardEntity(),
    ];

void checkUnnamed22(core.List<api.StandardEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStandardEntity(o[0]);
  checkStandardEntity(o[1]);
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

core.int buildCounterConnectorVersion = 0;
api.ConnectorVersion buildConnectorVersion() {
  final o = api.ConnectorVersion();
  buildCounterConnectorVersion++;
  if (buildCounterConnectorVersion < 3) {
    o.authConfigTemplates = buildUnnamed16();
    o.authOverrideEnabled = true;
    o.configVariableTemplates = buildUnnamed17();
    o.connectorInfraConfig = buildConnectorInfraConfig();
    o.createTime = 'foo';
    o.destinationConfigTemplates = buildUnnamed18();
    o.displayName = 'foo';
    o.egressControlConfig = buildEgressControlConfig();
    o.eventingConfigTemplate = buildEventingConfigTemplate();
    o.isAsyncOperationsSupported = true;
    o.isCustomActionsSupported = true;
    o.isCustomEntitiesSupported = true;
    o.labels = buildUnnamed19();
    o.launchStage = 'foo';
    o.name = 'foo';
    o.releaseVersion = 'foo';
    o.roleGrant = buildRoleGrant();
    o.roleGrants = buildUnnamed20();
    o.schemaRefreshConfig = buildSchemaRefreshConfig();
    o.sslConfigTemplate = buildSslConfigTemplate();
    o.supportedRuntimeFeatures = buildSupportedRuntimeFeatures();
    o.supportedStandardActions = buildUnnamed21();
    o.supportedStandardEntities = buildUnnamed22();
    o.unsupportedConnectionTypes = buildUnnamed23();
    o.updateTime = 'foo';
  }
  buildCounterConnectorVersion--;
  return o;
}

void checkConnectorVersion(api.ConnectorVersion o) {
  buildCounterConnectorVersion++;
  if (buildCounterConnectorVersion < 3) {
    checkUnnamed16(o.authConfigTemplates!);
    unittest.expect(o.authOverrideEnabled!, unittest.isTrue);
    checkUnnamed17(o.configVariableTemplates!);
    checkConnectorInfraConfig(o.connectorInfraConfig!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.destinationConfigTemplates!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkEgressControlConfig(o.egressControlConfig!);
    checkEventingConfigTemplate(o.eventingConfigTemplate!);
    unittest.expect(o.isAsyncOperationsSupported!, unittest.isTrue);
    unittest.expect(o.isCustomActionsSupported!, unittest.isTrue);
    unittest.expect(o.isCustomEntitiesSupported!, unittest.isTrue);
    checkUnnamed19(o.labels!);
    unittest.expect(
      o.launchStage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.releaseVersion!,
      unittest.equals('foo'),
    );
    checkRoleGrant(o.roleGrant!);
    checkUnnamed20(o.roleGrants!);
    checkSchemaRefreshConfig(o.schemaRefreshConfig!);
    checkSslConfigTemplate(o.sslConfigTemplate!);
    checkSupportedRuntimeFeatures(o.supportedRuntimeFeatures!);
    checkUnnamed21(o.supportedStandardActions!);
    checkUnnamed22(o.supportedStandardEntities!);
    checkUnnamed23(o.unsupportedConnectionTypes!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnectorVersion--;
}

core.int buildCounterConnectorVersionInfraConfig = 0;
api.ConnectorVersionInfraConfig buildConnectorVersionInfraConfig() {
  final o = api.ConnectorVersionInfraConfig();
  buildCounterConnectorVersionInfraConfig++;
  if (buildCounterConnectorVersionInfraConfig < 3) {
    o.connectionRatelimitWindowSeconds = 'foo';
    o.deploymentModel = 'foo';
    o.deploymentModelMigrationState = 'foo';
    o.hpaConfig = buildHPAConfig();
    o.internalclientRatelimitThreshold = 'foo';
    o.maxInstanceRequestConcurrency = 42;
    o.ratelimitThreshold = 'foo';
    o.resourceLimits = buildResourceLimits();
    o.resourceRequests = buildResourceRequests();
    o.sharedDeployment = 'foo';
    o.tlsMigrationState = 'foo';
  }
  buildCounterConnectorVersionInfraConfig--;
  return o;
}

void checkConnectorVersionInfraConfig(api.ConnectorVersionInfraConfig o) {
  buildCounterConnectorVersionInfraConfig++;
  if (buildCounterConnectorVersionInfraConfig < 3) {
    unittest.expect(
      o.connectionRatelimitWindowSeconds!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deploymentModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deploymentModelMigrationState!,
      unittest.equals('foo'),
    );
    checkHPAConfig(o.hpaConfig!);
    unittest.expect(
      o.internalclientRatelimitThreshold!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxInstanceRequestConcurrency!,
      unittest.equals(42),
    );
    unittest.expect(
      o.ratelimitThreshold!,
      unittest.equals('foo'),
    );
    checkResourceLimits(o.resourceLimits!);
    checkResourceRequests(o.resourceRequests!);
    unittest.expect(
      o.sharedDeployment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tlsMigrationState!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnectorVersionInfraConfig--;
}

core.int buildCounterConnectorsLogConfig = 0;
api.ConnectorsLogConfig buildConnectorsLogConfig() {
  final o = api.ConnectorsLogConfig();
  buildCounterConnectorsLogConfig++;
  if (buildCounterConnectorsLogConfig < 3) {
    o.enabled = true;
    o.level = 'foo';
  }
  buildCounterConnectorsLogConfig--;
  return o;
}

void checkConnectorsLogConfig(api.ConnectorsLogConfig o) {
  buildCounterConnectorsLogConfig++;
  if (buildCounterConnectorsLogConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.level!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnectorsLogConfig--;
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

core.Map<core.String, core.String> buildUnnamed26() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed26(core.Map<core.String, core.String> o) {
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

core.int buildCounterCustomConnector = 0;
api.CustomConnector buildCustomConnector() {
  final o = api.CustomConnector();
  buildCounterCustomConnector++;
  if (buildCounterCustomConnector < 3) {
    o.activeConnectorVersions = buildUnnamed24();
    o.allConnectorVersions = buildUnnamed25();
    o.createTime = 'foo';
    o.customConnectorType = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed26();
    o.logo = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterCustomConnector--;
  return o;
}

void checkCustomConnector(api.CustomConnector o) {
  buildCounterCustomConnector++;
  if (buildCounterCustomConnector < 3) {
    checkUnnamed24(o.activeConnectorVersions!);
    checkUnnamed25(o.allConnectorVersions!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customConnectorType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.labels!);
    unittest.expect(
      o.logo!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomConnector--;
}

core.List<api.ConfigVariableTemplate> buildUnnamed27() => [
      buildConfigVariableTemplate(),
      buildConfigVariableTemplate(),
    ];

void checkUnnamed27(core.List<api.ConfigVariableTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigVariableTemplate(o[0]);
  checkConfigVariableTemplate(o[1]);
}

core.List<api.DestinationConfig> buildUnnamed28() => [
      buildDestinationConfig(),
      buildDestinationConfig(),
    ];

void checkUnnamed28(core.List<api.DestinationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDestinationConfig(o[0]);
  checkDestinationConfig(o[1]);
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

core.int buildCounterCustomConnectorVersion = 0;
api.CustomConnectorVersion buildCustomConnectorVersion() {
  final o = api.CustomConnectorVersion();
  buildCounterCustomConnectorVersion++;
  if (buildCounterCustomConnectorVersion < 3) {
    o.authConfig = buildAuthConfig();
    o.backendVariableTemplates = buildUnnamed27();
    o.createTime = 'foo';
    o.destinationConfigs = buildUnnamed28();
    o.enableBackendDestinationConfig = true;
    o.labels = buildUnnamed29();
    o.name = 'foo';
    o.serviceAccount = 'foo';
    o.specLocation = 'foo';
    o.specServerUrls = buildUnnamed30();
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterCustomConnectorVersion--;
  return o;
}

void checkCustomConnectorVersion(api.CustomConnectorVersion o) {
  buildCounterCustomConnectorVersion++;
  if (buildCounterCustomConnectorVersion < 3) {
    checkAuthConfig(o.authConfig!);
    checkUnnamed27(o.backendVariableTemplates!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.destinationConfigs!);
    unittest.expect(o.enableBackendDestinationConfig!, unittest.isTrue);
    checkUnnamed29(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.specLocation!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.specServerUrls!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomConnectorVersion--;
}

core.int buildCounterDeadLetterConfig = 0;
api.DeadLetterConfig buildDeadLetterConfig() {
  final o = api.DeadLetterConfig();
  buildCounterDeadLetterConfig++;
  if (buildCounterDeadLetterConfig < 3) {
    o.projectId = 'foo';
    o.topic = 'foo';
  }
  buildCounterDeadLetterConfig--;
  return o;
}

void checkDeadLetterConfig(api.DeadLetterConfig o) {
  buildCounterDeadLetterConfig++;
  if (buildCounterDeadLetterConfig < 3) {
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.topic!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeadLetterConfig--;
}

core.int buildCounterDeprecateCustomConnectorVersionRequest = 0;
api.DeprecateCustomConnectorVersionRequest
    buildDeprecateCustomConnectorVersionRequest() {
  final o = api.DeprecateCustomConnectorVersionRequest();
  buildCounterDeprecateCustomConnectorVersionRequest++;
  if (buildCounterDeprecateCustomConnectorVersionRequest < 3) {}
  buildCounterDeprecateCustomConnectorVersionRequest--;
  return o;
}

void checkDeprecateCustomConnectorVersionRequest(
    api.DeprecateCustomConnectorVersionRequest o) {
  buildCounterDeprecateCustomConnectorVersionRequest++;
  if (buildCounterDeprecateCustomConnectorVersionRequest < 3) {}
  buildCounterDeprecateCustomConnectorVersionRequest--;
}

core.int buildCounterDestination = 0;
api.Destination buildDestination() {
  final o = api.Destination();
  buildCounterDestination++;
  if (buildCounterDestination < 3) {
    o.host = 'foo';
    o.port = 42;
    o.serviceAttachment = 'foo';
  }
  buildCounterDestination--;
  return o;
}

void checkDestination(api.Destination o) {
  buildCounterDestination++;
  if (buildCounterDestination < 3) {
    unittest.expect(
      o.host!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
    unittest.expect(
      o.serviceAttachment!,
      unittest.equals('foo'),
    );
  }
  buildCounterDestination--;
}

core.List<api.Destination> buildUnnamed31() => [
      buildDestination(),
      buildDestination(),
    ];

void checkUnnamed31(core.List<api.Destination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDestination(o[0]);
  checkDestination(o[1]);
}

core.int buildCounterDestinationConfig = 0;
api.DestinationConfig buildDestinationConfig() {
  final o = api.DestinationConfig();
  buildCounterDestinationConfig++;
  if (buildCounterDestinationConfig < 3) {
    o.destinations = buildUnnamed31();
    o.key = 'foo';
  }
  buildCounterDestinationConfig--;
  return o;
}

void checkDestinationConfig(api.DestinationConfig o) {
  buildCounterDestinationConfig++;
  if (buildCounterDestinationConfig < 3) {
    checkUnnamed31(o.destinations!);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
  }
  buildCounterDestinationConfig--;
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

core.int buildCounterDestinationConfigTemplate = 0;
api.DestinationConfigTemplate buildDestinationConfigTemplate() {
  final o = api.DestinationConfigTemplate();
  buildCounterDestinationConfigTemplate++;
  if (buildCounterDestinationConfigTemplate < 3) {
    o.autocompleteSuggestions = buildUnnamed32();
    o.defaultPort = 42;
    o.description = 'foo';
    o.displayName = 'foo';
    o.isAdvanced = true;
    o.key = 'foo';
    o.max = 42;
    o.min = 42;
    o.portFieldType = 'foo';
    o.regexPattern = 'foo';
  }
  buildCounterDestinationConfigTemplate--;
  return o;
}

void checkDestinationConfigTemplate(api.DestinationConfigTemplate o) {
  buildCounterDestinationConfigTemplate++;
  if (buildCounterDestinationConfigTemplate < 3) {
    checkUnnamed32(o.autocompleteSuggestions!);
    unittest.expect(
      o.defaultPort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isAdvanced!, unittest.isTrue);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.max!,
      unittest.equals(42),
    );
    unittest.expect(
      o.min!,
      unittest.equals(42),
    );
    unittest.expect(
      o.portFieldType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.regexPattern!,
      unittest.equals('foo'),
    );
  }
  buildCounterDestinationConfigTemplate--;
}

core.int buildCounterEgressControlConfig = 0;
api.EgressControlConfig buildEgressControlConfig() {
  final o = api.EgressControlConfig();
  buildCounterEgressControlConfig++;
  if (buildCounterEgressControlConfig < 3) {
    o.backends = 'foo';
    o.extractionRules = buildExtractionRules();
  }
  buildCounterEgressControlConfig--;
  return o;
}

void checkEgressControlConfig(api.EgressControlConfig o) {
  buildCounterEgressControlConfig++;
  if (buildCounterEgressControlConfig < 3) {
    unittest.expect(
      o.backends!,
      unittest.equals('foo'),
    );
    checkExtractionRules(o.extractionRules!);
  }
  buildCounterEgressControlConfig--;
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
    o.encryptionType = 'foo';
    o.kmsKeyName = 'foo';
  }
  buildCounterEncryptionConfig--;
  return o;
}

void checkEncryptionConfig(api.EncryptionConfig o) {
  buildCounterEncryptionConfig++;
  if (buildCounterEncryptionConfig < 3) {
    unittest.expect(
      o.encryptionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
  }
  buildCounterEncryptionConfig--;
}

core.int buildCounterEncryptionKey = 0;
api.EncryptionKey buildEncryptionKey() {
  final o = api.EncryptionKey();
  buildCounterEncryptionKey++;
  if (buildCounterEncryptionKey < 3) {
    o.kmsKeyName = 'foo';
    o.type = 'foo';
  }
  buildCounterEncryptionKey--;
  return o;
}

void checkEncryptionKey(api.EncryptionKey o) {
  buildCounterEncryptionKey++;
  if (buildCounterEncryptionKey < 3) {
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterEncryptionKey--;
}

core.List<api.Header> buildUnnamed33() => [
      buildHeader(),
      buildHeader(),
    ];

void checkUnnamed33(core.List<api.Header> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeader(o[0]);
  checkHeader(o[1]);
}

core.int buildCounterEndPoint = 0;
api.EndPoint buildEndPoint() {
  final o = api.EndPoint();
  buildCounterEndPoint++;
  if (buildCounterEndPoint < 3) {
    o.endpointUri = 'foo';
    o.headers = buildUnnamed33();
  }
  buildCounterEndPoint--;
  return o;
}

void checkEndPoint(api.EndPoint o) {
  buildCounterEndPoint++;
  if (buildCounterEndPoint < 3) {
    unittest.expect(
      o.endpointUri!,
      unittest.equals('foo'),
    );
    checkUnnamed33(o.headers!);
  }
  buildCounterEndPoint--;
}

core.Map<core.String, core.String> buildUnnamed34() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed34(core.Map<core.String, core.String> o) {
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

core.int buildCounterEndpointAttachment = 0;
api.EndpointAttachment buildEndpointAttachment() {
  final o = api.EndpointAttachment();
  buildCounterEndpointAttachment++;
  if (buildCounterEndpointAttachment < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.endpointGlobalAccess = true;
    o.endpointIp = 'foo';
    o.labels = buildUnnamed34();
    o.name = 'foo';
    o.serviceAttachment = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterEndpointAttachment--;
  return o;
}

void checkEndpointAttachment(api.EndpointAttachment o) {
  buildCounterEndpointAttachment++;
  if (buildCounterEndpointAttachment < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.endpointGlobalAccess!, unittest.isTrue);
    unittest.expect(
      o.endpointIp!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAttachment!,
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
  buildCounterEndpointAttachment--;
}

core.int buildCounterEnumOption = 0;
api.EnumOption buildEnumOption() {
  final o = api.EnumOption();
  buildCounterEnumOption++;
  if (buildCounterEnumOption < 3) {
    o.displayName = 'foo';
    o.id = 'foo';
  }
  buildCounterEnumOption--;
  return o;
}

void checkEnumOption(api.EnumOption o) {
  buildCounterEnumOption++;
  if (buildCounterEnumOption < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnumOption--;
}

core.List<api.ConfigVariable> buildUnnamed35() => [
      buildConfigVariable(),
      buildConfigVariable(),
    ];

void checkUnnamed35(core.List<api.ConfigVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigVariable(o[0]);
  checkConfigVariable(o[1]);
}

core.int buildCounterEventSubscription = 0;
api.EventSubscription buildEventSubscription() {
  final o = api.EventSubscription();
  buildCounterEventSubscription++;
  if (buildCounterEventSubscription < 3) {
    o.createTime = 'foo';
    o.destinations = buildEventSubscriptionDestination();
    o.eventTypeId = 'foo';
    o.jms = buildJMS();
    o.name = 'foo';
    o.status = buildEventSubscriptionStatus();
    o.subscriber = 'foo';
    o.subscriberLink = 'foo';
    o.triggerConfigVariables = buildUnnamed35();
    o.updateTime = 'foo';
  }
  buildCounterEventSubscription--;
  return o;
}

void checkEventSubscription(api.EventSubscription o) {
  buildCounterEventSubscription++;
  if (buildCounterEventSubscription < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkEventSubscriptionDestination(o.destinations!);
    unittest.expect(
      o.eventTypeId!,
      unittest.equals('foo'),
    );
    checkJMS(o.jms!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkEventSubscriptionStatus(o.status!);
    unittest.expect(
      o.subscriber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subscriberLink!,
      unittest.equals('foo'),
    );
    checkUnnamed35(o.triggerConfigVariables!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterEventSubscription--;
}

core.int buildCounterEventSubscriptionDestination = 0;
api.EventSubscriptionDestination buildEventSubscriptionDestination() {
  final o = api.EventSubscriptionDestination();
  buildCounterEventSubscriptionDestination++;
  if (buildCounterEventSubscriptionDestination < 3) {
    o.endpoint = buildEndPoint();
    o.serviceAccount = 'foo';
    o.type = 'foo';
  }
  buildCounterEventSubscriptionDestination--;
  return o;
}

void checkEventSubscriptionDestination(api.EventSubscriptionDestination o) {
  buildCounterEventSubscriptionDestination++;
  if (buildCounterEventSubscriptionDestination < 3) {
    checkEndPoint(o.endpoint!);
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterEventSubscriptionDestination--;
}

core.int buildCounterEventSubscriptionStatus = 0;
api.EventSubscriptionStatus buildEventSubscriptionStatus() {
  final o = api.EventSubscriptionStatus();
  buildCounterEventSubscriptionStatus++;
  if (buildCounterEventSubscriptionStatus < 3) {
    o.description = 'foo';
    o.state = 'foo';
  }
  buildCounterEventSubscriptionStatus--;
  return o;
}

void checkEventSubscriptionStatus(api.EventSubscriptionStatus o) {
  buildCounterEventSubscriptionStatus++;
  if (buildCounterEventSubscriptionStatus < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterEventSubscriptionStatus--;
}

core.int buildCounterEventType = 0;
api.EventType buildEventType() {
  final o = api.EventType();
  buildCounterEventType++;
  if (buildCounterEventType < 3) {
    o.createTime = 'foo';
    o.enrichedEventPayloadSchema = 'foo';
    o.entityType = 'foo';
    o.eventPayloadSchema = 'foo';
    o.eventTypeId = 'foo';
    o.idPath = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterEventType--;
  return o;
}

void checkEventType(api.EventType o) {
  buildCounterEventType++;
  if (buildCounterEventType < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.enrichedEventPayloadSchema!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventPayloadSchema!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventTypeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.idPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterEventType--;
}

core.List<api.ConfigVariable> buildUnnamed36() => [
      buildConfigVariable(),
      buildConfigVariable(),
    ];

void checkUnnamed36(core.List<api.ConfigVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigVariable(o[0]);
  checkConfigVariable(o[1]);
}

core.int buildCounterEventingConfig = 0;
api.EventingConfig buildEventingConfig() {
  final o = api.EventingConfig();
  buildCounterEventingConfig++;
  if (buildCounterEventingConfig < 3) {
    o.additionalVariables = buildUnnamed36();
    o.authConfig = buildAuthConfig();
    o.deadLetterConfig = buildDeadLetterConfig();
    o.enrichmentEnabled = true;
    o.eventsListenerIngressEndpoint = 'foo';
    o.listenerAuthConfig = buildAuthConfig();
    o.privateConnectivityEnabled = true;
    o.proxyDestinationConfig = buildDestinationConfig();
    o.registrationDestinationConfig = buildDestinationConfig();
  }
  buildCounterEventingConfig--;
  return o;
}

void checkEventingConfig(api.EventingConfig o) {
  buildCounterEventingConfig++;
  if (buildCounterEventingConfig < 3) {
    checkUnnamed36(o.additionalVariables!);
    checkAuthConfig(o.authConfig!);
    checkDeadLetterConfig(o.deadLetterConfig!);
    unittest.expect(o.enrichmentEnabled!, unittest.isTrue);
    unittest.expect(
      o.eventsListenerIngressEndpoint!,
      unittest.equals('foo'),
    );
    checkAuthConfig(o.listenerAuthConfig!);
    unittest.expect(o.privateConnectivityEnabled!, unittest.isTrue);
    checkDestinationConfig(o.proxyDestinationConfig!);
    checkDestinationConfig(o.registrationDestinationConfig!);
  }
  buildCounterEventingConfig--;
}

core.List<api.ConfigVariableTemplate> buildUnnamed37() => [
      buildConfigVariableTemplate(),
      buildConfigVariableTemplate(),
    ];

void checkUnnamed37(core.List<api.ConfigVariableTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigVariableTemplate(o[0]);
  checkConfigVariableTemplate(o[1]);
}

core.List<api.AuthConfigTemplate> buildUnnamed38() => [
      buildAuthConfigTemplate(),
      buildAuthConfigTemplate(),
    ];

void checkUnnamed38(core.List<api.AuthConfigTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthConfigTemplate(o[0]);
  checkAuthConfigTemplate(o[1]);
}

core.List<api.AuthConfigTemplate> buildUnnamed39() => [
      buildAuthConfigTemplate(),
      buildAuthConfigTemplate(),
    ];

void checkUnnamed39(core.List<api.AuthConfigTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthConfigTemplate(o[0]);
  checkAuthConfigTemplate(o[1]);
}

core.List<api.ConfigVariableTemplate> buildUnnamed40() => [
      buildConfigVariableTemplate(),
      buildConfigVariableTemplate(),
    ];

void checkUnnamed40(core.List<api.ConfigVariableTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigVariableTemplate(o[0]);
  checkConfigVariableTemplate(o[1]);
}

core.int buildCounterEventingConfigTemplate = 0;
api.EventingConfigTemplate buildEventingConfigTemplate() {
  final o = api.EventingConfigTemplate();
  buildCounterEventingConfigTemplate++;
  if (buildCounterEventingConfigTemplate < 3) {
    o.additionalVariables = buildUnnamed37();
    o.authConfigTemplates = buildUnnamed38();
    o.autoRefresh = true;
    o.autoRegistrationSupported = true;
    o.encryptionKeyTemplate = buildConfigVariableTemplate();
    o.enrichmentSupported = true;
    o.eventListenerType = 'foo';
    o.isEventingSupported = true;
    o.listenerAuthConfigTemplates = buildUnnamed39();
    o.proxyDestinationConfig = buildDestinationConfigTemplate();
    o.registrationDestinationConfig = buildDestinationConfigTemplate();
    o.triggerConfigVariables = buildUnnamed40();
  }
  buildCounterEventingConfigTemplate--;
  return o;
}

void checkEventingConfigTemplate(api.EventingConfigTemplate o) {
  buildCounterEventingConfigTemplate++;
  if (buildCounterEventingConfigTemplate < 3) {
    checkUnnamed37(o.additionalVariables!);
    checkUnnamed38(o.authConfigTemplates!);
    unittest.expect(o.autoRefresh!, unittest.isTrue);
    unittest.expect(o.autoRegistrationSupported!, unittest.isTrue);
    checkConfigVariableTemplate(o.encryptionKeyTemplate!);
    unittest.expect(o.enrichmentSupported!, unittest.isTrue);
    unittest.expect(
      o.eventListenerType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isEventingSupported!, unittest.isTrue);
    checkUnnamed39(o.listenerAuthConfigTemplates!);
    checkDestinationConfigTemplate(o.proxyDestinationConfig!);
    checkDestinationConfigTemplate(o.registrationDestinationConfig!);
    checkUnnamed40(o.triggerConfigVariables!);
  }
  buildCounterEventingConfigTemplate--;
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

core.int buildCounterEventingDetails = 0;
api.EventingDetails buildEventingDetails() {
  final o = api.EventingDetails();
  buildCounterEventingDetails++;
  if (buildCounterEventingDetails < 3) {
    o.customEventTypes = true;
    o.description = 'foo';
    o.documentationLink = 'foo';
    o.iconLocation = 'foo';
    o.launchStage = 'foo';
    o.name = 'foo';
    o.searchTags = buildUnnamed41();
    o.type = 'foo';
  }
  buildCounterEventingDetails--;
  return o;
}

void checkEventingDetails(api.EventingDetails o) {
  buildCounterEventingDetails++;
  if (buildCounterEventingDetails < 3) {
    unittest.expect(o.customEventTypes!, unittest.isTrue);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.documentationLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iconLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.launchStage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.searchTags!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterEventingDetails--;
}

core.int buildCounterEventingRuntimeData = 0;
api.EventingRuntimeData buildEventingRuntimeData() {
  final o = api.EventingRuntimeData();
  buildCounterEventingRuntimeData++;
  if (buildCounterEventingRuntimeData < 3) {
    o.eventsListenerEndpoint = 'foo';
    o.eventsListenerPscSa = 'foo';
    o.status = buildEventingStatus();
    o.webhookData = buildWebhookData();
  }
  buildCounterEventingRuntimeData--;
  return o;
}

void checkEventingRuntimeData(api.EventingRuntimeData o) {
  buildCounterEventingRuntimeData++;
  if (buildCounterEventingRuntimeData < 3) {
    unittest.expect(
      o.eventsListenerEndpoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventsListenerPscSa!,
      unittest.equals('foo'),
    );
    checkEventingStatus(o.status!);
    checkWebhookData(o.webhookData!);
  }
  buildCounterEventingRuntimeData--;
}

core.int buildCounterEventingStatus = 0;
api.EventingStatus buildEventingStatus() {
  final o = api.EventingStatus();
  buildCounterEventingStatus++;
  if (buildCounterEventingStatus < 3) {
    o.description = 'foo';
    o.state = 'foo';
  }
  buildCounterEventingStatus--;
  return o;
}

void checkEventingStatus(api.EventingStatus o) {
  buildCounterEventingStatus++;
  if (buildCounterEventingStatus < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterEventingStatus--;
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

core.int buildCounterExtractionRule = 0;
api.ExtractionRule buildExtractionRule() {
  final o = api.ExtractionRule();
  buildCounterExtractionRule++;
  if (buildCounterExtractionRule < 3) {
    o.extractionRegex = 'foo';
    o.source = buildSource();
  }
  buildCounterExtractionRule--;
  return o;
}

void checkExtractionRule(api.ExtractionRule o) {
  buildCounterExtractionRule++;
  if (buildCounterExtractionRule < 3) {
    unittest.expect(
      o.extractionRegex!,
      unittest.equals('foo'),
    );
    checkSource(o.source!);
  }
  buildCounterExtractionRule--;
}

core.List<api.ExtractionRule> buildUnnamed42() => [
      buildExtractionRule(),
      buildExtractionRule(),
    ];

void checkUnnamed42(core.List<api.ExtractionRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtractionRule(o[0]);
  checkExtractionRule(o[1]);
}

core.int buildCounterExtractionRules = 0;
api.ExtractionRules buildExtractionRules() {
  final o = api.ExtractionRules();
  buildCounterExtractionRules++;
  if (buildCounterExtractionRules < 3) {
    o.extractionRule = buildUnnamed42();
  }
  buildCounterExtractionRules--;
  return o;
}

void checkExtractionRules(api.ExtractionRules o) {
  buildCounterExtractionRules++;
  if (buildCounterExtractionRules < 3) {
    checkUnnamed42(o.extractionRule!);
  }
  buildCounterExtractionRules--;
}

core.List<api.AuthSchema> buildUnnamed43() => [
      buildAuthSchema(),
      buildAuthSchema(),
    ];

void checkUnnamed43(core.List<api.AuthSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthSchema(o[0]);
  checkAuthSchema(o[1]);
}

core.int buildCounterFetchAuthSchemaResponse = 0;
api.FetchAuthSchemaResponse buildFetchAuthSchemaResponse() {
  final o = api.FetchAuthSchemaResponse();
  buildCounterFetchAuthSchemaResponse++;
  if (buildCounterFetchAuthSchemaResponse < 3) {
    o.authSchemas = buildUnnamed43();
    o.jsonSchema = buildJsonAuthSchema();
  }
  buildCounterFetchAuthSchemaResponse--;
  return o;
}

void checkFetchAuthSchemaResponse(api.FetchAuthSchemaResponse o) {
  buildCounterFetchAuthSchemaResponse++;
  if (buildCounterFetchAuthSchemaResponse < 3) {
    checkUnnamed43(o.authSchemas!);
    checkJsonAuthSchema(o.jsonSchema!);
  }
  buildCounterFetchAuthSchemaResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed44() => {
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

void checkUnnamed44(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterField = 0;
api.Field buildField() {
  final o = api.Field();
  buildCounterField++;
  if (buildCounterField < 3) {
    o.additionalDetails = buildUnnamed44();
    o.dataType = 'foo';
    o.defaultValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.description = 'foo';
    o.field = 'foo';
    o.jsonSchema = buildJsonSchema();
    o.key = true;
    o.nullable = true;
    o.readonly = true;
  }
  buildCounterField--;
  return o;
}

void checkField(api.Field o) {
  buildCounterField++;
  if (buildCounterField < 3) {
    checkUnnamed44(o.additionalDetails!);
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    var casted3 = (o.defaultValue!) as core.Map;
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
    checkJsonSchema(o.jsonSchema!);
    unittest.expect(o.key!, unittest.isTrue);
    unittest.expect(o.nullable!, unittest.isTrue);
    unittest.expect(o.readonly!, unittest.isTrue);
  }
  buildCounterField--;
}

core.int buildCounterFieldComparison = 0;
api.FieldComparison buildFieldComparison() {
  final o = api.FieldComparison();
  buildCounterFieldComparison++;
  if (buildCounterFieldComparison < 3) {
    o.boolValue = true;
    o.comparator = 'foo';
    o.intValue = 'foo';
    o.key = 'foo';
    o.stringValue = 'foo';
  }
  buildCounterFieldComparison--;
  return o;
}

void checkFieldComparison(api.FieldComparison o) {
  buildCounterFieldComparison++;
  if (buildCounterFieldComparison < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(
      o.comparator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.intValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterFieldComparison--;
}

core.int buildCounterHPAConfig = 0;
api.HPAConfig buildHPAConfig() {
  final o = api.HPAConfig();
  buildCounterHPAConfig++;
  if (buildCounterHPAConfig < 3) {
    o.cpuUtilizationThreshold = 'foo';
    o.memoryUtilizationThreshold = 'foo';
  }
  buildCounterHPAConfig--;
  return o;
}

void checkHPAConfig(api.HPAConfig o) {
  buildCounterHPAConfig++;
  if (buildCounterHPAConfig < 3) {
    unittest.expect(
      o.cpuUtilizationThreshold!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memoryUtilizationThreshold!,
      unittest.equals('foo'),
    );
  }
  buildCounterHPAConfig--;
}

core.int buildCounterHeader = 0;
api.Header buildHeader() {
  final o = api.Header();
  buildCounterHeader++;
  if (buildCounterHeader < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterHeader--;
  return o;
}

void checkHeader(api.Header o) {
  buildCounterHeader++;
  if (buildCounterHeader < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterHeader--;
}

core.int buildCounterInputParameter = 0;
api.InputParameter buildInputParameter() {
  final o = api.InputParameter();
  buildCounterInputParameter++;
  if (buildCounterInputParameter < 3) {
    o.dataType = 'foo';
    o.defaultValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.description = 'foo';
    o.jsonSchema = buildJsonSchema();
    o.nullable = true;
    o.parameter = 'foo';
  }
  buildCounterInputParameter--;
  return o;
}

void checkInputParameter(api.InputParameter o) {
  buildCounterInputParameter++;
  if (buildCounterInputParameter < 3) {
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    var casted4 = (o.defaultValue!) as core.Map;
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkJsonSchema(o.jsonSchema!);
    unittest.expect(o.nullable!, unittest.isTrue);
    unittest.expect(
      o.parameter!,
      unittest.equals('foo'),
    );
  }
  buildCounterInputParameter--;
}

core.int buildCounterJMS = 0;
api.JMS buildJMS() {
  final o = api.JMS();
  buildCounterJMS++;
  if (buildCounterJMS < 3) {
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterJMS--;
  return o;
}

void checkJMS(api.JMS o) {
  buildCounterJMS++;
  if (buildCounterJMS < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterJMS--;
}

core.List<api.AuthObject> buildUnnamed45() => [
      buildAuthObject(),
      buildAuthObject(),
    ];

void checkUnnamed45(core.List<api.AuthObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthObject(o[0]);
  checkAuthObject(o[1]);
}

core.int buildCounterJsonAuthSchema = 0;
api.JsonAuthSchema buildJsonAuthSchema() {
  final o = api.JsonAuthSchema();
  buildCounterJsonAuthSchema++;
  if (buildCounterJsonAuthSchema < 3) {
    o.P_schema = 'foo';
    o.oneOf = buildUnnamed45();
  }
  buildCounterJsonAuthSchema--;
  return o;
}

void checkJsonAuthSchema(api.JsonAuthSchema o) {
  buildCounterJsonAuthSchema++;
  if (buildCounterJsonAuthSchema < 3) {
    unittest.expect(
      o.P_schema!,
      unittest.equals('foo'),
    );
    checkUnnamed45(o.oneOf!);
  }
  buildCounterJsonAuthSchema--;
}

core.List<core.Object?> buildUnnamed46() => [
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    ];

void checkUnnamed46(core.List<core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o[0]) as core.Map;
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
  var casted6 = (o[1]) as core.Map;
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

core.Map<core.String, api.JsonSchema> buildUnnamed47() => {
      'x': buildJsonSchema(),
      'y': buildJsonSchema(),
    };

void checkUnnamed47(core.Map<core.String, api.JsonSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJsonSchema(o['x']!);
  checkJsonSchema(o['y']!);
}

core.List<core.String> buildUnnamed48() => [
      'foo',
      'foo',
    ];

void checkUnnamed48(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed49() => [
      'foo',
      'foo',
    ];

void checkUnnamed49(core.List<core.String> o) {
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

core.int buildCounterJsonSchema = 0;
api.JsonSchema buildJsonSchema() {
  final o = api.JsonSchema();
  buildCounterJsonSchema++;
  if (buildCounterJsonSchema < 3) {
    o.default_ = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.description = 'foo';
    o.enum_ = buildUnnamed46();
    o.format = 'foo';
    o.items = buildJsonSchema();
    o.jdbcType = 'foo';
    o.properties = buildUnnamed47();
    o.required = buildUnnamed48();
    o.type = buildUnnamed49();
  }
  buildCounterJsonSchema--;
  return o;
}

void checkJsonSchema(api.JsonSchema o) {
  buildCounterJsonSchema++;
  if (buildCounterJsonSchema < 3) {
    var casted7 = (o.default_!) as core.Map;
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed46(o.enum_!);
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    checkJsonSchema(o.items!);
    unittest.expect(
      o.jdbcType!,
      unittest.equals('foo'),
    );
    checkUnnamed47(o.properties!);
    checkUnnamed48(o.required!);
    checkUnnamed49(o.type!);
  }
  buildCounterJsonSchema--;
}

core.int buildCounterJwtClaims = 0;
api.JwtClaims buildJwtClaims() {
  final o = api.JwtClaims();
  buildCounterJwtClaims++;
  if (buildCounterJwtClaims < 3) {
    o.audience = 'foo';
    o.issuer = 'foo';
    o.subject = 'foo';
  }
  buildCounterJwtClaims--;
  return o;
}

void checkJwtClaims(api.JwtClaims o) {
  buildCounterJwtClaims++;
  if (buildCounterJwtClaims < 3) {
    unittest.expect(
      o.audience!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.issuer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subject!,
      unittest.equals('foo'),
    );
  }
  buildCounterJwtClaims--;
}

core.List<api.RuntimeActionSchema> buildUnnamed50() => [
      buildRuntimeActionSchema(),
      buildRuntimeActionSchema(),
    ];

void checkUnnamed50(core.List<api.RuntimeActionSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRuntimeActionSchema(o[0]);
  checkRuntimeActionSchema(o[1]);
}

core.int buildCounterListActionsResponse = 0;
api.ListActionsResponse buildListActionsResponse() {
  final o = api.ListActionsResponse();
  buildCounterListActionsResponse++;
  if (buildCounterListActionsResponse < 3) {
    o.actions = buildUnnamed50();
    o.nextPageToken = 'foo';
  }
  buildCounterListActionsResponse--;
  return o;
}

void checkListActionsResponse(api.ListActionsResponse o) {
  buildCounterListActionsResponse++;
  if (buildCounterListActionsResponse < 3) {
    checkUnnamed50(o.actions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListActionsResponse--;
}

core.List<api.Connection> buildUnnamed51() => [
      buildConnection(),
      buildConnection(),
    ];

void checkUnnamed51(core.List<api.Connection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnection(o[0]);
  checkConnection(o[1]);
}

core.List<core.String> buildUnnamed52() => [
      'foo',
      'foo',
    ];

void checkUnnamed52(core.List<core.String> o) {
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

core.int buildCounterListConnectionsResponse = 0;
api.ListConnectionsResponse buildListConnectionsResponse() {
  final o = api.ListConnectionsResponse();
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    o.connections = buildUnnamed51();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed52();
  }
  buildCounterListConnectionsResponse--;
  return o;
}

void checkListConnectionsResponse(api.ListConnectionsResponse o) {
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    checkUnnamed51(o.connections!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed52(o.unreachable!);
  }
  buildCounterListConnectionsResponse--;
}

core.List<api.ConnectorVersion> buildUnnamed53() => [
      buildConnectorVersion(),
      buildConnectorVersion(),
    ];

void checkUnnamed53(core.List<api.ConnectorVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectorVersion(o[0]);
  checkConnectorVersion(o[1]);
}

core.List<core.String> buildUnnamed54() => [
      'foo',
      'foo',
    ];

void checkUnnamed54(core.List<core.String> o) {
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

core.int buildCounterListConnectorVersionsResponse = 0;
api.ListConnectorVersionsResponse buildListConnectorVersionsResponse() {
  final o = api.ListConnectorVersionsResponse();
  buildCounterListConnectorVersionsResponse++;
  if (buildCounterListConnectorVersionsResponse < 3) {
    o.connectorVersions = buildUnnamed53();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed54();
  }
  buildCounterListConnectorVersionsResponse--;
  return o;
}

void checkListConnectorVersionsResponse(api.ListConnectorVersionsResponse o) {
  buildCounterListConnectorVersionsResponse++;
  if (buildCounterListConnectorVersionsResponse < 3) {
    checkUnnamed53(o.connectorVersions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed54(o.unreachable!);
  }
  buildCounterListConnectorVersionsResponse--;
}

core.List<api.Connector> buildUnnamed55() => [
      buildConnector(),
      buildConnector(),
    ];

void checkUnnamed55(core.List<api.Connector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnector(o[0]);
  checkConnector(o[1]);
}

core.List<core.String> buildUnnamed56() => [
      'foo',
      'foo',
    ];

void checkUnnamed56(core.List<core.String> o) {
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

core.int buildCounterListConnectorsResponse = 0;
api.ListConnectorsResponse buildListConnectorsResponse() {
  final o = api.ListConnectorsResponse();
  buildCounterListConnectorsResponse++;
  if (buildCounterListConnectorsResponse < 3) {
    o.connectors = buildUnnamed55();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed56();
  }
  buildCounterListConnectorsResponse--;
  return o;
}

void checkListConnectorsResponse(api.ListConnectorsResponse o) {
  buildCounterListConnectorsResponse++;
  if (buildCounterListConnectorsResponse < 3) {
    checkUnnamed55(o.connectors!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed56(o.unreachable!);
  }
  buildCounterListConnectorsResponse--;
}

core.List<api.CustomConnectorVersion> buildUnnamed57() => [
      buildCustomConnectorVersion(),
      buildCustomConnectorVersion(),
    ];

void checkUnnamed57(core.List<api.CustomConnectorVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomConnectorVersion(o[0]);
  checkCustomConnectorVersion(o[1]);
}

core.List<core.String> buildUnnamed58() => [
      'foo',
      'foo',
    ];

void checkUnnamed58(core.List<core.String> o) {
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

core.int buildCounterListCustomConnectorVersionsResponse = 0;
api.ListCustomConnectorVersionsResponse
    buildListCustomConnectorVersionsResponse() {
  final o = api.ListCustomConnectorVersionsResponse();
  buildCounterListCustomConnectorVersionsResponse++;
  if (buildCounterListCustomConnectorVersionsResponse < 3) {
    o.customConnectorVersions = buildUnnamed57();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed58();
  }
  buildCounterListCustomConnectorVersionsResponse--;
  return o;
}

void checkListCustomConnectorVersionsResponse(
    api.ListCustomConnectorVersionsResponse o) {
  buildCounterListCustomConnectorVersionsResponse++;
  if (buildCounterListCustomConnectorVersionsResponse < 3) {
    checkUnnamed57(o.customConnectorVersions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed58(o.unreachable!);
  }
  buildCounterListCustomConnectorVersionsResponse--;
}

core.List<api.CustomConnector> buildUnnamed59() => [
      buildCustomConnector(),
      buildCustomConnector(),
    ];

void checkUnnamed59(core.List<api.CustomConnector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomConnector(o[0]);
  checkCustomConnector(o[1]);
}

core.List<core.String> buildUnnamed60() => [
      'foo',
      'foo',
    ];

void checkUnnamed60(core.List<core.String> o) {
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

core.int buildCounterListCustomConnectorsResponse = 0;
api.ListCustomConnectorsResponse buildListCustomConnectorsResponse() {
  final o = api.ListCustomConnectorsResponse();
  buildCounterListCustomConnectorsResponse++;
  if (buildCounterListCustomConnectorsResponse < 3) {
    o.customConnectors = buildUnnamed59();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed60();
  }
  buildCounterListCustomConnectorsResponse--;
  return o;
}

void checkListCustomConnectorsResponse(api.ListCustomConnectorsResponse o) {
  buildCounterListCustomConnectorsResponse++;
  if (buildCounterListCustomConnectorsResponse < 3) {
    checkUnnamed59(o.customConnectors!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed60(o.unreachable!);
  }
  buildCounterListCustomConnectorsResponse--;
}

core.List<api.EndpointAttachment> buildUnnamed61() => [
      buildEndpointAttachment(),
      buildEndpointAttachment(),
    ];

void checkUnnamed61(core.List<api.EndpointAttachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEndpointAttachment(o[0]);
  checkEndpointAttachment(o[1]);
}

core.List<core.String> buildUnnamed62() => [
      'foo',
      'foo',
    ];

void checkUnnamed62(core.List<core.String> o) {
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

core.int buildCounterListEndpointAttachmentsResponse = 0;
api.ListEndpointAttachmentsResponse buildListEndpointAttachmentsResponse() {
  final o = api.ListEndpointAttachmentsResponse();
  buildCounterListEndpointAttachmentsResponse++;
  if (buildCounterListEndpointAttachmentsResponse < 3) {
    o.endpointAttachments = buildUnnamed61();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed62();
  }
  buildCounterListEndpointAttachmentsResponse--;
  return o;
}

void checkListEndpointAttachmentsResponse(
    api.ListEndpointAttachmentsResponse o) {
  buildCounterListEndpointAttachmentsResponse++;
  if (buildCounterListEndpointAttachmentsResponse < 3) {
    checkUnnamed61(o.endpointAttachments!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed62(o.unreachable!);
  }
  buildCounterListEndpointAttachmentsResponse--;
}

core.List<api.RuntimeEntitySchema> buildUnnamed63() => [
      buildRuntimeEntitySchema(),
      buildRuntimeEntitySchema(),
    ];

void checkUnnamed63(core.List<api.RuntimeEntitySchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRuntimeEntitySchema(o[0]);
  checkRuntimeEntitySchema(o[1]);
}

core.int buildCounterListEntityTypesResponse = 0;
api.ListEntityTypesResponse buildListEntityTypesResponse() {
  final o = api.ListEntityTypesResponse();
  buildCounterListEntityTypesResponse++;
  if (buildCounterListEntityTypesResponse < 3) {
    o.entityTypes = buildUnnamed63();
    o.nextPageToken = 'foo';
  }
  buildCounterListEntityTypesResponse--;
  return o;
}

void checkListEntityTypesResponse(api.ListEntityTypesResponse o) {
  buildCounterListEntityTypesResponse++;
  if (buildCounterListEntityTypesResponse < 3) {
    checkUnnamed63(o.entityTypes!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListEntityTypesResponse--;
}

core.List<api.EventSubscription> buildUnnamed64() => [
      buildEventSubscription(),
      buildEventSubscription(),
    ];

void checkUnnamed64(core.List<api.EventSubscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventSubscription(o[0]);
  checkEventSubscription(o[1]);
}

core.List<core.String> buildUnnamed65() => [
      'foo',
      'foo',
    ];

void checkUnnamed65(core.List<core.String> o) {
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

core.int buildCounterListEventSubscriptionsResponse = 0;
api.ListEventSubscriptionsResponse buildListEventSubscriptionsResponse() {
  final o = api.ListEventSubscriptionsResponse();
  buildCounterListEventSubscriptionsResponse++;
  if (buildCounterListEventSubscriptionsResponse < 3) {
    o.eventSubscriptions = buildUnnamed64();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed65();
  }
  buildCounterListEventSubscriptionsResponse--;
  return o;
}

void checkListEventSubscriptionsResponse(api.ListEventSubscriptionsResponse o) {
  buildCounterListEventSubscriptionsResponse++;
  if (buildCounterListEventSubscriptionsResponse < 3) {
    checkUnnamed64(o.eventSubscriptions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed65(o.unreachable!);
  }
  buildCounterListEventSubscriptionsResponse--;
}

core.List<api.EventType> buildUnnamed66() => [
      buildEventType(),
      buildEventType(),
    ];

void checkUnnamed66(core.List<api.EventType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventType(o[0]);
  checkEventType(o[1]);
}

core.int buildCounterListEventTypesResponse = 0;
api.ListEventTypesResponse buildListEventTypesResponse() {
  final o = api.ListEventTypesResponse();
  buildCounterListEventTypesResponse++;
  if (buildCounterListEventTypesResponse < 3) {
    o.eventTypes = buildUnnamed66();
    o.nextPageToken = 'foo';
  }
  buildCounterListEventTypesResponse--;
  return o;
}

void checkListEventTypesResponse(api.ListEventTypesResponse o) {
  buildCounterListEventTypesResponse++;
  if (buildCounterListEventTypesResponse < 3) {
    checkUnnamed66(o.eventTypes!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListEventTypesResponse--;
}

core.List<api.Location> buildUnnamed67() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed67(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed67();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed67(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.ManagedZone> buildUnnamed68() => [
      buildManagedZone(),
      buildManagedZone(),
    ];

void checkUnnamed68(core.List<api.ManagedZone> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedZone(o[0]);
  checkManagedZone(o[1]);
}

core.int buildCounterListManagedZonesResponse = 0;
api.ListManagedZonesResponse buildListManagedZonesResponse() {
  final o = api.ListManagedZonesResponse();
  buildCounterListManagedZonesResponse++;
  if (buildCounterListManagedZonesResponse < 3) {
    o.managedZones = buildUnnamed68();
    o.nextPageToken = 'foo';
  }
  buildCounterListManagedZonesResponse--;
  return o;
}

void checkListManagedZonesResponse(api.ListManagedZonesResponse o) {
  buildCounterListManagedZonesResponse++;
  if (buildCounterListManagedZonesResponse < 3) {
    checkUnnamed68(o.managedZones!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListManagedZonesResponse--;
}

core.List<api.Operation> buildUnnamed69() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed69(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed69();
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
    checkUnnamed69(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Provider> buildUnnamed70() => [
      buildProvider(),
      buildProvider(),
    ];

void checkUnnamed70(core.List<api.Provider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProvider(o[0]);
  checkProvider(o[1]);
}

core.List<core.String> buildUnnamed71() => [
      'foo',
      'foo',
    ];

void checkUnnamed71(core.List<core.String> o) {
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

core.int buildCounterListProvidersResponse = 0;
api.ListProvidersResponse buildListProvidersResponse() {
  final o = api.ListProvidersResponse();
  buildCounterListProvidersResponse++;
  if (buildCounterListProvidersResponse < 3) {
    o.nextPageToken = 'foo';
    o.providers = buildUnnamed70();
    o.unreachable = buildUnnamed71();
  }
  buildCounterListProvidersResponse--;
  return o;
}

void checkListProvidersResponse(api.ListProvidersResponse o) {
  buildCounterListProvidersResponse++;
  if (buildCounterListProvidersResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed70(o.providers!);
    checkUnnamed71(o.unreachable!);
  }
  buildCounterListProvidersResponse--;
}

core.List<api.RuntimeActionSchema> buildUnnamed72() => [
      buildRuntimeActionSchema(),
      buildRuntimeActionSchema(),
    ];

void checkUnnamed72(core.List<api.RuntimeActionSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRuntimeActionSchema(o[0]);
  checkRuntimeActionSchema(o[1]);
}

core.int buildCounterListRuntimeActionSchemasResponse = 0;
api.ListRuntimeActionSchemasResponse buildListRuntimeActionSchemasResponse() {
  final o = api.ListRuntimeActionSchemasResponse();
  buildCounterListRuntimeActionSchemasResponse++;
  if (buildCounterListRuntimeActionSchemasResponse < 3) {
    o.nextPageToken = 'foo';
    o.runtimeActionSchemas = buildUnnamed72();
  }
  buildCounterListRuntimeActionSchemasResponse--;
  return o;
}

void checkListRuntimeActionSchemasResponse(
    api.ListRuntimeActionSchemasResponse o) {
  buildCounterListRuntimeActionSchemasResponse++;
  if (buildCounterListRuntimeActionSchemasResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed72(o.runtimeActionSchemas!);
  }
  buildCounterListRuntimeActionSchemasResponse--;
}

core.List<api.RuntimeEntitySchema> buildUnnamed73() => [
      buildRuntimeEntitySchema(),
      buildRuntimeEntitySchema(),
    ];

void checkUnnamed73(core.List<api.RuntimeEntitySchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRuntimeEntitySchema(o[0]);
  checkRuntimeEntitySchema(o[1]);
}

core.int buildCounterListRuntimeEntitySchemasResponse = 0;
api.ListRuntimeEntitySchemasResponse buildListRuntimeEntitySchemasResponse() {
  final o = api.ListRuntimeEntitySchemasResponse();
  buildCounterListRuntimeEntitySchemasResponse++;
  if (buildCounterListRuntimeEntitySchemasResponse < 3) {
    o.nextPageToken = 'foo';
    o.runtimeEntitySchemas = buildUnnamed73();
  }
  buildCounterListRuntimeEntitySchemasResponse--;
  return o;
}

void checkListRuntimeEntitySchemasResponse(
    api.ListRuntimeEntitySchemasResponse o) {
  buildCounterListRuntimeEntitySchemasResponse++;
  if (buildCounterListRuntimeEntitySchemasResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed73(o.runtimeEntitySchemas!);
  }
  buildCounterListRuntimeEntitySchemasResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed74() => {
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

void checkUnnamed74(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted8 = (o['x']!) as core.Map;
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
  var casted9 = (o['y']!) as core.Map;
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
}

core.int buildCounterListenEventRequest = 0;
api.ListenEventRequest buildListenEventRequest() {
  final o = api.ListenEventRequest();
  buildCounterListenEventRequest++;
  if (buildCounterListenEventRequest < 3) {
    o.payload = buildUnnamed74();
  }
  buildCounterListenEventRequest--;
  return o;
}

void checkListenEventRequest(api.ListenEventRequest o) {
  buildCounterListenEventRequest++;
  if (buildCounterListenEventRequest < 3) {
    checkUnnamed74(o.payload!);
  }
  buildCounterListenEventRequest--;
}

core.int buildCounterListenEventResponse = 0;
api.ListenEventResponse buildListenEventResponse() {
  final o = api.ListenEventResponse();
  buildCounterListenEventResponse++;
  if (buildCounterListenEventResponse < 3) {}
  buildCounterListenEventResponse--;
  return o;
}

void checkListenEventResponse(api.ListenEventResponse o) {
  buildCounterListenEventResponse++;
  if (buildCounterListenEventResponse < 3) {}
  buildCounterListenEventResponse--;
}

core.Map<core.String, core.String> buildUnnamed75() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed75(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed76() => {
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

void checkUnnamed76(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted10 = (o['x']!) as core.Map;
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
  var casted11 = (o['y']!) as core.Map;
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
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed75();
    o.locationId = 'foo';
    o.metadata = buildUnnamed76();
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
    checkUnnamed75(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed76(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterLockConfig = 0;
api.LockConfig buildLockConfig() {
  final o = api.LockConfig();
  buildCounterLockConfig++;
  if (buildCounterLockConfig < 3) {
    o.locked = true;
    o.reason = 'foo';
  }
  buildCounterLockConfig--;
  return o;
}

void checkLockConfig(api.LockConfig o) {
  buildCounterLockConfig++;
  if (buildCounterLockConfig < 3) {
    unittest.expect(o.locked!, unittest.isTrue);
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterLockConfig--;
}

core.List<api.FieldComparison> buildUnnamed77() => [
      buildFieldComparison(),
      buildFieldComparison(),
    ];

void checkUnnamed77(core.List<api.FieldComparison> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldComparison(o[0]);
  checkFieldComparison(o[1]);
}

core.List<api.LogicalExpression> buildUnnamed78() => [
      buildLogicalExpression(),
      buildLogicalExpression(),
    ];

void checkUnnamed78(core.List<api.LogicalExpression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogicalExpression(o[0]);
  checkLogicalExpression(o[1]);
}

core.int buildCounterLogicalExpression = 0;
api.LogicalExpression buildLogicalExpression() {
  final o = api.LogicalExpression();
  buildCounterLogicalExpression++;
  if (buildCounterLogicalExpression < 3) {
    o.fieldComparisons = buildUnnamed77();
    o.logicalExpressions = buildUnnamed78();
    o.logicalOperator = 'foo';
  }
  buildCounterLogicalExpression--;
  return o;
}

void checkLogicalExpression(api.LogicalExpression o) {
  buildCounterLogicalExpression++;
  if (buildCounterLogicalExpression < 3) {
    checkUnnamed77(o.fieldComparisons!);
    checkUnnamed78(o.logicalExpressions!);
    unittest.expect(
      o.logicalOperator!,
      unittest.equals('foo'),
    );
  }
  buildCounterLogicalExpression--;
}

core.Map<core.String, core.String> buildUnnamed79() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed79(core.Map<core.String, core.String> o) {
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

core.int buildCounterManagedZone = 0;
api.ManagedZone buildManagedZone() {
  final o = api.ManagedZone();
  buildCounterManagedZone++;
  if (buildCounterManagedZone < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.dns = 'foo';
    o.labels = buildUnnamed79();
    o.name = 'foo';
    o.targetProject = 'foo';
    o.targetVpc = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterManagedZone--;
  return o;
}

void checkManagedZone(api.ManagedZone o) {
  buildCounterManagedZone++;
  if (buildCounterManagedZone < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dns!,
      unittest.equals('foo'),
    );
    checkUnnamed79(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetProject!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetVpc!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterManagedZone--;
}

core.List<api.MultipleSelectOption> buildUnnamed80() => [
      buildMultipleSelectOption(),
      buildMultipleSelectOption(),
    ];

void checkUnnamed80(core.List<api.MultipleSelectOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMultipleSelectOption(o[0]);
  checkMultipleSelectOption(o[1]);
}

core.int buildCounterMultipleSelectConfig = 0;
api.MultipleSelectConfig buildMultipleSelectConfig() {
  final o = api.MultipleSelectConfig();
  buildCounterMultipleSelectConfig++;
  if (buildCounterMultipleSelectConfig < 3) {
    o.allowCustomValues = true;
    o.multipleSelectOptions = buildUnnamed80();
    o.valueSeparator = 'foo';
  }
  buildCounterMultipleSelectConfig--;
  return o;
}

void checkMultipleSelectConfig(api.MultipleSelectConfig o) {
  buildCounterMultipleSelectConfig++;
  if (buildCounterMultipleSelectConfig < 3) {
    unittest.expect(o.allowCustomValues!, unittest.isTrue);
    checkUnnamed80(o.multipleSelectOptions!);
    unittest.expect(
      o.valueSeparator!,
      unittest.equals('foo'),
    );
  }
  buildCounterMultipleSelectConfig--;
}

core.int buildCounterMultipleSelectOption = 0;
api.MultipleSelectOption buildMultipleSelectOption() {
  final o = api.MultipleSelectOption();
  buildCounterMultipleSelectOption++;
  if (buildCounterMultipleSelectOption < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.key = 'foo';
    o.preselected = true;
  }
  buildCounterMultipleSelectOption--;
  return o;
}

void checkMultipleSelectOption(api.MultipleSelectOption o) {
  buildCounterMultipleSelectOption++;
  if (buildCounterMultipleSelectOption < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(o.preselected!, unittest.isTrue);
  }
  buildCounterMultipleSelectOption--;
}

core.List<core.String> buildUnnamed81() => [
      'foo',
      'foo',
    ];

void checkUnnamed81(core.List<core.String> o) {
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

core.int buildCounterNetworkConfig = 0;
api.NetworkConfig buildNetworkConfig() {
  final o = api.NetworkConfig();
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    o.egressIps = buildUnnamed81();
    o.egressMode = 'foo';
  }
  buildCounterNetworkConfig--;
  return o;
}

void checkNetworkConfig(api.NetworkConfig o) {
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    checkUnnamed81(o.egressIps!);
    unittest.expect(
      o.egressMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkConfig--;
}

core.int buildCounterNodeConfig = 0;
api.NodeConfig buildNodeConfig() {
  final o = api.NodeConfig();
  buildCounterNodeConfig++;
  if (buildCounterNodeConfig < 3) {
    o.maxNodeCount = 42;
    o.minNodeCount = 42;
  }
  buildCounterNodeConfig--;
  return o;
}

void checkNodeConfig(api.NodeConfig o) {
  buildCounterNodeConfig++;
  if (buildCounterNodeConfig < 3) {
    unittest.expect(
      o.maxNodeCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minNodeCount!,
      unittest.equals(42),
    );
  }
  buildCounterNodeConfig--;
}

core.List<core.String> buildUnnamed82() => [
      'foo',
      'foo',
    ];

void checkUnnamed82(core.List<core.String> o) {
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

core.int buildCounterOauth2AuthCodeFlow = 0;
api.Oauth2AuthCodeFlow buildOauth2AuthCodeFlow() {
  final o = api.Oauth2AuthCodeFlow();
  buildCounterOauth2AuthCodeFlow++;
  if (buildCounterOauth2AuthCodeFlow < 3) {
    o.authCode = 'foo';
    o.authUri = 'foo';
    o.clientId = 'foo';
    o.clientSecret = buildSecret();
    o.enablePkce = true;
    o.pkceVerifier = 'foo';
    o.redirectUri = 'foo';
    o.scopes = buildUnnamed82();
  }
  buildCounterOauth2AuthCodeFlow--;
  return o;
}

void checkOauth2AuthCodeFlow(api.Oauth2AuthCodeFlow o) {
  buildCounterOauth2AuthCodeFlow++;
  if (buildCounterOauth2AuthCodeFlow < 3) {
    unittest.expect(
      o.authCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.authUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    checkSecret(o.clientSecret!);
    unittest.expect(o.enablePkce!, unittest.isTrue);
    unittest.expect(
      o.pkceVerifier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.redirectUri!,
      unittest.equals('foo'),
    );
    checkUnnamed82(o.scopes!);
  }
  buildCounterOauth2AuthCodeFlow--;
}

core.List<core.String> buildUnnamed83() => [
      'foo',
      'foo',
    ];

void checkUnnamed83(core.List<core.String> o) {
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

core.int buildCounterOauth2AuthCodeFlowGoogleManaged = 0;
api.Oauth2AuthCodeFlowGoogleManaged buildOauth2AuthCodeFlowGoogleManaged() {
  final o = api.Oauth2AuthCodeFlowGoogleManaged();
  buildCounterOauth2AuthCodeFlowGoogleManaged++;
  if (buildCounterOauth2AuthCodeFlowGoogleManaged < 3) {
    o.authCode = 'foo';
    o.redirectUri = 'foo';
    o.scopes = buildUnnamed83();
  }
  buildCounterOauth2AuthCodeFlowGoogleManaged--;
  return o;
}

void checkOauth2AuthCodeFlowGoogleManaged(
    api.Oauth2AuthCodeFlowGoogleManaged o) {
  buildCounterOauth2AuthCodeFlowGoogleManaged++;
  if (buildCounterOauth2AuthCodeFlowGoogleManaged < 3) {
    unittest.expect(
      o.authCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.redirectUri!,
      unittest.equals('foo'),
    );
    checkUnnamed83(o.scopes!);
  }
  buildCounterOauth2AuthCodeFlowGoogleManaged--;
}

core.int buildCounterOauth2ClientCredentials = 0;
api.Oauth2ClientCredentials buildOauth2ClientCredentials() {
  final o = api.Oauth2ClientCredentials();
  buildCounterOauth2ClientCredentials++;
  if (buildCounterOauth2ClientCredentials < 3) {
    o.clientId = 'foo';
    o.clientSecret = buildSecret();
  }
  buildCounterOauth2ClientCredentials--;
  return o;
}

void checkOauth2ClientCredentials(api.Oauth2ClientCredentials o) {
  buildCounterOauth2ClientCredentials++;
  if (buildCounterOauth2ClientCredentials < 3) {
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    checkSecret(o.clientSecret!);
  }
  buildCounterOauth2ClientCredentials--;
}

core.int buildCounterOauth2JwtBearer = 0;
api.Oauth2JwtBearer buildOauth2JwtBearer() {
  final o = api.Oauth2JwtBearer();
  buildCounterOauth2JwtBearer++;
  if (buildCounterOauth2JwtBearer < 3) {
    o.clientKey = buildSecret();
    o.jwtClaims = buildJwtClaims();
  }
  buildCounterOauth2JwtBearer--;
  return o;
}

void checkOauth2JwtBearer(api.Oauth2JwtBearer o) {
  buildCounterOauth2JwtBearer++;
  if (buildCounterOauth2JwtBearer < 3) {
    checkSecret(o.clientKey!);
    checkJwtClaims(o.jwtClaims!);
  }
  buildCounterOauth2JwtBearer--;
}

core.Map<core.String, core.Object?> buildUnnamed84() => {
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

void checkUnnamed84(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted12 = (o['x']!) as core.Map;
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
  var casted13 = (o['y']!) as core.Map;
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
}

core.Map<core.String, core.Object?> buildUnnamed85() => {
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

void checkUnnamed85(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted14 = (o['x']!) as core.Map;
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
  var casted15 = (o['y']!) as core.Map;
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
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed84();
    o.name = 'foo';
    o.response = buildUnnamed85();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed84(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed85(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.AuditConfig> buildUnnamed86() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed86(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed87() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed87(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed86();
    o.bindings = buildUnnamed87();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed86(o.auditConfigs!);
    checkUnnamed87(o.bindings!);
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

core.Map<core.String, core.String> buildUnnamed88() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed88(core.Map<core.String, core.String> o) {
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

core.int buildCounterProvider = 0;
api.Provider buildProvider() {
  final o = api.Provider();
  buildCounterProvider++;
  if (buildCounterProvider < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.documentationUri = 'foo';
    o.externalUri = 'foo';
    o.labels = buildUnnamed88();
    o.launchStage = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
    o.webAssetsLocation = 'foo';
  }
  buildCounterProvider--;
  return o;
}

void checkProvider(api.Provider o) {
  buildCounterProvider++;
  if (buildCounterProvider < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.documentationUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalUri!,
      unittest.equals('foo'),
    );
    checkUnnamed88(o.labels!);
    unittest.expect(
      o.launchStage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webAssetsLocation!,
      unittest.equals('foo'),
    );
  }
  buildCounterProvider--;
}

core.int buildCounterRefreshConnectionSchemaMetadataRequest = 0;
api.RefreshConnectionSchemaMetadataRequest
    buildRefreshConnectionSchemaMetadataRequest() {
  final o = api.RefreshConnectionSchemaMetadataRequest();
  buildCounterRefreshConnectionSchemaMetadataRequest++;
  if (buildCounterRefreshConnectionSchemaMetadataRequest < 3) {}
  buildCounterRefreshConnectionSchemaMetadataRequest--;
  return o;
}

void checkRefreshConnectionSchemaMetadataRequest(
    api.RefreshConnectionSchemaMetadataRequest o) {
  buildCounterRefreshConnectionSchemaMetadataRequest++;
  if (buildCounterRefreshConnectionSchemaMetadataRequest < 3) {}
  buildCounterRefreshConnectionSchemaMetadataRequest--;
}

core.int buildCounterRegionalSettings = 0;
api.RegionalSettings buildRegionalSettings() {
  final o = api.RegionalSettings();
  buildCounterRegionalSettings++;
  if (buildCounterRegionalSettings < 3) {
    o.encryptionConfig = buildEncryptionConfig();
    o.name = 'foo';
    o.networkConfig = buildNetworkConfig();
    o.provisioned = true;
  }
  buildCounterRegionalSettings--;
  return o;
}

void checkRegionalSettings(api.RegionalSettings o) {
  buildCounterRegionalSettings++;
  if (buildCounterRegionalSettings < 3) {
    checkEncryptionConfig(o.encryptionConfig!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkNetworkConfig(o.networkConfig!);
    unittest.expect(o.provisioned!, unittest.isTrue);
  }
  buildCounterRegionalSettings--;
}

core.int buildCounterRepairEventingRequest = 0;
api.RepairEventingRequest buildRepairEventingRequest() {
  final o = api.RepairEventingRequest();
  buildCounterRepairEventingRequest++;
  if (buildCounterRepairEventingRequest < 3) {}
  buildCounterRepairEventingRequest--;
  return o;
}

void checkRepairEventingRequest(api.RepairEventingRequest o) {
  buildCounterRepairEventingRequest++;
  if (buildCounterRepairEventingRequest < 3) {}
  buildCounterRepairEventingRequest--;
}

core.int buildCounterResource = 0;
api.Resource buildResource() {
  final o = api.Resource();
  buildCounterResource++;
  if (buildCounterResource < 3) {
    o.pathTemplate = 'foo';
    o.type = 'foo';
  }
  buildCounterResource--;
  return o;
}

void checkResource(api.Resource o) {
  buildCounterResource++;
  if (buildCounterResource < 3) {
    unittest.expect(
      o.pathTemplate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterResource--;
}

core.int buildCounterResourceLimits = 0;
api.ResourceLimits buildResourceLimits() {
  final o = api.ResourceLimits();
  buildCounterResourceLimits++;
  if (buildCounterResourceLimits < 3) {
    o.cpu = 'foo';
    o.memory = 'foo';
  }
  buildCounterResourceLimits--;
  return o;
}

void checkResourceLimits(api.ResourceLimits o) {
  buildCounterResourceLimits++;
  if (buildCounterResourceLimits < 3) {
    unittest.expect(
      o.cpu!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memory!,
      unittest.equals('foo'),
    );
  }
  buildCounterResourceLimits--;
}

core.int buildCounterResourceRequests = 0;
api.ResourceRequests buildResourceRequests() {
  final o = api.ResourceRequests();
  buildCounterResourceRequests++;
  if (buildCounterResourceRequests < 3) {
    o.cpu = 'foo';
    o.memory = 'foo';
  }
  buildCounterResourceRequests--;
  return o;
}

void checkResourceRequests(api.ResourceRequests o) {
  buildCounterResourceRequests++;
  if (buildCounterResourceRequests < 3) {
    unittest.expect(
      o.cpu!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memory!,
      unittest.equals('foo'),
    );
  }
  buildCounterResourceRequests--;
}

core.int buildCounterResultMetadata = 0;
api.ResultMetadata buildResultMetadata() {
  final o = api.ResultMetadata();
  buildCounterResultMetadata++;
  if (buildCounterResultMetadata < 3) {
    o.dataType = 'foo';
    o.defaultValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.description = 'foo';
    o.field = 'foo';
    o.jsonSchema = buildJsonSchema();
    o.nullable = true;
  }
  buildCounterResultMetadata--;
  return o;
}

void checkResultMetadata(api.ResultMetadata o) {
  buildCounterResultMetadata++;
  if (buildCounterResultMetadata < 3) {
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    var casted16 = (o.defaultValue!) as core.Map;
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
    checkJsonSchema(o.jsonSchema!);
    unittest.expect(o.nullable!, unittest.isTrue);
  }
  buildCounterResultMetadata--;
}

core.int buildCounterRetryEventSubscriptionRequest = 0;
api.RetryEventSubscriptionRequest buildRetryEventSubscriptionRequest() {
  final o = api.RetryEventSubscriptionRequest();
  buildCounterRetryEventSubscriptionRequest++;
  if (buildCounterRetryEventSubscriptionRequest < 3) {}
  buildCounterRetryEventSubscriptionRequest--;
  return o;
}

void checkRetryEventSubscriptionRequest(api.RetryEventSubscriptionRequest o) {
  buildCounterRetryEventSubscriptionRequest++;
  if (buildCounterRetryEventSubscriptionRequest < 3) {}
  buildCounterRetryEventSubscriptionRequest--;
}

core.List<core.String> buildUnnamed89() => [
      'foo',
      'foo',
    ];

void checkUnnamed89(core.List<core.String> o) {
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

core.int buildCounterRoleGrant = 0;
api.RoleGrant buildRoleGrant() {
  final o = api.RoleGrant();
  buildCounterRoleGrant++;
  if (buildCounterRoleGrant < 3) {
    o.helperTextTemplate = 'foo';
    o.principal = 'foo';
    o.resource = buildResource();
    o.roles = buildUnnamed89();
  }
  buildCounterRoleGrant--;
  return o;
}

void checkRoleGrant(api.RoleGrant o) {
  buildCounterRoleGrant++;
  if (buildCounterRoleGrant < 3) {
    unittest.expect(
      o.helperTextTemplate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.principal!,
      unittest.equals('foo'),
    );
    checkResource(o.resource!);
    checkUnnamed89(o.roles!);
  }
  buildCounterRoleGrant--;
}

core.List<api.InputParameter> buildUnnamed90() => [
      buildInputParameter(),
      buildInputParameter(),
    ];

void checkUnnamed90(core.List<api.InputParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInputParameter(o[0]);
  checkInputParameter(o[1]);
}

core.List<api.ResultMetadata> buildUnnamed91() => [
      buildResultMetadata(),
      buildResultMetadata(),
    ];

void checkUnnamed91(core.List<api.ResultMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResultMetadata(o[0]);
  checkResultMetadata(o[1]);
}

core.int buildCounterRuntimeActionSchema = 0;
api.RuntimeActionSchema buildRuntimeActionSchema() {
  final o = api.RuntimeActionSchema();
  buildCounterRuntimeActionSchema++;
  if (buildCounterRuntimeActionSchema < 3) {
    o.action = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.inputJsonSchema = buildJsonSchema();
    o.inputParameters = buildUnnamed90();
    o.inputSchemaAsString = 'foo';
    o.resultJsonSchema = buildJsonSchema();
    o.resultMetadata = buildUnnamed91();
    o.resultSchemaAsString = 'foo';
  }
  buildCounterRuntimeActionSchema--;
  return o;
}

void checkRuntimeActionSchema(api.RuntimeActionSchema o) {
  buildCounterRuntimeActionSchema++;
  if (buildCounterRuntimeActionSchema < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkJsonSchema(o.inputJsonSchema!);
    checkUnnamed90(o.inputParameters!);
    unittest.expect(
      o.inputSchemaAsString!,
      unittest.equals('foo'),
    );
    checkJsonSchema(o.resultJsonSchema!);
    checkUnnamed91(o.resultMetadata!);
    unittest.expect(
      o.resultSchemaAsString!,
      unittest.equals('foo'),
    );
  }
  buildCounterRuntimeActionSchema--;
}

core.int buildCounterRuntimeConfig = 0;
api.RuntimeConfig buildRuntimeConfig() {
  final o = api.RuntimeConfig();
  buildCounterRuntimeConfig++;
  if (buildCounterRuntimeConfig < 3) {
    o.conndSubscription = 'foo';
    o.conndTopic = 'foo';
    o.controlPlaneSubscription = 'foo';
    o.controlPlaneTopic = 'foo';
    o.locationId = 'foo';
    o.name = 'foo';
    o.runtimeEndpoint = 'foo';
    o.schemaGcsBucket = 'foo';
    o.serviceDirectory = 'foo';
    o.state = 'foo';
  }
  buildCounterRuntimeConfig--;
  return o;
}

void checkRuntimeConfig(api.RuntimeConfig o) {
  buildCounterRuntimeConfig++;
  if (buildCounterRuntimeConfig < 3) {
    unittest.expect(
      o.conndSubscription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.conndTopic!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.controlPlaneSubscription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.controlPlaneTopic!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.runtimeEndpoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.schemaGcsBucket!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceDirectory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterRuntimeConfig--;
}

core.List<api.Field> buildUnnamed92() => [
      buildField(),
      buildField(),
    ];

void checkUnnamed92(core.List<api.Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkField(o[0]);
  checkField(o[1]);
}

core.List<core.String> buildUnnamed93() => [
      'foo',
      'foo',
    ];

void checkUnnamed93(core.List<core.String> o) {
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

core.int buildCounterRuntimeEntitySchema = 0;
api.RuntimeEntitySchema buildRuntimeEntitySchema() {
  final o = api.RuntimeEntitySchema();
  buildCounterRuntimeEntitySchema++;
  if (buildCounterRuntimeEntitySchema < 3) {
    o.entity = 'foo';
    o.fields = buildUnnamed92();
    o.jsonSchema = buildJsonSchema();
    o.operations = buildUnnamed93();
  }
  buildCounterRuntimeEntitySchema--;
  return o;
}

void checkRuntimeEntitySchema(api.RuntimeEntitySchema o) {
  buildCounterRuntimeEntitySchema++;
  if (buildCounterRuntimeEntitySchema < 3) {
    unittest.expect(
      o.entity!,
      unittest.equals('foo'),
    );
    checkUnnamed92(o.fields!);
    checkJsonSchema(o.jsonSchema!);
    checkUnnamed93(o.operations!);
  }
  buildCounterRuntimeEntitySchema--;
}

core.int buildCounterSchemaRefreshConfig = 0;
api.SchemaRefreshConfig buildSchemaRefreshConfig() {
  final o = api.SchemaRefreshConfig();
  buildCounterSchemaRefreshConfig++;
  if (buildCounterSchemaRefreshConfig < 3) {
    o.useActionDisplayNames = true;
    o.useSynchronousSchemaRefresh = true;
  }
  buildCounterSchemaRefreshConfig--;
  return o;
}

void checkSchemaRefreshConfig(api.SchemaRefreshConfig o) {
  buildCounterSchemaRefreshConfig++;
  if (buildCounterSchemaRefreshConfig < 3) {
    unittest.expect(o.useActionDisplayNames!, unittest.isTrue);
    unittest.expect(o.useSynchronousSchemaRefresh!, unittest.isTrue);
  }
  buildCounterSchemaRefreshConfig--;
}

core.int buildCounterSearchConnectionInstance = 0;
api.SearchConnectionInstance buildSearchConnectionInstance() {
  final o = api.SearchConnectionInstance();
  buildCounterSearchConnectionInstance++;
  if (buildCounterSearchConnectionInstance < 3) {
    o.actionSchema = buildRuntimeActionSchema();
    o.connection = buildConnection();
    o.entitySchema = buildRuntimeEntitySchema();
  }
  buildCounterSearchConnectionInstance--;
  return o;
}

void checkSearchConnectionInstance(api.SearchConnectionInstance o) {
  buildCounterSearchConnectionInstance++;
  if (buildCounterSearchConnectionInstance < 3) {
    checkRuntimeActionSchema(o.actionSchema!);
    checkConnection(o.connection!);
    checkRuntimeEntitySchema(o.entitySchema!);
  }
  buildCounterSearchConnectionInstance--;
}

core.List<api.SearchConnectionInstance> buildUnnamed94() => [
      buildSearchConnectionInstance(),
      buildSearchConnectionInstance(),
    ];

void checkUnnamed94(core.List<api.SearchConnectionInstance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSearchConnectionInstance(o[0]);
  checkSearchConnectionInstance(o[1]);
}

core.List<core.String> buildUnnamed95() => [
      'foo',
      'foo',
    ];

void checkUnnamed95(core.List<core.String> o) {
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

core.int buildCounterSearchConnectionsResponse = 0;
api.SearchConnectionsResponse buildSearchConnectionsResponse() {
  final o = api.SearchConnectionsResponse();
  buildCounterSearchConnectionsResponse++;
  if (buildCounterSearchConnectionsResponse < 3) {
    o.connections = buildUnnamed94();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed95();
  }
  buildCounterSearchConnectionsResponse--;
  return o;
}

void checkSearchConnectionsResponse(api.SearchConnectionsResponse o) {
  buildCounterSearchConnectionsResponse++;
  if (buildCounterSearchConnectionsResponse < 3) {
    checkUnnamed94(o.connections!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed95(o.unreachable!);
  }
  buildCounterSearchConnectionsResponse--;
}

core.int buildCounterSecret = 0;
api.Secret buildSecret() {
  final o = api.Secret();
  buildCounterSecret++;
  if (buildCounterSecret < 3) {
    o.secretVersion = 'foo';
  }
  buildCounterSecret--;
  return o;
}

void checkSecret(api.Secret o) {
  buildCounterSecret++;
  if (buildCounterSecret < 3) {
    unittest.expect(
      o.secretVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterSecret--;
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

core.int buildCounterSettings = 0;
api.Settings buildSettings() {
  final o = api.Settings();
  buildCounterSettings++;
  if (buildCounterSettings < 3) {
    o.name = 'foo';
    o.payg = true;
    o.tenantProjectId = 'foo';
    o.vpcsc = true;
  }
  buildCounterSettings--;
  return o;
}

void checkSettings(api.Settings o) {
  buildCounterSettings++;
  if (buildCounterSettings < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.payg!, unittest.isTrue);
    unittest.expect(
      o.tenantProjectId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.vpcsc!, unittest.isTrue);
  }
  buildCounterSettings--;
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  final o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.fieldId = 'foo';
    o.sourceType = 'foo';
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    unittest.expect(
      o.fieldId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterSource--;
}

core.int buildCounterSshPublicKey = 0;
api.SshPublicKey buildSshPublicKey() {
  final o = api.SshPublicKey();
  buildCounterSshPublicKey++;
  if (buildCounterSshPublicKey < 3) {
    o.certType = 'foo';
    o.sshClientCert = buildSecret();
    o.sshClientCertPass = buildSecret();
    o.username = 'foo';
  }
  buildCounterSshPublicKey--;
  return o;
}

void checkSshPublicKey(api.SshPublicKey o) {
  buildCounterSshPublicKey++;
  if (buildCounterSshPublicKey < 3) {
    unittest.expect(
      o.certType!,
      unittest.equals('foo'),
    );
    checkSecret(o.sshClientCert!);
    checkSecret(o.sshClientCertPass!);
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterSshPublicKey--;
}

core.List<api.ConfigVariable> buildUnnamed96() => [
      buildConfigVariable(),
      buildConfigVariable(),
    ];

void checkUnnamed96(core.List<api.ConfigVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigVariable(o[0]);
  checkConfigVariable(o[1]);
}

core.int buildCounterSslConfig = 0;
api.SslConfig buildSslConfig() {
  final o = api.SslConfig();
  buildCounterSslConfig++;
  if (buildCounterSslConfig < 3) {
    o.additionalVariables = buildUnnamed96();
    o.clientCertType = 'foo';
    o.clientCertificate = buildSecret();
    o.clientPrivateKey = buildSecret();
    o.clientPrivateKeyPass = buildSecret();
    o.privateServerCertificate = buildSecret();
    o.serverCertType = 'foo';
    o.trustModel = 'foo';
    o.type = 'foo';
    o.useSsl = true;
  }
  buildCounterSslConfig--;
  return o;
}

void checkSslConfig(api.SslConfig o) {
  buildCounterSslConfig++;
  if (buildCounterSslConfig < 3) {
    checkUnnamed96(o.additionalVariables!);
    unittest.expect(
      o.clientCertType!,
      unittest.equals('foo'),
    );
    checkSecret(o.clientCertificate!);
    checkSecret(o.clientPrivateKey!);
    checkSecret(o.clientPrivateKeyPass!);
    checkSecret(o.privateServerCertificate!);
    unittest.expect(
      o.serverCertType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trustModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(o.useSsl!, unittest.isTrue);
  }
  buildCounterSslConfig--;
}

core.List<api.ConfigVariableTemplate> buildUnnamed97() => [
      buildConfigVariableTemplate(),
      buildConfigVariableTemplate(),
    ];

void checkUnnamed97(core.List<api.ConfigVariableTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigVariableTemplate(o[0]);
  checkConfigVariableTemplate(o[1]);
}

core.List<core.String> buildUnnamed98() => [
      'foo',
      'foo',
    ];

void checkUnnamed98(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed99() => [
      'foo',
      'foo',
    ];

void checkUnnamed99(core.List<core.String> o) {
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

core.int buildCounterSslConfigTemplate = 0;
api.SslConfigTemplate buildSslConfigTemplate() {
  final o = api.SslConfigTemplate();
  buildCounterSslConfigTemplate++;
  if (buildCounterSslConfigTemplate < 3) {
    o.additionalVariables = buildUnnamed97();
    o.clientCertType = buildUnnamed98();
    o.isTlsMandatory = true;
    o.serverCertType = buildUnnamed99();
    o.sslType = 'foo';
  }
  buildCounterSslConfigTemplate--;
  return o;
}

void checkSslConfigTemplate(api.SslConfigTemplate o) {
  buildCounterSslConfigTemplate++;
  if (buildCounterSslConfigTemplate < 3) {
    checkUnnamed97(o.additionalVariables!);
    checkUnnamed98(o.clientCertType!);
    unittest.expect(o.isTlsMandatory!, unittest.isTrue);
    checkUnnamed99(o.serverCertType!);
    unittest.expect(
      o.sslType!,
      unittest.equals('foo'),
    );
  }
  buildCounterSslConfigTemplate--;
}

core.int buildCounterStandardAction = 0;
api.StandardAction buildStandardAction() {
  final o = api.StandardAction();
  buildCounterStandardAction++;
  if (buildCounterStandardAction < 3) {
    o.name = 'foo';
  }
  buildCounterStandardAction--;
  return o;
}

void checkStandardAction(api.StandardAction o) {
  buildCounterStandardAction++;
  if (buildCounterStandardAction < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterStandardAction--;
}

core.int buildCounterStandardEntity = 0;
api.StandardEntity buildStandardEntity() {
  final o = api.StandardEntity();
  buildCounterStandardEntity++;
  if (buildCounterStandardEntity < 3) {
    o.name = 'foo';
  }
  buildCounterStandardEntity--;
  return o;
}

void checkStandardEntity(api.StandardEntity o) {
  buildCounterStandardEntity++;
  if (buildCounterStandardEntity < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterStandardEntity--;
}

core.Map<core.String, core.Object?> buildUnnamed100() => {
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

void checkUnnamed100(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed101() => [
      buildUnnamed100(),
      buildUnnamed100(),
    ];

void checkUnnamed101(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed100(o[0]);
  checkUnnamed100(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed101();
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
    checkUnnamed101(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterSupportedRuntimeFeatures = 0;
api.SupportedRuntimeFeatures buildSupportedRuntimeFeatures() {
  final o = api.SupportedRuntimeFeatures();
  buildCounterSupportedRuntimeFeatures++;
  if (buildCounterSupportedRuntimeFeatures < 3) {
    o.actionApis = true;
    o.entityApis = true;
    o.sqlQuery = true;
  }
  buildCounterSupportedRuntimeFeatures--;
  return o;
}

void checkSupportedRuntimeFeatures(api.SupportedRuntimeFeatures o) {
  buildCounterSupportedRuntimeFeatures++;
  if (buildCounterSupportedRuntimeFeatures < 3) {
    unittest.expect(o.actionApis!, unittest.isTrue);
    unittest.expect(o.entityApis!, unittest.isTrue);
    unittest.expect(o.sqlQuery!, unittest.isTrue);
  }
  buildCounterSupportedRuntimeFeatures--;
}

core.List<core.String> buildUnnamed102() => [
      'foo',
      'foo',
    ];

void checkUnnamed102(core.List<core.String> o) {
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
    o.permissions = buildUnnamed102();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed102(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed103() => [
      'foo',
      'foo',
    ];

void checkUnnamed103(core.List<core.String> o) {
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
    o.permissions = buildUnnamed103();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed103(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterUserPassword = 0;
api.UserPassword buildUserPassword() {
  final o = api.UserPassword();
  buildCounterUserPassword++;
  if (buildCounterUserPassword < 3) {
    o.password = buildSecret();
    o.username = 'foo';
  }
  buildCounterUserPassword--;
  return o;
}

void checkUserPassword(api.UserPassword o) {
  buildCounterUserPassword++;
  if (buildCounterUserPassword < 3) {
    checkSecret(o.password!);
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserPassword--;
}

core.int buildCounterValidateCustomConnectorSpecRequest = 0;
api.ValidateCustomConnectorSpecRequest
    buildValidateCustomConnectorSpecRequest() {
  final o = api.ValidateCustomConnectorSpecRequest();
  buildCounterValidateCustomConnectorSpecRequest++;
  if (buildCounterValidateCustomConnectorSpecRequest < 3) {
    o.serviceAccount = 'foo';
    o.specLocation = 'foo';
    o.specType = 'foo';
  }
  buildCounterValidateCustomConnectorSpecRequest--;
  return o;
}

void checkValidateCustomConnectorSpecRequest(
    api.ValidateCustomConnectorSpecRequest o) {
  buildCounterValidateCustomConnectorSpecRequest++;
  if (buildCounterValidateCustomConnectorSpecRequest < 3) {
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.specLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.specType!,
      unittest.equals('foo'),
    );
  }
  buildCounterValidateCustomConnectorSpecRequest--;
}

core.int buildCounterValidateCustomConnectorSpecResponse = 0;
api.ValidateCustomConnectorSpecResponse
    buildValidateCustomConnectorSpecResponse() {
  final o = api.ValidateCustomConnectorSpecResponse();
  buildCounterValidateCustomConnectorSpecResponse++;
  if (buildCounterValidateCustomConnectorSpecResponse < 3) {
    o.errorMessage = 'foo';
  }
  buildCounterValidateCustomConnectorSpecResponse--;
  return o;
}

void checkValidateCustomConnectorSpecResponse(
    api.ValidateCustomConnectorSpecResponse o) {
  buildCounterValidateCustomConnectorSpecResponse++;
  if (buildCounterValidateCustomConnectorSpecResponse < 3) {
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterValidateCustomConnectorSpecResponse--;
}

core.List<api.ConfigVariable> buildUnnamed104() => [
      buildConfigVariable(),
      buildConfigVariable(),
    ];

void checkUnnamed104(core.List<api.ConfigVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigVariable(o[0]);
  checkConfigVariable(o[1]);
}

core.int buildCounterWebhookData = 0;
api.WebhookData buildWebhookData() {
  final o = api.WebhookData();
  buildCounterWebhookData++;
  if (buildCounterWebhookData < 3) {
    o.additionalVariables = buildUnnamed104();
    o.createTime = 'foo';
    o.id = 'foo';
    o.name = 'foo';
    o.nextRefreshTime = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterWebhookData--;
  return o;
}

void checkWebhookData(api.WebhookData o) {
  buildCounterWebhookData++;
  if (buildCounterWebhookData < 3) {
    checkUnnamed104(o.additionalVariables!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextRefreshTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebhookData--;
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

  unittest.group('obj-schema-AuthConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AuthConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAuthConfig(od);
    });
  });

  unittest.group('obj-schema-AuthConfigTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthConfigTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthConfigTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthConfigTemplate(od);
    });
  });

  unittest.group('obj-schema-AuthField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AuthField.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAuthField(od);
    });
  });

  unittest.group('obj-schema-AuthObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AuthObject.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAuthObject(od);
    });
  });

  unittest.group('obj-schema-AuthProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthProperty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthProperty(od);
    });
  });

  unittest.group('obj-schema-AuthSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AuthSchema.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAuthSchema(od);
    });
  });

  unittest.group('obj-schema-AuthorizationCodeLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthorizationCodeLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthorizationCodeLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthorizationCodeLink(od);
    });
  });

  unittest.group('obj-schema-BillingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBillingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BillingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingConfig(od);
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

  unittest.group('obj-schema-ConfigVariable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigVariable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigVariable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigVariable(od);
    });
  });

  unittest.group('obj-schema-ConfigVariableTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigVariableTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigVariableTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigVariableTemplate(od);
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

  unittest.group('obj-schema-ConnectionSchemaMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectionSchemaMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectionSchemaMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectionSchemaMetadata(od);
    });
  });

  unittest.group('obj-schema-ConnectionStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectionStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectionStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectionStatus(od);
    });
  });

  unittest.group('obj-schema-Connector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Connector.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkConnector(od);
    });
  });

  unittest.group('obj-schema-ConnectorInfraConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectorInfraConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectorInfraConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectorInfraConfig(od);
    });
  });

  unittest.group('obj-schema-ConnectorVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectorVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectorVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectorVersion(od);
    });
  });

  unittest.group('obj-schema-ConnectorVersionInfraConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectorVersionInfraConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectorVersionInfraConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectorVersionInfraConfig(od);
    });
  });

  unittest.group('obj-schema-ConnectorsLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectorsLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectorsLogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConnectorsLogConfig(od);
    });
  });

  unittest.group('obj-schema-CustomConnector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomConnector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomConnector.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomConnector(od);
    });
  });

  unittest.group('obj-schema-CustomConnectorVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomConnectorVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomConnectorVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomConnectorVersion(od);
    });
  });

  unittest.group('obj-schema-DeadLetterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeadLetterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeadLetterConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeadLetterConfig(od);
    });
  });

  unittest.group('obj-schema-DeprecateCustomConnectorVersionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeprecateCustomConnectorVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeprecateCustomConnectorVersionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeprecateCustomConnectorVersionRequest(od);
    });
  });

  unittest.group('obj-schema-Destination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Destination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDestination(od);
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

  unittest.group('obj-schema-DestinationConfigTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDestinationConfigTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DestinationConfigTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDestinationConfigTemplate(od);
    });
  });

  unittest.group('obj-schema-EgressControlConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEgressControlConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EgressControlConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEgressControlConfig(od);
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

  unittest.group('obj-schema-EncryptionKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryptionKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncryptionKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEncryptionKey(od);
    });
  });

  unittest.group('obj-schema-EndPoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndPoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EndPoint.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEndPoint(od);
    });
  });

  unittest.group('obj-schema-EndpointAttachment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndpointAttachment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EndpointAttachment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEndpointAttachment(od);
    });
  });

  unittest.group('obj-schema-EnumOption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnumOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnumOption.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnumOption(od);
    });
  });

  unittest.group('obj-schema-EventSubscription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventSubscription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventSubscription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventSubscription(od);
    });
  });

  unittest.group('obj-schema-EventSubscriptionDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventSubscriptionDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventSubscriptionDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventSubscriptionDestination(od);
    });
  });

  unittest.group('obj-schema-EventSubscriptionStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventSubscriptionStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventSubscriptionStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventSubscriptionStatus(od);
    });
  });

  unittest.group('obj-schema-EventType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EventType.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEventType(od);
    });
  });

  unittest.group('obj-schema-EventingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventingConfig(od);
    });
  });

  unittest.group('obj-schema-EventingConfigTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventingConfigTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventingConfigTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventingConfigTemplate(od);
    });
  });

  unittest.group('obj-schema-EventingDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventingDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventingDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventingDetails(od);
    });
  });

  unittest.group('obj-schema-EventingRuntimeData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventingRuntimeData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventingRuntimeData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventingRuntimeData(od);
    });
  });

  unittest.group('obj-schema-EventingStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventingStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventingStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventingStatus(od);
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

  unittest.group('obj-schema-ExtractionRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtractionRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtractionRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExtractionRule(od);
    });
  });

  unittest.group('obj-schema-ExtractionRules', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtractionRules();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtractionRules.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExtractionRules(od);
    });
  });

  unittest.group('obj-schema-FetchAuthSchemaResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchAuthSchemaResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchAuthSchemaResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchAuthSchemaResponse(od);
    });
  });

  unittest.group('obj-schema-Field', () {
    unittest.test('to-json--from-json', () async {
      final o = buildField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Field.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkField(od);
    });
  });

  unittest.group('obj-schema-FieldComparison', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFieldComparison();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FieldComparison.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFieldComparison(od);
    });
  });

  unittest.group('obj-schema-HPAConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHPAConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HPAConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHPAConfig(od);
    });
  });

  unittest.group('obj-schema-Header', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Header.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHeader(od);
    });
  });

  unittest.group('obj-schema-InputParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InputParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInputParameter(od);
    });
  });

  unittest.group('obj-schema-JMS', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJMS();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JMS.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJMS(od);
    });
  });

  unittest.group('obj-schema-JsonAuthSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJsonAuthSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JsonAuthSchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJsonAuthSchema(od);
    });
  });

  unittest.group('obj-schema-JsonSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJsonSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.JsonSchema.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJsonSchema(od);
    });
  });

  unittest.group('obj-schema-JwtClaims', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJwtClaims();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.JwtClaims.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJwtClaims(od);
    });
  });

  unittest.group('obj-schema-ListActionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListActionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListActionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListActionsResponse(od);
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

  unittest.group('obj-schema-ListConnectorVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConnectorVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConnectorVersionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListConnectorVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListConnectorsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConnectorsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConnectorsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListConnectorsResponse(od);
    });
  });

  unittest.group('obj-schema-ListCustomConnectorVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCustomConnectorVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCustomConnectorVersionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCustomConnectorVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListCustomConnectorsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCustomConnectorsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCustomConnectorsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCustomConnectorsResponse(od);
    });
  });

  unittest.group('obj-schema-ListEndpointAttachmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEndpointAttachmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEndpointAttachmentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListEndpointAttachmentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListEntityTypesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEntityTypesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEntityTypesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListEntityTypesResponse(od);
    });
  });

  unittest.group('obj-schema-ListEventSubscriptionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEventSubscriptionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEventSubscriptionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListEventSubscriptionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListEventTypesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEventTypesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEventTypesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListEventTypesResponse(od);
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

  unittest.group('obj-schema-ListManagedZonesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListManagedZonesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListManagedZonesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListManagedZonesResponse(od);
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

  unittest.group('obj-schema-ListProvidersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListProvidersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListProvidersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListProvidersResponse(od);
    });
  });

  unittest.group('obj-schema-ListRuntimeActionSchemasResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRuntimeActionSchemasResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRuntimeActionSchemasResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRuntimeActionSchemasResponse(od);
    });
  });

  unittest.group('obj-schema-ListRuntimeEntitySchemasResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRuntimeEntitySchemasResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRuntimeEntitySchemasResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRuntimeEntitySchemasResponse(od);
    });
  });

  unittest.group('obj-schema-ListenEventRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListenEventRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListenEventRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListenEventRequest(od);
    });
  });

  unittest.group('obj-schema-ListenEventResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListenEventResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListenEventResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListenEventResponse(od);
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

  unittest.group('obj-schema-LockConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLockConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LockConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLockConfig(od);
    });
  });

  unittest.group('obj-schema-LogicalExpression', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLogicalExpression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LogicalExpression.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLogicalExpression(od);
    });
  });

  unittest.group('obj-schema-ManagedZone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedZone.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedZone(od);
    });
  });

  unittest.group('obj-schema-MultipleSelectConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMultipleSelectConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MultipleSelectConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMultipleSelectConfig(od);
    });
  });

  unittest.group('obj-schema-MultipleSelectOption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMultipleSelectOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MultipleSelectOption.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMultipleSelectOption(od);
    });
  });

  unittest.group('obj-schema-NetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-NodeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NodeConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNodeConfig(od);
    });
  });

  unittest.group('obj-schema-Oauth2AuthCodeFlow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOauth2AuthCodeFlow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Oauth2AuthCodeFlow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOauth2AuthCodeFlow(od);
    });
  });

  unittest.group('obj-schema-Oauth2AuthCodeFlowGoogleManaged', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOauth2AuthCodeFlowGoogleManaged();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Oauth2AuthCodeFlowGoogleManaged.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOauth2AuthCodeFlowGoogleManaged(od);
    });
  });

  unittest.group('obj-schema-Oauth2ClientCredentials', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOauth2ClientCredentials();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Oauth2ClientCredentials.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOauth2ClientCredentials(od);
    });
  });

  unittest.group('obj-schema-Oauth2JwtBearer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOauth2JwtBearer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Oauth2JwtBearer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOauth2JwtBearer(od);
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

  unittest.group('obj-schema-Provider', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProvider();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Provider.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProvider(od);
    });
  });

  unittest.group('obj-schema-RefreshConnectionSchemaMetadataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRefreshConnectionSchemaMetadataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RefreshConnectionSchemaMetadataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRefreshConnectionSchemaMetadataRequest(od);
    });
  });

  unittest.group('obj-schema-RegionalSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionalSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionalSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegionalSettings(od);
    });
  });

  unittest.group('obj-schema-RepairEventingRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepairEventingRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepairEventingRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepairEventingRequest(od);
    });
  });

  unittest.group('obj-schema-Resource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Resource.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkResource(od);
    });
  });

  unittest.group('obj-schema-ResourceLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceLimits.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceLimits(od);
    });
  });

  unittest.group('obj-schema-ResourceRequests', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceRequests();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceRequests.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceRequests(od);
    });
  });

  unittest.group('obj-schema-ResultMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResultMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResultMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResultMetadata(od);
    });
  });

  unittest.group('obj-schema-RetryEventSubscriptionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetryEventSubscriptionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetryEventSubscriptionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRetryEventSubscriptionRequest(od);
    });
  });

  unittest.group('obj-schema-RoleGrant', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRoleGrant();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RoleGrant.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRoleGrant(od);
    });
  });

  unittest.group('obj-schema-RuntimeActionSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeActionSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeActionSchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRuntimeActionSchema(od);
    });
  });

  unittest.group('obj-schema-RuntimeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRuntimeConfig(od);
    });
  });

  unittest.group('obj-schema-RuntimeEntitySchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeEntitySchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeEntitySchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRuntimeEntitySchema(od);
    });
  });

  unittest.group('obj-schema-SchemaRefreshConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchemaRefreshConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchemaRefreshConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSchemaRefreshConfig(od);
    });
  });

  unittest.group('obj-schema-SearchConnectionInstance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchConnectionInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchConnectionInstance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchConnectionInstance(od);
    });
  });

  unittest.group('obj-schema-SearchConnectionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchConnectionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchConnectionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchConnectionsResponse(od);
    });
  });

  unittest.group('obj-schema-Secret', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecret();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Secret.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSecret(od);
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

  unittest.group('obj-schema-Settings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Settings.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSettings(od);
    });
  });

  unittest.group('obj-schema-Source', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Source.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSource(od);
    });
  });

  unittest.group('obj-schema-SshPublicKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSshPublicKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SshPublicKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSshPublicKey(od);
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

  unittest.group('obj-schema-SslConfigTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSslConfigTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SslConfigTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSslConfigTemplate(od);
    });
  });

  unittest.group('obj-schema-StandardAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStandardAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StandardAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStandardAction(od);
    });
  });

  unittest.group('obj-schema-StandardEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStandardEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StandardEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStandardEntity(od);
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

  unittest.group('obj-schema-SupportedRuntimeFeatures', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSupportedRuntimeFeatures();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SupportedRuntimeFeatures.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSupportedRuntimeFeatures(od);
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

  unittest.group('obj-schema-UserPassword', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserPassword();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserPassword.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserPassword(od);
    });
  });

  unittest.group('obj-schema-ValidateCustomConnectorSpecRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidateCustomConnectorSpecRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidateCustomConnectorSpecRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValidateCustomConnectorSpecRequest(od);
    });
  });

  unittest.group('obj-schema-ValidateCustomConnectorSpecResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidateCustomConnectorSpecResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidateCustomConnectorSpecResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValidateCustomConnectorSpecResponse(od);
    });
  });

  unittest.group('obj-schema-WebhookData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebhookData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WebhookData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWebhookData(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations;
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

    unittest.test('method--getRegionalSettings', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations;
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
        final resp = convert.json.encode(buildRegionalSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getRegionalSettings(arg_name, $fields: arg_$fields);
      checkRegionalSettings(response as api.RegionalSettings);
    });

    unittest.test('method--getRuntimeConfig', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations;
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
        final resp = convert.json.encode(buildRuntimeConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getRuntimeConfig(arg_name, $fields: arg_$fields);
      checkRuntimeConfig(response as api.RuntimeConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations;
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

    unittest.test('method--updateRegionalSettings', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations;
      final arg_request = buildRegionalSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RegionalSettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRegionalSettings(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateRegionalSettings(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsConnectionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.connections;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          connectionId: arg_connectionId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.connections;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.connections;
      final arg_name = 'foo';
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
        final resp = convert.json.encode(buildConnection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkConnection(response as api.Connection);
    });

    unittest.test('method--getConnectionSchemaMetadata', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.connections;
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
        final resp = convert.json.encode(buildConnectionSchemaMetadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getConnectionSchemaMetadata(arg_name, $fields: arg_$fields);
      checkConnectionSchemaMetadata(response as api.ConnectionSchemaMetadata);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.connections;
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
      final res = api.ConnectorsApi(mock).projects.locations.connections;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
        final resp = convert.json.encode(buildListConnectionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListConnectionsResponse(response as api.ListConnectionsResponse);
    });

    unittest.test('method--listenEvent', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.connections;
      final arg_request = buildListenEventRequest();
      final arg_resourcePath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ListenEventRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkListenEventRequest(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildListenEventResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listenEvent(arg_request, arg_resourcePath,
          $fields: arg_$fields);
      checkListenEventResponse(response as api.ListenEventResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.connections;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--repairEventing', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.connections;
      final arg_request = buildRepairEventingRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RepairEventingRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRepairEventingRequest(obj);

        final path = req.url.path;
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
          await res.repairEventing(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.connections;
      final arg_name = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
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
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSearchConnectionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(arg_name,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          query: arg_query,
          $fields: arg_$fields);
      checkSearchConnectionsResponse(response as api.SearchConnectionsResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.connections;
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
      final res = api.ConnectorsApi(mock).projects.locations.connections;
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
      'resource-ProjectsLocationsConnectionsConnectionSchemaMetadataResource',
      () {
    unittest.test('method--getAction', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .connections
          .connectionSchemaMetadata;
      final arg_name = 'foo';
      final arg_actionId = 'foo';
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
          queryMap['actionId']!.first,
          unittest.equals(arg_actionId),
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
      final response = await res.getAction(arg_name,
          actionId: arg_actionId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--getEntityType', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .connections
          .connectionSchemaMetadata;
      final arg_name = 'foo';
      final arg_entityId = 'foo';
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
          queryMap['entityId']!.first,
          unittest.equals(arg_entityId),
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
      final response = await res.getEntityType(arg_name,
          entityId: arg_entityId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--listActions', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .connections
          .connectionSchemaMetadata;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
        final resp = convert.json.encode(buildListActionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listActions(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListActionsResponse(response as api.ListActionsResponse);
    });

    unittest.test('method--listEntityTypes', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .connections
          .connectionSchemaMetadata;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
        final resp = convert.json.encode(buildListEntityTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listEntityTypes(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListEntityTypesResponse(response as api.ListEntityTypesResponse);
    });

    unittest.test('method--refresh', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .connections
          .connectionSchemaMetadata;
      final arg_request = buildRefreshConnectionSchemaMetadataRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RefreshConnectionSchemaMetadataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRefreshConnectionSchemaMetadataRequest(obj);

        final path = req.url.path;
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
          await res.refresh(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsConnectionsEventSubscriptionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .connections
          .eventSubscriptions;
      final arg_request = buildEventSubscription();
      final arg_parent = 'foo';
      final arg_eventSubscriptionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EventSubscription.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEventSubscription(obj);

        final path = req.url.path;
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
          queryMap['eventSubscriptionId']!.first,
          unittest.equals(arg_eventSubscriptionId),
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
          eventSubscriptionId: arg_eventSubscriptionId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .connections
          .eventSubscriptions;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .connections
          .eventSubscriptions;
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
        final resp = convert.json.encode(buildEventSubscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkEventSubscription(response as api.EventSubscription);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .connections
          .eventSubscriptions;
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
        final resp = convert.json.encode(buildListEventSubscriptionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListEventSubscriptionsResponse(
          response as api.ListEventSubscriptionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .connections
          .eventSubscriptions;
      final arg_request = buildEventSubscription();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EventSubscription.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEventSubscription(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--retry', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .connections
          .eventSubscriptions;
      final arg_request = buildRetryEventSubscriptionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RetryEventSubscriptionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRetryEventSubscriptionRequest(obj);

        final path = req.url.path;
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
          await res.retry(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsConnectionsRuntimeActionSchemasResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .connections
          .runtimeActionSchemas;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_schemaAsString = true;
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
          queryMap['schemaAsString']!.first,
          unittest.equals('$arg_schemaAsString'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListRuntimeActionSchemasResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          schemaAsString: arg_schemaAsString,
          $fields: arg_$fields);
      checkListRuntimeActionSchemasResponse(
          response as api.ListRuntimeActionSchemasResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsConnectionsRuntimeEntitySchemasResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .connections
          .runtimeEntitySchemas;
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
            convert.json.encode(buildListRuntimeEntitySchemasResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListRuntimeEntitySchemasResponse(
          response as api.ListRuntimeEntitySchemasResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsCustomConnectorsResource', () {
    unittest.test('method--validateCustomConnectorSpec', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.customConnectors;
      final arg_request = buildValidateCustomConnectorSpecRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ValidateCustomConnectorSpecRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkValidateCustomConnectorSpecRequest(obj);

        final path = req.url.path;
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
            convert.json.encode(buildValidateCustomConnectorSpecResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.validateCustomConnectorSpec(
          arg_request, arg_parent,
          $fields: arg_$fields);
      checkValidateCustomConnectorSpecResponse(
          response as api.ValidateCustomConnectorSpecResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsCustomConnectorsCustomConnectorVersionsResource',
      () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .customConnectors
          .customConnectorVersions;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--deprecate', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .customConnectors
          .customConnectorVersions;
      final arg_request = buildDeprecateCustomConnectorVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DeprecateCustomConnectorVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeprecateCustomConnectorVersionRequest(obj);

        final path = req.url.path;
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
          await res.deprecate(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsEndpointAttachmentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.endpointAttachments;
      final arg_request = buildEndpointAttachment();
      final arg_parent = 'foo';
      final arg_endpointAttachmentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EndpointAttachment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEndpointAttachment(obj);

        final path = req.url.path;
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
          queryMap['endpointAttachmentId']!.first,
          unittest.equals(arg_endpointAttachmentId),
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
          endpointAttachmentId: arg_endpointAttachmentId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.endpointAttachments;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.endpointAttachments;
      final arg_name = 'foo';
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
        final resp = convert.json.encode(buildEndpointAttachment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkEndpointAttachment(response as api.EndpointAttachment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.endpointAttachments;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
            convert.json.encode(buildListEndpointAttachmentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListEndpointAttachmentsResponse(
          response as api.ListEndpointAttachmentsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.endpointAttachments;
      final arg_request = buildEndpointAttachment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EndpointAttachment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEndpointAttachment(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsGlobalResource', () {
    unittest.test('method--getSettings', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.global;
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
        final resp = convert.json.encode(buildSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getSettings(arg_name, $fields: arg_$fields);
      checkSettings(response as api.Settings);
    });

    unittest.test('method--updateSettings', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.global;
      final arg_request = buildSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Settings.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSettings(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateSettings(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsGlobalCustomConnectorsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.global.customConnectors;
      final arg_request = buildCustomConnector();
      final arg_parent = 'foo';
      final arg_customConnectorId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CustomConnector.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomConnector(obj);

        final path = req.url.path;
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
          queryMap['customConnectorId']!.first,
          unittest.equals(arg_customConnectorId),
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
          customConnectorId: arg_customConnectorId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.global.customConnectors;
      final arg_name = 'foo';
      final arg_force = true;
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
          await res.delete(arg_name, force: arg_force, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.global.customConnectors;
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
        final resp = convert.json.encode(buildCustomConnector());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCustomConnector(response as api.CustomConnector);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.global.customConnectors;
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
        final resp = convert.json.encode(buildListCustomConnectorsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCustomConnectorsResponse(
          response as api.ListCustomConnectorsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.global.customConnectors;
      final arg_request = buildCustomConnector();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CustomConnector.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomConnector(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsGlobalCustomConnectorsCustomConnectorVersionsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .global
          .customConnectors
          .customConnectorVersions;
      final arg_request = buildCustomConnectorVersion();
      final arg_parent = 'foo';
      final arg_customConnectorVersionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CustomConnectorVersion.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomConnectorVersion(obj);

        final path = req.url.path;
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
          queryMap['customConnectorVersionId']!.first,
          unittest.equals(arg_customConnectorVersionId),
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
          customConnectorVersionId: arg_customConnectorVersionId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .global
          .customConnectors
          .customConnectorVersions;
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
        final resp = convert.json.encode(buildCustomConnectorVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCustomConnectorVersion(response as api.CustomConnectorVersion);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .global
          .customConnectors
          .customConnectorVersions;
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
        final resp =
            convert.json.encode(buildListCustomConnectorVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCustomConnectorVersionsResponse(
          response as api.ListCustomConnectorVersionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsGlobalManagedZonesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.global.managedZones;
      final arg_request = buildManagedZone();
      final arg_parent = 'foo';
      final arg_managedZoneId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ManagedZone.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkManagedZone(obj);

        final path = req.url.path;
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
          queryMap['managedZoneId']!.first,
          unittest.equals(arg_managedZoneId),
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
          managedZoneId: arg_managedZoneId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.global.managedZones;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.global.managedZones;
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
        final resp = convert.json.encode(buildManagedZone());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkManagedZone(response as api.ManagedZone);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.global.managedZones;
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
        final resp = convert.json.encode(buildListManagedZonesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListManagedZonesResponse(response as api.ListManagedZonesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.global.managedZones;
      final arg_request = buildManagedZone();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ManagedZone.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkManagedZone(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.operations;
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
      final res = api.ConnectorsApi(mock).projects.locations.operations;
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
      final res = api.ConnectorsApi(mock).projects.locations.operations;
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
      final res = api.ConnectorsApi(mock).projects.locations.operations;
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

  unittest.group('resource-ProjectsLocationsProvidersResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.providers;
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
        final resp = convert.json.encode(buildProvider());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkProvider(response as api.Provider);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.providers;
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
      final res = api.ConnectorsApi(mock).projects.locations.providers;
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
        final resp = convert.json.encode(buildListProvidersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListProvidersResponse(response as api.ListProvidersResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.providers;
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
      final res = api.ConnectorsApi(mock).projects.locations.providers;
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

  unittest.group('resource-ProjectsLocationsProvidersConnectorsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.providers.connectors;
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
        final resp = convert.json.encode(buildConnector());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConnector(response as api.Connector);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.providers.connectors;
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
        final resp = convert.json.encode(buildListConnectorsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListConnectorsResponse(response as api.ListConnectorsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsProvidersConnectorsVersionsResource', () {
    unittest.test('method--fetchAuthSchema', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .providers
          .connectors
          .versions;
      final arg_name = 'foo';
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
        final resp = convert.json.encode(buildFetchAuthSchemaResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetchAuthSchema(arg_name,
          view: arg_view, $fields: arg_$fields);
      checkFetchAuthSchemaResponse(response as api.FetchAuthSchemaResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .providers
          .connectors
          .versions;
      final arg_name = 'foo';
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
        final resp = convert.json.encode(buildConnectorVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkConnectorVersion(response as api.ConnectorVersion);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .providers
          .connectors
          .versions;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
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
        final resp = convert.json.encode(buildListConnectorVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListConnectorVersionsResponse(
          response as api.ListConnectorVersionsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsProvidersConnectorsVersionsEventtypesResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .providers
          .connectors
          .versions
          .eventtypes;
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
        final resp = convert.json.encode(buildEventType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkEventType(response as api.EventType);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .providers
          .connectors
          .versions
          .eventtypes;
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
        final resp = convert.json.encode(buildListEventTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListEventTypesResponse(response as api.ListEventTypesResponse);
    });
  });
}
