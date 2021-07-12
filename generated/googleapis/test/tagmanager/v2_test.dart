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

import 'package:googleapis/tagmanager/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccount = 0;
api.Account buildAccount() {
  final o = api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.accountId = 'foo';
    o.fingerprint = 'foo';
    o.name = 'foo';
    o.path = 'foo';
    o.shareData = true;
    o.tagManagerUrl = 'foo';
  }
  buildCounterAccount--;
  return o;
}

void checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fingerprint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(o.shareData!, unittest.isTrue);
    unittest.expect(
      o.tagManagerUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccount--;
}

core.int buildCounterAccountAccess = 0;
api.AccountAccess buildAccountAccess() {
  final o = api.AccountAccess();
  buildCounterAccountAccess++;
  if (buildCounterAccountAccess < 3) {
    o.permission = 'foo';
  }
  buildCounterAccountAccess--;
  return o;
}

void checkAccountAccess(api.AccountAccess o) {
  buildCounterAccountAccess++;
  if (buildCounterAccountAccess < 3) {
    unittest.expect(
      o.permission!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountAccess--;
}

core.int buildCounterBuiltInVariable = 0;
api.BuiltInVariable buildBuiltInVariable() {
  final o = api.BuiltInVariable();
  buildCounterBuiltInVariable++;
  if (buildCounterBuiltInVariable < 3) {
    o.accountId = 'foo';
    o.containerId = 'foo';
    o.name = 'foo';
    o.path = 'foo';
    o.type = 'foo';
    o.workspaceId = 'foo';
  }
  buildCounterBuiltInVariable--;
  return o;
}

void checkBuiltInVariable(api.BuiltInVariable o) {
  buildCounterBuiltInVariable++;
  if (buildCounterBuiltInVariable < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.containerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workspaceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuiltInVariable--;
}

core.List<api.Parameter> buildUnnamed5724() {
  final o = <api.Parameter>[];
  o.add(buildParameter());
  o.add(buildParameter());
  return o;
}

void checkUnnamed5724(core.List<api.Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameter(o[0]);
  checkParameter(o[1]);
}

core.int buildCounterClient = 0;
api.Client buildClient() {
  final o = api.Client();
  buildCounterClient++;
  if (buildCounterClient < 3) {
    o.accountId = 'foo';
    o.clientId = 'foo';
    o.containerId = 'foo';
    o.fingerprint = 'foo';
    o.name = 'foo';
    o.notes = 'foo';
    o.parameter = buildUnnamed5724();
    o.parentFolderId = 'foo';
    o.path = 'foo';
    o.priority = 42;
    o.tagManagerUrl = 'foo';
    o.type = 'foo';
    o.workspaceId = 'foo';
  }
  buildCounterClient--;
  return o;
}

void checkClient(api.Client o) {
  buildCounterClient++;
  if (buildCounterClient < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.containerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fingerprint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notes!,
      unittest.equals('foo'),
    );
    checkUnnamed5724(o.parameter!);
    unittest.expect(
      o.parentFolderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.priority!,
      unittest.equals(42),
    );
    unittest.expect(
      o.tagManagerUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workspaceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterClient--;
}

core.List<api.Parameter> buildUnnamed5725() {
  final o = <api.Parameter>[];
  o.add(buildParameter());
  o.add(buildParameter());
  return o;
}

void checkUnnamed5725(core.List<api.Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameter(o[0]);
  checkParameter(o[1]);
}

core.int buildCounterCondition = 0;
api.Condition buildCondition() {
  final o = api.Condition();
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    o.parameter = buildUnnamed5725();
    o.type = 'foo';
  }
  buildCounterCondition--;
  return o;
}

void checkCondition(api.Condition o) {
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    checkUnnamed5725(o.parameter!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterCondition--;
}

core.List<core.String> buildUnnamed5726() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5726(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5727() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5727(core.List<core.String> o) {
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

core.int buildCounterContainer = 0;
api.Container buildContainer() {
  final o = api.Container();
  buildCounterContainer++;
  if (buildCounterContainer < 3) {
    o.accountId = 'foo';
    o.containerId = 'foo';
    o.domainName = buildUnnamed5726();
    o.fingerprint = 'foo';
    o.name = 'foo';
    o.notes = 'foo';
    o.path = 'foo';
    o.publicId = 'foo';
    o.tagManagerUrl = 'foo';
    o.usageContext = buildUnnamed5727();
  }
  buildCounterContainer--;
  return o;
}

void checkContainer(api.Container o) {
  buildCounterContainer++;
  if (buildCounterContainer < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.containerId!,
      unittest.equals('foo'),
    );
    checkUnnamed5726(o.domainName!);
    unittest.expect(
      o.fingerprint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publicId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tagManagerUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed5727(o.usageContext!);
  }
  buildCounterContainer--;
}

core.int buildCounterContainerAccess = 0;
api.ContainerAccess buildContainerAccess() {
  final o = api.ContainerAccess();
  buildCounterContainerAccess++;
  if (buildCounterContainerAccess < 3) {
    o.containerId = 'foo';
    o.permission = 'foo';
  }
  buildCounterContainerAccess--;
  return o;
}

void checkContainerAccess(api.ContainerAccess o) {
  buildCounterContainerAccess++;
  if (buildCounterContainerAccess < 3) {
    unittest.expect(
      o.containerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.permission!,
      unittest.equals('foo'),
    );
  }
  buildCounterContainerAccess--;
}

core.List<api.BuiltInVariable> buildUnnamed5728() {
  final o = <api.BuiltInVariable>[];
  o.add(buildBuiltInVariable());
  o.add(buildBuiltInVariable());
  return o;
}

void checkUnnamed5728(core.List<api.BuiltInVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuiltInVariable(o[0]);
  checkBuiltInVariable(o[1]);
}

core.List<api.Client> buildUnnamed5729() {
  final o = <api.Client>[];
  o.add(buildClient());
  o.add(buildClient());
  return o;
}

void checkUnnamed5729(core.List<api.Client> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClient(o[0]);
  checkClient(o[1]);
}

core.List<api.CustomTemplate> buildUnnamed5730() {
  final o = <api.CustomTemplate>[];
  o.add(buildCustomTemplate());
  o.add(buildCustomTemplate());
  return o;
}

void checkUnnamed5730(core.List<api.CustomTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomTemplate(o[0]);
  checkCustomTemplate(o[1]);
}

core.List<api.Folder> buildUnnamed5731() {
  final o = <api.Folder>[];
  o.add(buildFolder());
  o.add(buildFolder());
  return o;
}

void checkUnnamed5731(core.List<api.Folder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFolder(o[0]);
  checkFolder(o[1]);
}

core.List<api.Tag> buildUnnamed5732() {
  final o = <api.Tag>[];
  o.add(buildTag());
  o.add(buildTag());
  return o;
}

void checkUnnamed5732(core.List<api.Tag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTag(o[0]);
  checkTag(o[1]);
}

core.List<api.Trigger> buildUnnamed5733() {
  final o = <api.Trigger>[];
  o.add(buildTrigger());
  o.add(buildTrigger());
  return o;
}

void checkUnnamed5733(core.List<api.Trigger> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrigger(o[0]);
  checkTrigger(o[1]);
}

core.List<api.Variable> buildUnnamed5734() {
  final o = <api.Variable>[];
  o.add(buildVariable());
  o.add(buildVariable());
  return o;
}

void checkUnnamed5734(core.List<api.Variable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariable(o[0]);
  checkVariable(o[1]);
}

core.List<api.Zone> buildUnnamed5735() {
  final o = <api.Zone>[];
  o.add(buildZone());
  o.add(buildZone());
  return o;
}

void checkUnnamed5735(core.List<api.Zone> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkZone(o[0]);
  checkZone(o[1]);
}

core.int buildCounterContainerVersion = 0;
api.ContainerVersion buildContainerVersion() {
  final o = api.ContainerVersion();
  buildCounterContainerVersion++;
  if (buildCounterContainerVersion < 3) {
    o.accountId = 'foo';
    o.builtInVariable = buildUnnamed5728();
    o.client = buildUnnamed5729();
    o.container = buildContainer();
    o.containerId = 'foo';
    o.containerVersionId = 'foo';
    o.customTemplate = buildUnnamed5730();
    o.deleted = true;
    o.description = 'foo';
    o.fingerprint = 'foo';
    o.folder = buildUnnamed5731();
    o.name = 'foo';
    o.path = 'foo';
    o.tag = buildUnnamed5732();
    o.tagManagerUrl = 'foo';
    o.trigger = buildUnnamed5733();
    o.variable = buildUnnamed5734();
    o.zone = buildUnnamed5735();
  }
  buildCounterContainerVersion--;
  return o;
}

void checkContainerVersion(api.ContainerVersion o) {
  buildCounterContainerVersion++;
  if (buildCounterContainerVersion < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkUnnamed5728(o.builtInVariable!);
    checkUnnamed5729(o.client!);
    checkContainer(o.container!);
    unittest.expect(
      o.containerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.containerVersionId!,
      unittest.equals('foo'),
    );
    checkUnnamed5730(o.customTemplate!);
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fingerprint!,
      unittest.equals('foo'),
    );
    checkUnnamed5731(o.folder!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    checkUnnamed5732(o.tag!);
    unittest.expect(
      o.tagManagerUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed5733(o.trigger!);
    checkUnnamed5734(o.variable!);
    checkUnnamed5735(o.zone!);
  }
  buildCounterContainerVersion--;
}

core.int buildCounterContainerVersionHeader = 0;
api.ContainerVersionHeader buildContainerVersionHeader() {
  final o = api.ContainerVersionHeader();
  buildCounterContainerVersionHeader++;
  if (buildCounterContainerVersionHeader < 3) {
    o.accountId = 'foo';
    o.containerId = 'foo';
    o.containerVersionId = 'foo';
    o.deleted = true;
    o.name = 'foo';
    o.numClients = 'foo';
    o.numCustomTemplates = 'foo';
    o.numMacros = 'foo';
    o.numRules = 'foo';
    o.numTags = 'foo';
    o.numTriggers = 'foo';
    o.numVariables = 'foo';
    o.numZones = 'foo';
    o.path = 'foo';
  }
  buildCounterContainerVersionHeader--;
  return o;
}

void checkContainerVersionHeader(api.ContainerVersionHeader o) {
  buildCounterContainerVersionHeader++;
  if (buildCounterContainerVersionHeader < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.containerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.containerVersionId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numClients!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numCustomTemplates!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numMacros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numRules!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numTags!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numTriggers!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numVariables!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numZones!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
  }
  buildCounterContainerVersionHeader--;
}

core.List<api.BuiltInVariable> buildUnnamed5736() {
  final o = <api.BuiltInVariable>[];
  o.add(buildBuiltInVariable());
  o.add(buildBuiltInVariable());
  return o;
}

void checkUnnamed5736(core.List<api.BuiltInVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuiltInVariable(o[0]);
  checkBuiltInVariable(o[1]);
}

core.int buildCounterCreateBuiltInVariableResponse = 0;
api.CreateBuiltInVariableResponse buildCreateBuiltInVariableResponse() {
  final o = api.CreateBuiltInVariableResponse();
  buildCounterCreateBuiltInVariableResponse++;
  if (buildCounterCreateBuiltInVariableResponse < 3) {
    o.builtInVariable = buildUnnamed5736();
  }
  buildCounterCreateBuiltInVariableResponse--;
  return o;
}

void checkCreateBuiltInVariableResponse(api.CreateBuiltInVariableResponse o) {
  buildCounterCreateBuiltInVariableResponse++;
  if (buildCounterCreateBuiltInVariableResponse < 3) {
    checkUnnamed5736(o.builtInVariable!);
  }
  buildCounterCreateBuiltInVariableResponse--;
}

core.int buildCounterCreateContainerVersionRequestVersionOptions = 0;
api.CreateContainerVersionRequestVersionOptions
    buildCreateContainerVersionRequestVersionOptions() {
  final o = api.CreateContainerVersionRequestVersionOptions();
  buildCounterCreateContainerVersionRequestVersionOptions++;
  if (buildCounterCreateContainerVersionRequestVersionOptions < 3) {
    o.name = 'foo';
    o.notes = 'foo';
  }
  buildCounterCreateContainerVersionRequestVersionOptions--;
  return o;
}

void checkCreateContainerVersionRequestVersionOptions(
    api.CreateContainerVersionRequestVersionOptions o) {
  buildCounterCreateContainerVersionRequestVersionOptions++;
  if (buildCounterCreateContainerVersionRequestVersionOptions < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notes!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateContainerVersionRequestVersionOptions--;
}

core.int buildCounterCreateContainerVersionResponse = 0;
api.CreateContainerVersionResponse buildCreateContainerVersionResponse() {
  final o = api.CreateContainerVersionResponse();
  buildCounterCreateContainerVersionResponse++;
  if (buildCounterCreateContainerVersionResponse < 3) {
    o.compilerError = true;
    o.containerVersion = buildContainerVersion();
    o.newWorkspacePath = 'foo';
    o.syncStatus = buildSyncStatus();
  }
  buildCounterCreateContainerVersionResponse--;
  return o;
}

void checkCreateContainerVersionResponse(api.CreateContainerVersionResponse o) {
  buildCounterCreateContainerVersionResponse++;
  if (buildCounterCreateContainerVersionResponse < 3) {
    unittest.expect(o.compilerError!, unittest.isTrue);
    checkContainerVersion(o.containerVersion!);
    unittest.expect(
      o.newWorkspacePath!,
      unittest.equals('foo'),
    );
    checkSyncStatus(o.syncStatus!);
  }
  buildCounterCreateContainerVersionResponse--;
}

core.int buildCounterCustomTemplate = 0;
api.CustomTemplate buildCustomTemplate() {
  final o = api.CustomTemplate();
  buildCounterCustomTemplate++;
  if (buildCounterCustomTemplate < 3) {
    o.accountId = 'foo';
    o.containerId = 'foo';
    o.fingerprint = 'foo';
    o.galleryReference = buildGalleryReference();
    o.name = 'foo';
    o.path = 'foo';
    o.tagManagerUrl = 'foo';
    o.templateData = 'foo';
    o.templateId = 'foo';
    o.workspaceId = 'foo';
  }
  buildCounterCustomTemplate--;
  return o;
}

void checkCustomTemplate(api.CustomTemplate o) {
  buildCounterCustomTemplate++;
  if (buildCounterCustomTemplate < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.containerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fingerprint!,
      unittest.equals('foo'),
    );
    checkGalleryReference(o.galleryReference!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tagManagerUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.templateData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.templateId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workspaceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomTemplate--;
}

core.int buildCounterEntity = 0;
api.Entity buildEntity() {
  final o = api.Entity();
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    o.changeStatus = 'foo';
    o.client = buildClient();
    o.folder = buildFolder();
    o.tag = buildTag();
    o.trigger = buildTrigger();
    o.variable = buildVariable();
  }
  buildCounterEntity--;
  return o;
}

void checkEntity(api.Entity o) {
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    unittest.expect(
      o.changeStatus!,
      unittest.equals('foo'),
    );
    checkClient(o.client!);
    checkFolder(o.folder!);
    checkTag(o.tag!);
    checkTrigger(o.trigger!);
    checkVariable(o.variable!);
  }
  buildCounterEntity--;
}

core.int buildCounterEnvironment = 0;
api.Environment buildEnvironment() {
  final o = api.Environment();
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    o.accountId = 'foo';
    o.authorizationCode = 'foo';
    o.authorizationTimestamp = 'foo';
    o.containerId = 'foo';
    o.containerVersionId = 'foo';
    o.description = 'foo';
    o.enableDebug = true;
    o.environmentId = 'foo';
    o.fingerprint = 'foo';
    o.name = 'foo';
    o.path = 'foo';
    o.tagManagerUrl = 'foo';
    o.type = 'foo';
    o.url = 'foo';
    o.workspaceId = 'foo';
  }
  buildCounterEnvironment--;
  return o;
}

void checkEnvironment(api.Environment o) {
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.authorizationCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.authorizationTimestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.containerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.containerVersionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableDebug!, unittest.isTrue);
    unittest.expect(
      o.environmentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fingerprint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tagManagerUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workspaceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnvironment--;
}

core.int buildCounterFolder = 0;
api.Folder buildFolder() {
  final o = api.Folder();
  buildCounterFolder++;
  if (buildCounterFolder < 3) {
    o.accountId = 'foo';
    o.containerId = 'foo';
    o.fingerprint = 'foo';
    o.folderId = 'foo';
    o.name = 'foo';
    o.notes = 'foo';
    o.path = 'foo';
    o.tagManagerUrl = 'foo';
    o.workspaceId = 'foo';
  }
  buildCounterFolder--;
  return o;
}

void checkFolder(api.Folder o) {
  buildCounterFolder++;
  if (buildCounterFolder < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.containerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fingerprint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.folderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tagManagerUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workspaceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterFolder--;
}

core.List<api.Tag> buildUnnamed5737() {
  final o = <api.Tag>[];
  o.add(buildTag());
  o.add(buildTag());
  return o;
}

void checkUnnamed5737(core.List<api.Tag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTag(o[0]);
  checkTag(o[1]);
}

core.List<api.Trigger> buildUnnamed5738() {
  final o = <api.Trigger>[];
  o.add(buildTrigger());
  o.add(buildTrigger());
  return o;
}

void checkUnnamed5738(core.List<api.Trigger> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrigger(o[0]);
  checkTrigger(o[1]);
}

core.List<api.Variable> buildUnnamed5739() {
  final o = <api.Variable>[];
  o.add(buildVariable());
  o.add(buildVariable());
  return o;
}

void checkUnnamed5739(core.List<api.Variable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariable(o[0]);
  checkVariable(o[1]);
}

core.int buildCounterFolderEntities = 0;
api.FolderEntities buildFolderEntities() {
  final o = api.FolderEntities();
  buildCounterFolderEntities++;
  if (buildCounterFolderEntities < 3) {
    o.nextPageToken = 'foo';
    o.tag = buildUnnamed5737();
    o.trigger = buildUnnamed5738();
    o.variable = buildUnnamed5739();
  }
  buildCounterFolderEntities--;
  return o;
}

void checkFolderEntities(api.FolderEntities o) {
  buildCounterFolderEntities++;
  if (buildCounterFolderEntities < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5737(o.tag!);
    checkUnnamed5738(o.trigger!);
    checkUnnamed5739(o.variable!);
  }
  buildCounterFolderEntities--;
}

core.int buildCounterGalleryReference = 0;
api.GalleryReference buildGalleryReference() {
  final o = api.GalleryReference();
  buildCounterGalleryReference++;
  if (buildCounterGalleryReference < 3) {
    o.host = 'foo';
    o.isModified = true;
    o.owner = 'foo';
    o.repository = 'foo';
    o.signature = 'foo';
    o.version = 'foo';
  }
  buildCounterGalleryReference--;
  return o;
}

void checkGalleryReference(api.GalleryReference o) {
  buildCounterGalleryReference++;
  if (buildCounterGalleryReference < 3) {
    unittest.expect(
      o.host!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isModified!, unittest.isTrue);
    unittest.expect(
      o.owner!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.repository!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signature!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGalleryReference--;
}

core.List<api.MergeConflict> buildUnnamed5740() {
  final o = <api.MergeConflict>[];
  o.add(buildMergeConflict());
  o.add(buildMergeConflict());
  return o;
}

void checkUnnamed5740(core.List<api.MergeConflict> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMergeConflict(o[0]);
  checkMergeConflict(o[1]);
}

core.List<api.Entity> buildUnnamed5741() {
  final o = <api.Entity>[];
  o.add(buildEntity());
  o.add(buildEntity());
  return o;
}

void checkUnnamed5741(core.List<api.Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntity(o[0]);
  checkEntity(o[1]);
}

core.int buildCounterGetWorkspaceStatusResponse = 0;
api.GetWorkspaceStatusResponse buildGetWorkspaceStatusResponse() {
  final o = api.GetWorkspaceStatusResponse();
  buildCounterGetWorkspaceStatusResponse++;
  if (buildCounterGetWorkspaceStatusResponse < 3) {
    o.mergeConflict = buildUnnamed5740();
    o.workspaceChange = buildUnnamed5741();
  }
  buildCounterGetWorkspaceStatusResponse--;
  return o;
}

void checkGetWorkspaceStatusResponse(api.GetWorkspaceStatusResponse o) {
  buildCounterGetWorkspaceStatusResponse++;
  if (buildCounterGetWorkspaceStatusResponse < 3) {
    checkUnnamed5740(o.mergeConflict!);
    checkUnnamed5741(o.workspaceChange!);
  }
  buildCounterGetWorkspaceStatusResponse--;
}

core.List<api.Account> buildUnnamed5742() {
  final o = <api.Account>[];
  o.add(buildAccount());
  o.add(buildAccount());
  return o;
}

void checkUnnamed5742(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterListAccountsResponse = 0;
api.ListAccountsResponse buildListAccountsResponse() {
  final o = api.ListAccountsResponse();
  buildCounterListAccountsResponse++;
  if (buildCounterListAccountsResponse < 3) {
    o.account = buildUnnamed5742();
    o.nextPageToken = 'foo';
  }
  buildCounterListAccountsResponse--;
  return o;
}

void checkListAccountsResponse(api.ListAccountsResponse o) {
  buildCounterListAccountsResponse++;
  if (buildCounterListAccountsResponse < 3) {
    checkUnnamed5742(o.account!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAccountsResponse--;
}

core.List<api.ContainerVersionHeader> buildUnnamed5743() {
  final o = <api.ContainerVersionHeader>[];
  o.add(buildContainerVersionHeader());
  o.add(buildContainerVersionHeader());
  return o;
}

void checkUnnamed5743(core.List<api.ContainerVersionHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContainerVersionHeader(o[0]);
  checkContainerVersionHeader(o[1]);
}

core.int buildCounterListContainerVersionsResponse = 0;
api.ListContainerVersionsResponse buildListContainerVersionsResponse() {
  final o = api.ListContainerVersionsResponse();
  buildCounterListContainerVersionsResponse++;
  if (buildCounterListContainerVersionsResponse < 3) {
    o.containerVersionHeader = buildUnnamed5743();
    o.nextPageToken = 'foo';
  }
  buildCounterListContainerVersionsResponse--;
  return o;
}

void checkListContainerVersionsResponse(api.ListContainerVersionsResponse o) {
  buildCounterListContainerVersionsResponse++;
  if (buildCounterListContainerVersionsResponse < 3) {
    checkUnnamed5743(o.containerVersionHeader!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListContainerVersionsResponse--;
}

core.List<api.Container> buildUnnamed5744() {
  final o = <api.Container>[];
  o.add(buildContainer());
  o.add(buildContainer());
  return o;
}

void checkUnnamed5744(core.List<api.Container> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContainer(o[0]);
  checkContainer(o[1]);
}

core.int buildCounterListContainersResponse = 0;
api.ListContainersResponse buildListContainersResponse() {
  final o = api.ListContainersResponse();
  buildCounterListContainersResponse++;
  if (buildCounterListContainersResponse < 3) {
    o.container = buildUnnamed5744();
    o.nextPageToken = 'foo';
  }
  buildCounterListContainersResponse--;
  return o;
}

void checkListContainersResponse(api.ListContainersResponse o) {
  buildCounterListContainersResponse++;
  if (buildCounterListContainersResponse < 3) {
    checkUnnamed5744(o.container!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListContainersResponse--;
}

core.List<api.BuiltInVariable> buildUnnamed5745() {
  final o = <api.BuiltInVariable>[];
  o.add(buildBuiltInVariable());
  o.add(buildBuiltInVariable());
  return o;
}

void checkUnnamed5745(core.List<api.BuiltInVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuiltInVariable(o[0]);
  checkBuiltInVariable(o[1]);
}

core.int buildCounterListEnabledBuiltInVariablesResponse = 0;
api.ListEnabledBuiltInVariablesResponse
    buildListEnabledBuiltInVariablesResponse() {
  final o = api.ListEnabledBuiltInVariablesResponse();
  buildCounterListEnabledBuiltInVariablesResponse++;
  if (buildCounterListEnabledBuiltInVariablesResponse < 3) {
    o.builtInVariable = buildUnnamed5745();
    o.nextPageToken = 'foo';
  }
  buildCounterListEnabledBuiltInVariablesResponse--;
  return o;
}

void checkListEnabledBuiltInVariablesResponse(
    api.ListEnabledBuiltInVariablesResponse o) {
  buildCounterListEnabledBuiltInVariablesResponse++;
  if (buildCounterListEnabledBuiltInVariablesResponse < 3) {
    checkUnnamed5745(o.builtInVariable!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListEnabledBuiltInVariablesResponse--;
}

core.List<api.Environment> buildUnnamed5746() {
  final o = <api.Environment>[];
  o.add(buildEnvironment());
  o.add(buildEnvironment());
  return o;
}

void checkUnnamed5746(core.List<api.Environment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvironment(o[0]);
  checkEnvironment(o[1]);
}

core.int buildCounterListEnvironmentsResponse = 0;
api.ListEnvironmentsResponse buildListEnvironmentsResponse() {
  final o = api.ListEnvironmentsResponse();
  buildCounterListEnvironmentsResponse++;
  if (buildCounterListEnvironmentsResponse < 3) {
    o.environment = buildUnnamed5746();
    o.nextPageToken = 'foo';
  }
  buildCounterListEnvironmentsResponse--;
  return o;
}

void checkListEnvironmentsResponse(api.ListEnvironmentsResponse o) {
  buildCounterListEnvironmentsResponse++;
  if (buildCounterListEnvironmentsResponse < 3) {
    checkUnnamed5746(o.environment!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListEnvironmentsResponse--;
}

core.List<api.Folder> buildUnnamed5747() {
  final o = <api.Folder>[];
  o.add(buildFolder());
  o.add(buildFolder());
  return o;
}

void checkUnnamed5747(core.List<api.Folder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFolder(o[0]);
  checkFolder(o[1]);
}

core.int buildCounterListFoldersResponse = 0;
api.ListFoldersResponse buildListFoldersResponse() {
  final o = api.ListFoldersResponse();
  buildCounterListFoldersResponse++;
  if (buildCounterListFoldersResponse < 3) {
    o.folder = buildUnnamed5747();
    o.nextPageToken = 'foo';
  }
  buildCounterListFoldersResponse--;
  return o;
}

void checkListFoldersResponse(api.ListFoldersResponse o) {
  buildCounterListFoldersResponse++;
  if (buildCounterListFoldersResponse < 3) {
    checkUnnamed5747(o.folder!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListFoldersResponse--;
}

core.List<api.Tag> buildUnnamed5748() {
  final o = <api.Tag>[];
  o.add(buildTag());
  o.add(buildTag());
  return o;
}

void checkUnnamed5748(core.List<api.Tag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTag(o[0]);
  checkTag(o[1]);
}

core.int buildCounterListTagsResponse = 0;
api.ListTagsResponse buildListTagsResponse() {
  final o = api.ListTagsResponse();
  buildCounterListTagsResponse++;
  if (buildCounterListTagsResponse < 3) {
    o.nextPageToken = 'foo';
    o.tag = buildUnnamed5748();
  }
  buildCounterListTagsResponse--;
  return o;
}

void checkListTagsResponse(api.ListTagsResponse o) {
  buildCounterListTagsResponse++;
  if (buildCounterListTagsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5748(o.tag!);
  }
  buildCounterListTagsResponse--;
}

core.List<api.CustomTemplate> buildUnnamed5749() {
  final o = <api.CustomTemplate>[];
  o.add(buildCustomTemplate());
  o.add(buildCustomTemplate());
  return o;
}

void checkUnnamed5749(core.List<api.CustomTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomTemplate(o[0]);
  checkCustomTemplate(o[1]);
}

core.int buildCounterListTemplatesResponse = 0;
api.ListTemplatesResponse buildListTemplatesResponse() {
  final o = api.ListTemplatesResponse();
  buildCounterListTemplatesResponse++;
  if (buildCounterListTemplatesResponse < 3) {
    o.nextPageToken = 'foo';
    o.template = buildUnnamed5749();
  }
  buildCounterListTemplatesResponse--;
  return o;
}

void checkListTemplatesResponse(api.ListTemplatesResponse o) {
  buildCounterListTemplatesResponse++;
  if (buildCounterListTemplatesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5749(o.template!);
  }
  buildCounterListTemplatesResponse--;
}

core.List<api.Trigger> buildUnnamed5750() {
  final o = <api.Trigger>[];
  o.add(buildTrigger());
  o.add(buildTrigger());
  return o;
}

void checkUnnamed5750(core.List<api.Trigger> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrigger(o[0]);
  checkTrigger(o[1]);
}

core.int buildCounterListTriggersResponse = 0;
api.ListTriggersResponse buildListTriggersResponse() {
  final o = api.ListTriggersResponse();
  buildCounterListTriggersResponse++;
  if (buildCounterListTriggersResponse < 3) {
    o.nextPageToken = 'foo';
    o.trigger = buildUnnamed5750();
  }
  buildCounterListTriggersResponse--;
  return o;
}

void checkListTriggersResponse(api.ListTriggersResponse o) {
  buildCounterListTriggersResponse++;
  if (buildCounterListTriggersResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5750(o.trigger!);
  }
  buildCounterListTriggersResponse--;
}

core.List<api.UserPermission> buildUnnamed5751() {
  final o = <api.UserPermission>[];
  o.add(buildUserPermission());
  o.add(buildUserPermission());
  return o;
}

void checkUnnamed5751(core.List<api.UserPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserPermission(o[0]);
  checkUserPermission(o[1]);
}

core.int buildCounterListUserPermissionsResponse = 0;
api.ListUserPermissionsResponse buildListUserPermissionsResponse() {
  final o = api.ListUserPermissionsResponse();
  buildCounterListUserPermissionsResponse++;
  if (buildCounterListUserPermissionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.userPermission = buildUnnamed5751();
  }
  buildCounterListUserPermissionsResponse--;
  return o;
}

void checkListUserPermissionsResponse(api.ListUserPermissionsResponse o) {
  buildCounterListUserPermissionsResponse++;
  if (buildCounterListUserPermissionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5751(o.userPermission!);
  }
  buildCounterListUserPermissionsResponse--;
}

core.List<api.Variable> buildUnnamed5752() {
  final o = <api.Variable>[];
  o.add(buildVariable());
  o.add(buildVariable());
  return o;
}

void checkUnnamed5752(core.List<api.Variable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariable(o[0]);
  checkVariable(o[1]);
}

core.int buildCounterListVariablesResponse = 0;
api.ListVariablesResponse buildListVariablesResponse() {
  final o = api.ListVariablesResponse();
  buildCounterListVariablesResponse++;
  if (buildCounterListVariablesResponse < 3) {
    o.nextPageToken = 'foo';
    o.variable = buildUnnamed5752();
  }
  buildCounterListVariablesResponse--;
  return o;
}

void checkListVariablesResponse(api.ListVariablesResponse o) {
  buildCounterListVariablesResponse++;
  if (buildCounterListVariablesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5752(o.variable!);
  }
  buildCounterListVariablesResponse--;
}

core.List<api.Workspace> buildUnnamed5753() {
  final o = <api.Workspace>[];
  o.add(buildWorkspace());
  o.add(buildWorkspace());
  return o;
}

void checkUnnamed5753(core.List<api.Workspace> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkspace(o[0]);
  checkWorkspace(o[1]);
}

core.int buildCounterListWorkspacesResponse = 0;
api.ListWorkspacesResponse buildListWorkspacesResponse() {
  final o = api.ListWorkspacesResponse();
  buildCounterListWorkspacesResponse++;
  if (buildCounterListWorkspacesResponse < 3) {
    o.nextPageToken = 'foo';
    o.workspace = buildUnnamed5753();
  }
  buildCounterListWorkspacesResponse--;
  return o;
}

void checkListWorkspacesResponse(api.ListWorkspacesResponse o) {
  buildCounterListWorkspacesResponse++;
  if (buildCounterListWorkspacesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5753(o.workspace!);
  }
  buildCounterListWorkspacesResponse--;
}

core.List<api.Zone> buildUnnamed5754() {
  final o = <api.Zone>[];
  o.add(buildZone());
  o.add(buildZone());
  return o;
}

void checkUnnamed5754(core.List<api.Zone> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkZone(o[0]);
  checkZone(o[1]);
}

core.int buildCounterListZonesResponse = 0;
api.ListZonesResponse buildListZonesResponse() {
  final o = api.ListZonesResponse();
  buildCounterListZonesResponse++;
  if (buildCounterListZonesResponse < 3) {
    o.nextPageToken = 'foo';
    o.zone = buildUnnamed5754();
  }
  buildCounterListZonesResponse--;
  return o;
}

void checkListZonesResponse(api.ListZonesResponse o) {
  buildCounterListZonesResponse++;
  if (buildCounterListZonesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5754(o.zone!);
  }
  buildCounterListZonesResponse--;
}

core.int buildCounterMergeConflict = 0;
api.MergeConflict buildMergeConflict() {
  final o = api.MergeConflict();
  buildCounterMergeConflict++;
  if (buildCounterMergeConflict < 3) {
    o.entityInBaseVersion = buildEntity();
    o.entityInWorkspace = buildEntity();
  }
  buildCounterMergeConflict--;
  return o;
}

void checkMergeConflict(api.MergeConflict o) {
  buildCounterMergeConflict++;
  if (buildCounterMergeConflict < 3) {
    checkEntity(o.entityInBaseVersion!);
    checkEntity(o.entityInWorkspace!);
  }
  buildCounterMergeConflict--;
}

core.List<api.Parameter> buildUnnamed5755() {
  final o = <api.Parameter>[];
  o.add(buildParameter());
  o.add(buildParameter());
  return o;
}

void checkUnnamed5755(core.List<api.Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameter(o[0]);
  checkParameter(o[1]);
}

core.List<api.Parameter> buildUnnamed5756() {
  final o = <api.Parameter>[];
  o.add(buildParameter());
  o.add(buildParameter());
  return o;
}

void checkUnnamed5756(core.List<api.Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameter(o[0]);
  checkParameter(o[1]);
}

core.int buildCounterParameter = 0;
api.Parameter buildParameter() {
  final o = api.Parameter();
  buildCounterParameter++;
  if (buildCounterParameter < 3) {
    o.key = 'foo';
    o.list = buildUnnamed5755();
    o.map = buildUnnamed5756();
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterParameter--;
  return o;
}

void checkParameter(api.Parameter o) {
  buildCounterParameter++;
  if (buildCounterParameter < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkUnnamed5755(o.list!);
    checkUnnamed5756(o.map!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterParameter--;
}

core.int buildCounterPublishContainerVersionResponse = 0;
api.PublishContainerVersionResponse buildPublishContainerVersionResponse() {
  final o = api.PublishContainerVersionResponse();
  buildCounterPublishContainerVersionResponse++;
  if (buildCounterPublishContainerVersionResponse < 3) {
    o.compilerError = true;
    o.containerVersion = buildContainerVersion();
  }
  buildCounterPublishContainerVersionResponse--;
  return o;
}

void checkPublishContainerVersionResponse(
    api.PublishContainerVersionResponse o) {
  buildCounterPublishContainerVersionResponse++;
  if (buildCounterPublishContainerVersionResponse < 3) {
    unittest.expect(o.compilerError!, unittest.isTrue);
    checkContainerVersion(o.containerVersion!);
  }
  buildCounterPublishContainerVersionResponse--;
}

core.int buildCounterQuickPreviewResponse = 0;
api.QuickPreviewResponse buildQuickPreviewResponse() {
  final o = api.QuickPreviewResponse();
  buildCounterQuickPreviewResponse++;
  if (buildCounterQuickPreviewResponse < 3) {
    o.compilerError = true;
    o.containerVersion = buildContainerVersion();
    o.syncStatus = buildSyncStatus();
  }
  buildCounterQuickPreviewResponse--;
  return o;
}

void checkQuickPreviewResponse(api.QuickPreviewResponse o) {
  buildCounterQuickPreviewResponse++;
  if (buildCounterQuickPreviewResponse < 3) {
    unittest.expect(o.compilerError!, unittest.isTrue);
    checkContainerVersion(o.containerVersion!);
    checkSyncStatus(o.syncStatus!);
  }
  buildCounterQuickPreviewResponse--;
}

core.int buildCounterRevertBuiltInVariableResponse = 0;
api.RevertBuiltInVariableResponse buildRevertBuiltInVariableResponse() {
  final o = api.RevertBuiltInVariableResponse();
  buildCounterRevertBuiltInVariableResponse++;
  if (buildCounterRevertBuiltInVariableResponse < 3) {
    o.enabled = true;
  }
  buildCounterRevertBuiltInVariableResponse--;
  return o;
}

void checkRevertBuiltInVariableResponse(api.RevertBuiltInVariableResponse o) {
  buildCounterRevertBuiltInVariableResponse++;
  if (buildCounterRevertBuiltInVariableResponse < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterRevertBuiltInVariableResponse--;
}

core.int buildCounterRevertFolderResponse = 0;
api.RevertFolderResponse buildRevertFolderResponse() {
  final o = api.RevertFolderResponse();
  buildCounterRevertFolderResponse++;
  if (buildCounterRevertFolderResponse < 3) {
    o.folder = buildFolder();
  }
  buildCounterRevertFolderResponse--;
  return o;
}

void checkRevertFolderResponse(api.RevertFolderResponse o) {
  buildCounterRevertFolderResponse++;
  if (buildCounterRevertFolderResponse < 3) {
    checkFolder(o.folder!);
  }
  buildCounterRevertFolderResponse--;
}

core.int buildCounterRevertTagResponse = 0;
api.RevertTagResponse buildRevertTagResponse() {
  final o = api.RevertTagResponse();
  buildCounterRevertTagResponse++;
  if (buildCounterRevertTagResponse < 3) {
    o.tag = buildTag();
  }
  buildCounterRevertTagResponse--;
  return o;
}

void checkRevertTagResponse(api.RevertTagResponse o) {
  buildCounterRevertTagResponse++;
  if (buildCounterRevertTagResponse < 3) {
    checkTag(o.tag!);
  }
  buildCounterRevertTagResponse--;
}

core.int buildCounterRevertTemplateResponse = 0;
api.RevertTemplateResponse buildRevertTemplateResponse() {
  final o = api.RevertTemplateResponse();
  buildCounterRevertTemplateResponse++;
  if (buildCounterRevertTemplateResponse < 3) {
    o.template = buildCustomTemplate();
  }
  buildCounterRevertTemplateResponse--;
  return o;
}

void checkRevertTemplateResponse(api.RevertTemplateResponse o) {
  buildCounterRevertTemplateResponse++;
  if (buildCounterRevertTemplateResponse < 3) {
    checkCustomTemplate(o.template!);
  }
  buildCounterRevertTemplateResponse--;
}

core.int buildCounterRevertTriggerResponse = 0;
api.RevertTriggerResponse buildRevertTriggerResponse() {
  final o = api.RevertTriggerResponse();
  buildCounterRevertTriggerResponse++;
  if (buildCounterRevertTriggerResponse < 3) {
    o.trigger = buildTrigger();
  }
  buildCounterRevertTriggerResponse--;
  return o;
}

void checkRevertTriggerResponse(api.RevertTriggerResponse o) {
  buildCounterRevertTriggerResponse++;
  if (buildCounterRevertTriggerResponse < 3) {
    checkTrigger(o.trigger!);
  }
  buildCounterRevertTriggerResponse--;
}

core.int buildCounterRevertVariableResponse = 0;
api.RevertVariableResponse buildRevertVariableResponse() {
  final o = api.RevertVariableResponse();
  buildCounterRevertVariableResponse++;
  if (buildCounterRevertVariableResponse < 3) {
    o.variable = buildVariable();
  }
  buildCounterRevertVariableResponse--;
  return o;
}

void checkRevertVariableResponse(api.RevertVariableResponse o) {
  buildCounterRevertVariableResponse++;
  if (buildCounterRevertVariableResponse < 3) {
    checkVariable(o.variable!);
  }
  buildCounterRevertVariableResponse--;
}

core.int buildCounterRevertZoneResponse = 0;
api.RevertZoneResponse buildRevertZoneResponse() {
  final o = api.RevertZoneResponse();
  buildCounterRevertZoneResponse++;
  if (buildCounterRevertZoneResponse < 3) {
    o.zone = buildZone();
  }
  buildCounterRevertZoneResponse--;
  return o;
}

void checkRevertZoneResponse(api.RevertZoneResponse o) {
  buildCounterRevertZoneResponse++;
  if (buildCounterRevertZoneResponse < 3) {
    checkZone(o.zone!);
  }
  buildCounterRevertZoneResponse--;
}

core.int buildCounterSetupTag = 0;
api.SetupTag buildSetupTag() {
  final o = api.SetupTag();
  buildCounterSetupTag++;
  if (buildCounterSetupTag < 3) {
    o.stopOnSetupFailure = true;
    o.tagName = 'foo';
  }
  buildCounterSetupTag--;
  return o;
}

void checkSetupTag(api.SetupTag o) {
  buildCounterSetupTag++;
  if (buildCounterSetupTag < 3) {
    unittest.expect(o.stopOnSetupFailure!, unittest.isTrue);
    unittest.expect(
      o.tagName!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetupTag--;
}

core.int buildCounterSyncStatus = 0;
api.SyncStatus buildSyncStatus() {
  final o = api.SyncStatus();
  buildCounterSyncStatus++;
  if (buildCounterSyncStatus < 3) {
    o.mergeConflict = true;
    o.syncError = true;
  }
  buildCounterSyncStatus--;
  return o;
}

void checkSyncStatus(api.SyncStatus o) {
  buildCounterSyncStatus++;
  if (buildCounterSyncStatus < 3) {
    unittest.expect(o.mergeConflict!, unittest.isTrue);
    unittest.expect(o.syncError!, unittest.isTrue);
  }
  buildCounterSyncStatus--;
}

core.List<api.MergeConflict> buildUnnamed5757() {
  final o = <api.MergeConflict>[];
  o.add(buildMergeConflict());
  o.add(buildMergeConflict());
  return o;
}

void checkUnnamed5757(core.List<api.MergeConflict> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMergeConflict(o[0]);
  checkMergeConflict(o[1]);
}

core.int buildCounterSyncWorkspaceResponse = 0;
api.SyncWorkspaceResponse buildSyncWorkspaceResponse() {
  final o = api.SyncWorkspaceResponse();
  buildCounterSyncWorkspaceResponse++;
  if (buildCounterSyncWorkspaceResponse < 3) {
    o.mergeConflict = buildUnnamed5757();
    o.syncStatus = buildSyncStatus();
  }
  buildCounterSyncWorkspaceResponse--;
  return o;
}

void checkSyncWorkspaceResponse(api.SyncWorkspaceResponse o) {
  buildCounterSyncWorkspaceResponse++;
  if (buildCounterSyncWorkspaceResponse < 3) {
    checkUnnamed5757(o.mergeConflict!);
    checkSyncStatus(o.syncStatus!);
  }
  buildCounterSyncWorkspaceResponse--;
}

core.List<core.String> buildUnnamed5758() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5758(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5759() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5759(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5760() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5760(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5761() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5761(core.List<core.String> o) {
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

core.List<api.Parameter> buildUnnamed5762() {
  final o = <api.Parameter>[];
  o.add(buildParameter());
  o.add(buildParameter());
  return o;
}

void checkUnnamed5762(core.List<api.Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameter(o[0]);
  checkParameter(o[1]);
}

core.List<api.SetupTag> buildUnnamed5763() {
  final o = <api.SetupTag>[];
  o.add(buildSetupTag());
  o.add(buildSetupTag());
  return o;
}

void checkUnnamed5763(core.List<api.SetupTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSetupTag(o[0]);
  checkSetupTag(o[1]);
}

core.List<api.TeardownTag> buildUnnamed5764() {
  final o = <api.TeardownTag>[];
  o.add(buildTeardownTag());
  o.add(buildTeardownTag());
  return o;
}

void checkUnnamed5764(core.List<api.TeardownTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTeardownTag(o[0]);
  checkTeardownTag(o[1]);
}

core.int buildCounterTag = 0;
api.Tag buildTag() {
  final o = api.Tag();
  buildCounterTag++;
  if (buildCounterTag < 3) {
    o.accountId = 'foo';
    o.blockingRuleId = buildUnnamed5758();
    o.blockingTriggerId = buildUnnamed5759();
    o.containerId = 'foo';
    o.fingerprint = 'foo';
    o.firingRuleId = buildUnnamed5760();
    o.firingTriggerId = buildUnnamed5761();
    o.liveOnly = true;
    o.monitoringMetadata = buildParameter();
    o.monitoringMetadataTagNameKey = 'foo';
    o.name = 'foo';
    o.notes = 'foo';
    o.parameter = buildUnnamed5762();
    o.parentFolderId = 'foo';
    o.path = 'foo';
    o.paused = true;
    o.priority = buildParameter();
    o.scheduleEndMs = 'foo';
    o.scheduleStartMs = 'foo';
    o.setupTag = buildUnnamed5763();
    o.tagFiringOption = 'foo';
    o.tagId = 'foo';
    o.tagManagerUrl = 'foo';
    o.teardownTag = buildUnnamed5764();
    o.type = 'foo';
    o.workspaceId = 'foo';
  }
  buildCounterTag--;
  return o;
}

void checkTag(api.Tag o) {
  buildCounterTag++;
  if (buildCounterTag < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkUnnamed5758(o.blockingRuleId!);
    checkUnnamed5759(o.blockingTriggerId!);
    unittest.expect(
      o.containerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fingerprint!,
      unittest.equals('foo'),
    );
    checkUnnamed5760(o.firingRuleId!);
    checkUnnamed5761(o.firingTriggerId!);
    unittest.expect(o.liveOnly!, unittest.isTrue);
    checkParameter(o.monitoringMetadata!);
    unittest.expect(
      o.monitoringMetadataTagNameKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notes!,
      unittest.equals('foo'),
    );
    checkUnnamed5762(o.parameter!);
    unittest.expect(
      o.parentFolderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(o.paused!, unittest.isTrue);
    checkParameter(o.priority!);
    unittest.expect(
      o.scheduleEndMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scheduleStartMs!,
      unittest.equals('foo'),
    );
    checkUnnamed5763(o.setupTag!);
    unittest.expect(
      o.tagFiringOption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tagId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tagManagerUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed5764(o.teardownTag!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workspaceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterTag--;
}

core.int buildCounterTeardownTag = 0;
api.TeardownTag buildTeardownTag() {
  final o = api.TeardownTag();
  buildCounterTeardownTag++;
  if (buildCounterTeardownTag < 3) {
    o.stopTeardownOnFailure = true;
    o.tagName = 'foo';
  }
  buildCounterTeardownTag--;
  return o;
}

void checkTeardownTag(api.TeardownTag o) {
  buildCounterTeardownTag++;
  if (buildCounterTeardownTag < 3) {
    unittest.expect(o.stopTeardownOnFailure!, unittest.isTrue);
    unittest.expect(
      o.tagName!,
      unittest.equals('foo'),
    );
  }
  buildCounterTeardownTag--;
}

core.List<api.Condition> buildUnnamed5765() {
  final o = <api.Condition>[];
  o.add(buildCondition());
  o.add(buildCondition());
  return o;
}

void checkUnnamed5765(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0]);
  checkCondition(o[1]);
}

core.List<api.Condition> buildUnnamed5766() {
  final o = <api.Condition>[];
  o.add(buildCondition());
  o.add(buildCondition());
  return o;
}

void checkUnnamed5766(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0]);
  checkCondition(o[1]);
}

core.List<api.Condition> buildUnnamed5767() {
  final o = <api.Condition>[];
  o.add(buildCondition());
  o.add(buildCondition());
  return o;
}

void checkUnnamed5767(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0]);
  checkCondition(o[1]);
}

core.List<api.Parameter> buildUnnamed5768() {
  final o = <api.Parameter>[];
  o.add(buildParameter());
  o.add(buildParameter());
  return o;
}

void checkUnnamed5768(core.List<api.Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameter(o[0]);
  checkParameter(o[1]);
}

core.int buildCounterTrigger = 0;
api.Trigger buildTrigger() {
  final o = api.Trigger();
  buildCounterTrigger++;
  if (buildCounterTrigger < 3) {
    o.accountId = 'foo';
    o.autoEventFilter = buildUnnamed5765();
    o.checkValidation = buildParameter();
    o.containerId = 'foo';
    o.continuousTimeMinMilliseconds = buildParameter();
    o.customEventFilter = buildUnnamed5766();
    o.eventName = buildParameter();
    o.filter = buildUnnamed5767();
    o.fingerprint = 'foo';
    o.horizontalScrollPercentageList = buildParameter();
    o.interval = buildParameter();
    o.intervalSeconds = buildParameter();
    o.limit = buildParameter();
    o.maxTimerLengthSeconds = buildParameter();
    o.name = 'foo';
    o.notes = 'foo';
    o.parameter = buildUnnamed5768();
    o.parentFolderId = 'foo';
    o.path = 'foo';
    o.selector = buildParameter();
    o.tagManagerUrl = 'foo';
    o.totalTimeMinMilliseconds = buildParameter();
    o.triggerId = 'foo';
    o.type = 'foo';
    o.uniqueTriggerId = buildParameter();
    o.verticalScrollPercentageList = buildParameter();
    o.visibilitySelector = buildParameter();
    o.visiblePercentageMax = buildParameter();
    o.visiblePercentageMin = buildParameter();
    o.waitForTags = buildParameter();
    o.waitForTagsTimeout = buildParameter();
    o.workspaceId = 'foo';
  }
  buildCounterTrigger--;
  return o;
}

void checkTrigger(api.Trigger o) {
  buildCounterTrigger++;
  if (buildCounterTrigger < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkUnnamed5765(o.autoEventFilter!);
    checkParameter(o.checkValidation!);
    unittest.expect(
      o.containerId!,
      unittest.equals('foo'),
    );
    checkParameter(o.continuousTimeMinMilliseconds!);
    checkUnnamed5766(o.customEventFilter!);
    checkParameter(o.eventName!);
    checkUnnamed5767(o.filter!);
    unittest.expect(
      o.fingerprint!,
      unittest.equals('foo'),
    );
    checkParameter(o.horizontalScrollPercentageList!);
    checkParameter(o.interval!);
    checkParameter(o.intervalSeconds!);
    checkParameter(o.limit!);
    checkParameter(o.maxTimerLengthSeconds!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notes!,
      unittest.equals('foo'),
    );
    checkUnnamed5768(o.parameter!);
    unittest.expect(
      o.parentFolderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    checkParameter(o.selector!);
    unittest.expect(
      o.tagManagerUrl!,
      unittest.equals('foo'),
    );
    checkParameter(o.totalTimeMinMilliseconds!);
    unittest.expect(
      o.triggerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkParameter(o.uniqueTriggerId!);
    checkParameter(o.verticalScrollPercentageList!);
    checkParameter(o.visibilitySelector!);
    checkParameter(o.visiblePercentageMax!);
    checkParameter(o.visiblePercentageMin!);
    checkParameter(o.waitForTags!);
    checkParameter(o.waitForTagsTimeout!);
    unittest.expect(
      o.workspaceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterTrigger--;
}

core.List<api.ContainerAccess> buildUnnamed5769() {
  final o = <api.ContainerAccess>[];
  o.add(buildContainerAccess());
  o.add(buildContainerAccess());
  return o;
}

void checkUnnamed5769(core.List<api.ContainerAccess> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContainerAccess(o[0]);
  checkContainerAccess(o[1]);
}

core.int buildCounterUserPermission = 0;
api.UserPermission buildUserPermission() {
  final o = api.UserPermission();
  buildCounterUserPermission++;
  if (buildCounterUserPermission < 3) {
    o.accountAccess = buildAccountAccess();
    o.accountId = 'foo';
    o.containerAccess = buildUnnamed5769();
    o.emailAddress = 'foo';
    o.path = 'foo';
  }
  buildCounterUserPermission--;
  return o;
}

void checkUserPermission(api.UserPermission o) {
  buildCounterUserPermission++;
  if (buildCounterUserPermission < 3) {
    checkAccountAccess(o.accountAccess!);
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkUnnamed5769(o.containerAccess!);
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserPermission--;
}

core.List<core.String> buildUnnamed5770() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5770(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5771() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5771(core.List<core.String> o) {
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

core.List<api.Parameter> buildUnnamed5772() {
  final o = <api.Parameter>[];
  o.add(buildParameter());
  o.add(buildParameter());
  return o;
}

void checkUnnamed5772(core.List<api.Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameter(o[0]);
  checkParameter(o[1]);
}

core.int buildCounterVariable = 0;
api.Variable buildVariable() {
  final o = api.Variable();
  buildCounterVariable++;
  if (buildCounterVariable < 3) {
    o.accountId = 'foo';
    o.containerId = 'foo';
    o.disablingTriggerId = buildUnnamed5770();
    o.enablingTriggerId = buildUnnamed5771();
    o.fingerprint = 'foo';
    o.formatValue = buildVariableFormatValue();
    o.name = 'foo';
    o.notes = 'foo';
    o.parameter = buildUnnamed5772();
    o.parentFolderId = 'foo';
    o.path = 'foo';
    o.scheduleEndMs = 'foo';
    o.scheduleStartMs = 'foo';
    o.tagManagerUrl = 'foo';
    o.type = 'foo';
    o.variableId = 'foo';
    o.workspaceId = 'foo';
  }
  buildCounterVariable--;
  return o;
}

void checkVariable(api.Variable o) {
  buildCounterVariable++;
  if (buildCounterVariable < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.containerId!,
      unittest.equals('foo'),
    );
    checkUnnamed5770(o.disablingTriggerId!);
    checkUnnamed5771(o.enablingTriggerId!);
    unittest.expect(
      o.fingerprint!,
      unittest.equals('foo'),
    );
    checkVariableFormatValue(o.formatValue!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notes!,
      unittest.equals('foo'),
    );
    checkUnnamed5772(o.parameter!);
    unittest.expect(
      o.parentFolderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scheduleEndMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scheduleStartMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tagManagerUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.variableId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workspaceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterVariable--;
}

core.int buildCounterVariableFormatValue = 0;
api.VariableFormatValue buildVariableFormatValue() {
  final o = api.VariableFormatValue();
  buildCounterVariableFormatValue++;
  if (buildCounterVariableFormatValue < 3) {
    o.caseConversionType = 'foo';
    o.convertFalseToValue = buildParameter();
    o.convertNullToValue = buildParameter();
    o.convertTrueToValue = buildParameter();
    o.convertUndefinedToValue = buildParameter();
  }
  buildCounterVariableFormatValue--;
  return o;
}

void checkVariableFormatValue(api.VariableFormatValue o) {
  buildCounterVariableFormatValue++;
  if (buildCounterVariableFormatValue < 3) {
    unittest.expect(
      o.caseConversionType!,
      unittest.equals('foo'),
    );
    checkParameter(o.convertFalseToValue!);
    checkParameter(o.convertNullToValue!);
    checkParameter(o.convertTrueToValue!);
    checkParameter(o.convertUndefinedToValue!);
  }
  buildCounterVariableFormatValue--;
}

core.int buildCounterWorkspace = 0;
api.Workspace buildWorkspace() {
  final o = api.Workspace();
  buildCounterWorkspace++;
  if (buildCounterWorkspace < 3) {
    o.accountId = 'foo';
    o.containerId = 'foo';
    o.description = 'foo';
    o.fingerprint = 'foo';
    o.name = 'foo';
    o.path = 'foo';
    o.tagManagerUrl = 'foo';
    o.workspaceId = 'foo';
  }
  buildCounterWorkspace--;
  return o;
}

void checkWorkspace(api.Workspace o) {
  buildCounterWorkspace++;
  if (buildCounterWorkspace < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.containerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fingerprint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tagManagerUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workspaceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkspace--;
}

core.List<api.ZoneChildContainer> buildUnnamed5773() {
  final o = <api.ZoneChildContainer>[];
  o.add(buildZoneChildContainer());
  o.add(buildZoneChildContainer());
  return o;
}

void checkUnnamed5773(core.List<api.ZoneChildContainer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkZoneChildContainer(o[0]);
  checkZoneChildContainer(o[1]);
}

core.int buildCounterZone = 0;
api.Zone buildZone() {
  final o = api.Zone();
  buildCounterZone++;
  if (buildCounterZone < 3) {
    o.accountId = 'foo';
    o.boundary = buildZoneBoundary();
    o.childContainer = buildUnnamed5773();
    o.containerId = 'foo';
    o.fingerprint = 'foo';
    o.name = 'foo';
    o.notes = 'foo';
    o.path = 'foo';
    o.tagManagerUrl = 'foo';
    o.typeRestriction = buildZoneTypeRestriction();
    o.workspaceId = 'foo';
    o.zoneId = 'foo';
  }
  buildCounterZone--;
  return o;
}

void checkZone(api.Zone o) {
  buildCounterZone++;
  if (buildCounterZone < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkZoneBoundary(o.boundary!);
    checkUnnamed5773(o.childContainer!);
    unittest.expect(
      o.containerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fingerprint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tagManagerUrl!,
      unittest.equals('foo'),
    );
    checkZoneTypeRestriction(o.typeRestriction!);
    unittest.expect(
      o.workspaceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zoneId!,
      unittest.equals('foo'),
    );
  }
  buildCounterZone--;
}

core.List<api.Condition> buildUnnamed5774() {
  final o = <api.Condition>[];
  o.add(buildCondition());
  o.add(buildCondition());
  return o;
}

void checkUnnamed5774(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0]);
  checkCondition(o[1]);
}

core.List<core.String> buildUnnamed5775() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5775(core.List<core.String> o) {
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

core.int buildCounterZoneBoundary = 0;
api.ZoneBoundary buildZoneBoundary() {
  final o = api.ZoneBoundary();
  buildCounterZoneBoundary++;
  if (buildCounterZoneBoundary < 3) {
    o.condition = buildUnnamed5774();
    o.customEvaluationTriggerId = buildUnnamed5775();
  }
  buildCounterZoneBoundary--;
  return o;
}

void checkZoneBoundary(api.ZoneBoundary o) {
  buildCounterZoneBoundary++;
  if (buildCounterZoneBoundary < 3) {
    checkUnnamed5774(o.condition!);
    checkUnnamed5775(o.customEvaluationTriggerId!);
  }
  buildCounterZoneBoundary--;
}

core.int buildCounterZoneChildContainer = 0;
api.ZoneChildContainer buildZoneChildContainer() {
  final o = api.ZoneChildContainer();
  buildCounterZoneChildContainer++;
  if (buildCounterZoneChildContainer < 3) {
    o.nickname = 'foo';
    o.publicId = 'foo';
  }
  buildCounterZoneChildContainer--;
  return o;
}

void checkZoneChildContainer(api.ZoneChildContainer o) {
  buildCounterZoneChildContainer++;
  if (buildCounterZoneChildContainer < 3) {
    unittest.expect(
      o.nickname!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publicId!,
      unittest.equals('foo'),
    );
  }
  buildCounterZoneChildContainer--;
}

core.List<core.String> buildUnnamed5776() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5776(core.List<core.String> o) {
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

core.int buildCounterZoneTypeRestriction = 0;
api.ZoneTypeRestriction buildZoneTypeRestriction() {
  final o = api.ZoneTypeRestriction();
  buildCounterZoneTypeRestriction++;
  if (buildCounterZoneTypeRestriction < 3) {
    o.enable = true;
    o.whitelistedTypeId = buildUnnamed5776();
  }
  buildCounterZoneTypeRestriction--;
  return o;
}

void checkZoneTypeRestriction(api.ZoneTypeRestriction o) {
  buildCounterZoneTypeRestriction++;
  if (buildCounterZoneTypeRestriction < 3) {
    unittest.expect(o.enable!, unittest.isTrue);
    checkUnnamed5776(o.whitelistedTypeId!);
  }
  buildCounterZoneTypeRestriction--;
}

core.List<core.String> buildUnnamed5777() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5777(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5778() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5778(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5779() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5779(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5780() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5780(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5781() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5781(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-Account', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Account.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAccount(od);
    });
  });

  unittest.group('obj-schema-AccountAccess', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountAccess();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountAccess.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountAccess(od);
    });
  });

  unittest.group('obj-schema-BuiltInVariable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuiltInVariable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuiltInVariable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuiltInVariable(od);
    });
  });

  unittest.group('obj-schema-Client', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClient();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Client.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkClient(od);
    });
  });

  unittest.group('obj-schema-Condition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Condition.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCondition(od);
    });
  });

  unittest.group('obj-schema-Container', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContainer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Container.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkContainer(od);
    });
  });

  unittest.group('obj-schema-ContainerAccess', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContainerAccess();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContainerAccess.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContainerAccess(od);
    });
  });

  unittest.group('obj-schema-ContainerVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContainerVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContainerVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContainerVersion(od);
    });
  });

  unittest.group('obj-schema-ContainerVersionHeader', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContainerVersionHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContainerVersionHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContainerVersionHeader(od);
    });
  });

  unittest.group('obj-schema-CreateBuiltInVariableResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateBuiltInVariableResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateBuiltInVariableResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateBuiltInVariableResponse(od);
    });
  });

  unittest.group('obj-schema-CreateContainerVersionRequestVersionOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateContainerVersionRequestVersionOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateContainerVersionRequestVersionOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateContainerVersionRequestVersionOptions(od);
    });
  });

  unittest.group('obj-schema-CreateContainerVersionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateContainerVersionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateContainerVersionResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateContainerVersionResponse(od);
    });
  });

  unittest.group('obj-schema-CustomTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomTemplate(od);
    });
  });

  unittest.group('obj-schema-Entity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Entity.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEntity(od);
    });
  });

  unittest.group('obj-schema-Environment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvironment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Environment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnvironment(od);
    });
  });

  unittest.group('obj-schema-Folder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFolder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Folder.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFolder(od);
    });
  });

  unittest.group('obj-schema-FolderEntities', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFolderEntities();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FolderEntities.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFolderEntities(od);
    });
  });

  unittest.group('obj-schema-GalleryReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGalleryReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GalleryReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGalleryReference(od);
    });
  });

  unittest.group('obj-schema-GetWorkspaceStatusResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetWorkspaceStatusResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetWorkspaceStatusResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetWorkspaceStatusResponse(od);
    });
  });

  unittest.group('obj-schema-ListAccountsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAccountsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAccountsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAccountsResponse(od);
    });
  });

  unittest.group('obj-schema-ListContainerVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListContainerVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListContainerVersionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListContainerVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListContainersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListContainersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListContainersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListContainersResponse(od);
    });
  });

  unittest.group('obj-schema-ListEnabledBuiltInVariablesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEnabledBuiltInVariablesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEnabledBuiltInVariablesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListEnabledBuiltInVariablesResponse(od);
    });
  });

  unittest.group('obj-schema-ListEnvironmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEnvironmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEnvironmentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListEnvironmentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListFoldersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFoldersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFoldersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListFoldersResponse(od);
    });
  });

  unittest.group('obj-schema-ListTagsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTagsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTagsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTagsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTemplatesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTemplatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTemplatesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTemplatesResponse(od);
    });
  });

  unittest.group('obj-schema-ListTriggersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTriggersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTriggersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTriggersResponse(od);
    });
  });

  unittest.group('obj-schema-ListUserPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUserPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUserPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListUserPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListVariablesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVariablesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVariablesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListVariablesResponse(od);
    });
  });

  unittest.group('obj-schema-ListWorkspacesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWorkspacesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWorkspacesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListWorkspacesResponse(od);
    });
  });

  unittest.group('obj-schema-ListZonesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListZonesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListZonesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListZonesResponse(od);
    });
  });

  unittest.group('obj-schema-MergeConflict', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMergeConflict();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MergeConflict.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMergeConflict(od);
    });
  });

  unittest.group('obj-schema-Parameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Parameter.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkParameter(od);
    });
  });

  unittest.group('obj-schema-PublishContainerVersionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublishContainerVersionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PublishContainerVersionResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPublishContainerVersionResponse(od);
    });
  });

  unittest.group('obj-schema-QuickPreviewResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuickPreviewResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QuickPreviewResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQuickPreviewResponse(od);
    });
  });

  unittest.group('obj-schema-RevertBuiltInVariableResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevertBuiltInVariableResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevertBuiltInVariableResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevertBuiltInVariableResponse(od);
    });
  });

  unittest.group('obj-schema-RevertFolderResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevertFolderResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevertFolderResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevertFolderResponse(od);
    });
  });

  unittest.group('obj-schema-RevertTagResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevertTagResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevertTagResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevertTagResponse(od);
    });
  });

  unittest.group('obj-schema-RevertTemplateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevertTemplateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevertTemplateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevertTemplateResponse(od);
    });
  });

  unittest.group('obj-schema-RevertTriggerResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevertTriggerResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevertTriggerResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevertTriggerResponse(od);
    });
  });

  unittest.group('obj-schema-RevertVariableResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevertVariableResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevertVariableResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevertVariableResponse(od);
    });
  });

  unittest.group('obj-schema-RevertZoneResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevertZoneResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevertZoneResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevertZoneResponse(od);
    });
  });

  unittest.group('obj-schema-SetupTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetupTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SetupTag.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSetupTag(od);
    });
  });

  unittest.group('obj-schema-SyncStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSyncStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SyncStatus.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSyncStatus(od);
    });
  });

  unittest.group('obj-schema-SyncWorkspaceResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSyncWorkspaceResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SyncWorkspaceResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSyncWorkspaceResponse(od);
    });
  });

  unittest.group('obj-schema-Tag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Tag.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTag(od);
    });
  });

  unittest.group('obj-schema-TeardownTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTeardownTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TeardownTag.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTeardownTag(od);
    });
  });

  unittest.group('obj-schema-Trigger', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrigger();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Trigger.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTrigger(od);
    });
  });

  unittest.group('obj-schema-UserPermission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserPermission.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserPermission(od);
    });
  });

  unittest.group('obj-schema-Variable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVariable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Variable.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVariable(od);
    });
  });

  unittest.group('obj-schema-VariableFormatValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVariableFormatValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VariableFormatValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVariableFormatValue(od);
    });
  });

  unittest.group('obj-schema-Workspace', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkspace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Workspace.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWorkspace(od);
    });
  });

  unittest.group('obj-schema-Zone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Zone.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkZone(od);
    });
  });

  unittest.group('obj-schema-ZoneBoundary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildZoneBoundary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ZoneBoundary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkZoneBoundary(od);
    });
  });

  unittest.group('obj-schema-ZoneChildContainer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildZoneChildContainer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ZoneChildContainer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkZoneChildContainer(od);
    });
  });

  unittest.group('obj-schema-ZoneTypeRestriction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildZoneTypeRestriction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ZoneTypeRestriction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkZoneTypeRestriction(od);
    });
  });

  unittest.group('resource-AccountsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_path, $fields: arg_$fields);
      checkAccount(response as api.Account);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts;
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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('tagmanager/v2/accounts'),
        );
        pathOffset += 22;

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
        final resp = convert.json.encode(buildListAccountsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(pageToken: arg_pageToken, $fields: arg_$fields);
      checkListAccountsResponse(response as api.ListAccountsResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts;
      final arg_request = buildAccount();
      final arg_path = 'foo';
      final arg_fingerprint = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Account.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAccount(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['fingerprint']!.first,
          unittest.equals(arg_fingerprint),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_path,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkAccount(response as api.Account);
    });
  });

  unittest.group('resource-AccountsContainersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers;
      final arg_request = buildContainer();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Container.fromJson(json as core.Map<core.String, core.dynamic>);
        checkContainer(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildContainer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkContainer(response as api.Container);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_path, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildContainer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_path, $fields: arg_$fields);
      checkContainer(response as api.Container);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildListContainersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageToken: arg_pageToken, $fields: arg_$fields);
      checkListContainersResponse(response as api.ListContainersResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers;
      final arg_request = buildContainer();
      final arg_path = 'foo';
      final arg_fingerprint = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Container.fromJson(json as core.Map<core.String, core.dynamic>);
        checkContainer(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['fingerprint']!.first,
          unittest.equals(arg_fingerprint),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildContainer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_path,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkContainer(response as api.Container);
    });
  });

  unittest.group('resource-AccountsContainersEnvironmentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.environments;
      final arg_request = buildEnvironment();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Environment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnvironment(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildEnvironment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkEnvironment(response as api.Environment);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.environments;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_path, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.environments;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildEnvironment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_path, $fields: arg_$fields);
      checkEnvironment(response as api.Environment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.environments;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildListEnvironmentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageToken: arg_pageToken, $fields: arg_$fields);
      checkListEnvironmentsResponse(response as api.ListEnvironmentsResponse);
    });

    unittest.test('method--reauthorize', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.environments;
      final arg_request = buildEnvironment();
      final arg_path = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Environment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnvironment(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildEnvironment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.reauthorize(arg_request, arg_path, $fields: arg_$fields);
      checkEnvironment(response as api.Environment);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.environments;
      final arg_request = buildEnvironment();
      final arg_path = 'foo';
      final arg_fingerprint = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Environment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnvironment(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['fingerprint']!.first,
          unittest.equals(arg_fingerprint),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEnvironment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_path,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkEnvironment(response as api.Environment);
    });
  });

  unittest.group('resource-AccountsContainersVersionHeadersResource', () {
    unittest.test('method--latest', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.versionHeaders;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildContainerVersionHeader());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.latest(arg_parent, $fields: arg_$fields);
      checkContainerVersionHeader(response as api.ContainerVersionHeader);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.versionHeaders;
      final arg_parent = 'foo';
      final arg_includeDeleted = true;
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['includeDeleted']!.first,
          unittest.equals('$arg_includeDeleted'),
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
        final resp = convert.json.encode(buildListContainerVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          includeDeleted: arg_includeDeleted,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListContainerVersionsResponse(
          response as api.ListContainerVersionsResponse);
    });
  });

  unittest.group('resource-AccountsContainersVersionsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.versions;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_path, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.versions;
      final arg_path = 'foo';
      final arg_containerVersionId = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['containerVersionId']!.first,
          unittest.equals(arg_containerVersionId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildContainerVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_path,
          containerVersionId: arg_containerVersionId, $fields: arg_$fields);
      checkContainerVersion(response as api.ContainerVersion);
    });

    unittest.test('method--live', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.versions;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildContainerVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.live(arg_parent, $fields: arg_$fields);
      checkContainerVersion(response as api.ContainerVersion);
    });

    unittest.test('method--publish', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.versions;
      final arg_path = 'foo';
      final arg_fingerprint = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['fingerprint']!.first,
          unittest.equals(arg_fingerprint),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildPublishContainerVersionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.publish(arg_path,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkPublishContainerVersionResponse(
          response as api.PublishContainerVersionResponse);
    });

    unittest.test('method--setLatest', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.versions;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildContainerVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setLatest(arg_path, $fields: arg_$fields);
      checkContainerVersion(response as api.ContainerVersion);
    });

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.versions;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildContainerVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.undelete(arg_path, $fields: arg_$fields);
      checkContainerVersion(response as api.ContainerVersion);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.versions;
      final arg_request = buildContainerVersion();
      final arg_path = 'foo';
      final arg_fingerprint = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ContainerVersion.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkContainerVersion(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['fingerprint']!.first,
          unittest.equals(arg_fingerprint),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildContainerVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_path,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkContainerVersion(response as api.ContainerVersion);
    });
  });

  unittest.group('resource-AccountsContainersWorkspacesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.workspaces;
      final arg_request = buildWorkspace();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Workspace.fromJson(json as core.Map<core.String, core.dynamic>);
        checkWorkspace(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildWorkspace());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkWorkspace(response as api.Workspace);
    });

    unittest.test('method--createVersion', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.workspaces;
      final arg_request = buildCreateContainerVersionRequestVersionOptions();
      final arg_path = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateContainerVersionRequestVersionOptions.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateContainerVersionRequestVersionOptions(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildCreateContainerVersionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.createVersion(arg_request, arg_path, $fields: arg_$fields);
      checkCreateContainerVersionResponse(
          response as api.CreateContainerVersionResponse);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.workspaces;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_path, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.workspaces;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildWorkspace());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_path, $fields: arg_$fields);
      checkWorkspace(response as api.Workspace);
    });

    unittest.test('method--getStatus', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.workspaces;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildGetWorkspaceStatusResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getStatus(arg_path, $fields: arg_$fields);
      checkGetWorkspaceStatusResponse(
          response as api.GetWorkspaceStatusResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.workspaces;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildListWorkspacesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageToken: arg_pageToken, $fields: arg_$fields);
      checkListWorkspacesResponse(response as api.ListWorkspacesResponse);
    });

    unittest.test('method--quickPreview', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.workspaces;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildQuickPreviewResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.quickPreview(arg_path, $fields: arg_$fields);
      checkQuickPreviewResponse(response as api.QuickPreviewResponse);
    });

    unittest.test('method--resolveConflict', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.workspaces;
      final arg_request = buildEntity();
      final arg_path = 'foo';
      final arg_fingerprint = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Entity.fromJson(json as core.Map<core.String, core.dynamic>);
        checkEntity(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['fingerprint']!.first,
          unittest.equals(arg_fingerprint),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.resolveConflict(arg_request, arg_path,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
    });

    unittest.test('method--sync', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.workspaces;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildSyncWorkspaceResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.sync(arg_path, $fields: arg_$fields);
      checkSyncWorkspaceResponse(response as api.SyncWorkspaceResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.workspaces;
      final arg_request = buildWorkspace();
      final arg_path = 'foo';
      final arg_fingerprint = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Workspace.fromJson(json as core.Map<core.String, core.dynamic>);
        checkWorkspace(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['fingerprint']!.first,
          unittest.equals(arg_fingerprint),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildWorkspace());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_path,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkWorkspace(response as api.Workspace);
    });
  });

  unittest.group(
      'resource-AccountsContainersWorkspacesBuiltInVariablesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock)
          .accounts
          .containers
          .workspaces
          .builtInVariables;
      final arg_parent = 'foo';
      final arg_type = buildUnnamed5777();
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['type']!,
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCreateBuiltInVariableResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_parent, type: arg_type, $fields: arg_$fields);
      checkCreateBuiltInVariableResponse(
          response as api.CreateBuiltInVariableResponse);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock)
          .accounts
          .containers
          .workspaces
          .builtInVariables;
      final arg_path = 'foo';
      final arg_type = buildUnnamed5778();
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['type']!,
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_path, type: arg_type, $fields: arg_$fields);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock)
          .accounts
          .containers
          .workspaces
          .builtInVariables;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
            convert.json.encode(buildListEnabledBuiltInVariablesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageToken: arg_pageToken, $fields: arg_$fields);
      checkListEnabledBuiltInVariablesResponse(
          response as api.ListEnabledBuiltInVariablesResponse);
    });

    unittest.test('method--revert', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock)
          .accounts
          .containers
          .workspaces
          .builtInVariables;
      final arg_path = 'foo';
      final arg_type = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['type']!.first,
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRevertBuiltInVariableResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.revert(arg_path, type: arg_type, $fields: arg_$fields);
      checkRevertBuiltInVariableResponse(
          response as api.RevertBuiltInVariableResponse);
    });
  });

  unittest.group('resource-AccountsContainersWorkspacesFoldersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.folders;
      final arg_request = buildFolder();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Folder.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFolder(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildFolder());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkFolder(response as api.Folder);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.folders;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_path, $fields: arg_$fields);
    });

    unittest.test('method--entities', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.folders;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildFolderEntities());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.entities(arg_path,
          pageToken: arg_pageToken, $fields: arg_$fields);
      checkFolderEntities(response as api.FolderEntities);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.folders;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildFolder());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_path, $fields: arg_$fields);
      checkFolder(response as api.Folder);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.folders;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildListFoldersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageToken: arg_pageToken, $fields: arg_$fields);
      checkListFoldersResponse(response as api.ListFoldersResponse);
    });

    unittest.test('method--moveEntitiesToFolder', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.folders;
      final arg_request = buildFolder();
      final arg_path = 'foo';
      final arg_tagId = buildUnnamed5779();
      final arg_triggerId = buildUnnamed5780();
      final arg_variableId = buildUnnamed5781();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Folder.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFolder(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['tagId']!,
          unittest.equals(arg_tagId),
        );
        unittest.expect(
          queryMap['triggerId']!,
          unittest.equals(arg_triggerId),
        );
        unittest.expect(
          queryMap['variableId']!,
          unittest.equals(arg_variableId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.moveEntitiesToFolder(arg_request, arg_path,
          tagId: arg_tagId,
          triggerId: arg_triggerId,
          variableId: arg_variableId,
          $fields: arg_$fields);
    });

    unittest.test('method--revert', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.folders;
      final arg_path = 'foo';
      final arg_fingerprint = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['fingerprint']!.first,
          unittest.equals(arg_fingerprint),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRevertFolderResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.revert(arg_path,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkRevertFolderResponse(response as api.RevertFolderResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.folders;
      final arg_request = buildFolder();
      final arg_path = 'foo';
      final arg_fingerprint = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Folder.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFolder(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['fingerprint']!.first,
          unittest.equals(arg_fingerprint),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFolder());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_path,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkFolder(response as api.Folder);
    });
  });

  unittest.group('resource-AccountsContainersWorkspacesTagsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.workspaces.tags;
      final arg_request = buildTag();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Tag.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTag(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkTag(response as api.Tag);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.workspaces.tags;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_path, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.workspaces.tags;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_path, $fields: arg_$fields);
      checkTag(response as api.Tag);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.workspaces.tags;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildListTagsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageToken: arg_pageToken, $fields: arg_$fields);
      checkListTagsResponse(response as api.ListTagsResponse);
    });

    unittest.test('method--revert', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.workspaces.tags;
      final arg_path = 'foo';
      final arg_fingerprint = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['fingerprint']!.first,
          unittest.equals(arg_fingerprint),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRevertTagResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.revert(arg_path,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkRevertTagResponse(response as api.RevertTagResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.workspaces.tags;
      final arg_request = buildTag();
      final arg_path = 'foo';
      final arg_fingerprint = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Tag.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTag(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['fingerprint']!.first,
          unittest.equals(arg_fingerprint),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_path,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkTag(response as api.Tag);
    });
  });

  unittest.group('resource-AccountsContainersWorkspacesTemplatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.templates;
      final arg_request = buildCustomTemplate();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CustomTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomTemplate(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildCustomTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkCustomTemplate(response as api.CustomTemplate);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.templates;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_path, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.templates;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildCustomTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_path, $fields: arg_$fields);
      checkCustomTemplate(response as api.CustomTemplate);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.templates;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildListTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageToken: arg_pageToken, $fields: arg_$fields);
      checkListTemplatesResponse(response as api.ListTemplatesResponse);
    });

    unittest.test('method--revert', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.templates;
      final arg_path = 'foo';
      final arg_fingerprint = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['fingerprint']!.first,
          unittest.equals(arg_fingerprint),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRevertTemplateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.revert(arg_path,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkRevertTemplateResponse(response as api.RevertTemplateResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.templates;
      final arg_request = buildCustomTemplate();
      final arg_path = 'foo';
      final arg_fingerprint = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CustomTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomTemplate(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['fingerprint']!.first,
          unittest.equals(arg_fingerprint),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCustomTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_path,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkCustomTemplate(response as api.CustomTemplate);
    });
  });

  unittest.group('resource-AccountsContainersWorkspacesTriggersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.triggers;
      final arg_request = buildTrigger();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Trigger.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTrigger(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkTrigger(response as api.Trigger);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.triggers;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_path, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.triggers;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_path, $fields: arg_$fields);
      checkTrigger(response as api.Trigger);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.triggers;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildListTriggersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageToken: arg_pageToken, $fields: arg_$fields);
      checkListTriggersResponse(response as api.ListTriggersResponse);
    });

    unittest.test('method--revert', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.triggers;
      final arg_path = 'foo';
      final arg_fingerprint = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['fingerprint']!.first,
          unittest.equals(arg_fingerprint),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRevertTriggerResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.revert(arg_path,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkRevertTriggerResponse(response as api.RevertTriggerResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.triggers;
      final arg_request = buildTrigger();
      final arg_path = 'foo';
      final arg_fingerprint = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Trigger.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTrigger(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['fingerprint']!.first,
          unittest.equals(arg_fingerprint),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_path,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkTrigger(response as api.Trigger);
    });
  });

  unittest.group('resource-AccountsContainersWorkspacesVariablesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.variables;
      final arg_request = buildVariable();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Variable.fromJson(json as core.Map<core.String, core.dynamic>);
        checkVariable(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildVariable());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkVariable(response as api.Variable);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.variables;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_path, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.variables;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildVariable());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_path, $fields: arg_$fields);
      checkVariable(response as api.Variable);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.variables;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildListVariablesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageToken: arg_pageToken, $fields: arg_$fields);
      checkListVariablesResponse(response as api.ListVariablesResponse);
    });

    unittest.test('method--revert', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.variables;
      final arg_path = 'foo';
      final arg_fingerprint = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['fingerprint']!.first,
          unittest.equals(arg_fingerprint),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRevertVariableResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.revert(arg_path,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkRevertVariableResponse(response as api.RevertVariableResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.workspaces.variables;
      final arg_request = buildVariable();
      final arg_path = 'foo';
      final arg_fingerprint = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Variable.fromJson(json as core.Map<core.String, core.dynamic>);
        checkVariable(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['fingerprint']!.first,
          unittest.equals(arg_fingerprint),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVariable());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_path,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkVariable(response as api.Variable);
    });
  });

  unittest.group('resource-AccountsContainersWorkspacesZonesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.workspaces.zones;
      final arg_request = buildZone();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Zone.fromJson(json as core.Map<core.String, core.dynamic>);
        checkZone(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildZone());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkZone(response as api.Zone);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.workspaces.zones;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_path, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.workspaces.zones;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildZone());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_path, $fields: arg_$fields);
      checkZone(response as api.Zone);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.workspaces.zones;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildListZonesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageToken: arg_pageToken, $fields: arg_$fields);
      checkListZonesResponse(response as api.ListZonesResponse);
    });

    unittest.test('method--revert', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.workspaces.zones;
      final arg_path = 'foo';
      final arg_fingerprint = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['fingerprint']!.first,
          unittest.equals(arg_fingerprint),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRevertZoneResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.revert(arg_path,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkRevertZoneResponse(response as api.RevertZoneResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.workspaces.zones;
      final arg_request = buildZone();
      final arg_path = 'foo';
      final arg_fingerprint = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Zone.fromJson(json as core.Map<core.String, core.dynamic>);
        checkZone(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
          queryMap['fingerprint']!.first,
          unittest.equals(arg_fingerprint),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildZone());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_path,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkZone(response as api.Zone);
    });
  });

  unittest.group('resource-AccountsUserPermissionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.userPermissions;
      final arg_request = buildUserPermission();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UserPermission.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUserPermission(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildUserPermission());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkUserPermission(response as api.UserPermission);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.userPermissions;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_path, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.userPermissions;
      final arg_path = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildUserPermission());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_path, $fields: arg_$fields);
      checkUserPermission(response as api.UserPermission);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.userPermissions;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildListUserPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageToken: arg_pageToken, $fields: arg_$fields);
      checkListUserPermissionsResponse(
          response as api.ListUserPermissionsResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.userPermissions;
      final arg_request = buildUserPermission();
      final arg_path = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UserPermission.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUserPermission(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('tagmanager/v2/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildUserPermission());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_path, $fields: arg_$fields);
      checkUserPermission(response as api.UserPermission);
    });
  });
}
