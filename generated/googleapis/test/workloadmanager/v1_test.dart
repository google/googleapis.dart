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
// ignore_for_file: unused_import
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/workloadmanager/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.CloudResource> buildUnnamed0() => [
      buildCloudResource(),
      buildCloudResource(),
    ];

void checkUnnamed0(core.List<api.CloudResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloudResource(o[0]);
  checkCloudResource(o[1]);
}

core.int buildCounterAPILayerServer = 0;
api.APILayerServer buildAPILayerServer() {
  final o = api.APILayerServer();
  buildCounterAPILayerServer++;
  if (buildCounterAPILayerServer < 3) {
    o.name = 'foo';
    o.osVersion = 'foo';
    o.resources = buildUnnamed0();
  }
  buildCounterAPILayerServer--;
  return o;
}

void checkAPILayerServer(api.APILayerServer o) {
  buildCounterAPILayerServer++;
  if (buildCounterAPILayerServer < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.resources!);
  }
  buildCounterAPILayerServer--;
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

core.int buildCounterAgentCommand = 0;
api.AgentCommand buildAgentCommand() {
  final o = api.AgentCommand();
  buildCounterAgentCommand++;
  if (buildCounterAgentCommand < 3) {
    o.command = 'foo';
    o.parameters = buildUnnamed1();
  }
  buildCounterAgentCommand--;
  return o;
}

void checkAgentCommand(api.AgentCommand o) {
  buildCounterAgentCommand++;
  if (buildCounterAgentCommand < 3) {
    unittest.expect(
      o.command!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.parameters!);
  }
  buildCounterAgentCommand--;
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

core.int buildCounterAvailabilityGroup = 0;
api.AvailabilityGroup buildAvailabilityGroup() {
  final o = api.AvailabilityGroup();
  buildCounterAvailabilityGroup++;
  if (buildCounterAvailabilityGroup < 3) {
    o.databases = buildUnnamed2();
    o.name = 'foo';
    o.primaryServer = 'foo';
    o.secondaryServers = buildUnnamed3();
  }
  buildCounterAvailabilityGroup--;
  return o;
}

void checkAvailabilityGroup(api.AvailabilityGroup o) {
  buildCounterAvailabilityGroup++;
  if (buildCounterAvailabilityGroup < 3) {
    checkUnnamed2(o.databases!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primaryServer!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.secondaryServers!);
  }
  buildCounterAvailabilityGroup--;
}

core.List<api.CloudResource> buildUnnamed4() => [
      buildCloudResource(),
      buildCloudResource(),
    ];

void checkUnnamed4(core.List<api.CloudResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloudResource(o[0]);
  checkCloudResource(o[1]);
}

core.int buildCounterBackendServer = 0;
api.BackendServer buildBackendServer() {
  final o = api.BackendServer();
  buildCounterBackendServer++;
  if (buildCounterBackendServer < 3) {
    o.backupFile = 'foo';
    o.backupSchedule = 'foo';
    o.name = 'foo';
    o.osVersion = 'foo';
    o.resources = buildUnnamed4();
  }
  buildCounterBackendServer--;
  return o;
}

void checkBackendServer(api.BackendServer o) {
  buildCounterBackendServer++;
  if (buildCounterBackendServer < 3) {
    unittest.expect(
      o.backupFile!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.backupSchedule!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.resources!);
  }
  buildCounterBackendServer--;
}

core.int buildCounterBackupProperties = 0;
api.BackupProperties buildBackupProperties() {
  final o = api.BackupProperties();
  buildCounterBackupProperties++;
  if (buildCounterBackupProperties < 3) {
    o.latestBackupStatus = 'foo';
    o.latestBackupTime = 'foo';
  }
  buildCounterBackupProperties--;
  return o;
}

void checkBackupProperties(api.BackupProperties o) {
  buildCounterBackupProperties++;
  if (buildCounterBackupProperties < 3) {
    unittest.expect(
      o.latestBackupStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latestBackupTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackupProperties--;
}

core.int buildCounterBigQueryDestination = 0;
api.BigQueryDestination buildBigQueryDestination() {
  final o = api.BigQueryDestination();
  buildCounterBigQueryDestination++;
  if (buildCounterBigQueryDestination < 3) {
    o.createNewResultsTable = true;
    o.destinationDataset = 'foo';
  }
  buildCounterBigQueryDestination--;
  return o;
}

void checkBigQueryDestination(api.BigQueryDestination o) {
  buildCounterBigQueryDestination++;
  if (buildCounterBigQueryDestination < 3) {
    unittest.expect(o.createNewResultsTable!, unittest.isTrue);
    unittest.expect(
      o.destinationDataset!,
      unittest.equals('foo'),
    );
  }
  buildCounterBigQueryDestination--;
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

core.int buildCounterCloudResource = 0;
api.CloudResource buildCloudResource() {
  final o = api.CloudResource();
  buildCounterCloudResource++;
  if (buildCounterCloudResource < 3) {
    o.instanceProperties = buildInstanceProperties();
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterCloudResource--;
  return o;
}

void checkCloudResource(api.CloudResource o) {
  buildCounterCloudResource++;
  if (buildCounterCloudResource < 3) {
    checkInstanceProperties(o.instanceProperties!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudResource--;
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

core.int buildCounterCluster = 0;
api.Cluster buildCluster() {
  final o = api.Cluster();
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    o.nodes = buildUnnamed5();
    o.witnessServer = 'foo';
  }
  buildCounterCluster--;
  return o;
}

void checkCluster(api.Cluster o) {
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    checkUnnamed5(o.nodes!);
    unittest.expect(
      o.witnessServer!,
      unittest.equals('foo'),
    );
  }
  buildCounterCluster--;
}

core.int buildCounterCommand = 0;
api.Command buildCommand() {
  final o = api.Command();
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    o.agentCommand = buildAgentCommand();
    o.shellCommand = buildShellCommand();
  }
  buildCounterCommand--;
  return o;
}

void checkCommand(api.Command o) {
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    checkAgentCommand(o.agentCommand!);
    checkShellCommand(o.shellCommand!);
  }
  buildCounterCommand--;
}

core.List<api.HealthCheck> buildUnnamed6() => [
      buildHealthCheck(),
      buildHealthCheck(),
    ];

void checkUnnamed6(core.List<api.HealthCheck> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHealthCheck(o[0]);
  checkHealthCheck(o[1]);
}

core.List<api.ComponentHealth> buildUnnamed7() => [
      buildComponentHealth(),
      buildComponentHealth(),
    ];

void checkUnnamed7(core.List<api.ComponentHealth> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComponentHealth(o[0]);
  checkComponentHealth(o[1]);
}

core.int buildCounterComponentHealth = 0;
api.ComponentHealth buildComponentHealth() {
  final o = api.ComponentHealth();
  buildCounterComponentHealth++;
  if (buildCounterComponentHealth < 3) {
    o.component = 'foo';
    o.componentHealthChecks = buildUnnamed6();
    o.componentHealthType = 'foo';
    o.isRequired = true;
    o.state = 'foo';
    o.subComponentHealthes = buildUnnamed7();
  }
  buildCounterComponentHealth--;
  return o;
}

void checkComponentHealth(api.ComponentHealth o) {
  buildCounterComponentHealth++;
  if (buildCounterComponentHealth < 3) {
    unittest.expect(
      o.component!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.componentHealthChecks!);
    unittest.expect(
      o.componentHealthType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isRequired!, unittest.isTrue);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.subComponentHealthes!);
  }
  buildCounterComponentHealth--;
}

core.int buildCounterDatabase = 0;
api.Database buildDatabase() {
  final o = api.Database();
  buildCounterDatabase++;
  if (buildCounterDatabase < 3) {
    o.backupFile = 'foo';
    o.backupSchedule = 'foo';
    o.hostVm = 'foo';
    o.name = 'foo';
  }
  buildCounterDatabase--;
  return o;
}

void checkDatabase(api.Database o) {
  buildCounterDatabase++;
  if (buildCounterDatabase < 3) {
    unittest.expect(
      o.backupFile!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.backupSchedule!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hostVm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatabase--;
}

core.int buildCounterDatabaseProperties = 0;
api.DatabaseProperties buildDatabaseProperties() {
  final o = api.DatabaseProperties();
  buildCounterDatabaseProperties++;
  if (buildCounterDatabaseProperties < 3) {
    o.backupProperties = buildBackupProperties();
    o.databaseType = 'foo';
  }
  buildCounterDatabaseProperties--;
  return o;
}

void checkDatabaseProperties(api.DatabaseProperties o) {
  buildCounterDatabaseProperties++;
  if (buildCounterDatabaseProperties < 3) {
    checkBackupProperties(o.backupProperties!);
    unittest.expect(
      o.databaseType!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatabaseProperties--;
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

core.Map<core.String, core.String> buildUnnamed8() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8(core.Map<core.String, core.String> o) {
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

core.int buildCounterEvaluation = 0;
api.Evaluation buildEvaluation() {
  final o = api.Evaluation();
  buildCounterEvaluation++;
  if (buildCounterEvaluation < 3) {
    o.bigQueryDestination = buildBigQueryDestination();
    o.createTime = 'foo';
    o.customRulesBucket = 'foo';
    o.description = 'foo';
    o.evaluationType = 'foo';
    o.labels = buildUnnamed8();
    o.name = 'foo';
    o.resourceFilter = buildResourceFilter();
    o.resourceStatus = buildResourceStatus();
    o.ruleNames = buildUnnamed9();
    o.ruleVersions = buildUnnamed10();
    o.schedule = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterEvaluation--;
  return o;
}

void checkEvaluation(api.Evaluation o) {
  buildCounterEvaluation++;
  if (buildCounterEvaluation < 3) {
    checkBigQueryDestination(o.bigQueryDestination!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customRulesBucket!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.evaluationType!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkResourceFilter(o.resourceFilter!);
    checkResourceStatus(o.resourceStatus!);
    checkUnnamed9(o.ruleNames!);
    checkUnnamed10(o.ruleVersions!);
    unittest.expect(
      o.schedule!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterEvaluation--;
}

core.List<api.ExternalDataSources> buildUnnamed11() => [
      buildExternalDataSources(),
      buildExternalDataSources(),
    ];

void checkUnnamed11(core.List<api.ExternalDataSources> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExternalDataSources(o[0]);
  checkExternalDataSources(o[1]);
}

core.Map<core.String, core.String> buildUnnamed12() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed12(core.Map<core.String, core.String> o) {
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

core.List<api.Notice> buildUnnamed13() => [
      buildNotice(),
      buildNotice(),
    ];

void checkUnnamed13(core.List<api.Notice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotice(o[0]);
  checkNotice(o[1]);
}

core.List<api.RuleExecutionResult> buildUnnamed14() => [
      buildRuleExecutionResult(),
      buildRuleExecutionResult(),
    ];

void checkUnnamed14(core.List<api.RuleExecutionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRuleExecutionResult(o[0]);
  checkRuleExecutionResult(o[1]);
}

core.int buildCounterExecution = 0;
api.Execution buildExecution() {
  final o = api.Execution();
  buildCounterExecution++;
  if (buildCounterExecution < 3) {
    o.endTime = 'foo';
    o.evaluationId = 'foo';
    o.externalDataSources = buildUnnamed11();
    o.inventoryTime = 'foo';
    o.labels = buildUnnamed12();
    o.name = 'foo';
    o.notices = buildUnnamed13();
    o.resultSummary = buildSummary();
    o.ruleResults = buildUnnamed14();
    o.runType = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
  }
  buildCounterExecution--;
  return o;
}

void checkExecution(api.Execution o) {
  buildCounterExecution++;
  if (buildCounterExecution < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.evaluationId!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.externalDataSources!);
    unittest.expect(
      o.inventoryTime!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.notices!);
    checkSummary(o.resultSummary!);
    checkUnnamed14(o.ruleResults!);
    unittest.expect(
      o.runType!,
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
  buildCounterExecution--;
}

core.List<api.Command> buildUnnamed15() => [
      buildCommand(),
      buildCommand(),
    ];

void checkUnnamed15(core.List<api.Command> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommand(o[0]);
  checkCommand(o[1]);
}

core.int buildCounterExecutionResult = 0;
api.ExecutionResult buildExecutionResult() {
  final o = api.ExecutionResult();
  buildCounterExecutionResult++;
  if (buildCounterExecutionResult < 3) {
    o.commands = buildUnnamed15();
    o.documentationUrl = 'foo';
    o.resource = buildResource();
    o.rule = 'foo';
    o.severity = 'foo';
    o.type = 'foo';
    o.violationDetails = buildViolationDetails();
    o.violationMessage = 'foo';
  }
  buildCounterExecutionResult--;
  return o;
}

void checkExecutionResult(api.ExecutionResult o) {
  buildCounterExecutionResult++;
  if (buildCounterExecutionResult < 3) {
    checkUnnamed15(o.commands!);
    unittest.expect(
      o.documentationUrl!,
      unittest.equals('foo'),
    );
    checkResource(o.resource!);
    unittest.expect(
      o.rule!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkViolationDetails(o.violationDetails!);
    unittest.expect(
      o.violationMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterExecutionResult--;
}

core.int buildCounterExternalDataSources = 0;
api.ExternalDataSources buildExternalDataSources() {
  final o = api.ExternalDataSources();
  buildCounterExternalDataSources++;
  if (buildCounterExternalDataSources < 3) {
    o.assetType = 'foo';
    o.name = 'foo';
    o.type = 'foo';
    o.uri = 'foo';
  }
  buildCounterExternalDataSources--;
  return o;
}

void checkExternalDataSources(api.ExternalDataSources o) {
  buildCounterExternalDataSources++;
  if (buildCounterExternalDataSources < 3) {
    unittest.expect(
      o.assetType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterExternalDataSources--;
}

core.List<api.CloudResource> buildUnnamed16() => [
      buildCloudResource(),
      buildCloudResource(),
    ];

void checkUnnamed16(core.List<api.CloudResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloudResource(o[0]);
  checkCloudResource(o[1]);
}

core.int buildCounterFrontEndServer = 0;
api.FrontEndServer buildFrontEndServer() {
  final o = api.FrontEndServer();
  buildCounterFrontEndServer++;
  if (buildCounterFrontEndServer < 3) {
    o.name = 'foo';
    o.osVersion = 'foo';
    o.resources = buildUnnamed16();
  }
  buildCounterFrontEndServer--;
  return o;
}

void checkFrontEndServer(api.FrontEndServer o) {
  buildCounterFrontEndServer++;
  if (buildCounterFrontEndServer < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.resources!);
  }
  buildCounterFrontEndServer--;
}

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
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

core.int buildCounterGceInstanceFilter = 0;
api.GceInstanceFilter buildGceInstanceFilter() {
  final o = api.GceInstanceFilter();
  buildCounterGceInstanceFilter++;
  if (buildCounterGceInstanceFilter < 3) {
    o.serviceAccounts = buildUnnamed17();
  }
  buildCounterGceInstanceFilter--;
  return o;
}

void checkGceInstanceFilter(api.GceInstanceFilter o) {
  buildCounterGceInstanceFilter++;
  if (buildCounterGceInstanceFilter < 3) {
    checkUnnamed17(o.serviceAccounts!);
  }
  buildCounterGceInstanceFilter--;
}

core.int buildCounterHealthCheck = 0;
api.HealthCheck buildHealthCheck() {
  final o = api.HealthCheck();
  buildCounterHealthCheck++;
  if (buildCounterHealthCheck < 3) {
    o.message = 'foo';
    o.metric = 'foo';
    o.resource = buildCloudResource();
    o.source = 'foo';
    o.state = 'foo';
  }
  buildCounterHealthCheck--;
  return o;
}

void checkHealthCheck(api.HealthCheck o) {
  buildCounterHealthCheck++;
  if (buildCounterHealthCheck < 3) {
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.metric!,
      unittest.equals('foo'),
    );
    checkCloudResource(o.resource!);
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterHealthCheck--;
}

core.int buildCounterInsight = 0;
api.Insight buildInsight() {
  final o = api.Insight();
  buildCounterInsight++;
  if (buildCounterInsight < 3) {
    o.instanceId = 'foo';
    o.sapDiscovery = buildSapDiscovery();
    o.sapValidation = buildSapValidation();
    o.sentTime = 'foo';
    o.sqlserverValidation = buildSqlserverValidation();
    o.torsoValidation = buildTorsoValidation();
  }
  buildCounterInsight--;
  return o;
}

void checkInsight(api.Insight o) {
  buildCounterInsight++;
  if (buildCounterInsight < 3) {
    unittest.expect(
      o.instanceId!,
      unittest.equals('foo'),
    );
    checkSapDiscovery(o.sapDiscovery!);
    checkSapValidation(o.sapValidation!);
    unittest.expect(
      o.sentTime!,
      unittest.equals('foo'),
    );
    checkSqlserverValidation(o.sqlserverValidation!);
    checkTorsoValidation(o.torsoValidation!);
  }
  buildCounterInsight--;
}

core.int buildCounterInstance = 0;
api.Instance buildInstance() {
  final o = api.Instance();
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    o.name = 'foo';
    o.region = 'foo';
    o.status = 'foo';
  }
  buildCounterInstance--;
  return o;
}

void checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstance--;
}

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
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

core.int buildCounterInstanceProperties = 0;
api.InstanceProperties buildInstanceProperties() {
  final o = api.InstanceProperties();
  buildCounterInstanceProperties++;
  if (buildCounterInstanceProperties < 3) {
    o.instanceNumber = 'foo';
    o.machineType = 'foo';
    o.role = 'foo';
    o.roles = buildUnnamed18();
    o.sapInstanceProperties = buildSapInstanceProperties();
    o.status = 'foo';
    o.upcomingMaintenanceEvent = buildUpcomingMaintenanceEvent();
  }
  buildCounterInstanceProperties--;
  return o;
}

void checkInstanceProperties(api.InstanceProperties o) {
  buildCounterInstanceProperties++;
  if (buildCounterInstanceProperties < 3) {
    unittest.expect(
      o.instanceNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.roles!);
    checkSapInstanceProperties(o.sapInstanceProperties!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    checkUpcomingMaintenanceEvent(o.upcomingMaintenanceEvent!);
  }
  buildCounterInstanceProperties--;
}

core.List<api.Instance> buildUnnamed19() => [
      buildInstance(),
      buildInstance(),
    ];

void checkUnnamed19(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
}

core.int buildCounterLayer = 0;
api.Layer buildLayer() {
  final o = api.Layer();
  buildCounterLayer++;
  if (buildCounterLayer < 3) {
    o.applicationType = 'foo';
    o.databaseType = 'foo';
    o.instances = buildUnnamed19();
    o.sid = 'foo';
  }
  buildCounterLayer--;
  return o;
}

void checkLayer(api.Layer o) {
  buildCounterLayer++;
  if (buildCounterLayer < 3) {
    unittest.expect(
      o.applicationType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.databaseType!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.instances!);
    unittest.expect(
      o.sid!,
      unittest.equals('foo'),
    );
  }
  buildCounterLayer--;
}

core.List<core.String> buildUnnamed20() => [
      'foo',
      'foo',
    ];

void checkUnnamed20(core.List<core.String> o) {
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

core.List<api.WorkloadProfile> buildUnnamed21() => [
      buildWorkloadProfile(),
      buildWorkloadProfile(),
    ];

void checkUnnamed21(core.List<api.WorkloadProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkloadProfile(o[0]);
  checkWorkloadProfile(o[1]);
}

core.int buildCounterListDiscoveredProfilesResponse = 0;
api.ListDiscoveredProfilesResponse buildListDiscoveredProfilesResponse() {
  final o = api.ListDiscoveredProfilesResponse();
  buildCounterListDiscoveredProfilesResponse++;
  if (buildCounterListDiscoveredProfilesResponse < 3) {
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed20();
    o.workloadProfiles = buildUnnamed21();
  }
  buildCounterListDiscoveredProfilesResponse--;
  return o;
}

void checkListDiscoveredProfilesResponse(api.ListDiscoveredProfilesResponse o) {
  buildCounterListDiscoveredProfilesResponse++;
  if (buildCounterListDiscoveredProfilesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.unreachable!);
    checkUnnamed21(o.workloadProfiles!);
  }
  buildCounterListDiscoveredProfilesResponse--;
}

core.List<api.Evaluation> buildUnnamed22() => [
      buildEvaluation(),
      buildEvaluation(),
    ];

void checkUnnamed22(core.List<api.Evaluation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEvaluation(o[0]);
  checkEvaluation(o[1]);
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

core.int buildCounterListEvaluationsResponse = 0;
api.ListEvaluationsResponse buildListEvaluationsResponse() {
  final o = api.ListEvaluationsResponse();
  buildCounterListEvaluationsResponse++;
  if (buildCounterListEvaluationsResponse < 3) {
    o.evaluations = buildUnnamed22();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed23();
  }
  buildCounterListEvaluationsResponse--;
  return o;
}

void checkListEvaluationsResponse(api.ListEvaluationsResponse o) {
  buildCounterListEvaluationsResponse++;
  if (buildCounterListEvaluationsResponse < 3) {
    checkUnnamed22(o.evaluations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.unreachable!);
  }
  buildCounterListEvaluationsResponse--;
}

core.List<api.ExecutionResult> buildUnnamed24() => [
      buildExecutionResult(),
      buildExecutionResult(),
    ];

void checkUnnamed24(core.List<api.ExecutionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecutionResult(o[0]);
  checkExecutionResult(o[1]);
}

core.int buildCounterListExecutionResultsResponse = 0;
api.ListExecutionResultsResponse buildListExecutionResultsResponse() {
  final o = api.ListExecutionResultsResponse();
  buildCounterListExecutionResultsResponse++;
  if (buildCounterListExecutionResultsResponse < 3) {
    o.executionResults = buildUnnamed24();
    o.nextPageToken = 'foo';
  }
  buildCounterListExecutionResultsResponse--;
  return o;
}

void checkListExecutionResultsResponse(api.ListExecutionResultsResponse o) {
  buildCounterListExecutionResultsResponse++;
  if (buildCounterListExecutionResultsResponse < 3) {
    checkUnnamed24(o.executionResults!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListExecutionResultsResponse--;
}

core.List<api.Execution> buildUnnamed25() => [
      buildExecution(),
      buildExecution(),
    ];

void checkUnnamed25(core.List<api.Execution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecution(o[0]);
  checkExecution(o[1]);
}

core.List<core.String> buildUnnamed26() => [
      'foo',
      'foo',
    ];

void checkUnnamed26(core.List<core.String> o) {
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

core.int buildCounterListExecutionsResponse = 0;
api.ListExecutionsResponse buildListExecutionsResponse() {
  final o = api.ListExecutionsResponse();
  buildCounterListExecutionsResponse++;
  if (buildCounterListExecutionsResponse < 3) {
    o.executions = buildUnnamed25();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed26();
  }
  buildCounterListExecutionsResponse--;
  return o;
}

void checkListExecutionsResponse(api.ListExecutionsResponse o) {
  buildCounterListExecutionsResponse++;
  if (buildCounterListExecutionsResponse < 3) {
    checkUnnamed25(o.executions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.unreachable!);
  }
  buildCounterListExecutionsResponse--;
}

core.List<api.Location> buildUnnamed27() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed27(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed27();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed27(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed28() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed28(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed28();
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
    checkUnnamed28(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Rule> buildUnnamed29() => [
      buildRule(),
      buildRule(),
    ];

void checkUnnamed29(core.List<api.Rule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRule(o[0]);
  checkRule(o[1]);
}

core.int buildCounterListRulesResponse = 0;
api.ListRulesResponse buildListRulesResponse() {
  final o = api.ListRulesResponse();
  buildCounterListRulesResponse++;
  if (buildCounterListRulesResponse < 3) {
    o.nextPageToken = 'foo';
    o.rules = buildUnnamed29();
  }
  buildCounterListRulesResponse--;
  return o;
}

void checkListRulesResponse(api.ListRulesResponse o) {
  buildCounterListRulesResponse++;
  if (buildCounterListRulesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.rules!);
  }
  buildCounterListRulesResponse--;
}

core.List<api.ScannedResource> buildUnnamed30() => [
      buildScannedResource(),
      buildScannedResource(),
    ];

void checkUnnamed30(core.List<api.ScannedResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScannedResource(o[0]);
  checkScannedResource(o[1]);
}

core.int buildCounterListScannedResourcesResponse = 0;
api.ListScannedResourcesResponse buildListScannedResourcesResponse() {
  final o = api.ListScannedResourcesResponse();
  buildCounterListScannedResourcesResponse++;
  if (buildCounterListScannedResourcesResponse < 3) {
    o.nextPageToken = 'foo';
    o.scannedResources = buildUnnamed30();
  }
  buildCounterListScannedResourcesResponse--;
  return o;
}

void checkListScannedResourcesResponse(api.ListScannedResourcesResponse o) {
  buildCounterListScannedResourcesResponse++;
  if (buildCounterListScannedResourcesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.scannedResources!);
  }
  buildCounterListScannedResourcesResponse--;
}

core.int buildCounterLoadBalancerServer = 0;
api.LoadBalancerServer buildLoadBalancerServer() {
  final o = api.LoadBalancerServer();
  buildCounterLoadBalancerServer++;
  if (buildCounterLoadBalancerServer < 3) {
    o.ip = 'foo';
    o.vm = 'foo';
  }
  buildCounterLoadBalancerServer--;
  return o;
}

void checkLoadBalancerServer(api.LoadBalancerServer o) {
  buildCounterLoadBalancerServer++;
  if (buildCounterLoadBalancerServer < 3) {
    unittest.expect(
      o.ip!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vm!,
      unittest.equals('foo'),
    );
  }
  buildCounterLoadBalancerServer--;
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

core.Map<core.String, core.Object?> buildUnnamed32() => {
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

void checkUnnamed32(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed31();
    o.locationId = 'foo';
    o.metadata = buildUnnamed32();
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
    checkUnnamed31(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed32(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterNotice = 0;
api.Notice buildNotice() {
  final o = api.Notice();
  buildCounterNotice++;
  if (buildCounterNotice < 3) {
    o.message = 'foo';
  }
  buildCounterNotice--;
  return o;
}

void checkNotice(api.Notice o) {
  buildCounterNotice++;
  if (buildCounterNotice < 3) {
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterNotice--;
}

core.Map<core.String, core.Object?> buildUnnamed33() => {
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

void checkUnnamed33(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed34() => {
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

void checkUnnamed34(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed33();
    o.name = 'foo';
    o.response = buildUnnamed34();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed33(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterProduct = 0;
api.Product buildProduct() {
  final o = api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.name = 'foo';
    o.version = 'foo';
  }
  buildCounterProduct--;
  return o;
}

void checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterProduct--;
}

core.int buildCounterResource = 0;
api.Resource buildResource() {
  final o = api.Resource();
  buildCounterResource++;
  if (buildCounterResource < 3) {
    o.name = 'foo';
    o.serviceAccount = 'foo';
    o.type = 'foo';
  }
  buildCounterResource--;
  return o;
}

void checkResource(api.Resource o) {
  buildCounterResource++;
  if (buildCounterResource < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterResource--;
}

core.Map<core.String, core.String> buildUnnamed35() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed35(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed36() => [
      'foo',
      'foo',
    ];

void checkUnnamed36(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed37() => [
      'foo',
      'foo',
    ];

void checkUnnamed37(core.List<core.String> o) {
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

core.int buildCounterResourceFilter = 0;
api.ResourceFilter buildResourceFilter() {
  final o = api.ResourceFilter();
  buildCounterResourceFilter++;
  if (buildCounterResourceFilter < 3) {
    o.gceInstanceFilter = buildGceInstanceFilter();
    o.inclusionLabels = buildUnnamed35();
    o.resourceIdPatterns = buildUnnamed36();
    o.scopes = buildUnnamed37();
  }
  buildCounterResourceFilter--;
  return o;
}

void checkResourceFilter(api.ResourceFilter o) {
  buildCounterResourceFilter++;
  if (buildCounterResourceFilter < 3) {
    checkGceInstanceFilter(o.gceInstanceFilter!);
    checkUnnamed35(o.inclusionLabels!);
    checkUnnamed36(o.resourceIdPatterns!);
    checkUnnamed37(o.scopes!);
  }
  buildCounterResourceFilter--;
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

core.int buildCounterResourceStatus = 0;
api.ResourceStatus buildResourceStatus() {
  final o = api.ResourceStatus();
  buildCounterResourceStatus++;
  if (buildCounterResourceStatus < 3) {
    o.rulesNewerVersions = buildUnnamed38();
    o.state = 'foo';
  }
  buildCounterResourceStatus--;
  return o;
}

void checkResourceStatus(api.ResourceStatus o) {
  buildCounterResourceStatus++;
  if (buildCounterResourceStatus < 3) {
    checkUnnamed38(o.rulesNewerVersions!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterResourceStatus--;
}

core.List<core.String> buildUnnamed39() => [
      'foo',
      'foo',
    ];

void checkUnnamed39(core.List<core.String> o) {
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

core.int buildCounterRule = 0;
api.Rule buildRule() {
  final o = api.Rule();
  buildCounterRule++;
  if (buildCounterRule < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.errorMessage = 'foo';
    o.name = 'foo';
    o.primaryCategory = 'foo';
    o.remediation = 'foo';
    o.revisionId = 'foo';
    o.secondaryCategory = 'foo';
    o.severity = 'foo';
    o.tags = buildUnnamed39();
    o.uri = 'foo';
  }
  buildCounterRule--;
  return o;
}

void checkRule(api.Rule o) {
  buildCounterRule++;
  if (buildCounterRule < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primaryCategory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remediation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.secondaryCategory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.tags!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterRule--;
}

core.int buildCounterRuleExecutionResult = 0;
api.RuleExecutionResult buildRuleExecutionResult() {
  final o = api.RuleExecutionResult();
  buildCounterRuleExecutionResult++;
  if (buildCounterRuleExecutionResult < 3) {
    o.message = 'foo';
    o.resultCount = 'foo';
    o.rule = 'foo';
    o.scannedResourceCount = 'foo';
    o.state = 'foo';
  }
  buildCounterRuleExecutionResult--;
  return o;
}

void checkRuleExecutionResult(api.RuleExecutionResult o) {
  buildCounterRuleExecutionResult++;
  if (buildCounterRuleExecutionResult < 3) {
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resultCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rule!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scannedResourceCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterRuleExecutionResult--;
}

core.int buildCounterRunEvaluationRequest = 0;
api.RunEvaluationRequest buildRunEvaluationRequest() {
  final o = api.RunEvaluationRequest();
  buildCounterRunEvaluationRequest++;
  if (buildCounterRunEvaluationRequest < 3) {
    o.execution = buildExecution();
    o.executionId = 'foo';
    o.requestId = 'foo';
  }
  buildCounterRunEvaluationRequest--;
  return o;
}

void checkRunEvaluationRequest(api.RunEvaluationRequest o) {
  buildCounterRunEvaluationRequest++;
  if (buildCounterRunEvaluationRequest < 3) {
    checkExecution(o.execution!);
    unittest.expect(
      o.executionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRunEvaluationRequest--;
}

core.List<core.String> buildUnnamed40() => [
      'foo',
      'foo',
    ];

void checkUnnamed40(core.List<core.String> o) {
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

core.List<api.CloudResource> buildUnnamed41() => [
      buildCloudResource(),
      buildCloudResource(),
    ];

void checkUnnamed41(core.List<api.CloudResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloudResource(o[0]);
  checkCloudResource(o[1]);
}

core.int buildCounterSapComponent = 0;
api.SapComponent buildSapComponent() {
  final o = api.SapComponent();
  buildCounterSapComponent++;
  if (buildCounterSapComponent < 3) {
    o.databaseProperties = buildDatabaseProperties();
    o.haHosts = buildUnnamed40();
    o.resources = buildUnnamed41();
    o.sid = 'foo';
    o.topologyType = 'foo';
  }
  buildCounterSapComponent--;
  return o;
}

void checkSapComponent(api.SapComponent o) {
  buildCounterSapComponent++;
  if (buildCounterSapComponent < 3) {
    checkDatabaseProperties(o.databaseProperties!);
    checkUnnamed40(o.haHosts!);
    checkUnnamed41(o.resources!);
    unittest.expect(
      o.sid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.topologyType!,
      unittest.equals('foo'),
    );
  }
  buildCounterSapComponent--;
}

core.int buildCounterSapDiscovery = 0;
api.SapDiscovery buildSapDiscovery() {
  final o = api.SapDiscovery();
  buildCounterSapDiscovery++;
  if (buildCounterSapDiscovery < 3) {
    o.applicationLayer = buildSapDiscoveryComponent();
    o.databaseLayer = buildSapDiscoveryComponent();
    o.metadata = buildSapDiscoveryMetadata();
    o.projectNumber = 'foo';
    o.systemId = 'foo';
    o.updateTime = 'foo';
    o.useDrReconciliation = true;
    o.workloadProperties = buildSapDiscoveryWorkloadProperties();
  }
  buildCounterSapDiscovery--;
  return o;
}

void checkSapDiscovery(api.SapDiscovery o) {
  buildCounterSapDiscovery++;
  if (buildCounterSapDiscovery < 3) {
    checkSapDiscoveryComponent(o.applicationLayer!);
    checkSapDiscoveryComponent(o.databaseLayer!);
    checkSapDiscoveryMetadata(o.metadata!);
    unittest.expect(
      o.projectNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.systemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.useDrReconciliation!, unittest.isTrue);
    checkSapDiscoveryWorkloadProperties(o.workloadProperties!);
  }
  buildCounterSapDiscovery--;
}

core.List<core.String> buildUnnamed42() => [
      'foo',
      'foo',
    ];

void checkUnnamed42(core.List<core.String> o) {
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

core.List<api.SapDiscoveryComponentReplicationSite> buildUnnamed43() => [
      buildSapDiscoveryComponentReplicationSite(),
      buildSapDiscoveryComponentReplicationSite(),
    ];

void checkUnnamed43(core.List<api.SapDiscoveryComponentReplicationSite> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSapDiscoveryComponentReplicationSite(o[0]);
  checkSapDiscoveryComponentReplicationSite(o[1]);
}

core.List<api.SapDiscoveryResource> buildUnnamed44() => [
      buildSapDiscoveryResource(),
      buildSapDiscoveryResource(),
    ];

void checkUnnamed44(core.List<api.SapDiscoveryResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSapDiscoveryResource(o[0]);
  checkSapDiscoveryResource(o[1]);
}

core.int buildCounterSapDiscoveryComponent = 0;
api.SapDiscoveryComponent buildSapDiscoveryComponent() {
  final o = api.SapDiscoveryComponent();
  buildCounterSapDiscoveryComponent++;
  if (buildCounterSapDiscoveryComponent < 3) {
    o.applicationProperties = buildSapDiscoveryComponentApplicationProperties();
    o.databaseProperties = buildSapDiscoveryComponentDatabaseProperties();
    o.haHosts = buildUnnamed42();
    o.hostProject = 'foo';
    o.region = 'foo';
    o.replicationSites = buildUnnamed43();
    o.resources = buildUnnamed44();
    o.sid = 'foo';
    o.topologyType = 'foo';
  }
  buildCounterSapDiscoveryComponent--;
  return o;
}

void checkSapDiscoveryComponent(api.SapDiscoveryComponent o) {
  buildCounterSapDiscoveryComponent++;
  if (buildCounterSapDiscoveryComponent < 3) {
    checkSapDiscoveryComponentApplicationProperties(o.applicationProperties!);
    checkSapDiscoveryComponentDatabaseProperties(o.databaseProperties!);
    checkUnnamed42(o.haHosts!);
    unittest.expect(
      o.hostProject!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    checkUnnamed43(o.replicationSites!);
    checkUnnamed44(o.resources!);
    unittest.expect(
      o.sid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.topologyType!,
      unittest.equals('foo'),
    );
  }
  buildCounterSapDiscoveryComponent--;
}

core.int buildCounterSapDiscoveryComponentApplicationProperties = 0;
api.SapDiscoveryComponentApplicationProperties
    buildSapDiscoveryComponentApplicationProperties() {
  final o = api.SapDiscoveryComponentApplicationProperties();
  buildCounterSapDiscoveryComponentApplicationProperties++;
  if (buildCounterSapDiscoveryComponentApplicationProperties < 3) {
    o.abap = true;
    o.appInstanceNumber = 'foo';
    o.applicationType = 'foo';
    o.ascsInstanceNumber = 'foo';
    o.ascsUri = 'foo';
    o.ersInstanceNumber = 'foo';
    o.kernelVersion = 'foo';
    o.nfsUri = 'foo';
  }
  buildCounterSapDiscoveryComponentApplicationProperties--;
  return o;
}

void checkSapDiscoveryComponentApplicationProperties(
    api.SapDiscoveryComponentApplicationProperties o) {
  buildCounterSapDiscoveryComponentApplicationProperties++;
  if (buildCounterSapDiscoveryComponentApplicationProperties < 3) {
    unittest.expect(o.abap!, unittest.isTrue);
    unittest.expect(
      o.appInstanceNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.applicationType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ascsInstanceNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ascsUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ersInstanceNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kernelVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nfsUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterSapDiscoveryComponentApplicationProperties--;
}

core.int buildCounterSapDiscoveryComponentDatabaseProperties = 0;
api.SapDiscoveryComponentDatabaseProperties
    buildSapDiscoveryComponentDatabaseProperties() {
  final o = api.SapDiscoveryComponentDatabaseProperties();
  buildCounterSapDiscoveryComponentDatabaseProperties++;
  if (buildCounterSapDiscoveryComponentDatabaseProperties < 3) {
    o.databaseSid = 'foo';
    o.databaseType = 'foo';
    o.databaseVersion = 'foo';
    o.instanceNumber = 'foo';
    o.landscapeId = 'foo';
    o.primaryInstanceUri = 'foo';
    o.sharedNfsUri = 'foo';
  }
  buildCounterSapDiscoveryComponentDatabaseProperties--;
  return o;
}

void checkSapDiscoveryComponentDatabaseProperties(
    api.SapDiscoveryComponentDatabaseProperties o) {
  buildCounterSapDiscoveryComponentDatabaseProperties++;
  if (buildCounterSapDiscoveryComponentDatabaseProperties < 3) {
    unittest.expect(
      o.databaseSid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.databaseType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.databaseVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.landscapeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primaryInstanceUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sharedNfsUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterSapDiscoveryComponentDatabaseProperties--;
}

core.int buildCounterSapDiscoveryComponentReplicationSite = 0;
api.SapDiscoveryComponentReplicationSite
    buildSapDiscoveryComponentReplicationSite() {
  final o = api.SapDiscoveryComponentReplicationSite();
  buildCounterSapDiscoveryComponentReplicationSite++;
  if (buildCounterSapDiscoveryComponentReplicationSite < 3) {
    o.component = buildSapDiscoveryComponent();
    o.sourceSite = 'foo';
  }
  buildCounterSapDiscoveryComponentReplicationSite--;
  return o;
}

void checkSapDiscoveryComponentReplicationSite(
    api.SapDiscoveryComponentReplicationSite o) {
  buildCounterSapDiscoveryComponentReplicationSite++;
  if (buildCounterSapDiscoveryComponentReplicationSite < 3) {
    checkSapDiscoveryComponent(o.component!);
    unittest.expect(
      o.sourceSite!,
      unittest.equals('foo'),
    );
  }
  buildCounterSapDiscoveryComponentReplicationSite--;
}

core.int buildCounterSapDiscoveryMetadata = 0;
api.SapDiscoveryMetadata buildSapDiscoveryMetadata() {
  final o = api.SapDiscoveryMetadata();
  buildCounterSapDiscoveryMetadata++;
  if (buildCounterSapDiscoveryMetadata < 3) {
    o.customerRegion = 'foo';
    o.definedSystem = 'foo';
    o.environmentType = 'foo';
    o.sapProduct = 'foo';
  }
  buildCounterSapDiscoveryMetadata--;
  return o;
}

void checkSapDiscoveryMetadata(api.SapDiscoveryMetadata o) {
  buildCounterSapDiscoveryMetadata++;
  if (buildCounterSapDiscoveryMetadata < 3) {
    unittest.expect(
      o.customerRegion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.definedSystem!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.environmentType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sapProduct!,
      unittest.equals('foo'),
    );
  }
  buildCounterSapDiscoveryMetadata--;
}

core.List<core.String> buildUnnamed45() => [
      'foo',
      'foo',
    ];

void checkUnnamed45(core.List<core.String> o) {
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

core.int buildCounterSapDiscoveryResource = 0;
api.SapDiscoveryResource buildSapDiscoveryResource() {
  final o = api.SapDiscoveryResource();
  buildCounterSapDiscoveryResource++;
  if (buildCounterSapDiscoveryResource < 3) {
    o.instanceProperties = buildSapDiscoveryResourceInstanceProperties();
    o.relatedResources = buildUnnamed45();
    o.resourceKind = 'foo';
    o.resourceType = 'foo';
    o.resourceUri = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterSapDiscoveryResource--;
  return o;
}

void checkSapDiscoveryResource(api.SapDiscoveryResource o) {
  buildCounterSapDiscoveryResource++;
  if (buildCounterSapDiscoveryResource < 3) {
    checkSapDiscoveryResourceInstanceProperties(o.instanceProperties!);
    checkUnnamed45(o.relatedResources!);
    unittest.expect(
      o.resourceKind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterSapDiscoveryResource--;
}

core.List<api.SapDiscoveryResourceInstancePropertiesAppInstance>
    buildUnnamed46() => [
          buildSapDiscoveryResourceInstancePropertiesAppInstance(),
          buildSapDiscoveryResourceInstancePropertiesAppInstance(),
        ];

void checkUnnamed46(
    core.List<api.SapDiscoveryResourceInstancePropertiesAppInstance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSapDiscoveryResourceInstancePropertiesAppInstance(o[0]);
  checkSapDiscoveryResourceInstancePropertiesAppInstance(o[1]);
}

core.List<core.String> buildUnnamed47() => [
      'foo',
      'foo',
    ];

void checkUnnamed47(core.List<core.String> o) {
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

core.List<api.SapDiscoveryResourceInstancePropertiesDiskMount>
    buildUnnamed48() => [
          buildSapDiscoveryResourceInstancePropertiesDiskMount(),
          buildSapDiscoveryResourceInstancePropertiesDiskMount(),
        ];

void checkUnnamed48(
    core.List<api.SapDiscoveryResourceInstancePropertiesDiskMount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSapDiscoveryResourceInstancePropertiesDiskMount(o[0]);
  checkSapDiscoveryResourceInstancePropertiesDiskMount(o[1]);
}

core.int buildCounterSapDiscoveryResourceInstanceProperties = 0;
api.SapDiscoveryResourceInstanceProperties
    buildSapDiscoveryResourceInstanceProperties() {
  final o = api.SapDiscoveryResourceInstanceProperties();
  buildCounterSapDiscoveryResourceInstanceProperties++;
  if (buildCounterSapDiscoveryResourceInstanceProperties < 3) {
    o.appInstances = buildUnnamed46();
    o.clusterInstances = buildUnnamed47();
    o.diskMounts = buildUnnamed48();
    o.instanceNumber = 'foo';
    o.instanceRole = 'foo';
    o.isDrSite = true;
    o.virtualHostname = 'foo';
  }
  buildCounterSapDiscoveryResourceInstanceProperties--;
  return o;
}

void checkSapDiscoveryResourceInstanceProperties(
    api.SapDiscoveryResourceInstanceProperties o) {
  buildCounterSapDiscoveryResourceInstanceProperties++;
  if (buildCounterSapDiscoveryResourceInstanceProperties < 3) {
    checkUnnamed46(o.appInstances!);
    checkUnnamed47(o.clusterInstances!);
    checkUnnamed48(o.diskMounts!);
    unittest.expect(
      o.instanceNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceRole!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isDrSite!, unittest.isTrue);
    unittest.expect(
      o.virtualHostname!,
      unittest.equals('foo'),
    );
  }
  buildCounterSapDiscoveryResourceInstanceProperties--;
}

core.int buildCounterSapDiscoveryResourceInstancePropertiesAppInstance = 0;
api.SapDiscoveryResourceInstancePropertiesAppInstance
    buildSapDiscoveryResourceInstancePropertiesAppInstance() {
  final o = api.SapDiscoveryResourceInstancePropertiesAppInstance();
  buildCounterSapDiscoveryResourceInstancePropertiesAppInstance++;
  if (buildCounterSapDiscoveryResourceInstancePropertiesAppInstance < 3) {
    o.name = 'foo';
    o.number = 'foo';
  }
  buildCounterSapDiscoveryResourceInstancePropertiesAppInstance--;
  return o;
}

void checkSapDiscoveryResourceInstancePropertiesAppInstance(
    api.SapDiscoveryResourceInstancePropertiesAppInstance o) {
  buildCounterSapDiscoveryResourceInstancePropertiesAppInstance++;
  if (buildCounterSapDiscoveryResourceInstancePropertiesAppInstance < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.number!,
      unittest.equals('foo'),
    );
  }
  buildCounterSapDiscoveryResourceInstancePropertiesAppInstance--;
}

core.int buildCounterSapDiscoveryResourceInstancePropertiesDiskMount = 0;
api.SapDiscoveryResourceInstancePropertiesDiskMount
    buildSapDiscoveryResourceInstancePropertiesDiskMount() {
  final o = api.SapDiscoveryResourceInstancePropertiesDiskMount();
  buildCounterSapDiscoveryResourceInstancePropertiesDiskMount++;
  if (buildCounterSapDiscoveryResourceInstancePropertiesDiskMount < 3) {
    o.mountPoint = 'foo';
    o.name = 'foo';
  }
  buildCounterSapDiscoveryResourceInstancePropertiesDiskMount--;
  return o;
}

void checkSapDiscoveryResourceInstancePropertiesDiskMount(
    api.SapDiscoveryResourceInstancePropertiesDiskMount o) {
  buildCounterSapDiscoveryResourceInstancePropertiesDiskMount++;
  if (buildCounterSapDiscoveryResourceInstancePropertiesDiskMount < 3) {
    unittest.expect(
      o.mountPoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterSapDiscoveryResourceInstancePropertiesDiskMount--;
}

core.List<api.SapDiscoveryWorkloadPropertiesProductVersion> buildUnnamed49() =>
    [
      buildSapDiscoveryWorkloadPropertiesProductVersion(),
      buildSapDiscoveryWorkloadPropertiesProductVersion(),
    ];

void checkUnnamed49(
    core.List<api.SapDiscoveryWorkloadPropertiesProductVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSapDiscoveryWorkloadPropertiesProductVersion(o[0]);
  checkSapDiscoveryWorkloadPropertiesProductVersion(o[1]);
}

core.List<api.SapDiscoveryWorkloadPropertiesSoftwareComponentProperties>
    buildUnnamed50() => [
          buildSapDiscoveryWorkloadPropertiesSoftwareComponentProperties(),
          buildSapDiscoveryWorkloadPropertiesSoftwareComponentProperties(),
        ];

void checkUnnamed50(
    core.List<api.SapDiscoveryWorkloadPropertiesSoftwareComponentProperties>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSapDiscoveryWorkloadPropertiesSoftwareComponentProperties(o[0]);
  checkSapDiscoveryWorkloadPropertiesSoftwareComponentProperties(o[1]);
}

core.int buildCounterSapDiscoveryWorkloadProperties = 0;
api.SapDiscoveryWorkloadProperties buildSapDiscoveryWorkloadProperties() {
  final o = api.SapDiscoveryWorkloadProperties();
  buildCounterSapDiscoveryWorkloadProperties++;
  if (buildCounterSapDiscoveryWorkloadProperties < 3) {
    o.productVersions = buildUnnamed49();
    o.softwareComponentVersions = buildUnnamed50();
  }
  buildCounterSapDiscoveryWorkloadProperties--;
  return o;
}

void checkSapDiscoveryWorkloadProperties(api.SapDiscoveryWorkloadProperties o) {
  buildCounterSapDiscoveryWorkloadProperties++;
  if (buildCounterSapDiscoveryWorkloadProperties < 3) {
    checkUnnamed49(o.productVersions!);
    checkUnnamed50(o.softwareComponentVersions!);
  }
  buildCounterSapDiscoveryWorkloadProperties--;
}

core.int buildCounterSapDiscoveryWorkloadPropertiesProductVersion = 0;
api.SapDiscoveryWorkloadPropertiesProductVersion
    buildSapDiscoveryWorkloadPropertiesProductVersion() {
  final o = api.SapDiscoveryWorkloadPropertiesProductVersion();
  buildCounterSapDiscoveryWorkloadPropertiesProductVersion++;
  if (buildCounterSapDiscoveryWorkloadPropertiesProductVersion < 3) {
    o.name = 'foo';
    o.version = 'foo';
  }
  buildCounterSapDiscoveryWorkloadPropertiesProductVersion--;
  return o;
}

void checkSapDiscoveryWorkloadPropertiesProductVersion(
    api.SapDiscoveryWorkloadPropertiesProductVersion o) {
  buildCounterSapDiscoveryWorkloadPropertiesProductVersion++;
  if (buildCounterSapDiscoveryWorkloadPropertiesProductVersion < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterSapDiscoveryWorkloadPropertiesProductVersion--;
}

core.int buildCounterSapDiscoveryWorkloadPropertiesSoftwareComponentProperties =
    0;
api.SapDiscoveryWorkloadPropertiesSoftwareComponentProperties
    buildSapDiscoveryWorkloadPropertiesSoftwareComponentProperties() {
  final o = api.SapDiscoveryWorkloadPropertiesSoftwareComponentProperties();
  buildCounterSapDiscoveryWorkloadPropertiesSoftwareComponentProperties++;
  if (buildCounterSapDiscoveryWorkloadPropertiesSoftwareComponentProperties <
      3) {
    o.extVersion = 'foo';
    o.name = 'foo';
    o.type = 'foo';
    o.version = 'foo';
  }
  buildCounterSapDiscoveryWorkloadPropertiesSoftwareComponentProperties--;
  return o;
}

void checkSapDiscoveryWorkloadPropertiesSoftwareComponentProperties(
    api.SapDiscoveryWorkloadPropertiesSoftwareComponentProperties o) {
  buildCounterSapDiscoveryWorkloadPropertiesSoftwareComponentProperties++;
  if (buildCounterSapDiscoveryWorkloadPropertiesSoftwareComponentProperties <
      3) {
    unittest.expect(
      o.extVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterSapDiscoveryWorkloadPropertiesSoftwareComponentProperties--;
}

core.List<core.String> buildUnnamed51() => [
      'foo',
      'foo',
    ];

void checkUnnamed51(core.List<core.String> o) {
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

core.int buildCounterSapInstanceProperties = 0;
api.SapInstanceProperties buildSapInstanceProperties() {
  final o = api.SapInstanceProperties();
  buildCounterSapInstanceProperties++;
  if (buildCounterSapInstanceProperties < 3) {
    o.numbers = buildUnnamed51();
  }
  buildCounterSapInstanceProperties--;
  return o;
}

void checkSapInstanceProperties(api.SapInstanceProperties o) {
  buildCounterSapInstanceProperties++;
  if (buildCounterSapInstanceProperties < 3) {
    checkUnnamed51(o.numbers!);
  }
  buildCounterSapInstanceProperties--;
}

core.List<api.SapValidationValidationDetail> buildUnnamed52() => [
      buildSapValidationValidationDetail(),
      buildSapValidationValidationDetail(),
    ];

void checkUnnamed52(core.List<api.SapValidationValidationDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSapValidationValidationDetail(o[0]);
  checkSapValidationValidationDetail(o[1]);
}

core.int buildCounterSapValidation = 0;
api.SapValidation buildSapValidation() {
  final o = api.SapValidation();
  buildCounterSapValidation++;
  if (buildCounterSapValidation < 3) {
    o.projectId = 'foo';
    o.validationDetails = buildUnnamed52();
    o.zone = 'foo';
  }
  buildCounterSapValidation--;
  return o;
}

void checkSapValidation(api.SapValidation o) {
  buildCounterSapValidation++;
  if (buildCounterSapValidation < 3) {
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkUnnamed52(o.validationDetails!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSapValidation--;
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

core.int buildCounterSapValidationValidationDetail = 0;
api.SapValidationValidationDetail buildSapValidationValidationDetail() {
  final o = api.SapValidationValidationDetail();
  buildCounterSapValidationValidationDetail++;
  if (buildCounterSapValidationValidationDetail < 3) {
    o.details = buildUnnamed53();
    o.isPresent = true;
    o.sapValidationType = 'foo';
  }
  buildCounterSapValidationValidationDetail--;
  return o;
}

void checkSapValidationValidationDetail(api.SapValidationValidationDetail o) {
  buildCounterSapValidationValidationDetail++;
  if (buildCounterSapValidationValidationDetail < 3) {
    checkUnnamed53(o.details!);
    unittest.expect(o.isPresent!, unittest.isTrue);
    unittest.expect(
      o.sapValidationType!,
      unittest.equals('foo'),
    );
  }
  buildCounterSapValidationValidationDetail--;
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

core.List<api.Product> buildUnnamed55() => [
      buildProduct(),
      buildProduct(),
    ];

void checkUnnamed55(core.List<api.Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProduct(o[0]);
  checkProduct(o[1]);
}

core.int buildCounterSapWorkload = 0;
api.SapWorkload buildSapWorkload() {
  final o = api.SapWorkload();
  buildCounterSapWorkload++;
  if (buildCounterSapWorkload < 3) {
    o.application = buildSapComponent();
    o.architecture = 'foo';
    o.database = buildSapComponent();
    o.metadata = buildUnnamed54();
    o.products = buildUnnamed55();
  }
  buildCounterSapWorkload--;
  return o;
}

void checkSapWorkload(api.SapWorkload o) {
  buildCounterSapWorkload++;
  if (buildCounterSapWorkload < 3) {
    checkSapComponent(o.application!);
    unittest.expect(
      o.architecture!,
      unittest.equals('foo'),
    );
    checkSapComponent(o.database!);
    checkUnnamed54(o.metadata!);
    checkUnnamed55(o.products!);
  }
  buildCounterSapWorkload--;
}

core.int buildCounterScannedResource = 0;
api.ScannedResource buildScannedResource() {
  final o = api.ScannedResource();
  buildCounterScannedResource++;
  if (buildCounterScannedResource < 3) {
    o.resource = 'foo';
    o.type = 'foo';
  }
  buildCounterScannedResource--;
  return o;
}

void checkScannedResource(api.ScannedResource o) {
  buildCounterScannedResource++;
  if (buildCounterScannedResource < 3) {
    unittest.expect(
      o.resource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterScannedResource--;
}

core.int buildCounterShellCommand = 0;
api.ShellCommand buildShellCommand() {
  final o = api.ShellCommand();
  buildCounterShellCommand++;
  if (buildCounterShellCommand < 3) {
    o.args = 'foo';
    o.command = 'foo';
    o.timeoutSeconds = 42;
  }
  buildCounterShellCommand--;
  return o;
}

void checkShellCommand(api.ShellCommand o) {
  buildCounterShellCommand++;
  if (buildCounterShellCommand < 3) {
    unittest.expect(
      o.args!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.command!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeoutSeconds!,
      unittest.equals(42),
    );
  }
  buildCounterShellCommand--;
}

core.List<api.SqlserverValidationValidationDetail> buildUnnamed56() => [
      buildSqlserverValidationValidationDetail(),
      buildSqlserverValidationValidationDetail(),
    ];

void checkUnnamed56(core.List<api.SqlserverValidationValidationDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlserverValidationValidationDetail(o[0]);
  checkSqlserverValidationValidationDetail(o[1]);
}

core.int buildCounterSqlserverValidation = 0;
api.SqlserverValidation buildSqlserverValidation() {
  final o = api.SqlserverValidation();
  buildCounterSqlserverValidation++;
  if (buildCounterSqlserverValidation < 3) {
    o.agentVersion = 'foo';
    o.instance = 'foo';
    o.projectId = 'foo';
    o.validationDetails = buildUnnamed56();
  }
  buildCounterSqlserverValidation--;
  return o;
}

void checkSqlserverValidation(api.SqlserverValidation o) {
  buildCounterSqlserverValidation++;
  if (buildCounterSqlserverValidation < 3) {
    unittest.expect(
      o.agentVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkUnnamed56(o.validationDetails!);
  }
  buildCounterSqlserverValidation--;
}

core.Map<core.String, core.String> buildUnnamed57() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed57(core.Map<core.String, core.String> o) {
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

core.int buildCounterSqlserverValidationDetails = 0;
api.SqlserverValidationDetails buildSqlserverValidationDetails() {
  final o = api.SqlserverValidationDetails();
  buildCounterSqlserverValidationDetails++;
  if (buildCounterSqlserverValidationDetails < 3) {
    o.fields = buildUnnamed57();
  }
  buildCounterSqlserverValidationDetails--;
  return o;
}

void checkSqlserverValidationDetails(api.SqlserverValidationDetails o) {
  buildCounterSqlserverValidationDetails++;
  if (buildCounterSqlserverValidationDetails < 3) {
    checkUnnamed57(o.fields!);
  }
  buildCounterSqlserverValidationDetails--;
}

core.List<api.SqlserverValidationDetails> buildUnnamed58() => [
      buildSqlserverValidationDetails(),
      buildSqlserverValidationDetails(),
    ];

void checkUnnamed58(core.List<api.SqlserverValidationDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlserverValidationDetails(o[0]);
  checkSqlserverValidationDetails(o[1]);
}

core.int buildCounterSqlserverValidationValidationDetail = 0;
api.SqlserverValidationValidationDetail
    buildSqlserverValidationValidationDetail() {
  final o = api.SqlserverValidationValidationDetail();
  buildCounterSqlserverValidationValidationDetail++;
  if (buildCounterSqlserverValidationValidationDetail < 3) {
    o.details = buildUnnamed58();
    o.type = 'foo';
  }
  buildCounterSqlserverValidationValidationDetail--;
  return o;
}

void checkSqlserverValidationValidationDetail(
    api.SqlserverValidationValidationDetail o) {
  buildCounterSqlserverValidationValidationDetail++;
  if (buildCounterSqlserverValidationValidationDetail < 3) {
    checkUnnamed58(o.details!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterSqlserverValidationValidationDetail--;
}

core.List<api.AvailabilityGroup> buildUnnamed59() => [
      buildAvailabilityGroup(),
      buildAvailabilityGroup(),
    ];

void checkUnnamed59(core.List<api.AvailabilityGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAvailabilityGroup(o[0]);
  checkAvailabilityGroup(o[1]);
}

core.List<api.Database> buildUnnamed60() => [
      buildDatabase(),
      buildDatabase(),
    ];

void checkUnnamed60(core.List<api.Database> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabase(o[0]);
  checkDatabase(o[1]);
}

core.int buildCounterSqlserverWorkload = 0;
api.SqlserverWorkload buildSqlserverWorkload() {
  final o = api.SqlserverWorkload();
  buildCounterSqlserverWorkload++;
  if (buildCounterSqlserverWorkload < 3) {
    o.ags = buildUnnamed59();
    o.cluster = buildCluster();
    o.databases = buildUnnamed60();
    o.loadBalancerServer = buildLoadBalancerServer();
  }
  buildCounterSqlserverWorkload--;
  return o;
}

void checkSqlserverWorkload(api.SqlserverWorkload o) {
  buildCounterSqlserverWorkload++;
  if (buildCounterSqlserverWorkload < 3) {
    checkUnnamed59(o.ags!);
    checkCluster(o.cluster!);
    checkUnnamed60(o.databases!);
    checkLoadBalancerServer(o.loadBalancerServer!);
  }
  buildCounterSqlserverWorkload--;
}

core.Map<core.String, core.Object?> buildUnnamed61() => {
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

void checkUnnamed61(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed62() => [
      buildUnnamed61(),
      buildUnnamed61(),
    ];

void checkUnnamed62(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed61(o[0]);
  checkUnnamed61(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed62();
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
    checkUnnamed62(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterSummary = 0;
api.Summary buildSummary() {
  final o = api.Summary();
  buildCounterSummary++;
  if (buildCounterSummary < 3) {
    o.failures = 'foo';
    o.newFailures = 'foo';
    o.newFixes = 'foo';
  }
  buildCounterSummary--;
  return o;
}

void checkSummary(api.Summary o) {
  buildCounterSummary++;
  if (buildCounterSummary < 3) {
    unittest.expect(
      o.failures!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newFailures!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newFixes!,
      unittest.equals('foo'),
    );
  }
  buildCounterSummary--;
}

core.int buildCounterThreeTierWorkload = 0;
api.ThreeTierWorkload buildThreeTierWorkload() {
  final o = api.ThreeTierWorkload();
  buildCounterThreeTierWorkload++;
  if (buildCounterThreeTierWorkload < 3) {
    o.apiLayer = buildAPILayerServer();
    o.backend = buildBackendServer();
    o.endpoint = 'foo';
    o.frontend = buildFrontEndServer();
  }
  buildCounterThreeTierWorkload--;
  return o;
}

void checkThreeTierWorkload(api.ThreeTierWorkload o) {
  buildCounterThreeTierWorkload++;
  if (buildCounterThreeTierWorkload < 3) {
    checkAPILayerServer(o.apiLayer!);
    checkBackendServer(o.backend!);
    unittest.expect(
      o.endpoint!,
      unittest.equals('foo'),
    );
    checkFrontEndServer(o.frontend!);
  }
  buildCounterThreeTierWorkload--;
}

core.Map<core.String, core.String> buildUnnamed63() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed63(core.Map<core.String, core.String> o) {
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

core.int buildCounterTorsoValidation = 0;
api.TorsoValidation buildTorsoValidation() {
  final o = api.TorsoValidation();
  buildCounterTorsoValidation++;
  if (buildCounterTorsoValidation < 3) {
    o.agentVersion = 'foo';
    o.instanceName = 'foo';
    o.projectId = 'foo';
    o.validationDetails = buildUnnamed63();
    o.workloadType = 'foo';
  }
  buildCounterTorsoValidation--;
  return o;
}

void checkTorsoValidation(api.TorsoValidation o) {
  buildCounterTorsoValidation++;
  if (buildCounterTorsoValidation < 3) {
    unittest.expect(
      o.agentVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkUnnamed63(o.validationDetails!);
    unittest.expect(
      o.workloadType!,
      unittest.equals('foo'),
    );
  }
  buildCounterTorsoValidation--;
}

core.int buildCounterUpcomingMaintenanceEvent = 0;
api.UpcomingMaintenanceEvent buildUpcomingMaintenanceEvent() {
  final o = api.UpcomingMaintenanceEvent();
  buildCounterUpcomingMaintenanceEvent++;
  if (buildCounterUpcomingMaintenanceEvent < 3) {
    o.endTime = 'foo';
    o.maintenanceStatus = 'foo';
    o.startTime = 'foo';
    o.type = 'foo';
  }
  buildCounterUpcomingMaintenanceEvent--;
  return o;
}

void checkUpcomingMaintenanceEvent(api.UpcomingMaintenanceEvent o) {
  buildCounterUpcomingMaintenanceEvent++;
  if (buildCounterUpcomingMaintenanceEvent < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maintenanceStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpcomingMaintenanceEvent--;
}

core.Map<core.String, core.String> buildUnnamed64() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed64(core.Map<core.String, core.String> o) {
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

core.int buildCounterViolationDetails = 0;
api.ViolationDetails buildViolationDetails() {
  final o = api.ViolationDetails();
  buildCounterViolationDetails++;
  if (buildCounterViolationDetails < 3) {
    o.asset = 'foo';
    o.observed = buildUnnamed64();
    o.serviceAccount = 'foo';
  }
  buildCounterViolationDetails--;
  return o;
}

void checkViolationDetails(api.ViolationDetails o) {
  buildCounterViolationDetails++;
  if (buildCounterViolationDetails < 3) {
    unittest.expect(
      o.asset!,
      unittest.equals('foo'),
    );
    checkUnnamed64(o.observed!);
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
  }
  buildCounterViolationDetails--;
}

core.Map<core.String, core.String> buildUnnamed65() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed65(core.Map<core.String, core.String> o) {
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

core.int buildCounterWorkloadProfile = 0;
api.WorkloadProfile buildWorkloadProfile() {
  final o = api.WorkloadProfile();
  buildCounterWorkloadProfile++;
  if (buildCounterWorkloadProfile < 3) {
    o.application = buildLayer();
    o.ascs = buildLayer();
    o.database = buildLayer();
    o.labels = buildUnnamed65();
    o.name = 'foo';
    o.refreshedTime = 'foo';
    o.sapWorkload = buildSapWorkload();
    o.sqlserverWorkload = buildSqlserverWorkload();
    o.state = 'foo';
    o.threeTierWorkload = buildThreeTierWorkload();
    o.workloadType = 'foo';
  }
  buildCounterWorkloadProfile--;
  return o;
}

void checkWorkloadProfile(api.WorkloadProfile o) {
  buildCounterWorkloadProfile++;
  if (buildCounterWorkloadProfile < 3) {
    checkLayer(o.application!);
    checkLayer(o.ascs!);
    checkLayer(o.database!);
    checkUnnamed65(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.refreshedTime!,
      unittest.equals('foo'),
    );
    checkSapWorkload(o.sapWorkload!);
    checkSqlserverWorkload(o.sqlserverWorkload!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkThreeTierWorkload(o.threeTierWorkload!);
    unittest.expect(
      o.workloadType!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkloadProfile--;
}

core.List<api.ComponentHealth> buildUnnamed66() => [
      buildComponentHealth(),
      buildComponentHealth(),
    ];

void checkUnnamed66(core.List<api.ComponentHealth> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComponentHealth(o[0]);
  checkComponentHealth(o[1]);
}

core.int buildCounterWorkloadProfileHealth = 0;
api.WorkloadProfileHealth buildWorkloadProfileHealth() {
  final o = api.WorkloadProfileHealth();
  buildCounterWorkloadProfileHealth++;
  if (buildCounterWorkloadProfileHealth < 3) {
    o.checkTime = 'foo';
    o.componentHealthes = buildUnnamed66();
    o.state = 'foo';
  }
  buildCounterWorkloadProfileHealth--;
  return o;
}

void checkWorkloadProfileHealth(api.WorkloadProfileHealth o) {
  buildCounterWorkloadProfileHealth++;
  if (buildCounterWorkloadProfileHealth < 3) {
    unittest.expect(
      o.checkTime!,
      unittest.equals('foo'),
    );
    checkUnnamed66(o.componentHealthes!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkloadProfileHealth--;
}

core.int buildCounterWriteInsightRequest = 0;
api.WriteInsightRequest buildWriteInsightRequest() {
  final o = api.WriteInsightRequest();
  buildCounterWriteInsightRequest++;
  if (buildCounterWriteInsightRequest < 3) {
    o.agentVersion = 'foo';
    o.insight = buildInsight();
    o.requestId = 'foo';
  }
  buildCounterWriteInsightRequest--;
  return o;
}

void checkWriteInsightRequest(api.WriteInsightRequest o) {
  buildCounterWriteInsightRequest++;
  if (buildCounterWriteInsightRequest < 3) {
    unittest.expect(
      o.agentVersion!,
      unittest.equals('foo'),
    );
    checkInsight(o.insight!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterWriteInsightRequest--;
}

core.int buildCounterWriteInsightResponse = 0;
api.WriteInsightResponse buildWriteInsightResponse() {
  final o = api.WriteInsightResponse();
  buildCounterWriteInsightResponse++;
  if (buildCounterWriteInsightResponse < 3) {}
  buildCounterWriteInsightResponse--;
  return o;
}

void checkWriteInsightResponse(api.WriteInsightResponse o) {
  buildCounterWriteInsightResponse++;
  if (buildCounterWriteInsightResponse < 3) {}
  buildCounterWriteInsightResponse--;
}

void main() {
  unittest.group('obj-schema-APILayerServer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAPILayerServer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.APILayerServer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAPILayerServer(od);
    });
  });

  unittest.group('obj-schema-AgentCommand', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentCommand();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentCommand.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAgentCommand(od);
    });
  });

  unittest.group('obj-schema-AvailabilityGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAvailabilityGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AvailabilityGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAvailabilityGroup(od);
    });
  });

  unittest.group('obj-schema-BackendServer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackendServer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackendServer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackendServer(od);
    });
  });

  unittest.group('obj-schema-BackupProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackupProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackupProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackupProperties(od);
    });
  });

  unittest.group('obj-schema-BigQueryDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBigQueryDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BigQueryDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBigQueryDestination(od);
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

  unittest.group('obj-schema-CloudResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudResource(od);
    });
  });

  unittest.group('obj-schema-Cluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Cluster.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCluster(od);
    });
  });

  unittest.group('obj-schema-Command', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommand();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Command.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCommand(od);
    });
  });

  unittest.group('obj-schema-ComponentHealth', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComponentHealth();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComponentHealth.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComponentHealth(od);
    });
  });

  unittest.group('obj-schema-Database', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Database.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDatabase(od);
    });
  });

  unittest.group('obj-schema-DatabaseProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatabaseProperties(od);
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

  unittest.group('obj-schema-Evaluation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEvaluation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Evaluation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEvaluation(od);
    });
  });

  unittest.group('obj-schema-Execution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Execution.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExecution(od);
    });
  });

  unittest.group('obj-schema-ExecutionResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutionResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutionResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExecutionResult(od);
    });
  });

  unittest.group('obj-schema-ExternalDataSources', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternalDataSources();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternalDataSources.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExternalDataSources(od);
    });
  });

  unittest.group('obj-schema-FrontEndServer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFrontEndServer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FrontEndServer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFrontEndServer(od);
    });
  });

  unittest.group('obj-schema-GceInstanceFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGceInstanceFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GceInstanceFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGceInstanceFilter(od);
    });
  });

  unittest.group('obj-schema-HealthCheck', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHealthCheck();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HealthCheck.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHealthCheck(od);
    });
  });

  unittest.group('obj-schema-Insight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Insight.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInsight(od);
    });
  });

  unittest.group('obj-schema-Instance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Instance.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInstance(od);
    });
  });

  unittest.group('obj-schema-InstanceProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstanceProperties(od);
    });
  });

  unittest.group('obj-schema-Layer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLayer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Layer.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLayer(od);
    });
  });

  unittest.group('obj-schema-ListDiscoveredProfilesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDiscoveredProfilesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDiscoveredProfilesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDiscoveredProfilesResponse(od);
    });
  });

  unittest.group('obj-schema-ListEvaluationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEvaluationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEvaluationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListEvaluationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListExecutionResultsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListExecutionResultsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListExecutionResultsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListExecutionResultsResponse(od);
    });
  });

  unittest.group('obj-schema-ListExecutionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListExecutionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListExecutionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListExecutionsResponse(od);
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

  unittest.group('obj-schema-ListRulesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRulesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRulesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRulesResponse(od);
    });
  });

  unittest.group('obj-schema-ListScannedResourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListScannedResourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListScannedResourcesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListScannedResourcesResponse(od);
    });
  });

  unittest.group('obj-schema-LoadBalancerServer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoadBalancerServer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoadBalancerServer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLoadBalancerServer(od);
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

  unittest.group('obj-schema-Notice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Notice.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNotice(od);
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

  unittest.group('obj-schema-Product', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProduct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Product.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProduct(od);
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

  unittest.group('obj-schema-ResourceFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceFilter(od);
    });
  });

  unittest.group('obj-schema-ResourceStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceStatus(od);
    });
  });

  unittest.group('obj-schema-Rule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Rule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRule(od);
    });
  });

  unittest.group('obj-schema-RuleExecutionResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuleExecutionResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuleExecutionResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRuleExecutionResult(od);
    });
  });

  unittest.group('obj-schema-RunEvaluationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunEvaluationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunEvaluationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunEvaluationRequest(od);
    });
  });

  unittest.group('obj-schema-SapComponent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapComponent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapComponent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapComponent(od);
    });
  });

  unittest.group('obj-schema-SapDiscovery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscovery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscovery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapDiscovery(od);
    });
  });

  unittest.group('obj-schema-SapDiscoveryComponent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryComponent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryComponent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapDiscoveryComponent(od);
    });
  });

  unittest.group('obj-schema-SapDiscoveryComponentApplicationProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryComponentApplicationProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryComponentApplicationProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapDiscoveryComponentApplicationProperties(od);
    });
  });

  unittest.group('obj-schema-SapDiscoveryComponentDatabaseProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryComponentDatabaseProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryComponentDatabaseProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapDiscoveryComponentDatabaseProperties(od);
    });
  });

  unittest.group('obj-schema-SapDiscoveryComponentReplicationSite', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryComponentReplicationSite();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryComponentReplicationSite.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapDiscoveryComponentReplicationSite(od);
    });
  });

  unittest.group('obj-schema-SapDiscoveryMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapDiscoveryMetadata(od);
    });
  });

  unittest.group('obj-schema-SapDiscoveryResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapDiscoveryResource(od);
    });
  });

  unittest.group('obj-schema-SapDiscoveryResourceInstanceProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryResourceInstanceProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryResourceInstanceProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapDiscoveryResourceInstanceProperties(od);
    });
  });

  unittest.group('obj-schema-SapDiscoveryResourceInstancePropertiesAppInstance',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryResourceInstancePropertiesAppInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryResourceInstancePropertiesAppInstance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapDiscoveryResourceInstancePropertiesAppInstance(od);
    });
  });

  unittest.group('obj-schema-SapDiscoveryResourceInstancePropertiesDiskMount',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryResourceInstancePropertiesDiskMount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryResourceInstancePropertiesDiskMount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapDiscoveryResourceInstancePropertiesDiskMount(od);
    });
  });

  unittest.group('obj-schema-SapDiscoveryWorkloadProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryWorkloadProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryWorkloadProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapDiscoveryWorkloadProperties(od);
    });
  });

  unittest.group('obj-schema-SapDiscoveryWorkloadPropertiesProductVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryWorkloadPropertiesProductVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryWorkloadPropertiesProductVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapDiscoveryWorkloadPropertiesProductVersion(od);
    });
  });

  unittest.group(
      'obj-schema-SapDiscoveryWorkloadPropertiesSoftwareComponentProperties',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildSapDiscoveryWorkloadPropertiesSoftwareComponentProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryWorkloadPropertiesSoftwareComponentProperties
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSapDiscoveryWorkloadPropertiesSoftwareComponentProperties(od);
    });
  });

  unittest.group('obj-schema-SapInstanceProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapInstanceProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapInstanceProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapInstanceProperties(od);
    });
  });

  unittest.group('obj-schema-SapValidation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapValidation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapValidation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapValidation(od);
    });
  });

  unittest.group('obj-schema-SapValidationValidationDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapValidationValidationDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapValidationValidationDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapValidationValidationDetail(od);
    });
  });

  unittest.group('obj-schema-SapWorkload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapWorkload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapWorkload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapWorkload(od);
    });
  });

  unittest.group('obj-schema-ScannedResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScannedResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScannedResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScannedResource(od);
    });
  });

  unittest.group('obj-schema-ShellCommand', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShellCommand();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShellCommand.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShellCommand(od);
    });
  });

  unittest.group('obj-schema-SqlserverValidation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlserverValidation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlserverValidation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlserverValidation(od);
    });
  });

  unittest.group('obj-schema-SqlserverValidationDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlserverValidationDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlserverValidationDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlserverValidationDetails(od);
    });
  });

  unittest.group('obj-schema-SqlserverValidationValidationDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlserverValidationValidationDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlserverValidationValidationDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlserverValidationValidationDetail(od);
    });
  });

  unittest.group('obj-schema-SqlserverWorkload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlserverWorkload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlserverWorkload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSqlserverWorkload(od);
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

  unittest.group('obj-schema-Summary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Summary.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSummary(od);
    });
  });

  unittest.group('obj-schema-ThreeTierWorkload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThreeTierWorkload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThreeTierWorkload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkThreeTierWorkload(od);
    });
  });

  unittest.group('obj-schema-TorsoValidation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTorsoValidation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TorsoValidation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTorsoValidation(od);
    });
  });

  unittest.group('obj-schema-UpcomingMaintenanceEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpcomingMaintenanceEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpcomingMaintenanceEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpcomingMaintenanceEvent(od);
    });
  });

  unittest.group('obj-schema-ViolationDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildViolationDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ViolationDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkViolationDetails(od);
    });
  });

  unittest.group('obj-schema-WorkloadProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkloadProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkloadProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkloadProfile(od);
    });
  });

  unittest.group('obj-schema-WorkloadProfileHealth', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkloadProfileHealth();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkloadProfileHealth.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkloadProfileHealth(od);
    });
  });

  unittest.group('obj-schema-WriteInsightRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteInsightRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteInsightRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWriteInsightRequest(od);
    });
  });

  unittest.group('obj-schema-WriteInsightResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteInsightResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteInsightResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWriteInsightResponse(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations;
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
      final res = api.WorkloadManagerApi(mock).projects.locations;
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

  unittest.group('resource-ProjectsLocationsDiscoveredprofilesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.WorkloadManagerApi(mock).projects.locations.discoveredprofiles;
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
        final resp = convert.json.encode(buildWorkloadProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkWorkloadProfile(response as api.WorkloadProfile);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.WorkloadManagerApi(mock).projects.locations.discoveredprofiles;
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
        final resp = convert.json.encode(buildListDiscoveredProfilesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDiscoveredProfilesResponse(
          response as api.ListDiscoveredProfilesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDiscoveredprofilesHealthesResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock)
          .projects
          .locations
          .discoveredprofiles
          .healthes;
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
        final resp = convert.json.encode(buildWorkloadProfileHealth());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkWorkloadProfileHealth(response as api.WorkloadProfileHealth);
    });
  });

  unittest.group('resource-ProjectsLocationsEvaluationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.evaluations;
      final arg_request = buildEvaluation();
      final arg_parent = 'foo';
      final arg_evaluationId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Evaluation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEvaluation(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['evaluationId']!.first,
          unittest.equals(arg_evaluationId),
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
          evaluationId: arg_evaluationId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.evaluations;
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
      final res = api.WorkloadManagerApi(mock).projects.locations.evaluations;
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
        final resp = convert.json.encode(buildEvaluation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkEvaluation(response as api.Evaluation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.evaluations;
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
        final resp = convert.json.encode(buildListEvaluationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListEvaluationsResponse(response as api.ListEvaluationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsEvaluationsExecutionsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock)
          .projects
          .locations
          .evaluations
          .executions;
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
      final res = api.WorkloadManagerApi(mock)
          .projects
          .locations
          .evaluations
          .executions;
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
        final resp = convert.json.encode(buildExecution());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkExecution(response as api.Execution);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock)
          .projects
          .locations
          .evaluations
          .executions;
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
        final resp = convert.json.encode(buildListExecutionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListExecutionsResponse(response as api.ListExecutionsResponse);
    });

    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock)
          .projects
          .locations
          .evaluations
          .executions;
      final arg_request = buildRunEvaluationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RunEvaluationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRunEvaluationRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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

  unittest.group(
      'resource-ProjectsLocationsEvaluationsExecutionsResultsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock)
          .projects
          .locations
          .evaluations
          .executions
          .results;
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
        final resp = convert.json.encode(buildListExecutionResultsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListExecutionResultsResponse(
          response as api.ListExecutionResultsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsEvaluationsExecutionsScannedResourcesResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock)
          .projects
          .locations
          .evaluations
          .executions
          .scannedResources;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_rule = 'foo';
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
          queryMap['rule']!.first,
          unittest.equals(arg_rule),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListScannedResourcesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          rule: arg_rule,
          $fields: arg_$fields);
      checkListScannedResourcesResponse(
          response as api.ListScannedResourcesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsInsightsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.insights;
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

    unittest.test('method--writeInsight', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.insights;
      final arg_request = buildWriteInsightRequest();
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WriteInsightRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWriteInsightRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp = convert.json.encode(buildWriteInsightResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.writeInsight(arg_request, arg_location,
          $fields: arg_$fields);
      checkWriteInsightResponse(response as api.WriteInsightResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.operations;
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
      final res = api.WorkloadManagerApi(mock).projects.locations.operations;
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
      final res = api.WorkloadManagerApi(mock).projects.locations.operations;
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
      final res = api.WorkloadManagerApi(mock).projects.locations.operations;
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

  unittest.group('resource-ProjectsLocationsRulesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.rules;
      final arg_parent = 'foo';
      final arg_customRulesBucket = 'foo';
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
          queryMap['customRulesBucket']!.first,
          unittest.equals(arg_customRulesBucket),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListRulesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          customRulesBucket: arg_customRulesBucket,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListRulesResponse(response as api.ListRulesResponse);
    });
  });
}
