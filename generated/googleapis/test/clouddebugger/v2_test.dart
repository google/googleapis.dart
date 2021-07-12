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

import 'package:googleapis/clouddebugger/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAliasContext = 0;
api.AliasContext buildAliasContext() {
  final o = api.AliasContext();
  buildCounterAliasContext++;
  if (buildCounterAliasContext < 3) {
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterAliasContext--;
  return o;
}

void checkAliasContext(api.AliasContext o) {
  buildCounterAliasContext++;
  if (buildCounterAliasContext < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterAliasContext--;
}

core.List<api.Variable> buildUnnamed5248() => [
      buildVariable(),
      buildVariable(),
    ];

void checkUnnamed5248(core.List<api.Variable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariable(o[0]);
  checkVariable(o[1]);
}

core.List<core.String> buildUnnamed5249() => [
      'foo',
      'foo',
    ];

void checkUnnamed5249(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed5250() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed5250(core.Map<core.String, core.String> o) {
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

core.List<api.StackFrame> buildUnnamed5251() => [
      buildStackFrame(),
      buildStackFrame(),
    ];

void checkUnnamed5251(core.List<api.StackFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStackFrame(o[0]);
  checkStackFrame(o[1]);
}

core.List<api.Variable> buildUnnamed5252() => [
      buildVariable(),
      buildVariable(),
    ];

void checkUnnamed5252(core.List<api.Variable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariable(o[0]);
  checkVariable(o[1]);
}

core.int buildCounterBreakpoint = 0;
api.Breakpoint buildBreakpoint() {
  final o = api.Breakpoint();
  buildCounterBreakpoint++;
  if (buildCounterBreakpoint < 3) {
    o.action = 'foo';
    o.canaryExpireTime = 'foo';
    o.condition = 'foo';
    o.createTime = 'foo';
    o.evaluatedExpressions = buildUnnamed5248();
    o.expressions = buildUnnamed5249();
    o.finalTime = 'foo';
    o.id = 'foo';
    o.isFinalState = true;
    o.labels = buildUnnamed5250();
    o.location = buildSourceLocation();
    o.logLevel = 'foo';
    o.logMessageFormat = 'foo';
    o.stackFrames = buildUnnamed5251();
    o.state = 'foo';
    o.status = buildStatusMessage();
    o.userEmail = 'foo';
    o.variableTable = buildUnnamed5252();
  }
  buildCounterBreakpoint--;
  return o;
}

void checkBreakpoint(api.Breakpoint o) {
  buildCounterBreakpoint++;
  if (buildCounterBreakpoint < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.canaryExpireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.condition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed5248(o.evaluatedExpressions!);
    checkUnnamed5249(o.expressions!);
    unittest.expect(
      o.finalTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isFinalState!, unittest.isTrue);
    checkUnnamed5250(o.labels!);
    checkSourceLocation(o.location!);
    unittest.expect(
      o.logLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.logMessageFormat!,
      unittest.equals('foo'),
    );
    checkUnnamed5251(o.stackFrames!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkStatusMessage(o.status!);
    unittest.expect(
      o.userEmail!,
      unittest.equals('foo'),
    );
    checkUnnamed5252(o.variableTable!);
  }
  buildCounterBreakpoint--;
}

core.int buildCounterCloudRepoSourceContext = 0;
api.CloudRepoSourceContext buildCloudRepoSourceContext() {
  final o = api.CloudRepoSourceContext();
  buildCounterCloudRepoSourceContext++;
  if (buildCounterCloudRepoSourceContext < 3) {
    o.aliasContext = buildAliasContext();
    o.aliasName = 'foo';
    o.repoId = buildRepoId();
    o.revisionId = 'foo';
  }
  buildCounterCloudRepoSourceContext--;
  return o;
}

void checkCloudRepoSourceContext(api.CloudRepoSourceContext o) {
  buildCounterCloudRepoSourceContext++;
  if (buildCounterCloudRepoSourceContext < 3) {
    checkAliasContext(o.aliasContext!);
    unittest.expect(
      o.aliasName!,
      unittest.equals('foo'),
    );
    checkRepoId(o.repoId!);
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudRepoSourceContext--;
}

core.int buildCounterCloudWorkspaceId = 0;
api.CloudWorkspaceId buildCloudWorkspaceId() {
  final o = api.CloudWorkspaceId();
  buildCounterCloudWorkspaceId++;
  if (buildCounterCloudWorkspaceId < 3) {
    o.name = 'foo';
    o.repoId = buildRepoId();
  }
  buildCounterCloudWorkspaceId--;
  return o;
}

void checkCloudWorkspaceId(api.CloudWorkspaceId o) {
  buildCounterCloudWorkspaceId++;
  if (buildCounterCloudWorkspaceId < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkRepoId(o.repoId!);
  }
  buildCounterCloudWorkspaceId--;
}

core.int buildCounterCloudWorkspaceSourceContext = 0;
api.CloudWorkspaceSourceContext buildCloudWorkspaceSourceContext() {
  final o = api.CloudWorkspaceSourceContext();
  buildCounterCloudWorkspaceSourceContext++;
  if (buildCounterCloudWorkspaceSourceContext < 3) {
    o.snapshotId = 'foo';
    o.workspaceId = buildCloudWorkspaceId();
  }
  buildCounterCloudWorkspaceSourceContext--;
  return o;
}

void checkCloudWorkspaceSourceContext(api.CloudWorkspaceSourceContext o) {
  buildCounterCloudWorkspaceSourceContext++;
  if (buildCounterCloudWorkspaceSourceContext < 3) {
    unittest.expect(
      o.snapshotId!,
      unittest.equals('foo'),
    );
    checkCloudWorkspaceId(o.workspaceId!);
  }
  buildCounterCloudWorkspaceSourceContext--;
}

core.List<api.ExtendedSourceContext> buildUnnamed5253() => [
      buildExtendedSourceContext(),
      buildExtendedSourceContext(),
    ];

void checkUnnamed5253(core.List<api.ExtendedSourceContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtendedSourceContext(o[0]);
  checkExtendedSourceContext(o[1]);
}

core.Map<core.String, core.String> buildUnnamed5254() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed5254(core.Map<core.String, core.String> o) {
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

core.List<api.SourceContext> buildUnnamed5255() => [
      buildSourceContext(),
      buildSourceContext(),
    ];

void checkUnnamed5255(core.List<api.SourceContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceContext(o[0]);
  checkSourceContext(o[1]);
}

core.int buildCounterDebuggee = 0;
api.Debuggee buildDebuggee() {
  final o = api.Debuggee();
  buildCounterDebuggee++;
  if (buildCounterDebuggee < 3) {
    o.agentVersion = 'foo';
    o.canaryMode = 'foo';
    o.description = 'foo';
    o.extSourceContexts = buildUnnamed5253();
    o.id = 'foo';
    o.isDisabled = true;
    o.isInactive = true;
    o.labels = buildUnnamed5254();
    o.project = 'foo';
    o.sourceContexts = buildUnnamed5255();
    o.status = buildStatusMessage();
    o.uniquifier = 'foo';
  }
  buildCounterDebuggee--;
  return o;
}

void checkDebuggee(api.Debuggee o) {
  buildCounterDebuggee++;
  if (buildCounterDebuggee < 3) {
    unittest.expect(
      o.agentVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.canaryMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed5253(o.extSourceContexts!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isDisabled!, unittest.isTrue);
    unittest.expect(o.isInactive!, unittest.isTrue);
    checkUnnamed5254(o.labels!);
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
    checkUnnamed5255(o.sourceContexts!);
    checkStatusMessage(o.status!);
    unittest.expect(
      o.uniquifier!,
      unittest.equals('foo'),
    );
  }
  buildCounterDebuggee--;
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

core.Map<core.String, core.String> buildUnnamed5256() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed5256(core.Map<core.String, core.String> o) {
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

core.int buildCounterExtendedSourceContext = 0;
api.ExtendedSourceContext buildExtendedSourceContext() {
  final o = api.ExtendedSourceContext();
  buildCounterExtendedSourceContext++;
  if (buildCounterExtendedSourceContext < 3) {
    o.context = buildSourceContext();
    o.labels = buildUnnamed5256();
  }
  buildCounterExtendedSourceContext--;
  return o;
}

void checkExtendedSourceContext(api.ExtendedSourceContext o) {
  buildCounterExtendedSourceContext++;
  if (buildCounterExtendedSourceContext < 3) {
    checkSourceContext(o.context!);
    checkUnnamed5256(o.labels!);
  }
  buildCounterExtendedSourceContext--;
}

core.List<core.String> buildUnnamed5257() => [
      'foo',
      'foo',
    ];

void checkUnnamed5257(core.List<core.String> o) {
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

core.int buildCounterFormatMessage = 0;
api.FormatMessage buildFormatMessage() {
  final o = api.FormatMessage();
  buildCounterFormatMessage++;
  if (buildCounterFormatMessage < 3) {
    o.format = 'foo';
    o.parameters = buildUnnamed5257();
  }
  buildCounterFormatMessage--;
  return o;
}

void checkFormatMessage(api.FormatMessage o) {
  buildCounterFormatMessage++;
  if (buildCounterFormatMessage < 3) {
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    checkUnnamed5257(o.parameters!);
  }
  buildCounterFormatMessage--;
}

core.int buildCounterGerritSourceContext = 0;
api.GerritSourceContext buildGerritSourceContext() {
  final o = api.GerritSourceContext();
  buildCounterGerritSourceContext++;
  if (buildCounterGerritSourceContext < 3) {
    o.aliasContext = buildAliasContext();
    o.aliasName = 'foo';
    o.gerritProject = 'foo';
    o.hostUri = 'foo';
    o.revisionId = 'foo';
  }
  buildCounterGerritSourceContext--;
  return o;
}

void checkGerritSourceContext(api.GerritSourceContext o) {
  buildCounterGerritSourceContext++;
  if (buildCounterGerritSourceContext < 3) {
    checkAliasContext(o.aliasContext!);
    unittest.expect(
      o.aliasName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gerritProject!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hostUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGerritSourceContext--;
}

core.int buildCounterGetBreakpointResponse = 0;
api.GetBreakpointResponse buildGetBreakpointResponse() {
  final o = api.GetBreakpointResponse();
  buildCounterGetBreakpointResponse++;
  if (buildCounterGetBreakpointResponse < 3) {
    o.breakpoint = buildBreakpoint();
  }
  buildCounterGetBreakpointResponse--;
  return o;
}

void checkGetBreakpointResponse(api.GetBreakpointResponse o) {
  buildCounterGetBreakpointResponse++;
  if (buildCounterGetBreakpointResponse < 3) {
    checkBreakpoint(o.breakpoint!);
  }
  buildCounterGetBreakpointResponse--;
}

core.int buildCounterGitSourceContext = 0;
api.GitSourceContext buildGitSourceContext() {
  final o = api.GitSourceContext();
  buildCounterGitSourceContext++;
  if (buildCounterGitSourceContext < 3) {
    o.revisionId = 'foo';
    o.url = 'foo';
  }
  buildCounterGitSourceContext--;
  return o;
}

void checkGitSourceContext(api.GitSourceContext o) {
  buildCounterGitSourceContext++;
  if (buildCounterGitSourceContext < 3) {
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterGitSourceContext--;
}

core.List<api.Breakpoint> buildUnnamed5258() => [
      buildBreakpoint(),
      buildBreakpoint(),
    ];

void checkUnnamed5258(core.List<api.Breakpoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBreakpoint(o[0]);
  checkBreakpoint(o[1]);
}

core.int buildCounterListActiveBreakpointsResponse = 0;
api.ListActiveBreakpointsResponse buildListActiveBreakpointsResponse() {
  final o = api.ListActiveBreakpointsResponse();
  buildCounterListActiveBreakpointsResponse++;
  if (buildCounterListActiveBreakpointsResponse < 3) {
    o.breakpoints = buildUnnamed5258();
    o.nextWaitToken = 'foo';
    o.waitExpired = true;
  }
  buildCounterListActiveBreakpointsResponse--;
  return o;
}

void checkListActiveBreakpointsResponse(api.ListActiveBreakpointsResponse o) {
  buildCounterListActiveBreakpointsResponse++;
  if (buildCounterListActiveBreakpointsResponse < 3) {
    checkUnnamed5258(o.breakpoints!);
    unittest.expect(
      o.nextWaitToken!,
      unittest.equals('foo'),
    );
    unittest.expect(o.waitExpired!, unittest.isTrue);
  }
  buildCounterListActiveBreakpointsResponse--;
}

core.List<api.Breakpoint> buildUnnamed5259() => [
      buildBreakpoint(),
      buildBreakpoint(),
    ];

void checkUnnamed5259(core.List<api.Breakpoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBreakpoint(o[0]);
  checkBreakpoint(o[1]);
}

core.int buildCounterListBreakpointsResponse = 0;
api.ListBreakpointsResponse buildListBreakpointsResponse() {
  final o = api.ListBreakpointsResponse();
  buildCounterListBreakpointsResponse++;
  if (buildCounterListBreakpointsResponse < 3) {
    o.breakpoints = buildUnnamed5259();
    o.nextWaitToken = 'foo';
  }
  buildCounterListBreakpointsResponse--;
  return o;
}

void checkListBreakpointsResponse(api.ListBreakpointsResponse o) {
  buildCounterListBreakpointsResponse++;
  if (buildCounterListBreakpointsResponse < 3) {
    checkUnnamed5259(o.breakpoints!);
    unittest.expect(
      o.nextWaitToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListBreakpointsResponse--;
}

core.List<api.Debuggee> buildUnnamed5260() => [
      buildDebuggee(),
      buildDebuggee(),
    ];

void checkUnnamed5260(core.List<api.Debuggee> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDebuggee(o[0]);
  checkDebuggee(o[1]);
}

core.int buildCounterListDebuggeesResponse = 0;
api.ListDebuggeesResponse buildListDebuggeesResponse() {
  final o = api.ListDebuggeesResponse();
  buildCounterListDebuggeesResponse++;
  if (buildCounterListDebuggeesResponse < 3) {
    o.debuggees = buildUnnamed5260();
  }
  buildCounterListDebuggeesResponse--;
  return o;
}

void checkListDebuggeesResponse(api.ListDebuggeesResponse o) {
  buildCounterListDebuggeesResponse++;
  if (buildCounterListDebuggeesResponse < 3) {
    checkUnnamed5260(o.debuggees!);
  }
  buildCounterListDebuggeesResponse--;
}

core.int buildCounterProjectRepoId = 0;
api.ProjectRepoId buildProjectRepoId() {
  final o = api.ProjectRepoId();
  buildCounterProjectRepoId++;
  if (buildCounterProjectRepoId < 3) {
    o.projectId = 'foo';
    o.repoName = 'foo';
  }
  buildCounterProjectRepoId--;
  return o;
}

void checkProjectRepoId(api.ProjectRepoId o) {
  buildCounterProjectRepoId++;
  if (buildCounterProjectRepoId < 3) {
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.repoName!,
      unittest.equals('foo'),
    );
  }
  buildCounterProjectRepoId--;
}

core.int buildCounterRegisterDebuggeeRequest = 0;
api.RegisterDebuggeeRequest buildRegisterDebuggeeRequest() {
  final o = api.RegisterDebuggeeRequest();
  buildCounterRegisterDebuggeeRequest++;
  if (buildCounterRegisterDebuggeeRequest < 3) {
    o.debuggee = buildDebuggee();
  }
  buildCounterRegisterDebuggeeRequest--;
  return o;
}

void checkRegisterDebuggeeRequest(api.RegisterDebuggeeRequest o) {
  buildCounterRegisterDebuggeeRequest++;
  if (buildCounterRegisterDebuggeeRequest < 3) {
    checkDebuggee(o.debuggee!);
  }
  buildCounterRegisterDebuggeeRequest--;
}

core.int buildCounterRegisterDebuggeeResponse = 0;
api.RegisterDebuggeeResponse buildRegisterDebuggeeResponse() {
  final o = api.RegisterDebuggeeResponse();
  buildCounterRegisterDebuggeeResponse++;
  if (buildCounterRegisterDebuggeeResponse < 3) {
    o.agentId = 'foo';
    o.debuggee = buildDebuggee();
  }
  buildCounterRegisterDebuggeeResponse--;
  return o;
}

void checkRegisterDebuggeeResponse(api.RegisterDebuggeeResponse o) {
  buildCounterRegisterDebuggeeResponse++;
  if (buildCounterRegisterDebuggeeResponse < 3) {
    unittest.expect(
      o.agentId!,
      unittest.equals('foo'),
    );
    checkDebuggee(o.debuggee!);
  }
  buildCounterRegisterDebuggeeResponse--;
}

core.int buildCounterRepoId = 0;
api.RepoId buildRepoId() {
  final o = api.RepoId();
  buildCounterRepoId++;
  if (buildCounterRepoId < 3) {
    o.projectRepoId = buildProjectRepoId();
    o.uid = 'foo';
  }
  buildCounterRepoId--;
  return o;
}

void checkRepoId(api.RepoId o) {
  buildCounterRepoId++;
  if (buildCounterRepoId < 3) {
    checkProjectRepoId(o.projectRepoId!);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
  }
  buildCounterRepoId--;
}

core.int buildCounterSetBreakpointResponse = 0;
api.SetBreakpointResponse buildSetBreakpointResponse() {
  final o = api.SetBreakpointResponse();
  buildCounterSetBreakpointResponse++;
  if (buildCounterSetBreakpointResponse < 3) {
    o.breakpoint = buildBreakpoint();
  }
  buildCounterSetBreakpointResponse--;
  return o;
}

void checkSetBreakpointResponse(api.SetBreakpointResponse o) {
  buildCounterSetBreakpointResponse++;
  if (buildCounterSetBreakpointResponse < 3) {
    checkBreakpoint(o.breakpoint!);
  }
  buildCounterSetBreakpointResponse--;
}

core.int buildCounterSourceContext = 0;
api.SourceContext buildSourceContext() {
  final o = api.SourceContext();
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    o.cloudRepo = buildCloudRepoSourceContext();
    o.cloudWorkspace = buildCloudWorkspaceSourceContext();
    o.gerrit = buildGerritSourceContext();
    o.git = buildGitSourceContext();
  }
  buildCounterSourceContext--;
  return o;
}

void checkSourceContext(api.SourceContext o) {
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    checkCloudRepoSourceContext(o.cloudRepo!);
    checkCloudWorkspaceSourceContext(o.cloudWorkspace!);
    checkGerritSourceContext(o.gerrit!);
    checkGitSourceContext(o.git!);
  }
  buildCounterSourceContext--;
}

core.int buildCounterSourceLocation = 0;
api.SourceLocation buildSourceLocation() {
  final o = api.SourceLocation();
  buildCounterSourceLocation++;
  if (buildCounterSourceLocation < 3) {
    o.column = 42;
    o.line = 42;
    o.path = 'foo';
  }
  buildCounterSourceLocation--;
  return o;
}

void checkSourceLocation(api.SourceLocation o) {
  buildCounterSourceLocation++;
  if (buildCounterSourceLocation < 3) {
    unittest.expect(
      o.column!,
      unittest.equals(42),
    );
    unittest.expect(
      o.line!,
      unittest.equals(42),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
  }
  buildCounterSourceLocation--;
}

core.List<api.Variable> buildUnnamed5261() => [
      buildVariable(),
      buildVariable(),
    ];

void checkUnnamed5261(core.List<api.Variable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariable(o[0]);
  checkVariable(o[1]);
}

core.List<api.Variable> buildUnnamed5262() => [
      buildVariable(),
      buildVariable(),
    ];

void checkUnnamed5262(core.List<api.Variable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariable(o[0]);
  checkVariable(o[1]);
}

core.int buildCounterStackFrame = 0;
api.StackFrame buildStackFrame() {
  final o = api.StackFrame();
  buildCounterStackFrame++;
  if (buildCounterStackFrame < 3) {
    o.arguments = buildUnnamed5261();
    o.function = 'foo';
    o.locals = buildUnnamed5262();
    o.location = buildSourceLocation();
  }
  buildCounterStackFrame--;
  return o;
}

void checkStackFrame(api.StackFrame o) {
  buildCounterStackFrame++;
  if (buildCounterStackFrame < 3) {
    checkUnnamed5261(o.arguments!);
    unittest.expect(
      o.function!,
      unittest.equals('foo'),
    );
    checkUnnamed5262(o.locals!);
    checkSourceLocation(o.location!);
  }
  buildCounterStackFrame--;
}

core.int buildCounterStatusMessage = 0;
api.StatusMessage buildStatusMessage() {
  final o = api.StatusMessage();
  buildCounterStatusMessage++;
  if (buildCounterStatusMessage < 3) {
    o.description = buildFormatMessage();
    o.isError = true;
    o.refersTo = 'foo';
  }
  buildCounterStatusMessage--;
  return o;
}

void checkStatusMessage(api.StatusMessage o) {
  buildCounterStatusMessage++;
  if (buildCounterStatusMessage < 3) {
    checkFormatMessage(o.description!);
    unittest.expect(o.isError!, unittest.isTrue);
    unittest.expect(
      o.refersTo!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatusMessage--;
}

core.int buildCounterUpdateActiveBreakpointRequest = 0;
api.UpdateActiveBreakpointRequest buildUpdateActiveBreakpointRequest() {
  final o = api.UpdateActiveBreakpointRequest();
  buildCounterUpdateActiveBreakpointRequest++;
  if (buildCounterUpdateActiveBreakpointRequest < 3) {
    o.breakpoint = buildBreakpoint();
  }
  buildCounterUpdateActiveBreakpointRequest--;
  return o;
}

void checkUpdateActiveBreakpointRequest(api.UpdateActiveBreakpointRequest o) {
  buildCounterUpdateActiveBreakpointRequest++;
  if (buildCounterUpdateActiveBreakpointRequest < 3) {
    checkBreakpoint(o.breakpoint!);
  }
  buildCounterUpdateActiveBreakpointRequest--;
}

core.int buildCounterUpdateActiveBreakpointResponse = 0;
api.UpdateActiveBreakpointResponse buildUpdateActiveBreakpointResponse() {
  final o = api.UpdateActiveBreakpointResponse();
  buildCounterUpdateActiveBreakpointResponse++;
  if (buildCounterUpdateActiveBreakpointResponse < 3) {}
  buildCounterUpdateActiveBreakpointResponse--;
  return o;
}

void checkUpdateActiveBreakpointResponse(api.UpdateActiveBreakpointResponse o) {
  buildCounterUpdateActiveBreakpointResponse++;
  if (buildCounterUpdateActiveBreakpointResponse < 3) {}
  buildCounterUpdateActiveBreakpointResponse--;
}

core.List<api.Variable> buildUnnamed5263() => [
      buildVariable(),
      buildVariable(),
    ];

void checkUnnamed5263(core.List<api.Variable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariable(o[0]);
  checkVariable(o[1]);
}

core.int buildCounterVariable = 0;
api.Variable buildVariable() {
  final o = api.Variable();
  buildCounterVariable++;
  if (buildCounterVariable < 3) {
    o.members = buildUnnamed5263();
    o.name = 'foo';
    o.status = buildStatusMessage();
    o.type = 'foo';
    o.value = 'foo';
    o.varTableIndex = 42;
  }
  buildCounterVariable--;
  return o;
}

void checkVariable(api.Variable o) {
  buildCounterVariable++;
  if (buildCounterVariable < 3) {
    checkUnnamed5263(o.members!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkStatusMessage(o.status!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.varTableIndex!,
      unittest.equals(42),
    );
  }
  buildCounterVariable--;
}

void main() {
  unittest.group('obj-schema-AliasContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAliasContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AliasContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAliasContext(od);
    });
  });

  unittest.group('obj-schema-Breakpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBreakpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Breakpoint.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBreakpoint(od);
    });
  });

  unittest.group('obj-schema-CloudRepoSourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudRepoSourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudRepoSourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudRepoSourceContext(od);
    });
  });

  unittest.group('obj-schema-CloudWorkspaceId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudWorkspaceId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudWorkspaceId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudWorkspaceId(od);
    });
  });

  unittest.group('obj-schema-CloudWorkspaceSourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudWorkspaceSourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudWorkspaceSourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudWorkspaceSourceContext(od);
    });
  });

  unittest.group('obj-schema-Debuggee', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDebuggee();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Debuggee.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDebuggee(od);
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

  unittest.group('obj-schema-ExtendedSourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtendedSourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtendedSourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExtendedSourceContext(od);
    });
  });

  unittest.group('obj-schema-FormatMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFormatMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FormatMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFormatMessage(od);
    });
  });

  unittest.group('obj-schema-GerritSourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGerritSourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GerritSourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGerritSourceContext(od);
    });
  });

  unittest.group('obj-schema-GetBreakpointResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetBreakpointResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetBreakpointResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetBreakpointResponse(od);
    });
  });

  unittest.group('obj-schema-GitSourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitSourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitSourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitSourceContext(od);
    });
  });

  unittest.group('obj-schema-ListActiveBreakpointsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListActiveBreakpointsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListActiveBreakpointsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListActiveBreakpointsResponse(od);
    });
  });

  unittest.group('obj-schema-ListBreakpointsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBreakpointsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBreakpointsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListBreakpointsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDebuggeesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDebuggeesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDebuggeesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDebuggeesResponse(od);
    });
  });

  unittest.group('obj-schema-ProjectRepoId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProjectRepoId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProjectRepoId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProjectRepoId(od);
    });
  });

  unittest.group('obj-schema-RegisterDebuggeeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegisterDebuggeeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegisterDebuggeeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegisterDebuggeeRequest(od);
    });
  });

  unittest.group('obj-schema-RegisterDebuggeeResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegisterDebuggeeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegisterDebuggeeResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegisterDebuggeeResponse(od);
    });
  });

  unittest.group('obj-schema-RepoId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepoId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RepoId.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRepoId(od);
    });
  });

  unittest.group('obj-schema-SetBreakpointResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetBreakpointResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetBreakpointResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetBreakpointResponse(od);
    });
  });

  unittest.group('obj-schema-SourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceContext(od);
    });
  });

  unittest.group('obj-schema-SourceLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceLocation(od);
    });
  });

  unittest.group('obj-schema-StackFrame', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStackFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.StackFrame.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStackFrame(od);
    });
  });

  unittest.group('obj-schema-StatusMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatusMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StatusMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStatusMessage(od);
    });
  });

  unittest.group('obj-schema-UpdateActiveBreakpointRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateActiveBreakpointRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateActiveBreakpointRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateActiveBreakpointRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateActiveBreakpointResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateActiveBreakpointResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateActiveBreakpointResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateActiveBreakpointResponse(od);
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

  unittest.group('resource-ControllerDebuggeesResource', () {
    unittest.test('method--register', () async {
      final mock = HttpServerMock();
      final res = api.CloudDebuggerApi(mock).controller.debuggees;
      final arg_request = buildRegisterDebuggeeRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RegisterDebuggeeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRegisterDebuggeeRequest(obj);

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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('v2/controller/debuggees/register'),
        );
        pathOffset += 32;

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
        final resp = convert.json.encode(buildRegisterDebuggeeResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.register(arg_request, $fields: arg_$fields);
      checkRegisterDebuggeeResponse(response as api.RegisterDebuggeeResponse);
    });
  });

  unittest.group('resource-ControllerDebuggeesBreakpointsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDebuggerApi(mock).controller.debuggees.breakpoints;
      final arg_debuggeeId = 'foo';
      final arg_agentId = 'foo';
      final arg_successOnTimeout = true;
      final arg_waitToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('v2/controller/debuggees/'),
        );
        pathOffset += 24;
        index = path.indexOf('/breakpoints', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_debuggeeId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/breakpoints'),
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
          queryMap['agentId']!.first,
          unittest.equals(arg_agentId),
        );
        unittest.expect(
          queryMap['successOnTimeout']!.first,
          unittest.equals('$arg_successOnTimeout'),
        );
        unittest.expect(
          queryMap['waitToken']!.first,
          unittest.equals(arg_waitToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListActiveBreakpointsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_debuggeeId,
          agentId: arg_agentId,
          successOnTimeout: arg_successOnTimeout,
          waitToken: arg_waitToken,
          $fields: arg_$fields);
      checkListActiveBreakpointsResponse(
          response as api.ListActiveBreakpointsResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.CloudDebuggerApi(mock).controller.debuggees.breakpoints;
      final arg_request = buildUpdateActiveBreakpointRequest();
      final arg_debuggeeId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateActiveBreakpointRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateActiveBreakpointRequest(obj);

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
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('v2/controller/debuggees/'),
        );
        pathOffset += 24;
        index = path.indexOf('/breakpoints/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_debuggeeId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/breakpoints/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
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
        final resp = convert.json.encode(buildUpdateActiveBreakpointResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_debuggeeId, arg_id,
          $fields: arg_$fields);
      checkUpdateActiveBreakpointResponse(
          response as api.UpdateActiveBreakpointResponse);
    });
  });

  unittest.group('resource-DebuggerDebuggeesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDebuggerApi(mock).debugger.debuggees;
      final arg_clientVersion = 'foo';
      final arg_includeInactive = true;
      final arg_project = 'foo';
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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('v2/debugger/debuggees'),
        );
        pathOffset += 21;

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
          queryMap['clientVersion']!.first,
          unittest.equals(arg_clientVersion),
        );
        unittest.expect(
          queryMap['includeInactive']!.first,
          unittest.equals('$arg_includeInactive'),
        );
        unittest.expect(
          queryMap['project']!.first,
          unittest.equals(arg_project),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListDebuggeesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          clientVersion: arg_clientVersion,
          includeInactive: arg_includeInactive,
          project: arg_project,
          $fields: arg_$fields);
      checkListDebuggeesResponse(response as api.ListDebuggeesResponse);
    });
  });

  unittest.group('resource-DebuggerDebuggeesBreakpointsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudDebuggerApi(mock).debugger.debuggees.breakpoints;
      final arg_debuggeeId = 'foo';
      final arg_breakpointId = 'foo';
      final arg_clientVersion = 'foo';
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
          unittest.equals('v2/debugger/debuggees/'),
        );
        pathOffset += 22;
        index = path.indexOf('/breakpoints/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_debuggeeId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/breakpoints/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_breakpointId'),
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
          queryMap['clientVersion']!.first,
          unittest.equals(arg_clientVersion),
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
      final response = await res.delete(arg_debuggeeId, arg_breakpointId,
          clientVersion: arg_clientVersion, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDebuggerApi(mock).debugger.debuggees.breakpoints;
      final arg_debuggeeId = 'foo';
      final arg_breakpointId = 'foo';
      final arg_clientVersion = 'foo';
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
          unittest.equals('v2/debugger/debuggees/'),
        );
        pathOffset += 22;
        index = path.indexOf('/breakpoints/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_debuggeeId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/breakpoints/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_breakpointId'),
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
          queryMap['clientVersion']!.first,
          unittest.equals(arg_clientVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGetBreakpointResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_debuggeeId, arg_breakpointId,
          clientVersion: arg_clientVersion, $fields: arg_$fields);
      checkGetBreakpointResponse(response as api.GetBreakpointResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDebuggerApi(mock).debugger.debuggees.breakpoints;
      final arg_debuggeeId = 'foo';
      final arg_action_value = 'foo';
      final arg_clientVersion = 'foo';
      final arg_includeAllUsers = true;
      final arg_includeInactive = true;
      final arg_stripResults = true;
      final arg_waitToken = 'foo';
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
          unittest.equals('v2/debugger/debuggees/'),
        );
        pathOffset += 22;
        index = path.indexOf('/breakpoints', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_debuggeeId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/breakpoints'),
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
          queryMap['action.value']!.first,
          unittest.equals(arg_action_value),
        );
        unittest.expect(
          queryMap['clientVersion']!.first,
          unittest.equals(arg_clientVersion),
        );
        unittest.expect(
          queryMap['includeAllUsers']!.first,
          unittest.equals('$arg_includeAllUsers'),
        );
        unittest.expect(
          queryMap['includeInactive']!.first,
          unittest.equals('$arg_includeInactive'),
        );
        unittest.expect(
          queryMap['stripResults']!.first,
          unittest.equals('$arg_stripResults'),
        );
        unittest.expect(
          queryMap['waitToken']!.first,
          unittest.equals(arg_waitToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListBreakpointsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_debuggeeId,
          action_value: arg_action_value,
          clientVersion: arg_clientVersion,
          includeAllUsers: arg_includeAllUsers,
          includeInactive: arg_includeInactive,
          stripResults: arg_stripResults,
          waitToken: arg_waitToken,
          $fields: arg_$fields);
      checkListBreakpointsResponse(response as api.ListBreakpointsResponse);
    });

    unittest.test('method--set', () async {
      final mock = HttpServerMock();
      final res = api.CloudDebuggerApi(mock).debugger.debuggees.breakpoints;
      final arg_request = buildBreakpoint();
      final arg_debuggeeId = 'foo';
      final arg_canaryOption = 'foo';
      final arg_clientVersion = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Breakpoint.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBreakpoint(obj);

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
          unittest.equals('v2/debugger/debuggees/'),
        );
        pathOffset += 22;
        index = path.indexOf('/breakpoints/set', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_debuggeeId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/breakpoints/set'),
        );
        pathOffset += 16;

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
          queryMap['canaryOption']!.first,
          unittest.equals(arg_canaryOption),
        );
        unittest.expect(
          queryMap['clientVersion']!.first,
          unittest.equals(arg_clientVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSetBreakpointResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.set(arg_request, arg_debuggeeId,
          canaryOption: arg_canaryOption,
          clientVersion: arg_clientVersion,
          $fields: arg_$fields);
      checkSetBreakpointResponse(response as api.SetBreakpointResponse);
    });
  });
}
