library googleapis.clouddebugger.v2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/clouddebugger/v2.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAliasContext = 0;
buildAliasContext() {
  var o = new api.AliasContext();
  buildCounterAliasContext++;
  if (buildCounterAliasContext < 3) {
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterAliasContext--;
  return o;
}

checkAliasContext(api.AliasContext o) {
  buildCounterAliasContext++;
  if (buildCounterAliasContext < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterAliasContext--;
}

buildUnnamed2386() {
  var o = new core.List<api.Variable>();
  o.add(buildVariable());
  o.add(buildVariable());
  return o;
}

checkUnnamed2386(core.List<api.Variable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariable(o[0]);
  checkVariable(o[1]);
}

buildUnnamed2387() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2387(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2388() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2388(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed2389() {
  var o = new core.List<api.StackFrame>();
  o.add(buildStackFrame());
  o.add(buildStackFrame());
  return o;
}

checkUnnamed2389(core.List<api.StackFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStackFrame(o[0]);
  checkStackFrame(o[1]);
}

buildUnnamed2390() {
  var o = new core.List<api.Variable>();
  o.add(buildVariable());
  o.add(buildVariable());
  return o;
}

checkUnnamed2390(core.List<api.Variable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariable(o[0]);
  checkVariable(o[1]);
}

core.int buildCounterBreakpoint = 0;
buildBreakpoint() {
  var o = new api.Breakpoint();
  buildCounterBreakpoint++;
  if (buildCounterBreakpoint < 3) {
    o.action = "foo";
    o.condition = "foo";
    o.createTime = "foo";
    o.evaluatedExpressions = buildUnnamed2386();
    o.expressions = buildUnnamed2387();
    o.finalTime = "foo";
    o.id = "foo";
    o.isFinalState = true;
    o.labels = buildUnnamed2388();
    o.location = buildSourceLocation();
    o.logLevel = "foo";
    o.logMessageFormat = "foo";
    o.stackFrames = buildUnnamed2389();
    o.status = buildStatusMessage();
    o.userEmail = "foo";
    o.variableTable = buildUnnamed2390();
  }
  buildCounterBreakpoint--;
  return o;
}

checkBreakpoint(api.Breakpoint o) {
  buildCounterBreakpoint++;
  if (buildCounterBreakpoint < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.condition, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed2386(o.evaluatedExpressions);
    checkUnnamed2387(o.expressions);
    unittest.expect(o.finalTime, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.isFinalState, unittest.isTrue);
    checkUnnamed2388(o.labels);
    checkSourceLocation(o.location);
    unittest.expect(o.logLevel, unittest.equals('foo'));
    unittest.expect(o.logMessageFormat, unittest.equals('foo'));
    checkUnnamed2389(o.stackFrames);
    checkStatusMessage(o.status);
    unittest.expect(o.userEmail, unittest.equals('foo'));
    checkUnnamed2390(o.variableTable);
  }
  buildCounterBreakpoint--;
}

core.int buildCounterCloudRepoSourceContext = 0;
buildCloudRepoSourceContext() {
  var o = new api.CloudRepoSourceContext();
  buildCounterCloudRepoSourceContext++;
  if (buildCounterCloudRepoSourceContext < 3) {
    o.aliasContext = buildAliasContext();
    o.aliasName = "foo";
    o.repoId = buildRepoId();
    o.revisionId = "foo";
  }
  buildCounterCloudRepoSourceContext--;
  return o;
}

checkCloudRepoSourceContext(api.CloudRepoSourceContext o) {
  buildCounterCloudRepoSourceContext++;
  if (buildCounterCloudRepoSourceContext < 3) {
    checkAliasContext(o.aliasContext);
    unittest.expect(o.aliasName, unittest.equals('foo'));
    checkRepoId(o.repoId);
    unittest.expect(o.revisionId, unittest.equals('foo'));
  }
  buildCounterCloudRepoSourceContext--;
}

core.int buildCounterCloudWorkspaceId = 0;
buildCloudWorkspaceId() {
  var o = new api.CloudWorkspaceId();
  buildCounterCloudWorkspaceId++;
  if (buildCounterCloudWorkspaceId < 3) {
    o.name = "foo";
    o.repoId = buildRepoId();
  }
  buildCounterCloudWorkspaceId--;
  return o;
}

checkCloudWorkspaceId(api.CloudWorkspaceId o) {
  buildCounterCloudWorkspaceId++;
  if (buildCounterCloudWorkspaceId < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkRepoId(o.repoId);
  }
  buildCounterCloudWorkspaceId--;
}

core.int buildCounterCloudWorkspaceSourceContext = 0;
buildCloudWorkspaceSourceContext() {
  var o = new api.CloudWorkspaceSourceContext();
  buildCounterCloudWorkspaceSourceContext++;
  if (buildCounterCloudWorkspaceSourceContext < 3) {
    o.snapshotId = "foo";
    o.workspaceId = buildCloudWorkspaceId();
  }
  buildCounterCloudWorkspaceSourceContext--;
  return o;
}

checkCloudWorkspaceSourceContext(api.CloudWorkspaceSourceContext o) {
  buildCounterCloudWorkspaceSourceContext++;
  if (buildCounterCloudWorkspaceSourceContext < 3) {
    unittest.expect(o.snapshotId, unittest.equals('foo'));
    checkCloudWorkspaceId(o.workspaceId);
  }
  buildCounterCloudWorkspaceSourceContext--;
}

buildUnnamed2391() {
  var o = new core.List<api.ExtendedSourceContext>();
  o.add(buildExtendedSourceContext());
  o.add(buildExtendedSourceContext());
  return o;
}

checkUnnamed2391(core.List<api.ExtendedSourceContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtendedSourceContext(o[0]);
  checkExtendedSourceContext(o[1]);
}

buildUnnamed2392() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2392(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed2393() {
  var o = new core.List<api.SourceContext>();
  o.add(buildSourceContext());
  o.add(buildSourceContext());
  return o;
}

checkUnnamed2393(core.List<api.SourceContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceContext(o[0]);
  checkSourceContext(o[1]);
}

core.int buildCounterDebuggee = 0;
buildDebuggee() {
  var o = new api.Debuggee();
  buildCounterDebuggee++;
  if (buildCounterDebuggee < 3) {
    o.agentVersion = "foo";
    o.description = "foo";
    o.extSourceContexts = buildUnnamed2391();
    o.id = "foo";
    o.isDisabled = true;
    o.isInactive = true;
    o.labels = buildUnnamed2392();
    o.project = "foo";
    o.sourceContexts = buildUnnamed2393();
    o.status = buildStatusMessage();
    o.uniquifier = "foo";
  }
  buildCounterDebuggee--;
  return o;
}

checkDebuggee(api.Debuggee o) {
  buildCounterDebuggee++;
  if (buildCounterDebuggee < 3) {
    unittest.expect(o.agentVersion, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed2391(o.extSourceContexts);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.isDisabled, unittest.isTrue);
    unittest.expect(o.isInactive, unittest.isTrue);
    checkUnnamed2392(o.labels);
    unittest.expect(o.project, unittest.equals('foo'));
    checkUnnamed2393(o.sourceContexts);
    checkStatusMessage(o.status);
    unittest.expect(o.uniquifier, unittest.equals('foo'));
  }
  buildCounterDebuggee--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

buildUnnamed2394() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2394(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterExtendedSourceContext = 0;
buildExtendedSourceContext() {
  var o = new api.ExtendedSourceContext();
  buildCounterExtendedSourceContext++;
  if (buildCounterExtendedSourceContext < 3) {
    o.context = buildSourceContext();
    o.labels = buildUnnamed2394();
  }
  buildCounterExtendedSourceContext--;
  return o;
}

checkExtendedSourceContext(api.ExtendedSourceContext o) {
  buildCounterExtendedSourceContext++;
  if (buildCounterExtendedSourceContext < 3) {
    checkSourceContext(o.context);
    checkUnnamed2394(o.labels);
  }
  buildCounterExtendedSourceContext--;
}

buildUnnamed2395() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2395(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFormatMessage = 0;
buildFormatMessage() {
  var o = new api.FormatMessage();
  buildCounterFormatMessage++;
  if (buildCounterFormatMessage < 3) {
    o.format = "foo";
    o.parameters = buildUnnamed2395();
  }
  buildCounterFormatMessage--;
  return o;
}

checkFormatMessage(api.FormatMessage o) {
  buildCounterFormatMessage++;
  if (buildCounterFormatMessage < 3) {
    unittest.expect(o.format, unittest.equals('foo'));
    checkUnnamed2395(o.parameters);
  }
  buildCounterFormatMessage--;
}

core.int buildCounterGerritSourceContext = 0;
buildGerritSourceContext() {
  var o = new api.GerritSourceContext();
  buildCounterGerritSourceContext++;
  if (buildCounterGerritSourceContext < 3) {
    o.aliasContext = buildAliasContext();
    o.aliasName = "foo";
    o.gerritProject = "foo";
    o.hostUri = "foo";
    o.revisionId = "foo";
  }
  buildCounterGerritSourceContext--;
  return o;
}

checkGerritSourceContext(api.GerritSourceContext o) {
  buildCounterGerritSourceContext++;
  if (buildCounterGerritSourceContext < 3) {
    checkAliasContext(o.aliasContext);
    unittest.expect(o.aliasName, unittest.equals('foo'));
    unittest.expect(o.gerritProject, unittest.equals('foo'));
    unittest.expect(o.hostUri, unittest.equals('foo'));
    unittest.expect(o.revisionId, unittest.equals('foo'));
  }
  buildCounterGerritSourceContext--;
}

core.int buildCounterGetBreakpointResponse = 0;
buildGetBreakpointResponse() {
  var o = new api.GetBreakpointResponse();
  buildCounterGetBreakpointResponse++;
  if (buildCounterGetBreakpointResponse < 3) {
    o.breakpoint = buildBreakpoint();
  }
  buildCounterGetBreakpointResponse--;
  return o;
}

checkGetBreakpointResponse(api.GetBreakpointResponse o) {
  buildCounterGetBreakpointResponse++;
  if (buildCounterGetBreakpointResponse < 3) {
    checkBreakpoint(o.breakpoint);
  }
  buildCounterGetBreakpointResponse--;
}

core.int buildCounterGitSourceContext = 0;
buildGitSourceContext() {
  var o = new api.GitSourceContext();
  buildCounterGitSourceContext++;
  if (buildCounterGitSourceContext < 3) {
    o.revisionId = "foo";
    o.url = "foo";
  }
  buildCounterGitSourceContext--;
  return o;
}

checkGitSourceContext(api.GitSourceContext o) {
  buildCounterGitSourceContext++;
  if (buildCounterGitSourceContext < 3) {
    unittest.expect(o.revisionId, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGitSourceContext--;
}

buildUnnamed2396() {
  var o = new core.List<api.Breakpoint>();
  o.add(buildBreakpoint());
  o.add(buildBreakpoint());
  return o;
}

checkUnnamed2396(core.List<api.Breakpoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBreakpoint(o[0]);
  checkBreakpoint(o[1]);
}

core.int buildCounterListActiveBreakpointsResponse = 0;
buildListActiveBreakpointsResponse() {
  var o = new api.ListActiveBreakpointsResponse();
  buildCounterListActiveBreakpointsResponse++;
  if (buildCounterListActiveBreakpointsResponse < 3) {
    o.breakpoints = buildUnnamed2396();
    o.nextWaitToken = "foo";
    o.waitExpired = true;
  }
  buildCounterListActiveBreakpointsResponse--;
  return o;
}

checkListActiveBreakpointsResponse(api.ListActiveBreakpointsResponse o) {
  buildCounterListActiveBreakpointsResponse++;
  if (buildCounterListActiveBreakpointsResponse < 3) {
    checkUnnamed2396(o.breakpoints);
    unittest.expect(o.nextWaitToken, unittest.equals('foo'));
    unittest.expect(o.waitExpired, unittest.isTrue);
  }
  buildCounterListActiveBreakpointsResponse--;
}

buildUnnamed2397() {
  var o = new core.List<api.Breakpoint>();
  o.add(buildBreakpoint());
  o.add(buildBreakpoint());
  return o;
}

checkUnnamed2397(core.List<api.Breakpoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBreakpoint(o[0]);
  checkBreakpoint(o[1]);
}

core.int buildCounterListBreakpointsResponse = 0;
buildListBreakpointsResponse() {
  var o = new api.ListBreakpointsResponse();
  buildCounterListBreakpointsResponse++;
  if (buildCounterListBreakpointsResponse < 3) {
    o.breakpoints = buildUnnamed2397();
    o.nextWaitToken = "foo";
  }
  buildCounterListBreakpointsResponse--;
  return o;
}

checkListBreakpointsResponse(api.ListBreakpointsResponse o) {
  buildCounterListBreakpointsResponse++;
  if (buildCounterListBreakpointsResponse < 3) {
    checkUnnamed2397(o.breakpoints);
    unittest.expect(o.nextWaitToken, unittest.equals('foo'));
  }
  buildCounterListBreakpointsResponse--;
}

buildUnnamed2398() {
  var o = new core.List<api.Debuggee>();
  o.add(buildDebuggee());
  o.add(buildDebuggee());
  return o;
}

checkUnnamed2398(core.List<api.Debuggee> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDebuggee(o[0]);
  checkDebuggee(o[1]);
}

core.int buildCounterListDebuggeesResponse = 0;
buildListDebuggeesResponse() {
  var o = new api.ListDebuggeesResponse();
  buildCounterListDebuggeesResponse++;
  if (buildCounterListDebuggeesResponse < 3) {
    o.debuggees = buildUnnamed2398();
  }
  buildCounterListDebuggeesResponse--;
  return o;
}

checkListDebuggeesResponse(api.ListDebuggeesResponse o) {
  buildCounterListDebuggeesResponse++;
  if (buildCounterListDebuggeesResponse < 3) {
    checkUnnamed2398(o.debuggees);
  }
  buildCounterListDebuggeesResponse--;
}

core.int buildCounterProjectRepoId = 0;
buildProjectRepoId() {
  var o = new api.ProjectRepoId();
  buildCounterProjectRepoId++;
  if (buildCounterProjectRepoId < 3) {
    o.projectId = "foo";
    o.repoName = "foo";
  }
  buildCounterProjectRepoId--;
  return o;
}

checkProjectRepoId(api.ProjectRepoId o) {
  buildCounterProjectRepoId++;
  if (buildCounterProjectRepoId < 3) {
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.repoName, unittest.equals('foo'));
  }
  buildCounterProjectRepoId--;
}

core.int buildCounterRegisterDebuggeeRequest = 0;
buildRegisterDebuggeeRequest() {
  var o = new api.RegisterDebuggeeRequest();
  buildCounterRegisterDebuggeeRequest++;
  if (buildCounterRegisterDebuggeeRequest < 3) {
    o.debuggee = buildDebuggee();
  }
  buildCounterRegisterDebuggeeRequest--;
  return o;
}

checkRegisterDebuggeeRequest(api.RegisterDebuggeeRequest o) {
  buildCounterRegisterDebuggeeRequest++;
  if (buildCounterRegisterDebuggeeRequest < 3) {
    checkDebuggee(o.debuggee);
  }
  buildCounterRegisterDebuggeeRequest--;
}

core.int buildCounterRegisterDebuggeeResponse = 0;
buildRegisterDebuggeeResponse() {
  var o = new api.RegisterDebuggeeResponse();
  buildCounterRegisterDebuggeeResponse++;
  if (buildCounterRegisterDebuggeeResponse < 3) {
    o.debuggee = buildDebuggee();
  }
  buildCounterRegisterDebuggeeResponse--;
  return o;
}

checkRegisterDebuggeeResponse(api.RegisterDebuggeeResponse o) {
  buildCounterRegisterDebuggeeResponse++;
  if (buildCounterRegisterDebuggeeResponse < 3) {
    checkDebuggee(o.debuggee);
  }
  buildCounterRegisterDebuggeeResponse--;
}

core.int buildCounterRepoId = 0;
buildRepoId() {
  var o = new api.RepoId();
  buildCounterRepoId++;
  if (buildCounterRepoId < 3) {
    o.projectRepoId = buildProjectRepoId();
    o.uid = "foo";
  }
  buildCounterRepoId--;
  return o;
}

checkRepoId(api.RepoId o) {
  buildCounterRepoId++;
  if (buildCounterRepoId < 3) {
    checkProjectRepoId(o.projectRepoId);
    unittest.expect(o.uid, unittest.equals('foo'));
  }
  buildCounterRepoId--;
}

core.int buildCounterSetBreakpointResponse = 0;
buildSetBreakpointResponse() {
  var o = new api.SetBreakpointResponse();
  buildCounterSetBreakpointResponse++;
  if (buildCounterSetBreakpointResponse < 3) {
    o.breakpoint = buildBreakpoint();
  }
  buildCounterSetBreakpointResponse--;
  return o;
}

checkSetBreakpointResponse(api.SetBreakpointResponse o) {
  buildCounterSetBreakpointResponse++;
  if (buildCounterSetBreakpointResponse < 3) {
    checkBreakpoint(o.breakpoint);
  }
  buildCounterSetBreakpointResponse--;
}

core.int buildCounterSourceContext = 0;
buildSourceContext() {
  var o = new api.SourceContext();
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

checkSourceContext(api.SourceContext o) {
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    checkCloudRepoSourceContext(o.cloudRepo);
    checkCloudWorkspaceSourceContext(o.cloudWorkspace);
    checkGerritSourceContext(o.gerrit);
    checkGitSourceContext(o.git);
  }
  buildCounterSourceContext--;
}

core.int buildCounterSourceLocation = 0;
buildSourceLocation() {
  var o = new api.SourceLocation();
  buildCounterSourceLocation++;
  if (buildCounterSourceLocation < 3) {
    o.column = 42;
    o.line = 42;
    o.path = "foo";
  }
  buildCounterSourceLocation--;
  return o;
}

checkSourceLocation(api.SourceLocation o) {
  buildCounterSourceLocation++;
  if (buildCounterSourceLocation < 3) {
    unittest.expect(o.column, unittest.equals(42));
    unittest.expect(o.line, unittest.equals(42));
    unittest.expect(o.path, unittest.equals('foo'));
  }
  buildCounterSourceLocation--;
}

buildUnnamed2399() {
  var o = new core.List<api.Variable>();
  o.add(buildVariable());
  o.add(buildVariable());
  return o;
}

checkUnnamed2399(core.List<api.Variable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariable(o[0]);
  checkVariable(o[1]);
}

buildUnnamed2400() {
  var o = new core.List<api.Variable>();
  o.add(buildVariable());
  o.add(buildVariable());
  return o;
}

checkUnnamed2400(core.List<api.Variable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariable(o[0]);
  checkVariable(o[1]);
}

core.int buildCounterStackFrame = 0;
buildStackFrame() {
  var o = new api.StackFrame();
  buildCounterStackFrame++;
  if (buildCounterStackFrame < 3) {
    o.arguments = buildUnnamed2399();
    o.function = "foo";
    o.locals = buildUnnamed2400();
    o.location = buildSourceLocation();
  }
  buildCounterStackFrame--;
  return o;
}

checkStackFrame(api.StackFrame o) {
  buildCounterStackFrame++;
  if (buildCounterStackFrame < 3) {
    checkUnnamed2399(o.arguments);
    unittest.expect(o.function, unittest.equals('foo'));
    checkUnnamed2400(o.locals);
    checkSourceLocation(o.location);
  }
  buildCounterStackFrame--;
}

core.int buildCounterStatusMessage = 0;
buildStatusMessage() {
  var o = new api.StatusMessage();
  buildCounterStatusMessage++;
  if (buildCounterStatusMessage < 3) {
    o.description = buildFormatMessage();
    o.isError = true;
    o.refersTo = "foo";
  }
  buildCounterStatusMessage--;
  return o;
}

checkStatusMessage(api.StatusMessage o) {
  buildCounterStatusMessage++;
  if (buildCounterStatusMessage < 3) {
    checkFormatMessage(o.description);
    unittest.expect(o.isError, unittest.isTrue);
    unittest.expect(o.refersTo, unittest.equals('foo'));
  }
  buildCounterStatusMessage--;
}

core.int buildCounterUpdateActiveBreakpointRequest = 0;
buildUpdateActiveBreakpointRequest() {
  var o = new api.UpdateActiveBreakpointRequest();
  buildCounterUpdateActiveBreakpointRequest++;
  if (buildCounterUpdateActiveBreakpointRequest < 3) {
    o.breakpoint = buildBreakpoint();
  }
  buildCounterUpdateActiveBreakpointRequest--;
  return o;
}

checkUpdateActiveBreakpointRequest(api.UpdateActiveBreakpointRequest o) {
  buildCounterUpdateActiveBreakpointRequest++;
  if (buildCounterUpdateActiveBreakpointRequest < 3) {
    checkBreakpoint(o.breakpoint);
  }
  buildCounterUpdateActiveBreakpointRequest--;
}

core.int buildCounterUpdateActiveBreakpointResponse = 0;
buildUpdateActiveBreakpointResponse() {
  var o = new api.UpdateActiveBreakpointResponse();
  buildCounterUpdateActiveBreakpointResponse++;
  if (buildCounterUpdateActiveBreakpointResponse < 3) {}
  buildCounterUpdateActiveBreakpointResponse--;
  return o;
}

checkUpdateActiveBreakpointResponse(api.UpdateActiveBreakpointResponse o) {
  buildCounterUpdateActiveBreakpointResponse++;
  if (buildCounterUpdateActiveBreakpointResponse < 3) {}
  buildCounterUpdateActiveBreakpointResponse--;
}

buildUnnamed2401() {
  var o = new core.List<api.Variable>();
  o.add(buildVariable());
  o.add(buildVariable());
  return o;
}

checkUnnamed2401(core.List<api.Variable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariable(o[0]);
  checkVariable(o[1]);
}

core.int buildCounterVariable = 0;
buildVariable() {
  var o = new api.Variable();
  buildCounterVariable++;
  if (buildCounterVariable < 3) {
    o.members = buildUnnamed2401();
    o.name = "foo";
    o.status = buildStatusMessage();
    o.type = "foo";
    o.value = "foo";
    o.varTableIndex = 42;
  }
  buildCounterVariable--;
  return o;
}

checkVariable(api.Variable o) {
  buildCounterVariable++;
  if (buildCounterVariable < 3) {
    checkUnnamed2401(o.members);
    unittest.expect(o.name, unittest.equals('foo'));
    checkStatusMessage(o.status);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
    unittest.expect(o.varTableIndex, unittest.equals(42));
  }
  buildCounterVariable--;
}

main() {
  unittest.group("obj-schema-AliasContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildAliasContext();
      var od = new api.AliasContext.fromJson(o.toJson());
      checkAliasContext(od);
    });
  });

  unittest.group("obj-schema-Breakpoint", () {
    unittest.test("to-json--from-json", () {
      var o = buildBreakpoint();
      var od = new api.Breakpoint.fromJson(o.toJson());
      checkBreakpoint(od);
    });
  });

  unittest.group("obj-schema-CloudRepoSourceContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildCloudRepoSourceContext();
      var od = new api.CloudRepoSourceContext.fromJson(o.toJson());
      checkCloudRepoSourceContext(od);
    });
  });

  unittest.group("obj-schema-CloudWorkspaceId", () {
    unittest.test("to-json--from-json", () {
      var o = buildCloudWorkspaceId();
      var od = new api.CloudWorkspaceId.fromJson(o.toJson());
      checkCloudWorkspaceId(od);
    });
  });

  unittest.group("obj-schema-CloudWorkspaceSourceContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildCloudWorkspaceSourceContext();
      var od = new api.CloudWorkspaceSourceContext.fromJson(o.toJson());
      checkCloudWorkspaceSourceContext(od);
    });
  });

  unittest.group("obj-schema-Debuggee", () {
    unittest.test("to-json--from-json", () {
      var o = buildDebuggee();
      var od = new api.Debuggee.fromJson(o.toJson());
      checkDebuggee(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-ExtendedSourceContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildExtendedSourceContext();
      var od = new api.ExtendedSourceContext.fromJson(o.toJson());
      checkExtendedSourceContext(od);
    });
  });

  unittest.group("obj-schema-FormatMessage", () {
    unittest.test("to-json--from-json", () {
      var o = buildFormatMessage();
      var od = new api.FormatMessage.fromJson(o.toJson());
      checkFormatMessage(od);
    });
  });

  unittest.group("obj-schema-GerritSourceContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildGerritSourceContext();
      var od = new api.GerritSourceContext.fromJson(o.toJson());
      checkGerritSourceContext(od);
    });
  });

  unittest.group("obj-schema-GetBreakpointResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetBreakpointResponse();
      var od = new api.GetBreakpointResponse.fromJson(o.toJson());
      checkGetBreakpointResponse(od);
    });
  });

  unittest.group("obj-schema-GitSourceContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildGitSourceContext();
      var od = new api.GitSourceContext.fromJson(o.toJson());
      checkGitSourceContext(od);
    });
  });

  unittest.group("obj-schema-ListActiveBreakpointsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListActiveBreakpointsResponse();
      var od = new api.ListActiveBreakpointsResponse.fromJson(o.toJson());
      checkListActiveBreakpointsResponse(od);
    });
  });

  unittest.group("obj-schema-ListBreakpointsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListBreakpointsResponse();
      var od = new api.ListBreakpointsResponse.fromJson(o.toJson());
      checkListBreakpointsResponse(od);
    });
  });

  unittest.group("obj-schema-ListDebuggeesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDebuggeesResponse();
      var od = new api.ListDebuggeesResponse.fromJson(o.toJson());
      checkListDebuggeesResponse(od);
    });
  });

  unittest.group("obj-schema-ProjectRepoId", () {
    unittest.test("to-json--from-json", () {
      var o = buildProjectRepoId();
      var od = new api.ProjectRepoId.fromJson(o.toJson());
      checkProjectRepoId(od);
    });
  });

  unittest.group("obj-schema-RegisterDebuggeeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegisterDebuggeeRequest();
      var od = new api.RegisterDebuggeeRequest.fromJson(o.toJson());
      checkRegisterDebuggeeRequest(od);
    });
  });

  unittest.group("obj-schema-RegisterDebuggeeResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegisterDebuggeeResponse();
      var od = new api.RegisterDebuggeeResponse.fromJson(o.toJson());
      checkRegisterDebuggeeResponse(od);
    });
  });

  unittest.group("obj-schema-RepoId", () {
    unittest.test("to-json--from-json", () {
      var o = buildRepoId();
      var od = new api.RepoId.fromJson(o.toJson());
      checkRepoId(od);
    });
  });

  unittest.group("obj-schema-SetBreakpointResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetBreakpointResponse();
      var od = new api.SetBreakpointResponse.fromJson(o.toJson());
      checkSetBreakpointResponse(od);
    });
  });

  unittest.group("obj-schema-SourceContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceContext();
      var od = new api.SourceContext.fromJson(o.toJson());
      checkSourceContext(od);
    });
  });

  unittest.group("obj-schema-SourceLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceLocation();
      var od = new api.SourceLocation.fromJson(o.toJson());
      checkSourceLocation(od);
    });
  });

  unittest.group("obj-schema-StackFrame", () {
    unittest.test("to-json--from-json", () {
      var o = buildStackFrame();
      var od = new api.StackFrame.fromJson(o.toJson());
      checkStackFrame(od);
    });
  });

  unittest.group("obj-schema-StatusMessage", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatusMessage();
      var od = new api.StatusMessage.fromJson(o.toJson());
      checkStatusMessage(od);
    });
  });

  unittest.group("obj-schema-UpdateActiveBreakpointRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateActiveBreakpointRequest();
      var od = new api.UpdateActiveBreakpointRequest.fromJson(o.toJson());
      checkUpdateActiveBreakpointRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateActiveBreakpointResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateActiveBreakpointResponse();
      var od = new api.UpdateActiveBreakpointResponse.fromJson(o.toJson());
      checkUpdateActiveBreakpointResponse(od);
    });
  });

  unittest.group("obj-schema-Variable", () {
    unittest.test("to-json--from-json", () {
      var o = buildVariable();
      var od = new api.Variable.fromJson(o.toJson());
      checkVariable(od);
    });
  });

  unittest.group("resource-ControllerDebuggeesResourceApi", () {
    unittest.test("method--register", () {
      var mock = new HttpServerMock();
      api.ControllerDebuggeesResourceApi res =
          new api.ClouddebuggerApi(mock).controller.debuggees;
      var arg_request = buildRegisterDebuggeeRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RegisterDebuggeeRequest.fromJson(json);
        checkRegisterDebuggeeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("v2/controller/debuggees/register"));
        pathOffset += 32;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildRegisterDebuggeeResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .register(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRegisterDebuggeeResponse(response);
      })));
    });
  });

  unittest.group("resource-ControllerDebuggeesBreakpointsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ControllerDebuggeesBreakpointsResourceApi res =
          new api.ClouddebuggerApi(mock).controller.debuggees.breakpoints;
      var arg_debuggeeId = "foo";
      var arg_successOnTimeout = true;
      var arg_waitToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("v2/controller/debuggees/"));
        pathOffset += 24;
        index = path.indexOf("/breakpoints", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_debuggeeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/breakpoints"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["successOnTimeout"].first,
            unittest.equals("$arg_successOnTimeout"));
        unittest.expect(
            queryMap["waitToken"].first, unittest.equals(arg_waitToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListActiveBreakpointsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_debuggeeId,
              successOnTimeout: arg_successOnTimeout,
              waitToken: arg_waitToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListActiveBreakpointsResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ControllerDebuggeesBreakpointsResourceApi res =
          new api.ClouddebuggerApi(mock).controller.debuggees.breakpoints;
      var arg_request = buildUpdateActiveBreakpointRequest();
      var arg_debuggeeId = "foo";
      var arg_id = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateActiveBreakpointRequest.fromJson(json);
        checkUpdateActiveBreakpointRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("v2/controller/debuggees/"));
        pathOffset += 24;
        index = path.indexOf("/breakpoints/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_debuggeeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/breakpoints/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildUpdateActiveBreakpointResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_debuggeeId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUpdateActiveBreakpointResponse(response);
      })));
    });
  });

  unittest.group("resource-DebuggerDebuggeesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.DebuggerDebuggeesResourceApi res =
          new api.ClouddebuggerApi(mock).debugger.debuggees;
      var arg_clientVersion = "foo";
      var arg_includeInactive = true;
      var arg_project = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("v2/debugger/debuggees"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["clientVersion"].first,
            unittest.equals(arg_clientVersion));
        unittest.expect(queryMap["includeInactive"].first,
            unittest.equals("$arg_includeInactive"));
        unittest.expect(
            queryMap["project"].first, unittest.equals(arg_project));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListDebuggeesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              clientVersion: arg_clientVersion,
              includeInactive: arg_includeInactive,
              project: arg_project,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDebuggeesResponse(response);
      })));
    });
  });

  unittest.group("resource-DebuggerDebuggeesBreakpointsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.DebuggerDebuggeesBreakpointsResourceApi res =
          new api.ClouddebuggerApi(mock).debugger.debuggees.breakpoints;
      var arg_debuggeeId = "foo";
      var arg_breakpointId = "foo";
      var arg_clientVersion = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("v2/debugger/debuggees/"));
        pathOffset += 22;
        index = path.indexOf("/breakpoints/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_debuggeeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/breakpoints/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_breakpointId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["clientVersion"].first,
            unittest.equals(arg_clientVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_debuggeeId, arg_breakpointId,
              clientVersion: arg_clientVersion, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.DebuggerDebuggeesBreakpointsResourceApi res =
          new api.ClouddebuggerApi(mock).debugger.debuggees.breakpoints;
      var arg_debuggeeId = "foo";
      var arg_breakpointId = "foo";
      var arg_clientVersion = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("v2/debugger/debuggees/"));
        pathOffset += 22;
        index = path.indexOf("/breakpoints/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_debuggeeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/breakpoints/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_breakpointId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["clientVersion"].first,
            unittest.equals(arg_clientVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetBreakpointResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_debuggeeId, arg_breakpointId,
              clientVersion: arg_clientVersion, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetBreakpointResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.DebuggerDebuggeesBreakpointsResourceApi res =
          new api.ClouddebuggerApi(mock).debugger.debuggees.breakpoints;
      var arg_debuggeeId = "foo";
      var arg_stripResults = true;
      var arg_waitToken = "foo";
      var arg_clientVersion = "foo";
      var arg_action_value = "foo";
      var arg_includeInactive = true;
      var arg_includeAllUsers = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("v2/debugger/debuggees/"));
        pathOffset += 22;
        index = path.indexOf("/breakpoints", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_debuggeeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/breakpoints"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["stripResults"].first,
            unittest.equals("$arg_stripResults"));
        unittest.expect(
            queryMap["waitToken"].first, unittest.equals(arg_waitToken));
        unittest.expect(queryMap["clientVersion"].first,
            unittest.equals(arg_clientVersion));
        unittest.expect(
            queryMap["action.value"].first, unittest.equals(arg_action_value));
        unittest.expect(queryMap["includeInactive"].first,
            unittest.equals("$arg_includeInactive"));
        unittest.expect(queryMap["includeAllUsers"].first,
            unittest.equals("$arg_includeAllUsers"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListBreakpointsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_debuggeeId,
              stripResults: arg_stripResults,
              waitToken: arg_waitToken,
              clientVersion: arg_clientVersion,
              action_value: arg_action_value,
              includeInactive: arg_includeInactive,
              includeAllUsers: arg_includeAllUsers,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListBreakpointsResponse(response);
      })));
    });

    unittest.test("method--set", () {
      var mock = new HttpServerMock();
      api.DebuggerDebuggeesBreakpointsResourceApi res =
          new api.ClouddebuggerApi(mock).debugger.debuggees.breakpoints;
      var arg_request = buildBreakpoint();
      var arg_debuggeeId = "foo";
      var arg_clientVersion = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Breakpoint.fromJson(json);
        checkBreakpoint(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("v2/debugger/debuggees/"));
        pathOffset += 22;
        index = path.indexOf("/breakpoints/set", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_debuggeeId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/breakpoints/set"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["clientVersion"].first,
            unittest.equals(arg_clientVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSetBreakpointResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .set(arg_request, arg_debuggeeId,
              clientVersion: arg_clientVersion, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSetBreakpointResponse(response);
      })));
    });
  });
}
