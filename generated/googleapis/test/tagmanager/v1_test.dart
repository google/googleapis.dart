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

import 'package:googleapis/tagmanager/v1.dart' as api;
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
    o.shareData = true;
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
    unittest.expect(o.shareData!, unittest.isTrue);
  }
  buildCounterAccount--;
}

core.List<core.String> buildUnnamed2506() => [
      'foo',
      'foo',
    ];

void checkUnnamed2506(core.List<core.String> o) {
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

core.int buildCounterAccountAccess = 0;
api.AccountAccess buildAccountAccess() {
  final o = api.AccountAccess();
  buildCounterAccountAccess++;
  if (buildCounterAccountAccess < 3) {
    o.permission = buildUnnamed2506();
  }
  buildCounterAccountAccess--;
  return o;
}

void checkAccountAccess(api.AccountAccess o) {
  buildCounterAccountAccess++;
  if (buildCounterAccountAccess < 3) {
    checkUnnamed2506(o.permission!);
  }
  buildCounterAccountAccess--;
}

core.List<api.Parameter> buildUnnamed2507() => [
      buildParameter(),
      buildParameter(),
    ];

void checkUnnamed2507(core.List<api.Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameter(o[0]);
  checkParameter(o[1]);
}

core.int buildCounterCondition = 0;
api.Condition buildCondition() {
  final o = api.Condition();
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    o.parameter = buildUnnamed2507();
    o.type = 'foo';
  }
  buildCounterCondition--;
  return o;
}

void checkCondition(api.Condition o) {
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    checkUnnamed2507(o.parameter!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterCondition--;
}

core.List<core.String> buildUnnamed2508() => [
      'foo',
      'foo',
    ];

void checkUnnamed2508(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2509() => [
      'foo',
      'foo',
    ];

void checkUnnamed2509(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2510() => [
      'foo',
      'foo',
    ];

void checkUnnamed2510(core.List<core.String> o) {
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
    o.domainName = buildUnnamed2508();
    o.enabledBuiltInVariable = buildUnnamed2509();
    o.fingerprint = 'foo';
    o.name = 'foo';
    o.notes = 'foo';
    o.publicId = 'foo';
    o.timeZoneCountryId = 'foo';
    o.timeZoneId = 'foo';
    o.usageContext = buildUnnamed2510();
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
    checkUnnamed2508(o.domainName!);
    checkUnnamed2509(o.enabledBuiltInVariable!);
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
      o.publicId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeZoneCountryId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeZoneId!,
      unittest.equals('foo'),
    );
    checkUnnamed2510(o.usageContext!);
  }
  buildCounterContainer--;
}

core.List<core.String> buildUnnamed2511() => [
      'foo',
      'foo',
    ];

void checkUnnamed2511(core.List<core.String> o) {
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

core.int buildCounterContainerAccess = 0;
api.ContainerAccess buildContainerAccess() {
  final o = api.ContainerAccess();
  buildCounterContainerAccess++;
  if (buildCounterContainerAccess < 3) {
    o.containerId = 'foo';
    o.permission = buildUnnamed2511();
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
    checkUnnamed2511(o.permission!);
  }
  buildCounterContainerAccess--;
}

core.List<api.Folder> buildUnnamed2512() => [
      buildFolder(),
      buildFolder(),
    ];

void checkUnnamed2512(core.List<api.Folder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFolder(o[0]);
  checkFolder(o[1]);
}

core.List<api.Macro> buildUnnamed2513() => [
      buildMacro(),
      buildMacro(),
    ];

void checkUnnamed2513(core.List<api.Macro> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMacro(o[0]);
  checkMacro(o[1]);
}

core.List<api.Rule> buildUnnamed2514() => [
      buildRule(),
      buildRule(),
    ];

void checkUnnamed2514(core.List<api.Rule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRule(o[0]);
  checkRule(o[1]);
}

core.List<api.Tag> buildUnnamed2515() => [
      buildTag(),
      buildTag(),
    ];

void checkUnnamed2515(core.List<api.Tag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTag(o[0]);
  checkTag(o[1]);
}

core.List<api.Trigger> buildUnnamed2516() => [
      buildTrigger(),
      buildTrigger(),
    ];

void checkUnnamed2516(core.List<api.Trigger> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrigger(o[0]);
  checkTrigger(o[1]);
}

core.List<api.Variable> buildUnnamed2517() => [
      buildVariable(),
      buildVariable(),
    ];

void checkUnnamed2517(core.List<api.Variable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariable(o[0]);
  checkVariable(o[1]);
}

core.int buildCounterContainerVersion = 0;
api.ContainerVersion buildContainerVersion() {
  final o = api.ContainerVersion();
  buildCounterContainerVersion++;
  if (buildCounterContainerVersion < 3) {
    o.accountId = 'foo';
    o.container = buildContainer();
    o.containerId = 'foo';
    o.containerVersionId = 'foo';
    o.deleted = true;
    o.fingerprint = 'foo';
    o.folder = buildUnnamed2512();
    o.macro = buildUnnamed2513();
    o.name = 'foo';
    o.notes = 'foo';
    o.rule = buildUnnamed2514();
    o.tag = buildUnnamed2515();
    o.trigger = buildUnnamed2516();
    o.variable = buildUnnamed2517();
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
    checkContainer(o.container!);
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
      o.fingerprint!,
      unittest.equals('foo'),
    );
    checkUnnamed2512(o.folder!);
    checkUnnamed2513(o.macro!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notes!,
      unittest.equals('foo'),
    );
    checkUnnamed2514(o.rule!);
    checkUnnamed2515(o.tag!);
    checkUnnamed2516(o.trigger!);
    checkUnnamed2517(o.variable!);
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
    o.numMacros = 'foo';
    o.numRules = 'foo';
    o.numTags = 'foo';
    o.numTriggers = 'foo';
    o.numVariables = 'foo';
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
  }
  buildCounterContainerVersionHeader--;
}

core.int buildCounterCreateContainerVersionRequestVersionOptions = 0;
api.CreateContainerVersionRequestVersionOptions
    buildCreateContainerVersionRequestVersionOptions() {
  final o = api.CreateContainerVersionRequestVersionOptions();
  buildCounterCreateContainerVersionRequestVersionOptions++;
  if (buildCounterCreateContainerVersionRequestVersionOptions < 3) {
    o.name = 'foo';
    o.notes = 'foo';
    o.quickPreview = true;
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
    unittest.expect(o.quickPreview!, unittest.isTrue);
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
  }
  buildCounterCreateContainerVersionResponse--;
  return o;
}

void checkCreateContainerVersionResponse(api.CreateContainerVersionResponse o) {
  buildCounterCreateContainerVersionResponse++;
  if (buildCounterCreateContainerVersionResponse < 3) {
    unittest.expect(o.compilerError!, unittest.isTrue);
    checkContainerVersion(o.containerVersion!);
  }
  buildCounterCreateContainerVersionResponse--;
}

core.int buildCounterEnvironment = 0;
api.Environment buildEnvironment() {
  final o = api.Environment();
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    o.accountId = 'foo';
    o.authorizationCode = 'foo';
    o.authorizationTimestampMs = 'foo';
    o.containerId = 'foo';
    o.containerVersionId = 'foo';
    o.description = 'foo';
    o.enableDebug = true;
    o.environmentId = 'foo';
    o.fingerprint = 'foo';
    o.name = 'foo';
    o.type = 'foo';
    o.url = 'foo';
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
      o.authorizationTimestampMs!,
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
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
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
  }
  buildCounterFolder--;
}

core.List<api.Tag> buildUnnamed2518() => [
      buildTag(),
      buildTag(),
    ];

void checkUnnamed2518(core.List<api.Tag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTag(o[0]);
  checkTag(o[1]);
}

core.List<api.Trigger> buildUnnamed2519() => [
      buildTrigger(),
      buildTrigger(),
    ];

void checkUnnamed2519(core.List<api.Trigger> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrigger(o[0]);
  checkTrigger(o[1]);
}

core.List<api.Variable> buildUnnamed2520() => [
      buildVariable(),
      buildVariable(),
    ];

void checkUnnamed2520(core.List<api.Variable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariable(o[0]);
  checkVariable(o[1]);
}

core.int buildCounterFolderEntities = 0;
api.FolderEntities buildFolderEntities() {
  final o = api.FolderEntities();
  buildCounterFolderEntities++;
  if (buildCounterFolderEntities < 3) {
    o.tag = buildUnnamed2518();
    o.trigger = buildUnnamed2519();
    o.variable = buildUnnamed2520();
  }
  buildCounterFolderEntities--;
  return o;
}

void checkFolderEntities(api.FolderEntities o) {
  buildCounterFolderEntities++;
  if (buildCounterFolderEntities < 3) {
    checkUnnamed2518(o.tag!);
    checkUnnamed2519(o.trigger!);
    checkUnnamed2520(o.variable!);
  }
  buildCounterFolderEntities--;
}

core.List<api.UserAccess> buildUnnamed2521() => [
      buildUserAccess(),
      buildUserAccess(),
    ];

void checkUnnamed2521(core.List<api.UserAccess> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserAccess(o[0]);
  checkUserAccess(o[1]);
}

core.int buildCounterListAccountUsersResponse = 0;
api.ListAccountUsersResponse buildListAccountUsersResponse() {
  final o = api.ListAccountUsersResponse();
  buildCounterListAccountUsersResponse++;
  if (buildCounterListAccountUsersResponse < 3) {
    o.userAccess = buildUnnamed2521();
  }
  buildCounterListAccountUsersResponse--;
  return o;
}

void checkListAccountUsersResponse(api.ListAccountUsersResponse o) {
  buildCounterListAccountUsersResponse++;
  if (buildCounterListAccountUsersResponse < 3) {
    checkUnnamed2521(o.userAccess!);
  }
  buildCounterListAccountUsersResponse--;
}

core.List<api.Account> buildUnnamed2522() => [
      buildAccount(),
      buildAccount(),
    ];

void checkUnnamed2522(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterListAccountsResponse = 0;
api.ListAccountsResponse buildListAccountsResponse() {
  final o = api.ListAccountsResponse();
  buildCounterListAccountsResponse++;
  if (buildCounterListAccountsResponse < 3) {
    o.accounts = buildUnnamed2522();
  }
  buildCounterListAccountsResponse--;
  return o;
}

void checkListAccountsResponse(api.ListAccountsResponse o) {
  buildCounterListAccountsResponse++;
  if (buildCounterListAccountsResponse < 3) {
    checkUnnamed2522(o.accounts!);
  }
  buildCounterListAccountsResponse--;
}

core.List<api.ContainerVersion> buildUnnamed2523() => [
      buildContainerVersion(),
      buildContainerVersion(),
    ];

void checkUnnamed2523(core.List<api.ContainerVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContainerVersion(o[0]);
  checkContainerVersion(o[1]);
}

core.List<api.ContainerVersionHeader> buildUnnamed2524() => [
      buildContainerVersionHeader(),
      buildContainerVersionHeader(),
    ];

void checkUnnamed2524(core.List<api.ContainerVersionHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContainerVersionHeader(o[0]);
  checkContainerVersionHeader(o[1]);
}

core.int buildCounterListContainerVersionsResponse = 0;
api.ListContainerVersionsResponse buildListContainerVersionsResponse() {
  final o = api.ListContainerVersionsResponse();
  buildCounterListContainerVersionsResponse++;
  if (buildCounterListContainerVersionsResponse < 3) {
    o.containerVersion = buildUnnamed2523();
    o.containerVersionHeader = buildUnnamed2524();
  }
  buildCounterListContainerVersionsResponse--;
  return o;
}

void checkListContainerVersionsResponse(api.ListContainerVersionsResponse o) {
  buildCounterListContainerVersionsResponse++;
  if (buildCounterListContainerVersionsResponse < 3) {
    checkUnnamed2523(o.containerVersion!);
    checkUnnamed2524(o.containerVersionHeader!);
  }
  buildCounterListContainerVersionsResponse--;
}

core.List<api.Container> buildUnnamed2525() => [
      buildContainer(),
      buildContainer(),
    ];

void checkUnnamed2525(core.List<api.Container> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContainer(o[0]);
  checkContainer(o[1]);
}

core.int buildCounterListContainersResponse = 0;
api.ListContainersResponse buildListContainersResponse() {
  final o = api.ListContainersResponse();
  buildCounterListContainersResponse++;
  if (buildCounterListContainersResponse < 3) {
    o.containers = buildUnnamed2525();
  }
  buildCounterListContainersResponse--;
  return o;
}

void checkListContainersResponse(api.ListContainersResponse o) {
  buildCounterListContainersResponse++;
  if (buildCounterListContainersResponse < 3) {
    checkUnnamed2525(o.containers!);
  }
  buildCounterListContainersResponse--;
}

core.List<api.Environment> buildUnnamed2526() => [
      buildEnvironment(),
      buildEnvironment(),
    ];

void checkUnnamed2526(core.List<api.Environment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvironment(o[0]);
  checkEnvironment(o[1]);
}

core.int buildCounterListEnvironmentsResponse = 0;
api.ListEnvironmentsResponse buildListEnvironmentsResponse() {
  final o = api.ListEnvironmentsResponse();
  buildCounterListEnvironmentsResponse++;
  if (buildCounterListEnvironmentsResponse < 3) {
    o.environments = buildUnnamed2526();
  }
  buildCounterListEnvironmentsResponse--;
  return o;
}

void checkListEnvironmentsResponse(api.ListEnvironmentsResponse o) {
  buildCounterListEnvironmentsResponse++;
  if (buildCounterListEnvironmentsResponse < 3) {
    checkUnnamed2526(o.environments!);
  }
  buildCounterListEnvironmentsResponse--;
}

core.List<api.Folder> buildUnnamed2527() => [
      buildFolder(),
      buildFolder(),
    ];

void checkUnnamed2527(core.List<api.Folder> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFolder(o[0]);
  checkFolder(o[1]);
}

core.int buildCounterListFoldersResponse = 0;
api.ListFoldersResponse buildListFoldersResponse() {
  final o = api.ListFoldersResponse();
  buildCounterListFoldersResponse++;
  if (buildCounterListFoldersResponse < 3) {
    o.folders = buildUnnamed2527();
  }
  buildCounterListFoldersResponse--;
  return o;
}

void checkListFoldersResponse(api.ListFoldersResponse o) {
  buildCounterListFoldersResponse++;
  if (buildCounterListFoldersResponse < 3) {
    checkUnnamed2527(o.folders!);
  }
  buildCounterListFoldersResponse--;
}

core.List<api.Tag> buildUnnamed2528() => [
      buildTag(),
      buildTag(),
    ];

void checkUnnamed2528(core.List<api.Tag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTag(o[0]);
  checkTag(o[1]);
}

core.int buildCounterListTagsResponse = 0;
api.ListTagsResponse buildListTagsResponse() {
  final o = api.ListTagsResponse();
  buildCounterListTagsResponse++;
  if (buildCounterListTagsResponse < 3) {
    o.tags = buildUnnamed2528();
  }
  buildCounterListTagsResponse--;
  return o;
}

void checkListTagsResponse(api.ListTagsResponse o) {
  buildCounterListTagsResponse++;
  if (buildCounterListTagsResponse < 3) {
    checkUnnamed2528(o.tags!);
  }
  buildCounterListTagsResponse--;
}

core.List<api.Trigger> buildUnnamed2529() => [
      buildTrigger(),
      buildTrigger(),
    ];

void checkUnnamed2529(core.List<api.Trigger> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrigger(o[0]);
  checkTrigger(o[1]);
}

core.int buildCounterListTriggersResponse = 0;
api.ListTriggersResponse buildListTriggersResponse() {
  final o = api.ListTriggersResponse();
  buildCounterListTriggersResponse++;
  if (buildCounterListTriggersResponse < 3) {
    o.triggers = buildUnnamed2529();
  }
  buildCounterListTriggersResponse--;
  return o;
}

void checkListTriggersResponse(api.ListTriggersResponse o) {
  buildCounterListTriggersResponse++;
  if (buildCounterListTriggersResponse < 3) {
    checkUnnamed2529(o.triggers!);
  }
  buildCounterListTriggersResponse--;
}

core.List<api.Variable> buildUnnamed2530() => [
      buildVariable(),
      buildVariable(),
    ];

void checkUnnamed2530(core.List<api.Variable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariable(o[0]);
  checkVariable(o[1]);
}

core.int buildCounterListVariablesResponse = 0;
api.ListVariablesResponse buildListVariablesResponse() {
  final o = api.ListVariablesResponse();
  buildCounterListVariablesResponse++;
  if (buildCounterListVariablesResponse < 3) {
    o.variables = buildUnnamed2530();
  }
  buildCounterListVariablesResponse--;
  return o;
}

void checkListVariablesResponse(api.ListVariablesResponse o) {
  buildCounterListVariablesResponse++;
  if (buildCounterListVariablesResponse < 3) {
    checkUnnamed2530(o.variables!);
  }
  buildCounterListVariablesResponse--;
}

core.List<core.String> buildUnnamed2531() => [
      'foo',
      'foo',
    ];

void checkUnnamed2531(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2532() => [
      'foo',
      'foo',
    ];

void checkUnnamed2532(core.List<core.String> o) {
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

core.List<api.Parameter> buildUnnamed2533() => [
      buildParameter(),
      buildParameter(),
    ];

void checkUnnamed2533(core.List<api.Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameter(o[0]);
  checkParameter(o[1]);
}

core.int buildCounterMacro = 0;
api.Macro buildMacro() {
  final o = api.Macro();
  buildCounterMacro++;
  if (buildCounterMacro < 3) {
    o.accountId = 'foo';
    o.containerId = 'foo';
    o.disablingRuleId = buildUnnamed2531();
    o.enablingRuleId = buildUnnamed2532();
    o.fingerprint = 'foo';
    o.macroId = 'foo';
    o.name = 'foo';
    o.notes = 'foo';
    o.parameter = buildUnnamed2533();
    o.parentFolderId = 'foo';
    o.scheduleEndMs = 'foo';
    o.scheduleStartMs = 'foo';
    o.type = 'foo';
  }
  buildCounterMacro--;
  return o;
}

void checkMacro(api.Macro o) {
  buildCounterMacro++;
  if (buildCounterMacro < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.containerId!,
      unittest.equals('foo'),
    );
    checkUnnamed2531(o.disablingRuleId!);
    checkUnnamed2532(o.enablingRuleId!);
    unittest.expect(
      o.fingerprint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.macroId!,
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
    checkUnnamed2533(o.parameter!);
    unittest.expect(
      o.parentFolderId!,
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
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterMacro--;
}

core.List<api.Parameter> buildUnnamed2534() => [
      buildParameter(),
      buildParameter(),
    ];

void checkUnnamed2534(core.List<api.Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameter(o[0]);
  checkParameter(o[1]);
}

core.List<api.Parameter> buildUnnamed2535() => [
      buildParameter(),
      buildParameter(),
    ];

void checkUnnamed2535(core.List<api.Parameter> o) {
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
    o.list = buildUnnamed2534();
    o.map = buildUnnamed2535();
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
    checkUnnamed2534(o.list!);
    checkUnnamed2535(o.map!);
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

core.List<api.Condition> buildUnnamed2536() => [
      buildCondition(),
      buildCondition(),
    ];

void checkUnnamed2536(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0]);
  checkCondition(o[1]);
}

core.int buildCounterRule = 0;
api.Rule buildRule() {
  final o = api.Rule();
  buildCounterRule++;
  if (buildCounterRule < 3) {
    o.accountId = 'foo';
    o.condition = buildUnnamed2536();
    o.containerId = 'foo';
    o.fingerprint = 'foo';
    o.name = 'foo';
    o.notes = 'foo';
    o.ruleId = 'foo';
  }
  buildCounterRule--;
  return o;
}

void checkRule(api.Rule o) {
  buildCounterRule++;
  if (buildCounterRule < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkUnnamed2536(o.condition!);
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
      o.ruleId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRule--;
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

core.List<core.String> buildUnnamed2537() => [
      'foo',
      'foo',
    ];

void checkUnnamed2537(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2538() => [
      'foo',
      'foo',
    ];

void checkUnnamed2538(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2539() => [
      'foo',
      'foo',
    ];

void checkUnnamed2539(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2540() => [
      'foo',
      'foo',
    ];

void checkUnnamed2540(core.List<core.String> o) {
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

core.List<api.Parameter> buildUnnamed2541() => [
      buildParameter(),
      buildParameter(),
    ];

void checkUnnamed2541(core.List<api.Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameter(o[0]);
  checkParameter(o[1]);
}

core.List<api.SetupTag> buildUnnamed2542() => [
      buildSetupTag(),
      buildSetupTag(),
    ];

void checkUnnamed2542(core.List<api.SetupTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSetupTag(o[0]);
  checkSetupTag(o[1]);
}

core.List<api.TeardownTag> buildUnnamed2543() => [
      buildTeardownTag(),
      buildTeardownTag(),
    ];

void checkUnnamed2543(core.List<api.TeardownTag> o) {
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
    o.blockingRuleId = buildUnnamed2537();
    o.blockingTriggerId = buildUnnamed2538();
    o.containerId = 'foo';
    o.fingerprint = 'foo';
    o.firingRuleId = buildUnnamed2539();
    o.firingTriggerId = buildUnnamed2540();
    o.liveOnly = true;
    o.name = 'foo';
    o.notes = 'foo';
    o.parameter = buildUnnamed2541();
    o.parentFolderId = 'foo';
    o.paused = true;
    o.priority = buildParameter();
    o.scheduleEndMs = 'foo';
    o.scheduleStartMs = 'foo';
    o.setupTag = buildUnnamed2542();
    o.tagFiringOption = 'foo';
    o.tagId = 'foo';
    o.teardownTag = buildUnnamed2543();
    o.type = 'foo';
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
    checkUnnamed2537(o.blockingRuleId!);
    checkUnnamed2538(o.blockingTriggerId!);
    unittest.expect(
      o.containerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fingerprint!,
      unittest.equals('foo'),
    );
    checkUnnamed2539(o.firingRuleId!);
    checkUnnamed2540(o.firingTriggerId!);
    unittest.expect(o.liveOnly!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notes!,
      unittest.equals('foo'),
    );
    checkUnnamed2541(o.parameter!);
    unittest.expect(
      o.parentFolderId!,
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
    checkUnnamed2542(o.setupTag!);
    unittest.expect(
      o.tagFiringOption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tagId!,
      unittest.equals('foo'),
    );
    checkUnnamed2543(o.teardownTag!);
    unittest.expect(
      o.type!,
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

core.List<api.Condition> buildUnnamed2544() => [
      buildCondition(),
      buildCondition(),
    ];

void checkUnnamed2544(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0]);
  checkCondition(o[1]);
}

core.List<api.Condition> buildUnnamed2545() => [
      buildCondition(),
      buildCondition(),
    ];

void checkUnnamed2545(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0]);
  checkCondition(o[1]);
}

core.List<api.Condition> buildUnnamed2546() => [
      buildCondition(),
      buildCondition(),
    ];

void checkUnnamed2546(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0]);
  checkCondition(o[1]);
}

core.List<api.Parameter> buildUnnamed2547() => [
      buildParameter(),
      buildParameter(),
    ];

void checkUnnamed2547(core.List<api.Parameter> o) {
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
    o.autoEventFilter = buildUnnamed2544();
    o.checkValidation = buildParameter();
    o.containerId = 'foo';
    o.continuousTimeMinMilliseconds = buildParameter();
    o.customEventFilter = buildUnnamed2545();
    o.eventName = buildParameter();
    o.filter = buildUnnamed2546();
    o.fingerprint = 'foo';
    o.horizontalScrollPercentageList = buildParameter();
    o.interval = buildParameter();
    o.intervalSeconds = buildParameter();
    o.limit = buildParameter();
    o.maxTimerLengthSeconds = buildParameter();
    o.name = 'foo';
    o.parameter = buildUnnamed2547();
    o.parentFolderId = 'foo';
    o.selector = buildParameter();
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
    checkUnnamed2544(o.autoEventFilter!);
    checkParameter(o.checkValidation!);
    unittest.expect(
      o.containerId!,
      unittest.equals('foo'),
    );
    checkParameter(o.continuousTimeMinMilliseconds!);
    checkUnnamed2545(o.customEventFilter!);
    checkParameter(o.eventName!);
    checkUnnamed2546(o.filter!);
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
    checkUnnamed2547(o.parameter!);
    unittest.expect(
      o.parentFolderId!,
      unittest.equals('foo'),
    );
    checkParameter(o.selector!);
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
  }
  buildCounterTrigger--;
}

core.List<api.ContainerAccess> buildUnnamed2548() => [
      buildContainerAccess(),
      buildContainerAccess(),
    ];

void checkUnnamed2548(core.List<api.ContainerAccess> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContainerAccess(o[0]);
  checkContainerAccess(o[1]);
}

core.int buildCounterUserAccess = 0;
api.UserAccess buildUserAccess() {
  final o = api.UserAccess();
  buildCounterUserAccess++;
  if (buildCounterUserAccess < 3) {
    o.accountAccess = buildAccountAccess();
    o.accountId = 'foo';
    o.containerAccess = buildUnnamed2548();
    o.emailAddress = 'foo';
    o.permissionId = 'foo';
  }
  buildCounterUserAccess--;
  return o;
}

void checkUserAccess(api.UserAccess o) {
  buildCounterUserAccess++;
  if (buildCounterUserAccess < 3) {
    checkAccountAccess(o.accountAccess!);
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkUnnamed2548(o.containerAccess!);
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.permissionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserAccess--;
}

core.List<core.String> buildUnnamed2549() => [
      'foo',
      'foo',
    ];

void checkUnnamed2549(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2550() => [
      'foo',
      'foo',
    ];

void checkUnnamed2550(core.List<core.String> o) {
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

core.List<api.Parameter> buildUnnamed2551() => [
      buildParameter(),
      buildParameter(),
    ];

void checkUnnamed2551(core.List<api.Parameter> o) {
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
    o.disablingTriggerId = buildUnnamed2549();
    o.enablingTriggerId = buildUnnamed2550();
    o.fingerprint = 'foo';
    o.name = 'foo';
    o.notes = 'foo';
    o.parameter = buildUnnamed2551();
    o.parentFolderId = 'foo';
    o.scheduleEndMs = 'foo';
    o.scheduleStartMs = 'foo';
    o.type = 'foo';
    o.variableId = 'foo';
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
    checkUnnamed2549(o.disablingTriggerId!);
    checkUnnamed2550(o.enablingTriggerId!);
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
    checkUnnamed2551(o.parameter!);
    unittest.expect(
      o.parentFolderId!,
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
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.variableId!,
      unittest.equals('foo'),
    );
  }
  buildCounterVariable--;
}

core.List<core.String> buildUnnamed2552() => [
      'foo',
      'foo',
    ];

void checkUnnamed2552(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2553() => [
      'foo',
      'foo',
    ];

void checkUnnamed2553(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2554() => [
      'foo',
      'foo',
    ];

void checkUnnamed2554(core.List<core.String> o) {
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

  unittest.group('obj-schema-ListAccountUsersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAccountUsersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAccountUsersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAccountUsersResponse(od);
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

  unittest.group('obj-schema-ListTriggersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTriggersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTriggersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTriggersResponse(od);
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

  unittest.group('obj-schema-Macro', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMacro();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Macro.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMacro(od);
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

  unittest.group('obj-schema-Rule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Rule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRule(od);
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

  unittest.group('obj-schema-UserAccess', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserAccess();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.UserAccess.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUserAccess(od);
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

  unittest.group('resource-AccountsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts;
      final arg_accountId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );

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
      final response = await res.get(arg_accountId, $fields: arg_$fields);
      checkAccount(response as api.Account);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts;
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
          unittest.equals('tagmanager/v1/accounts'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListAccountsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list($fields: arg_$fields);
      checkListAccountsResponse(response as api.ListAccountsResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts;
      final arg_request = buildAccount();
      final arg_accountId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );

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
      final response = await res.update(arg_request, arg_accountId,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkAccount(response as api.Account);
    });
  });

  unittest.group('resource-AccountsContainersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers;
      final arg_request = buildContainer();
      final arg_accountId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/containers'),
        );
        pathOffset += 11;

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
          await res.create(arg_request, arg_accountId, $fields: arg_$fields);
      checkContainer(response as api.Container);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );

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
      await res.delete(arg_accountId, arg_containerId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );

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
          await res.get(arg_accountId, arg_containerId, $fields: arg_$fields);
      checkContainer(response as api.Container);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers;
      final arg_accountId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/containers'),
        );
        pathOffset += 11;

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
        final resp = convert.json.encode(buildListContainersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId, $fields: arg_$fields);
      checkListContainersResponse(response as api.ListContainersResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers;
      final arg_request = buildContainer();
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );

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
      final response = await res.update(
          arg_request, arg_accountId, arg_containerId,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkContainer(response as api.Container);
    });
  });

  unittest.group('resource-AccountsContainersEnvironmentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.environments;
      final arg_request = buildEnvironment();
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/environments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/environments'),
        );
        pathOffset += 13;

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
      final response = await res.create(
          arg_request, arg_accountId, arg_containerId,
          $fields: arg_$fields);
      checkEnvironment(response as api.Environment);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.environments;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
      final arg_environmentId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/environments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/environments/'),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_environmentId'),
        );

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
      await res.delete(arg_accountId, arg_containerId, arg_environmentId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.environments;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
      final arg_environmentId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/environments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/environments/'),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_environmentId'),
        );

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
      final response = await res.get(
          arg_accountId, arg_containerId, arg_environmentId,
          $fields: arg_$fields);
      checkEnvironment(response as api.Environment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.environments;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/environments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/environments'),
        );
        pathOffset += 13;

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
        final resp = convert.json.encode(buildListEnvironmentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_accountId, arg_containerId, $fields: arg_$fields);
      checkListEnvironmentsResponse(response as api.ListEnvironmentsResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.environments;
      final arg_request = buildEnvironment();
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
      final arg_environmentId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/environments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/environments/'),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_environmentId'),
        );

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
      final response = await res.update(
          arg_request, arg_accountId, arg_containerId, arg_environmentId,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkEnvironment(response as api.Environment);
    });
  });

  unittest.group('resource-AccountsContainersFoldersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.folders;
      final arg_request = buildFolder();
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/folders', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/folders'),
        );
        pathOffset += 8;

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
      final response = await res.create(
          arg_request, arg_accountId, arg_containerId,
          $fields: arg_$fields);
      checkFolder(response as api.Folder);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.folders;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
      final arg_folderId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/folders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/folders/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_folderId'),
        );

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
      await res.delete(arg_accountId, arg_containerId, arg_folderId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.folders;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
      final arg_folderId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/folders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/folders/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_folderId'),
        );

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
      final response = await res.get(
          arg_accountId, arg_containerId, arg_folderId,
          $fields: arg_$fields);
      checkFolder(response as api.Folder);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.folders;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/folders', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/folders'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildListFoldersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_accountId, arg_containerId, $fields: arg_$fields);
      checkListFoldersResponse(response as api.ListFoldersResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.folders;
      final arg_request = buildFolder();
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
      final arg_folderId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/folders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/folders/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_folderId'),
        );

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
      final response = await res.update(
          arg_request, arg_accountId, arg_containerId, arg_folderId,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkFolder(response as api.Folder);
    });
  });

  unittest.group('resource-AccountsContainersFoldersEntitiesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.folders.entities;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
      final arg_folderId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/folders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/folders/'),
        );
        pathOffset += 9;
        index = path.indexOf('/entities', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_folderId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/entities'),
        );
        pathOffset += 9;

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
        final resp = convert.json.encode(buildFolderEntities());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_accountId, arg_containerId, arg_folderId,
          $fields: arg_$fields);
      checkFolderEntities(response as api.FolderEntities);
    });
  });

  unittest.group('resource-AccountsContainersMoveFoldersResource', () {
    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.moveFolders;
      final arg_request = buildFolder();
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
      final arg_folderId = 'foo';
      final arg_tagId = buildUnnamed2552();
      final arg_triggerId = buildUnnamed2553();
      final arg_variableId = buildUnnamed2554();
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/move_folders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/move_folders/'),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_folderId'),
        );

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
      await res.update(
          arg_request, arg_accountId, arg_containerId, arg_folderId,
          tagId: arg_tagId,
          triggerId: arg_triggerId,
          variableId: arg_variableId,
          $fields: arg_$fields);
    });
  });

  unittest.group('resource-AccountsContainersReauthorizeEnvironmentsResource',
      () {
    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res =
          api.TagManagerApi(mock).accounts.containers.reauthorizeEnvironments;
      final arg_request = buildEnvironment();
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
      final arg_environmentId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/reauthorize_environments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('/reauthorize_environments/'),
        );
        pathOffset += 26;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_environmentId'),
        );

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
      final response = await res.update(
          arg_request, arg_accountId, arg_containerId, arg_environmentId,
          $fields: arg_$fields);
      checkEnvironment(response as api.Environment);
    });
  });

  unittest.group('resource-AccountsContainersTagsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.tags;
      final arg_request = buildTag();
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/tags', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/tags'),
        );
        pathOffset += 5;

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
      final response = await res.create(
          arg_request, arg_accountId, arg_containerId,
          $fields: arg_$fields);
      checkTag(response as api.Tag);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.tags;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
      final arg_tagId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/tags/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/tags/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_tagId'),
        );

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
      await res.delete(arg_accountId, arg_containerId, arg_tagId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.tags;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
      final arg_tagId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/tags/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/tags/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_tagId'),
        );

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
      final response = await res.get(arg_accountId, arg_containerId, arg_tagId,
          $fields: arg_$fields);
      checkTag(response as api.Tag);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.tags;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/tags', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/tags'),
        );
        pathOffset += 5;

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
        final resp = convert.json.encode(buildListTagsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_accountId, arg_containerId, $fields: arg_$fields);
      checkListTagsResponse(response as api.ListTagsResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.tags;
      final arg_request = buildTag();
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
      final arg_tagId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/tags/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/tags/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_tagId'),
        );

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
      final response = await res.update(
          arg_request, arg_accountId, arg_containerId, arg_tagId,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkTag(response as api.Tag);
    });
  });

  unittest.group('resource-AccountsContainersTriggersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.triggers;
      final arg_request = buildTrigger();
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/triggers', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/triggers'),
        );
        pathOffset += 9;

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
      final response = await res.create(
          arg_request, arg_accountId, arg_containerId,
          $fields: arg_$fields);
      checkTrigger(response as api.Trigger);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.triggers;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
      final arg_triggerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/triggers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/triggers/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_triggerId'),
        );

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
      await res.delete(arg_accountId, arg_containerId, arg_triggerId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.triggers;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
      final arg_triggerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/triggers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/triggers/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_triggerId'),
        );

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
      final response = await res.get(
          arg_accountId, arg_containerId, arg_triggerId,
          $fields: arg_$fields);
      checkTrigger(response as api.Trigger);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.triggers;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/triggers', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/triggers'),
        );
        pathOffset += 9;

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
        final resp = convert.json.encode(buildListTriggersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_accountId, arg_containerId, $fields: arg_$fields);
      checkListTriggersResponse(response as api.ListTriggersResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.triggers;
      final arg_request = buildTrigger();
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
      final arg_triggerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/triggers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/triggers/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_triggerId'),
        );

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
      final response = await res.update(
          arg_request, arg_accountId, arg_containerId, arg_triggerId,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkTrigger(response as api.Trigger);
    });
  });

  unittest.group('resource-AccountsContainersVariablesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.variables;
      final arg_request = buildVariable();
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/variables', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/variables'),
        );
        pathOffset += 10;

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
      final response = await res.create(
          arg_request, arg_accountId, arg_containerId,
          $fields: arg_$fields);
      checkVariable(response as api.Variable);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.variables;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
      final arg_variableId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/variables/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/variables/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_variableId'),
        );

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
      await res.delete(arg_accountId, arg_containerId, arg_variableId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.variables;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
      final arg_variableId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/variables/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/variables/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_variableId'),
        );

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
      final response = await res.get(
          arg_accountId, arg_containerId, arg_variableId,
          $fields: arg_$fields);
      checkVariable(response as api.Variable);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.variables;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/variables', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/variables'),
        );
        pathOffset += 10;

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
        final resp = convert.json.encode(buildListVariablesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_accountId, arg_containerId, $fields: arg_$fields);
      checkListVariablesResponse(response as api.ListVariablesResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.variables;
      final arg_request = buildVariable();
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
      final arg_variableId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/variables/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/variables/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_variableId'),
        );

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
      final response = await res.update(
          arg_request, arg_accountId, arg_containerId, arg_variableId,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkVariable(response as api.Variable);
    });
  });

  unittest.group('resource-AccountsContainersVersionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.versions;
      final arg_request = buildCreateContainerVersionRequestVersionOptions();
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/versions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/versions'),
        );
        pathOffset += 9;

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
      final response = await res.create(
          arg_request, arg_accountId, arg_containerId,
          $fields: arg_$fields);
      checkCreateContainerVersionResponse(
          response as api.CreateContainerVersionResponse);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.versions;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/versions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/versions/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerVersionId'),
        );

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
      await res.delete(arg_accountId, arg_containerId, arg_containerVersionId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.versions;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/versions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/versions/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerVersionId'),
        );

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
      final response = await res.get(
          arg_accountId, arg_containerId, arg_containerVersionId,
          $fields: arg_$fields);
      checkContainerVersion(response as api.ContainerVersion);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.versions;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
      final arg_headers = true;
      final arg_includeDeleted = true;
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/versions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/versions'),
        );
        pathOffset += 9;

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
          queryMap['headers']!.first,
          unittest.equals('$arg_headers'),
        );
        unittest.expect(
          queryMap['includeDeleted']!.first,
          unittest.equals('$arg_includeDeleted'),
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
      final response = await res.list(arg_accountId, arg_containerId,
          headers: arg_headers,
          includeDeleted: arg_includeDeleted,
          $fields: arg_$fields);
      checkListContainerVersionsResponse(
          response as api.ListContainerVersionsResponse);
    });

    unittest.test('method--publish', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.versions;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
      final arg_containerVersionId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/versions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/versions/'),
        );
        pathOffset += 10;
        index = path.indexOf('/publish', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerVersionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/publish'),
        );
        pathOffset += 8;

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
      final response = await res.publish(
          arg_accountId, arg_containerId, arg_containerVersionId,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkPublishContainerVersionResponse(
          response as api.PublishContainerVersionResponse);
    });

    unittest.test('method--restore', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.versions;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/versions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/versions/'),
        );
        pathOffset += 10;
        index = path.indexOf('/restore', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerVersionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/restore'),
        );
        pathOffset += 8;

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
      final response = await res.restore(
          arg_accountId, arg_containerId, arg_containerVersionId,
          $fields: arg_$fields);
      checkContainerVersion(response as api.ContainerVersion);
    });

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.versions;
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/versions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/versions/'),
        );
        pathOffset += 10;
        index = path.indexOf('/undelete', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerVersionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/undelete'),
        );
        pathOffset += 9;

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
      final response = await res.undelete(
          arg_accountId, arg_containerId, arg_containerVersionId,
          $fields: arg_$fields);
      checkContainerVersion(response as api.ContainerVersion);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.containers.versions;
      final arg_request = buildContainerVersion();
      final arg_accountId = 'foo';
      final arg_containerId = 'foo';
      final arg_containerVersionId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/containers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/containers/'),
        );
        pathOffset += 12;
        index = path.indexOf('/versions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/versions/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_containerVersionId'),
        );

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
      final response = await res.update(
          arg_request, arg_accountId, arg_containerId, arg_containerVersionId,
          fingerprint: arg_fingerprint, $fields: arg_$fields);
      checkContainerVersion(response as api.ContainerVersion);
    });
  });

  unittest.group('resource-AccountsPermissionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.permissions;
      final arg_request = buildUserAccess();
      final arg_accountId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UserAccess.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUserAccess(obj);

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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/permissions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/permissions'),
        );
        pathOffset += 12;

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
        final resp = convert.json.encode(buildUserAccess());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_accountId, $fields: arg_$fields);
      checkUserAccess(response as api.UserAccess);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.permissions;
      final arg_accountId = 'foo';
      final arg_permissionId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/permissions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/permissions/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_permissionId'),
        );

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
      await res.delete(arg_accountId, arg_permissionId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.permissions;
      final arg_accountId = 'foo';
      final arg_permissionId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/permissions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/permissions/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_permissionId'),
        );

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
        final resp = convert.json.encode(buildUserAccess());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_accountId, arg_permissionId, $fields: arg_$fields);
      checkUserAccess(response as api.UserAccess);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.permissions;
      final arg_accountId = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/permissions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/permissions'),
        );
        pathOffset += 12;

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
        final resp = convert.json.encode(buildListAccountUsersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_accountId, $fields: arg_$fields);
      checkListAccountUsersResponse(response as api.ListAccountUsersResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.TagManagerApi(mock).accounts.permissions;
      final arg_request = buildUserAccess();
      final arg_accountId = 'foo';
      final arg_permissionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UserAccess.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUserAccess(obj);

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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('tagmanager/v1/accounts/'),
        );
        pathOffset += 23;
        index = path.indexOf('/permissions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_accountId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/permissions/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_permissionId'),
        );

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
        final resp = convert.json.encode(buildUserAccess());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_accountId, arg_permissionId,
          $fields: arg_$fields);
      checkUserAccess(response as api.UserAccess);
    });
  });
}
