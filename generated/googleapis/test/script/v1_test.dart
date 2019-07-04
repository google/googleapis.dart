library googleapis.script.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/script/v1.dart' as api;

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

buildUnnamed1315() {
  var o = new core.List<api.File>();
  o.add(buildFile());
  o.add(buildFile());
  return o;
}

checkUnnamed1315(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0]);
  checkFile(o[1]);
}

core.int buildCounterContent = 0;
buildContent() {
  var o = new api.Content();
  buildCounterContent++;
  if (buildCounterContent < 3) {
    o.files = buildUnnamed1315();
    o.scriptId = "foo";
  }
  buildCounterContent--;
  return o;
}

checkContent(api.Content o) {
  buildCounterContent++;
  if (buildCounterContent < 3) {
    checkUnnamed1315(o.files);
    unittest.expect(o.scriptId, unittest.equals('foo'));
  }
  buildCounterContent--;
}

core.int buildCounterCreateProjectRequest = 0;
buildCreateProjectRequest() {
  var o = new api.CreateProjectRequest();
  buildCounterCreateProjectRequest++;
  if (buildCounterCreateProjectRequest < 3) {
    o.parentId = "foo";
    o.title = "foo";
  }
  buildCounterCreateProjectRequest--;
  return o;
}

checkCreateProjectRequest(api.CreateProjectRequest o) {
  buildCounterCreateProjectRequest++;
  if (buildCounterCreateProjectRequest < 3) {
    unittest.expect(o.parentId, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterCreateProjectRequest--;
}

buildUnnamed1316() {
  var o = new core.List<api.EntryPoint>();
  o.add(buildEntryPoint());
  o.add(buildEntryPoint());
  return o;
}

checkUnnamed1316(core.List<api.EntryPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntryPoint(o[0]);
  checkEntryPoint(o[1]);
}

core.int buildCounterDeployment = 0;
buildDeployment() {
  var o = new api.Deployment();
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    o.deploymentConfig = buildDeploymentConfig();
    o.deploymentId = "foo";
    o.entryPoints = buildUnnamed1316();
    o.updateTime = "foo";
  }
  buildCounterDeployment--;
  return o;
}

checkDeployment(api.Deployment o) {
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    checkDeploymentConfig(o.deploymentConfig);
    unittest.expect(o.deploymentId, unittest.equals('foo'));
    checkUnnamed1316(o.entryPoints);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterDeployment--;
}

core.int buildCounterDeploymentConfig = 0;
buildDeploymentConfig() {
  var o = new api.DeploymentConfig();
  buildCounterDeploymentConfig++;
  if (buildCounterDeploymentConfig < 3) {
    o.description = "foo";
    o.manifestFileName = "foo";
    o.scriptId = "foo";
    o.versionNumber = 42;
  }
  buildCounterDeploymentConfig--;
  return o;
}

checkDeploymentConfig(api.DeploymentConfig o) {
  buildCounterDeploymentConfig++;
  if (buildCounterDeploymentConfig < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.manifestFileName, unittest.equals('foo'));
    unittest.expect(o.scriptId, unittest.equals('foo'));
    unittest.expect(o.versionNumber, unittest.equals(42));
  }
  buildCounterDeploymentConfig--;
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

core.int buildCounterEntryPoint = 0;
buildEntryPoint() {
  var o = new api.EntryPoint();
  buildCounterEntryPoint++;
  if (buildCounterEntryPoint < 3) {
    o.addOn = buildGoogleAppsScriptTypeAddOnEntryPoint();
    o.entryPointType = "foo";
    o.executionApi = buildGoogleAppsScriptTypeExecutionApiEntryPoint();
    o.webApp = buildGoogleAppsScriptTypeWebAppEntryPoint();
  }
  buildCounterEntryPoint--;
  return o;
}

checkEntryPoint(api.EntryPoint o) {
  buildCounterEntryPoint++;
  if (buildCounterEntryPoint < 3) {
    checkGoogleAppsScriptTypeAddOnEntryPoint(o.addOn);
    unittest.expect(o.entryPointType, unittest.equals('foo'));
    checkGoogleAppsScriptTypeExecutionApiEntryPoint(o.executionApi);
    checkGoogleAppsScriptTypeWebAppEntryPoint(o.webApp);
  }
  buildCounterEntryPoint--;
}

core.int buildCounterExecuteStreamResponse = 0;
buildExecuteStreamResponse() {
  var o = new api.ExecuteStreamResponse();
  buildCounterExecuteStreamResponse++;
  if (buildCounterExecuteStreamResponse < 3) {
    o.result = buildScriptExecutionResult();
  }
  buildCounterExecuteStreamResponse--;
  return o;
}

checkExecuteStreamResponse(api.ExecuteStreamResponse o) {
  buildCounterExecuteStreamResponse++;
  if (buildCounterExecuteStreamResponse < 3) {
    checkScriptExecutionResult(o.result);
  }
  buildCounterExecuteStreamResponse--;
}

buildUnnamed1317() {
  var o = new core.List<api.ScriptStackTraceElement>();
  o.add(buildScriptStackTraceElement());
  o.add(buildScriptStackTraceElement());
  return o;
}

checkUnnamed1317(core.List<api.ScriptStackTraceElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScriptStackTraceElement(o[0]);
  checkScriptStackTraceElement(o[1]);
}

core.int buildCounterExecutionError = 0;
buildExecutionError() {
  var o = new api.ExecutionError();
  buildCounterExecutionError++;
  if (buildCounterExecutionError < 3) {
    o.errorMessage = "foo";
    o.errorType = "foo";
    o.scriptStackTraceElements = buildUnnamed1317();
  }
  buildCounterExecutionError--;
  return o;
}

checkExecutionError(api.ExecutionError o) {
  buildCounterExecutionError++;
  if (buildCounterExecutionError < 3) {
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    unittest.expect(o.errorType, unittest.equals('foo'));
    checkUnnamed1317(o.scriptStackTraceElements);
  }
  buildCounterExecutionError--;
}

buildUnnamed1318() {
  var o = new core.List<core.Object>();
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

checkUnnamed1318(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o[1]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

core.int buildCounterExecutionRequest = 0;
buildExecutionRequest() {
  var o = new api.ExecutionRequest();
  buildCounterExecutionRequest++;
  if (buildCounterExecutionRequest < 3) {
    o.devMode = true;
    o.function = "foo";
    o.parameters = buildUnnamed1318();
    o.sessionState = "foo";
  }
  buildCounterExecutionRequest--;
  return o;
}

checkExecutionRequest(api.ExecutionRequest o) {
  buildCounterExecutionRequest++;
  if (buildCounterExecutionRequest < 3) {
    unittest.expect(o.devMode, unittest.isTrue);
    unittest.expect(o.function, unittest.equals('foo'));
    checkUnnamed1318(o.parameters);
    unittest.expect(o.sessionState, unittest.equals('foo'));
  }
  buildCounterExecutionRequest--;
}

core.int buildCounterExecutionResponse = 0;
buildExecutionResponse() {
  var o = new api.ExecutionResponse();
  buildCounterExecutionResponse++;
  if (buildCounterExecutionResponse < 3) {
    o.result = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterExecutionResponse--;
  return o;
}

checkExecutionResponse(api.ExecutionResponse o) {
  buildCounterExecutionResponse++;
  if (buildCounterExecutionResponse < 3) {
    var casted3 = (o.result) as core.Map;
    unittest.expect(casted3, unittest.hasLength(3));
    unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted3["bool"], unittest.equals(true));
    unittest.expect(casted3["string"], unittest.equals('foo'));
  }
  buildCounterExecutionResponse--;
}

core.int buildCounterFile = 0;
buildFile() {
  var o = new api.File();
  buildCounterFile++;
  if (buildCounterFile < 3) {
    o.createTime = "foo";
    o.functionSet = buildGoogleAppsScriptTypeFunctionSet();
    o.lastModifyUser = buildGoogleAppsScriptTypeUser();
    o.name = "foo";
    o.source = "foo";
    o.type = "foo";
    o.updateTime = "foo";
  }
  buildCounterFile--;
  return o;
}

checkFile(api.File o) {
  buildCounterFile++;
  if (buildCounterFile < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkGoogleAppsScriptTypeFunctionSet(o.functionSet);
    checkGoogleAppsScriptTypeUser(o.lastModifyUser);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.source, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterFile--;
}

core.int buildCounterGoogleAppsScriptTypeAddOnEntryPoint = 0;
buildGoogleAppsScriptTypeAddOnEntryPoint() {
  var o = new api.GoogleAppsScriptTypeAddOnEntryPoint();
  buildCounterGoogleAppsScriptTypeAddOnEntryPoint++;
  if (buildCounterGoogleAppsScriptTypeAddOnEntryPoint < 3) {
    o.addOnType = "foo";
    o.description = "foo";
    o.helpUrl = "foo";
    o.postInstallTipUrl = "foo";
    o.reportIssueUrl = "foo";
    o.title = "foo";
  }
  buildCounterGoogleAppsScriptTypeAddOnEntryPoint--;
  return o;
}

checkGoogleAppsScriptTypeAddOnEntryPoint(
    api.GoogleAppsScriptTypeAddOnEntryPoint o) {
  buildCounterGoogleAppsScriptTypeAddOnEntryPoint++;
  if (buildCounterGoogleAppsScriptTypeAddOnEntryPoint < 3) {
    unittest.expect(o.addOnType, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.helpUrl, unittest.equals('foo'));
    unittest.expect(o.postInstallTipUrl, unittest.equals('foo'));
    unittest.expect(o.reportIssueUrl, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleAppsScriptTypeAddOnEntryPoint--;
}

core.int buildCounterGoogleAppsScriptTypeExecutionApiConfig = 0;
buildGoogleAppsScriptTypeExecutionApiConfig() {
  var o = new api.GoogleAppsScriptTypeExecutionApiConfig();
  buildCounterGoogleAppsScriptTypeExecutionApiConfig++;
  if (buildCounterGoogleAppsScriptTypeExecutionApiConfig < 3) {
    o.access = "foo";
  }
  buildCounterGoogleAppsScriptTypeExecutionApiConfig--;
  return o;
}

checkGoogleAppsScriptTypeExecutionApiConfig(
    api.GoogleAppsScriptTypeExecutionApiConfig o) {
  buildCounterGoogleAppsScriptTypeExecutionApiConfig++;
  if (buildCounterGoogleAppsScriptTypeExecutionApiConfig < 3) {
    unittest.expect(o.access, unittest.equals('foo'));
  }
  buildCounterGoogleAppsScriptTypeExecutionApiConfig--;
}

core.int buildCounterGoogleAppsScriptTypeExecutionApiEntryPoint = 0;
buildGoogleAppsScriptTypeExecutionApiEntryPoint() {
  var o = new api.GoogleAppsScriptTypeExecutionApiEntryPoint();
  buildCounterGoogleAppsScriptTypeExecutionApiEntryPoint++;
  if (buildCounterGoogleAppsScriptTypeExecutionApiEntryPoint < 3) {
    o.entryPointConfig = buildGoogleAppsScriptTypeExecutionApiConfig();
  }
  buildCounterGoogleAppsScriptTypeExecutionApiEntryPoint--;
  return o;
}

checkGoogleAppsScriptTypeExecutionApiEntryPoint(
    api.GoogleAppsScriptTypeExecutionApiEntryPoint o) {
  buildCounterGoogleAppsScriptTypeExecutionApiEntryPoint++;
  if (buildCounterGoogleAppsScriptTypeExecutionApiEntryPoint < 3) {
    checkGoogleAppsScriptTypeExecutionApiConfig(o.entryPointConfig);
  }
  buildCounterGoogleAppsScriptTypeExecutionApiEntryPoint--;
}

core.int buildCounterGoogleAppsScriptTypeFunction = 0;
buildGoogleAppsScriptTypeFunction() {
  var o = new api.GoogleAppsScriptTypeFunction();
  buildCounterGoogleAppsScriptTypeFunction++;
  if (buildCounterGoogleAppsScriptTypeFunction < 3) {
    o.name = "foo";
  }
  buildCounterGoogleAppsScriptTypeFunction--;
  return o;
}

checkGoogleAppsScriptTypeFunction(api.GoogleAppsScriptTypeFunction o) {
  buildCounterGoogleAppsScriptTypeFunction++;
  if (buildCounterGoogleAppsScriptTypeFunction < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleAppsScriptTypeFunction--;
}

buildUnnamed1319() {
  var o = new core.List<api.GoogleAppsScriptTypeFunction>();
  o.add(buildGoogleAppsScriptTypeFunction());
  o.add(buildGoogleAppsScriptTypeFunction());
  return o;
}

checkUnnamed1319(core.List<api.GoogleAppsScriptTypeFunction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsScriptTypeFunction(o[0]);
  checkGoogleAppsScriptTypeFunction(o[1]);
}

core.int buildCounterGoogleAppsScriptTypeFunctionSet = 0;
buildGoogleAppsScriptTypeFunctionSet() {
  var o = new api.GoogleAppsScriptTypeFunctionSet();
  buildCounterGoogleAppsScriptTypeFunctionSet++;
  if (buildCounterGoogleAppsScriptTypeFunctionSet < 3) {
    o.values = buildUnnamed1319();
  }
  buildCounterGoogleAppsScriptTypeFunctionSet--;
  return o;
}

checkGoogleAppsScriptTypeFunctionSet(api.GoogleAppsScriptTypeFunctionSet o) {
  buildCounterGoogleAppsScriptTypeFunctionSet++;
  if (buildCounterGoogleAppsScriptTypeFunctionSet < 3) {
    checkUnnamed1319(o.values);
  }
  buildCounterGoogleAppsScriptTypeFunctionSet--;
}

core.int buildCounterGoogleAppsScriptTypeProcess = 0;
buildGoogleAppsScriptTypeProcess() {
  var o = new api.GoogleAppsScriptTypeProcess();
  buildCounterGoogleAppsScriptTypeProcess++;
  if (buildCounterGoogleAppsScriptTypeProcess < 3) {
    o.duration = "foo";
    o.functionName = "foo";
    o.processStatus = "foo";
    o.processType = "foo";
    o.projectName = "foo";
    o.startTime = "foo";
    o.userAccessLevel = "foo";
  }
  buildCounterGoogleAppsScriptTypeProcess--;
  return o;
}

checkGoogleAppsScriptTypeProcess(api.GoogleAppsScriptTypeProcess o) {
  buildCounterGoogleAppsScriptTypeProcess++;
  if (buildCounterGoogleAppsScriptTypeProcess < 3) {
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.functionName, unittest.equals('foo'));
    unittest.expect(o.processStatus, unittest.equals('foo'));
    unittest.expect(o.processType, unittest.equals('foo'));
    unittest.expect(o.projectName, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.userAccessLevel, unittest.equals('foo'));
  }
  buildCounterGoogleAppsScriptTypeProcess--;
}

core.int buildCounterGoogleAppsScriptTypeUser = 0;
buildGoogleAppsScriptTypeUser() {
  var o = new api.GoogleAppsScriptTypeUser();
  buildCounterGoogleAppsScriptTypeUser++;
  if (buildCounterGoogleAppsScriptTypeUser < 3) {
    o.domain = "foo";
    o.email = "foo";
    o.name = "foo";
    o.photoUrl = "foo";
  }
  buildCounterGoogleAppsScriptTypeUser--;
  return o;
}

checkGoogleAppsScriptTypeUser(api.GoogleAppsScriptTypeUser o) {
  buildCounterGoogleAppsScriptTypeUser++;
  if (buildCounterGoogleAppsScriptTypeUser < 3) {
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.photoUrl, unittest.equals('foo'));
  }
  buildCounterGoogleAppsScriptTypeUser--;
}

core.int buildCounterGoogleAppsScriptTypeWebAppConfig = 0;
buildGoogleAppsScriptTypeWebAppConfig() {
  var o = new api.GoogleAppsScriptTypeWebAppConfig();
  buildCounterGoogleAppsScriptTypeWebAppConfig++;
  if (buildCounterGoogleAppsScriptTypeWebAppConfig < 3) {
    o.access = "foo";
    o.executeAs = "foo";
  }
  buildCounterGoogleAppsScriptTypeWebAppConfig--;
  return o;
}

checkGoogleAppsScriptTypeWebAppConfig(api.GoogleAppsScriptTypeWebAppConfig o) {
  buildCounterGoogleAppsScriptTypeWebAppConfig++;
  if (buildCounterGoogleAppsScriptTypeWebAppConfig < 3) {
    unittest.expect(o.access, unittest.equals('foo'));
    unittest.expect(o.executeAs, unittest.equals('foo'));
  }
  buildCounterGoogleAppsScriptTypeWebAppConfig--;
}

core.int buildCounterGoogleAppsScriptTypeWebAppEntryPoint = 0;
buildGoogleAppsScriptTypeWebAppEntryPoint() {
  var o = new api.GoogleAppsScriptTypeWebAppEntryPoint();
  buildCounterGoogleAppsScriptTypeWebAppEntryPoint++;
  if (buildCounterGoogleAppsScriptTypeWebAppEntryPoint < 3) {
    o.entryPointConfig = buildGoogleAppsScriptTypeWebAppConfig();
    o.url = "foo";
  }
  buildCounterGoogleAppsScriptTypeWebAppEntryPoint--;
  return o;
}

checkGoogleAppsScriptTypeWebAppEntryPoint(
    api.GoogleAppsScriptTypeWebAppEntryPoint o) {
  buildCounterGoogleAppsScriptTypeWebAppEntryPoint++;
  if (buildCounterGoogleAppsScriptTypeWebAppEntryPoint < 3) {
    checkGoogleAppsScriptTypeWebAppConfig(o.entryPointConfig);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGoogleAppsScriptTypeWebAppEntryPoint--;
}

buildUnnamed1320() {
  var o = new core.List<api.Deployment>();
  o.add(buildDeployment());
  o.add(buildDeployment());
  return o;
}

checkUnnamed1320(core.List<api.Deployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployment(o[0]);
  checkDeployment(o[1]);
}

core.int buildCounterListDeploymentsResponse = 0;
buildListDeploymentsResponse() {
  var o = new api.ListDeploymentsResponse();
  buildCounterListDeploymentsResponse++;
  if (buildCounterListDeploymentsResponse < 3) {
    o.deployments = buildUnnamed1320();
    o.nextPageToken = "foo";
  }
  buildCounterListDeploymentsResponse--;
  return o;
}

checkListDeploymentsResponse(api.ListDeploymentsResponse o) {
  buildCounterListDeploymentsResponse++;
  if (buildCounterListDeploymentsResponse < 3) {
    checkUnnamed1320(o.deployments);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDeploymentsResponse--;
}

buildUnnamed1321() {
  var o = new core.List<api.GoogleAppsScriptTypeProcess>();
  o.add(buildGoogleAppsScriptTypeProcess());
  o.add(buildGoogleAppsScriptTypeProcess());
  return o;
}

checkUnnamed1321(core.List<api.GoogleAppsScriptTypeProcess> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsScriptTypeProcess(o[0]);
  checkGoogleAppsScriptTypeProcess(o[1]);
}

core.int buildCounterListScriptProcessesResponse = 0;
buildListScriptProcessesResponse() {
  var o = new api.ListScriptProcessesResponse();
  buildCounterListScriptProcessesResponse++;
  if (buildCounterListScriptProcessesResponse < 3) {
    o.nextPageToken = "foo";
    o.processes = buildUnnamed1321();
  }
  buildCounterListScriptProcessesResponse--;
  return o;
}

checkListScriptProcessesResponse(api.ListScriptProcessesResponse o) {
  buildCounterListScriptProcessesResponse++;
  if (buildCounterListScriptProcessesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1321(o.processes);
  }
  buildCounterListScriptProcessesResponse--;
}

buildUnnamed1322() {
  var o = new core.List<api.GoogleAppsScriptTypeProcess>();
  o.add(buildGoogleAppsScriptTypeProcess());
  o.add(buildGoogleAppsScriptTypeProcess());
  return o;
}

checkUnnamed1322(core.List<api.GoogleAppsScriptTypeProcess> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsScriptTypeProcess(o[0]);
  checkGoogleAppsScriptTypeProcess(o[1]);
}

core.int buildCounterListUserProcessesResponse = 0;
buildListUserProcessesResponse() {
  var o = new api.ListUserProcessesResponse();
  buildCounterListUserProcessesResponse++;
  if (buildCounterListUserProcessesResponse < 3) {
    o.nextPageToken = "foo";
    o.processes = buildUnnamed1322();
  }
  buildCounterListUserProcessesResponse--;
  return o;
}

checkListUserProcessesResponse(api.ListUserProcessesResponse o) {
  buildCounterListUserProcessesResponse++;
  if (buildCounterListUserProcessesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1322(o.processes);
  }
  buildCounterListUserProcessesResponse--;
}

buildUnnamed1323() {
  var o = new core.List<api.Value>();
  o.add(buildValue());
  o.add(buildValue());
  return o;
}

checkUnnamed1323(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterListValue = 0;
buildListValue() {
  var o = new api.ListValue();
  buildCounterListValue++;
  if (buildCounterListValue < 3) {
    o.values = buildUnnamed1323();
  }
  buildCounterListValue--;
  return o;
}

checkListValue(api.ListValue o) {
  buildCounterListValue++;
  if (buildCounterListValue < 3) {
    checkUnnamed1323(o.values);
  }
  buildCounterListValue--;
}

buildUnnamed1324() {
  var o = new core.List<api.Version>();
  o.add(buildVersion());
  o.add(buildVersion());
  return o;
}

checkUnnamed1324(core.List<api.Version> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVersion(o[0]);
  checkVersion(o[1]);
}

core.int buildCounterListVersionsResponse = 0;
buildListVersionsResponse() {
  var o = new api.ListVersionsResponse();
  buildCounterListVersionsResponse++;
  if (buildCounterListVersionsResponse < 3) {
    o.nextPageToken = "foo";
    o.versions = buildUnnamed1324();
  }
  buildCounterListVersionsResponse--;
  return o;
}

checkListVersionsResponse(api.ListVersionsResponse o) {
  buildCounterListVersionsResponse++;
  if (buildCounterListVersionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1324(o.versions);
  }
  buildCounterListVersionsResponse--;
}

buildUnnamed1325() {
  var o = new core.List<api.MetricsValue>();
  o.add(buildMetricsValue());
  o.add(buildMetricsValue());
  return o;
}

checkUnnamed1325(core.List<api.MetricsValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricsValue(o[0]);
  checkMetricsValue(o[1]);
}

buildUnnamed1326() {
  var o = new core.List<api.MetricsValue>();
  o.add(buildMetricsValue());
  o.add(buildMetricsValue());
  return o;
}

checkUnnamed1326(core.List<api.MetricsValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricsValue(o[0]);
  checkMetricsValue(o[1]);
}

buildUnnamed1327() {
  var o = new core.List<api.MetricsValue>();
  o.add(buildMetricsValue());
  o.add(buildMetricsValue());
  return o;
}

checkUnnamed1327(core.List<api.MetricsValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricsValue(o[0]);
  checkMetricsValue(o[1]);
}

core.int buildCounterMetrics = 0;
buildMetrics() {
  var o = new api.Metrics();
  buildCounterMetrics++;
  if (buildCounterMetrics < 3) {
    o.activeUsers = buildUnnamed1325();
    o.failedExecutions = buildUnnamed1326();
    o.totalExecutions = buildUnnamed1327();
  }
  buildCounterMetrics--;
  return o;
}

checkMetrics(api.Metrics o) {
  buildCounterMetrics++;
  if (buildCounterMetrics < 3) {
    checkUnnamed1325(o.activeUsers);
    checkUnnamed1326(o.failedExecutions);
    checkUnnamed1327(o.totalExecutions);
  }
  buildCounterMetrics--;
}

core.int buildCounterMetricsValue = 0;
buildMetricsValue() {
  var o = new api.MetricsValue();
  buildCounterMetricsValue++;
  if (buildCounterMetricsValue < 3) {
    o.endTime = "foo";
    o.startTime = "foo";
    o.value = "foo";
  }
  buildCounterMetricsValue--;
  return o;
}

checkMetricsValue(api.MetricsValue o) {
  buildCounterMetricsValue++;
  if (buildCounterMetricsValue < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterMetricsValue--;
}

buildUnnamed1328() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed1328(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted4 = (o["x"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
  var casted5 = (o["y"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.response = buildUnnamed1328();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed1328(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterProject = 0;
buildProject() {
  var o = new api.Project();
  buildCounterProject++;
  if (buildCounterProject < 3) {
    o.createTime = "foo";
    o.creator = buildGoogleAppsScriptTypeUser();
    o.lastModifyUser = buildGoogleAppsScriptTypeUser();
    o.parentId = "foo";
    o.scriptId = "foo";
    o.title = "foo";
    o.updateTime = "foo";
  }
  buildCounterProject--;
  return o;
}

checkProject(api.Project o) {
  buildCounterProject++;
  if (buildCounterProject < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkGoogleAppsScriptTypeUser(o.creator);
    checkGoogleAppsScriptTypeUser(o.lastModifyUser);
    unittest.expect(o.parentId, unittest.equals('foo'));
    unittest.expect(o.scriptId, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterProject--;
}

core.int buildCounterScriptExecutionResult = 0;
buildScriptExecutionResult() {
  var o = new api.ScriptExecutionResult();
  buildCounterScriptExecutionResult++;
  if (buildCounterScriptExecutionResult < 3) {
    o.returnValue = buildValue();
  }
  buildCounterScriptExecutionResult--;
  return o;
}

checkScriptExecutionResult(api.ScriptExecutionResult o) {
  buildCounterScriptExecutionResult++;
  if (buildCounterScriptExecutionResult < 3) {
    checkValue(o.returnValue);
  }
  buildCounterScriptExecutionResult--;
}

core.int buildCounterScriptStackTraceElement = 0;
buildScriptStackTraceElement() {
  var o = new api.ScriptStackTraceElement();
  buildCounterScriptStackTraceElement++;
  if (buildCounterScriptStackTraceElement < 3) {
    o.function = "foo";
    o.lineNumber = 42;
  }
  buildCounterScriptStackTraceElement--;
  return o;
}

checkScriptStackTraceElement(api.ScriptStackTraceElement o) {
  buildCounterScriptStackTraceElement++;
  if (buildCounterScriptStackTraceElement < 3) {
    unittest.expect(o.function, unittest.equals('foo'));
    unittest.expect(o.lineNumber, unittest.equals(42));
  }
  buildCounterScriptStackTraceElement--;
}

buildUnnamed1329() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed1329(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted6 = (o["x"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
  var casted7 = (o["y"]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted7["bool"], unittest.equals(true));
  unittest.expect(casted7["string"], unittest.equals('foo'));
}

buildUnnamed1330() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed1329());
  o.add(buildUnnamed1329());
  return o;
}

checkUnnamed1330(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1329(o[0]);
  checkUnnamed1329(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed1330();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed1330(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed1331() {
  var o = new core.Map<core.String, api.Value>();
  o["x"] = buildValue();
  o["y"] = buildValue();
  return o;
}

checkUnnamed1331(core.Map<core.String, api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o["x"]);
  checkValue(o["y"]);
}

core.int buildCounterStruct = 0;
buildStruct() {
  var o = new api.Struct();
  buildCounterStruct++;
  if (buildCounterStruct < 3) {
    o.fields = buildUnnamed1331();
  }
  buildCounterStruct--;
  return o;
}

checkStruct(api.Struct o) {
  buildCounterStruct++;
  if (buildCounterStruct < 3) {
    checkUnnamed1331(o.fields);
  }
  buildCounterStruct--;
}

core.int buildCounterUpdateDeploymentRequest = 0;
buildUpdateDeploymentRequest() {
  var o = new api.UpdateDeploymentRequest();
  buildCounterUpdateDeploymentRequest++;
  if (buildCounterUpdateDeploymentRequest < 3) {
    o.deploymentConfig = buildDeploymentConfig();
  }
  buildCounterUpdateDeploymentRequest--;
  return o;
}

checkUpdateDeploymentRequest(api.UpdateDeploymentRequest o) {
  buildCounterUpdateDeploymentRequest++;
  if (buildCounterUpdateDeploymentRequest < 3) {
    checkDeploymentConfig(o.deploymentConfig);
  }
  buildCounterUpdateDeploymentRequest--;
}

buildUnnamed1332() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed1332(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted8 = (o["x"]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted8["bool"], unittest.equals(true));
  unittest.expect(casted8["string"], unittest.equals('foo'));
  var casted9 = (o["y"]) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted9["bool"], unittest.equals(true));
  unittest.expect(casted9["string"], unittest.equals('foo'));
}

core.int buildCounterValue = 0;
buildValue() {
  var o = new api.Value();
  buildCounterValue++;
  if (buildCounterValue < 3) {
    o.boolValue = true;
    o.bytesValue = "foo";
    o.dateValue = "foo";
    o.listValue = buildListValue();
    o.nullValue = "foo";
    o.numberValue = 42.0;
    o.protoValue = buildUnnamed1332();
    o.stringValue = "foo";
    o.structValue = buildStruct();
  }
  buildCounterValue--;
  return o;
}

checkValue(api.Value o) {
  buildCounterValue++;
  if (buildCounterValue < 3) {
    unittest.expect(o.boolValue, unittest.isTrue);
    unittest.expect(o.bytesValue, unittest.equals('foo'));
    unittest.expect(o.dateValue, unittest.equals('foo'));
    checkListValue(o.listValue);
    unittest.expect(o.nullValue, unittest.equals('foo'));
    unittest.expect(o.numberValue, unittest.equals(42.0));
    checkUnnamed1332(o.protoValue);
    unittest.expect(o.stringValue, unittest.equals('foo'));
    checkStruct(o.structValue);
  }
  buildCounterValue--;
}

core.int buildCounterVersion = 0;
buildVersion() {
  var o = new api.Version();
  buildCounterVersion++;
  if (buildCounterVersion < 3) {
    o.createTime = "foo";
    o.description = "foo";
    o.scriptId = "foo";
    o.versionNumber = 42;
  }
  buildCounterVersion--;
  return o;
}

checkVersion(api.Version o) {
  buildCounterVersion++;
  if (buildCounterVersion < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.scriptId, unittest.equals('foo'));
    unittest.expect(o.versionNumber, unittest.equals(42));
  }
  buildCounterVersion--;
}

buildUnnamed1333() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1333(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1334() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1334(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1335() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1335(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1336() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1336(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1337() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1337(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1338() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1338(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-Content", () {
    unittest.test("to-json--from-json", () {
      var o = buildContent();
      var od = new api.Content.fromJson(o.toJson());
      checkContent(od);
    });
  });

  unittest.group("obj-schema-CreateProjectRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateProjectRequest();
      var od = new api.CreateProjectRequest.fromJson(o.toJson());
      checkCreateProjectRequest(od);
    });
  });

  unittest.group("obj-schema-Deployment", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeployment();
      var od = new api.Deployment.fromJson(o.toJson());
      checkDeployment(od);
    });
  });

  unittest.group("obj-schema-DeploymentConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeploymentConfig();
      var od = new api.DeploymentConfig.fromJson(o.toJson());
      checkDeploymentConfig(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-EntryPoint", () {
    unittest.test("to-json--from-json", () {
      var o = buildEntryPoint();
      var od = new api.EntryPoint.fromJson(o.toJson());
      checkEntryPoint(od);
    });
  });

  unittest.group("obj-schema-ExecuteStreamResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildExecuteStreamResponse();
      var od = new api.ExecuteStreamResponse.fromJson(o.toJson());
      checkExecuteStreamResponse(od);
    });
  });

  unittest.group("obj-schema-ExecutionError", () {
    unittest.test("to-json--from-json", () {
      var o = buildExecutionError();
      var od = new api.ExecutionError.fromJson(o.toJson());
      checkExecutionError(od);
    });
  });

  unittest.group("obj-schema-ExecutionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildExecutionRequest();
      var od = new api.ExecutionRequest.fromJson(o.toJson());
      checkExecutionRequest(od);
    });
  });

  unittest.group("obj-schema-ExecutionResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildExecutionResponse();
      var od = new api.ExecutionResponse.fromJson(o.toJson());
      checkExecutionResponse(od);
    });
  });

  unittest.group("obj-schema-File", () {
    unittest.test("to-json--from-json", () {
      var o = buildFile();
      var od = new api.File.fromJson(o.toJson());
      checkFile(od);
    });
  });

  unittest.group("obj-schema-GoogleAppsScriptTypeAddOnEntryPoint", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsScriptTypeAddOnEntryPoint();
      var od = new api.GoogleAppsScriptTypeAddOnEntryPoint.fromJson(o.toJson());
      checkGoogleAppsScriptTypeAddOnEntryPoint(od);
    });
  });

  unittest.group("obj-schema-GoogleAppsScriptTypeExecutionApiConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsScriptTypeExecutionApiConfig();
      var od =
          new api.GoogleAppsScriptTypeExecutionApiConfig.fromJson(o.toJson());
      checkGoogleAppsScriptTypeExecutionApiConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleAppsScriptTypeExecutionApiEntryPoint", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsScriptTypeExecutionApiEntryPoint();
      var od = new api.GoogleAppsScriptTypeExecutionApiEntryPoint.fromJson(
          o.toJson());
      checkGoogleAppsScriptTypeExecutionApiEntryPoint(od);
    });
  });

  unittest.group("obj-schema-GoogleAppsScriptTypeFunction", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsScriptTypeFunction();
      var od = new api.GoogleAppsScriptTypeFunction.fromJson(o.toJson());
      checkGoogleAppsScriptTypeFunction(od);
    });
  });

  unittest.group("obj-schema-GoogleAppsScriptTypeFunctionSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsScriptTypeFunctionSet();
      var od = new api.GoogleAppsScriptTypeFunctionSet.fromJson(o.toJson());
      checkGoogleAppsScriptTypeFunctionSet(od);
    });
  });

  unittest.group("obj-schema-GoogleAppsScriptTypeProcess", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsScriptTypeProcess();
      var od = new api.GoogleAppsScriptTypeProcess.fromJson(o.toJson());
      checkGoogleAppsScriptTypeProcess(od);
    });
  });

  unittest.group("obj-schema-GoogleAppsScriptTypeUser", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsScriptTypeUser();
      var od = new api.GoogleAppsScriptTypeUser.fromJson(o.toJson());
      checkGoogleAppsScriptTypeUser(od);
    });
  });

  unittest.group("obj-schema-GoogleAppsScriptTypeWebAppConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsScriptTypeWebAppConfig();
      var od = new api.GoogleAppsScriptTypeWebAppConfig.fromJson(o.toJson());
      checkGoogleAppsScriptTypeWebAppConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleAppsScriptTypeWebAppEntryPoint", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAppsScriptTypeWebAppEntryPoint();
      var od =
          new api.GoogleAppsScriptTypeWebAppEntryPoint.fromJson(o.toJson());
      checkGoogleAppsScriptTypeWebAppEntryPoint(od);
    });
  });

  unittest.group("obj-schema-ListDeploymentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDeploymentsResponse();
      var od = new api.ListDeploymentsResponse.fromJson(o.toJson());
      checkListDeploymentsResponse(od);
    });
  });

  unittest.group("obj-schema-ListScriptProcessesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListScriptProcessesResponse();
      var od = new api.ListScriptProcessesResponse.fromJson(o.toJson());
      checkListScriptProcessesResponse(od);
    });
  });

  unittest.group("obj-schema-ListUserProcessesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListUserProcessesResponse();
      var od = new api.ListUserProcessesResponse.fromJson(o.toJson());
      checkListUserProcessesResponse(od);
    });
  });

  unittest.group("obj-schema-ListValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildListValue();
      var od = new api.ListValue.fromJson(o.toJson());
      checkListValue(od);
    });
  });

  unittest.group("obj-schema-ListVersionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListVersionsResponse();
      var od = new api.ListVersionsResponse.fromJson(o.toJson());
      checkListVersionsResponse(od);
    });
  });

  unittest.group("obj-schema-Metrics", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetrics();
      var od = new api.Metrics.fromJson(o.toJson());
      checkMetrics(od);
    });
  });

  unittest.group("obj-schema-MetricsValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricsValue();
      var od = new api.MetricsValue.fromJson(o.toJson());
      checkMetricsValue(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-Project", () {
    unittest.test("to-json--from-json", () {
      var o = buildProject();
      var od = new api.Project.fromJson(o.toJson());
      checkProject(od);
    });
  });

  unittest.group("obj-schema-ScriptExecutionResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildScriptExecutionResult();
      var od = new api.ScriptExecutionResult.fromJson(o.toJson());
      checkScriptExecutionResult(od);
    });
  });

  unittest.group("obj-schema-ScriptStackTraceElement", () {
    unittest.test("to-json--from-json", () {
      var o = buildScriptStackTraceElement();
      var od = new api.ScriptStackTraceElement.fromJson(o.toJson());
      checkScriptStackTraceElement(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-Struct", () {
    unittest.test("to-json--from-json", () {
      var o = buildStruct();
      var od = new api.Struct.fromJson(o.toJson());
      checkStruct(od);
    });
  });

  unittest.group("obj-schema-UpdateDeploymentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateDeploymentRequest();
      var od = new api.UpdateDeploymentRequest.fromJson(o.toJson());
      checkUpdateDeploymentRequest(od);
    });
  });

  unittest.group("obj-schema-Value", () {
    unittest.test("to-json--from-json", () {
      var o = buildValue();
      var od = new api.Value.fromJson(o.toJson());
      checkValue(od);
    });
  });

  unittest.group("obj-schema-Version", () {
    unittest.test("to-json--from-json", () {
      var o = buildVersion();
      var od = new api.Version.fromJson(o.toJson());
      checkVersion(od);
    });
  });

  unittest.group("resource-ProcessesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProcessesResourceApi res = new api.ScriptApi(mock).processes;
      var arg_userProcessFilter_scriptId = "foo";
      var arg_userProcessFilter_types = buildUnnamed1333();
      var arg_userProcessFilter_statuses = buildUnnamed1334();
      var arg_userProcessFilter_deploymentId = "foo";
      var arg_userProcessFilter_endTime = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_userProcessFilter_startTime = "foo";
      var arg_userProcessFilter_userAccessLevels = buildUnnamed1335();
      var arg_userProcessFilter_projectName = "foo";
      var arg_userProcessFilter_functionName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/processes"));
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
        unittest.expect(queryMap["userProcessFilter.scriptId"].first,
            unittest.equals(arg_userProcessFilter_scriptId));
        unittest.expect(queryMap["userProcessFilter.types"],
            unittest.equals(arg_userProcessFilter_types));
        unittest.expect(queryMap["userProcessFilter.statuses"],
            unittest.equals(arg_userProcessFilter_statuses));
        unittest.expect(queryMap["userProcessFilter.deploymentId"].first,
            unittest.equals(arg_userProcessFilter_deploymentId));
        unittest.expect(queryMap["userProcessFilter.endTime"].first,
            unittest.equals(arg_userProcessFilter_endTime));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["userProcessFilter.startTime"].first,
            unittest.equals(arg_userProcessFilter_startTime));
        unittest.expect(queryMap["userProcessFilter.userAccessLevels"],
            unittest.equals(arg_userProcessFilter_userAccessLevels));
        unittest.expect(queryMap["userProcessFilter.projectName"].first,
            unittest.equals(arg_userProcessFilter_projectName));
        unittest.expect(queryMap["userProcessFilter.functionName"].first,
            unittest.equals(arg_userProcessFilter_functionName));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListUserProcessesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              userProcessFilter_scriptId: arg_userProcessFilter_scriptId,
              userProcessFilter_types: arg_userProcessFilter_types,
              userProcessFilter_statuses: arg_userProcessFilter_statuses,
              userProcessFilter_deploymentId:
                  arg_userProcessFilter_deploymentId,
              userProcessFilter_endTime: arg_userProcessFilter_endTime,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              userProcessFilter_startTime: arg_userProcessFilter_startTime,
              userProcessFilter_userAccessLevels:
                  arg_userProcessFilter_userAccessLevels,
              userProcessFilter_projectName: arg_userProcessFilter_projectName,
              userProcessFilter_functionName:
                  arg_userProcessFilter_functionName,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListUserProcessesResponse(response);
      })));
    });

    unittest.test("method--listScriptProcesses", () {
      var mock = new HttpServerMock();
      api.ProcessesResourceApi res = new api.ScriptApi(mock).processes;
      var arg_scriptProcessFilter_endTime = "foo";
      var arg_scriptProcessFilter_userAccessLevels = buildUnnamed1336();
      var arg_scriptProcessFilter_statuses = buildUnnamed1337();
      var arg_scriptProcessFilter_functionName = "foo";
      var arg_scriptProcessFilter_startTime = "foo";
      var arg_scriptProcessFilter_deploymentId = "foo";
      var arg_scriptId = "foo";
      var arg_scriptProcessFilter_types = buildUnnamed1338();
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("v1/processes:listScriptProcesses"));
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
        unittest.expect(queryMap["scriptProcessFilter.endTime"].first,
            unittest.equals(arg_scriptProcessFilter_endTime));
        unittest.expect(queryMap["scriptProcessFilter.userAccessLevels"],
            unittest.equals(arg_scriptProcessFilter_userAccessLevels));
        unittest.expect(queryMap["scriptProcessFilter.statuses"],
            unittest.equals(arg_scriptProcessFilter_statuses));
        unittest.expect(queryMap["scriptProcessFilter.functionName"].first,
            unittest.equals(arg_scriptProcessFilter_functionName));
        unittest.expect(queryMap["scriptProcessFilter.startTime"].first,
            unittest.equals(arg_scriptProcessFilter_startTime));
        unittest.expect(queryMap["scriptProcessFilter.deploymentId"].first,
            unittest.equals(arg_scriptProcessFilter_deploymentId));
        unittest.expect(
            queryMap["scriptId"].first, unittest.equals(arg_scriptId));
        unittest.expect(queryMap["scriptProcessFilter.types"],
            unittest.equals(arg_scriptProcessFilter_types));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListScriptProcessesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listScriptProcesses(
              scriptProcessFilter_endTime: arg_scriptProcessFilter_endTime,
              scriptProcessFilter_userAccessLevels:
                  arg_scriptProcessFilter_userAccessLevels,
              scriptProcessFilter_statuses: arg_scriptProcessFilter_statuses,
              scriptProcessFilter_functionName:
                  arg_scriptProcessFilter_functionName,
              scriptProcessFilter_startTime: arg_scriptProcessFilter_startTime,
              scriptProcessFilter_deploymentId:
                  arg_scriptProcessFilter_deploymentId,
              scriptId: arg_scriptId,
              scriptProcessFilter_types: arg_scriptProcessFilter_types,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListScriptProcessesResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.ScriptApi(mock).projects;
      var arg_request = buildCreateProjectRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateProjectRequest.fromJson(json);
        checkCreateProjectRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/projects"));
        pathOffset += 11;

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
        var resp = convert.json.encode(buildProject());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProject(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.ScriptApi(mock).projects;
      var arg_scriptId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_scriptId"));

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
        var resp = convert.json.encode(buildProject());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_scriptId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProject(response);
      })));
    });

    unittest.test("method--getContent", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.ScriptApi(mock).projects;
      var arg_scriptId = "foo";
      var arg_versionNumber = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/content", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_scriptId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/content"));
        pathOffset += 8;

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
        unittest.expect(core.int.parse(queryMap["versionNumber"].first),
            unittest.equals(arg_versionNumber));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildContent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getContent(arg_scriptId,
              versionNumber: arg_versionNumber, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkContent(response);
      })));
    });

    unittest.test("method--getMetrics", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.ScriptApi(mock).projects;
      var arg_scriptId = "foo";
      var arg_metricsFilter_deploymentId = "foo";
      var arg_metricsGranularity = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/metrics", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_scriptId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/metrics"));
        pathOffset += 8;

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
        unittest.expect(queryMap["metricsFilter.deploymentId"].first,
            unittest.equals(arg_metricsFilter_deploymentId));
        unittest.expect(queryMap["metricsGranularity"].first,
            unittest.equals(arg_metricsGranularity));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildMetrics());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getMetrics(arg_scriptId,
              metricsFilter_deploymentId: arg_metricsFilter_deploymentId,
              metricsGranularity: arg_metricsGranularity,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMetrics(response);
      })));
    });

    unittest.test("method--updateContent", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.ScriptApi(mock).projects;
      var arg_request = buildContent();
      var arg_scriptId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Content.fromJson(json);
        checkContent(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/content", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_scriptId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/content"));
        pathOffset += 8;

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
        var resp = convert.json.encode(buildContent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateContent(arg_request, arg_scriptId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkContent(response);
      })));
    });
  });

  unittest.group("resource-ProjectsDeploymentsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsDeploymentsResourceApi res =
          new api.ScriptApi(mock).projects.deployments;
      var arg_request = buildDeploymentConfig();
      var arg_scriptId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DeploymentConfig.fromJson(json);
        checkDeploymentConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/deployments", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_scriptId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/deployments"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDeployment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_scriptId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeployment(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsDeploymentsResourceApi res =
          new api.ScriptApi(mock).projects.deployments;
      var arg_scriptId = "foo";
      var arg_deploymentId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/deployments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_scriptId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/deployments/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_deploymentId"));

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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_scriptId, arg_deploymentId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsDeploymentsResourceApi res =
          new api.ScriptApi(mock).projects.deployments;
      var arg_scriptId = "foo";
      var arg_deploymentId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/deployments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_scriptId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/deployments/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_deploymentId"));

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
        var resp = convert.json.encode(buildDeployment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_scriptId, arg_deploymentId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeployment(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsDeploymentsResourceApi res =
          new api.ScriptApi(mock).projects.deployments;
      var arg_scriptId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/deployments", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_scriptId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/deployments"));
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListDeploymentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_scriptId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDeploymentsResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ProjectsDeploymentsResourceApi res =
          new api.ScriptApi(mock).projects.deployments;
      var arg_request = buildUpdateDeploymentRequest();
      var arg_scriptId = "foo";
      var arg_deploymentId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateDeploymentRequest.fromJson(json);
        checkUpdateDeploymentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/deployments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_scriptId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/deployments/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_deploymentId"));

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
        var resp = convert.json.encode(buildDeployment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_scriptId, arg_deploymentId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeployment(response);
      })));
    });
  });

  unittest.group("resource-ProjectsVersionsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsVersionsResourceApi res =
          new api.ScriptApi(mock).projects.versions;
      var arg_request = buildVersion();
      var arg_scriptId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Version.fromJson(json);
        checkVersion(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/versions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_scriptId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/versions"));
        pathOffset += 9;

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
        var resp = convert.json.encode(buildVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_scriptId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVersion(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsVersionsResourceApi res =
          new api.ScriptApi(mock).projects.versions;
      var arg_scriptId = "foo";
      var arg_versionNumber = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/versions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_scriptId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/versions/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_versionNumber"));

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
        var resp = convert.json.encode(buildVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_scriptId, arg_versionNumber, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVersion(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsVersionsResourceApi res =
          new api.ScriptApi(mock).projects.versions;
      var arg_scriptId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/versions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_scriptId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/versions"));
        pathOffset += 9;

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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListVersionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_scriptId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListVersionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ScriptsResourceApi", () {
    unittest.test("method--run", () {
      var mock = new HttpServerMock();
      api.ScriptsResourceApi res = new api.ScriptApi(mock).scripts;
      var arg_request = buildExecutionRequest();
      var arg_scriptId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ExecutionRequest.fromJson(json);
        checkExecutionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/scripts/"));
        pathOffset += 11;
        index = path.indexOf(":run", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_scriptId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals(":run"));
        pathOffset += 4;

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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .run(arg_request, arg_scriptId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });
}
