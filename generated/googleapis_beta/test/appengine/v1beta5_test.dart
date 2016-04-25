library googleapis_beta.appengine.v1beta5.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis_beta/appengine/v1beta5.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request.finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
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

http.StreamedResponse stringResponse(
    core.int status, core.Map headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterApiConfigHandler = 0;
buildApiConfigHandler() {
  var o = new api.ApiConfigHandler();
  buildCounterApiConfigHandler++;
  if (buildCounterApiConfigHandler < 3) {
    o.authFailAction = "foo";
    o.login = "foo";
    o.script = "foo";
    o.securityLevel = "foo";
    o.url = "foo";
  }
  buildCounterApiConfigHandler--;
  return o;
}

checkApiConfigHandler(api.ApiConfigHandler o) {
  buildCounterApiConfigHandler++;
  if (buildCounterApiConfigHandler < 3) {
    unittest.expect(o.authFailAction, unittest.equals('foo'));
    unittest.expect(o.login, unittest.equals('foo'));
    unittest.expect(o.script, unittest.equals('foo'));
    unittest.expect(o.securityLevel, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterApiConfigHandler--;
}

core.int buildCounterApiEndpointHandler = 0;
buildApiEndpointHandler() {
  var o = new api.ApiEndpointHandler();
  buildCounterApiEndpointHandler++;
  if (buildCounterApiEndpointHandler < 3) {
    o.scriptPath = "foo";
  }
  buildCounterApiEndpointHandler--;
  return o;
}

checkApiEndpointHandler(api.ApiEndpointHandler o) {
  buildCounterApiEndpointHandler++;
  if (buildCounterApiEndpointHandler < 3) {
    unittest.expect(o.scriptPath, unittest.equals('foo'));
  }
  buildCounterApiEndpointHandler--;
}

buildUnnamed3772() {
  var o = new core.List<api.UrlDispatchRule>();
  o.add(buildUrlDispatchRule());
  o.add(buildUrlDispatchRule());
  return o;
}

checkUnnamed3772(core.List<api.UrlDispatchRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUrlDispatchRule(o[0]);
  checkUrlDispatchRule(o[1]);
}

core.int buildCounterApplication = 0;
buildApplication() {
  var o = new api.Application();
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    o.authDomain = "foo";
    o.codeBucket = "foo";
    o.defaultBucket = "foo";
    o.defaultCookieExpiration = "foo";
    o.defaultHostname = "foo";
    o.dispatchRules = buildUnnamed3772();
    o.id = "foo";
    o.location = "foo";
    o.name = "foo";
  }
  buildCounterApplication--;
  return o;
}

checkApplication(api.Application o) {
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    unittest.expect(o.authDomain, unittest.equals('foo'));
    unittest.expect(o.codeBucket, unittest.equals('foo'));
    unittest.expect(o.defaultBucket, unittest.equals('foo'));
    unittest.expect(o.defaultCookieExpiration, unittest.equals('foo'));
    unittest.expect(o.defaultHostname, unittest.equals('foo'));
    checkUnnamed3772(o.dispatchRules);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterApplication--;
}

core.int buildCounterAutomaticScaling = 0;
buildAutomaticScaling() {
  var o = new api.AutomaticScaling();
  buildCounterAutomaticScaling++;
  if (buildCounterAutomaticScaling < 3) {
    o.coolDownPeriod = "foo";
    o.cpuUtilization = buildCpuUtilization();
    o.diskUtilization = buildDiskUtilization();
    o.maxConcurrentRequests = 42;
    o.maxIdleInstances = 42;
    o.maxPendingLatency = "foo";
    o.maxTotalInstances = 42;
    o.minIdleInstances = 42;
    o.minPendingLatency = "foo";
    o.minTotalInstances = 42;
    o.networkUtilization = buildNetworkUtilization();
    o.requestUtilization = buildRequestUtilization();
  }
  buildCounterAutomaticScaling--;
  return o;
}

checkAutomaticScaling(api.AutomaticScaling o) {
  buildCounterAutomaticScaling++;
  if (buildCounterAutomaticScaling < 3) {
    unittest.expect(o.coolDownPeriod, unittest.equals('foo'));
    checkCpuUtilization(o.cpuUtilization);
    checkDiskUtilization(o.diskUtilization);
    unittest.expect(o.maxConcurrentRequests, unittest.equals(42));
    unittest.expect(o.maxIdleInstances, unittest.equals(42));
    unittest.expect(o.maxPendingLatency, unittest.equals('foo'));
    unittest.expect(o.maxTotalInstances, unittest.equals(42));
    unittest.expect(o.minIdleInstances, unittest.equals(42));
    unittest.expect(o.minPendingLatency, unittest.equals('foo'));
    unittest.expect(o.minTotalInstances, unittest.equals(42));
    checkNetworkUtilization(o.networkUtilization);
    checkRequestUtilization(o.requestUtilization);
  }
  buildCounterAutomaticScaling--;
}

core.int buildCounterBasicScaling = 0;
buildBasicScaling() {
  var o = new api.BasicScaling();
  buildCounterBasicScaling++;
  if (buildCounterBasicScaling < 3) {
    o.idleTimeout = "foo";
    o.maxInstances = 42;
  }
  buildCounterBasicScaling--;
  return o;
}

checkBasicScaling(api.BasicScaling o) {
  buildCounterBasicScaling++;
  if (buildCounterBasicScaling < 3) {
    unittest.expect(o.idleTimeout, unittest.equals('foo'));
    unittest.expect(o.maxInstances, unittest.equals(42));
  }
  buildCounterBasicScaling--;
}

core.int buildCounterContainerInfo = 0;
buildContainerInfo() {
  var o = new api.ContainerInfo();
  buildCounterContainerInfo++;
  if (buildCounterContainerInfo < 3) {
    o.image = "foo";
  }
  buildCounterContainerInfo--;
  return o;
}

checkContainerInfo(api.ContainerInfo o) {
  buildCounterContainerInfo++;
  if (buildCounterContainerInfo < 3) {
    unittest.expect(o.image, unittest.equals('foo'));
  }
  buildCounterContainerInfo--;
}

core.int buildCounterCpuUtilization = 0;
buildCpuUtilization() {
  var o = new api.CpuUtilization();
  buildCounterCpuUtilization++;
  if (buildCounterCpuUtilization < 3) {
    o.aggregationWindowLength = "foo";
    o.targetUtilization = 42.0;
  }
  buildCounterCpuUtilization--;
  return o;
}

checkCpuUtilization(api.CpuUtilization o) {
  buildCounterCpuUtilization++;
  if (buildCounterCpuUtilization < 3) {
    unittest.expect(o.aggregationWindowLength, unittest.equals('foo'));
    unittest.expect(o.targetUtilization, unittest.equals(42.0));
  }
  buildCounterCpuUtilization--;
}

buildUnnamed3773() {
  var o = new core.Map<core.String, api.FileInfo>();
  o["x"] = buildFileInfo();
  o["y"] = buildFileInfo();
  return o;
}

checkUnnamed3773(core.Map<core.String, api.FileInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileInfo(o["x"]);
  checkFileInfo(o["y"]);
}

buildUnnamed3774() {
  var o = new core.List<api.SourceReference>();
  o.add(buildSourceReference());
  o.add(buildSourceReference());
  return o;
}

checkUnnamed3774(core.List<api.SourceReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceReference(o[0]);
  checkSourceReference(o[1]);
}

core.int buildCounterDeployment = 0;
buildDeployment() {
  var o = new api.Deployment();
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    o.container = buildContainerInfo();
    o.files = buildUnnamed3773();
    o.sourceReferences = buildUnnamed3774();
  }
  buildCounterDeployment--;
  return o;
}

checkDeployment(api.Deployment o) {
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    checkContainerInfo(o.container);
    checkUnnamed3773(o.files);
    checkUnnamed3774(o.sourceReferences);
  }
  buildCounterDeployment--;
}

core.int buildCounterDiskUtilization = 0;
buildDiskUtilization() {
  var o = new api.DiskUtilization();
  buildCounterDiskUtilization++;
  if (buildCounterDiskUtilization < 3) {
    o.targetReadBytesPerSec = 42;
    o.targetReadOpsPerSec = 42;
    o.targetWriteBytesPerSec = 42;
    o.targetWriteOpsPerSec = 42;
  }
  buildCounterDiskUtilization--;
  return o;
}

checkDiskUtilization(api.DiskUtilization o) {
  buildCounterDiskUtilization++;
  if (buildCounterDiskUtilization < 3) {
    unittest.expect(o.targetReadBytesPerSec, unittest.equals(42));
    unittest.expect(o.targetReadOpsPerSec, unittest.equals(42));
    unittest.expect(o.targetWriteBytesPerSec, unittest.equals(42));
    unittest.expect(o.targetWriteOpsPerSec, unittest.equals(42));
  }
  buildCounterDiskUtilization--;
}

core.int buildCounterErrorHandler = 0;
buildErrorHandler() {
  var o = new api.ErrorHandler();
  buildCounterErrorHandler++;
  if (buildCounterErrorHandler < 3) {
    o.errorCode = "foo";
    o.mimeType = "foo";
    o.staticFile = "foo";
  }
  buildCounterErrorHandler--;
  return o;
}

checkErrorHandler(api.ErrorHandler o) {
  buildCounterErrorHandler++;
  if (buildCounterErrorHandler < 3) {
    unittest.expect(o.errorCode, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.staticFile, unittest.equals('foo'));
  }
  buildCounterErrorHandler--;
}

core.int buildCounterFileInfo = 0;
buildFileInfo() {
  var o = new api.FileInfo();
  buildCounterFileInfo++;
  if (buildCounterFileInfo < 3) {
    o.mimeType = "foo";
    o.sha1Sum = "foo";
    o.sourceUrl = "foo";
  }
  buildCounterFileInfo--;
  return o;
}

checkFileInfo(api.FileInfo o) {
  buildCounterFileInfo++;
  if (buildCounterFileInfo < 3) {
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.sha1Sum, unittest.equals('foo'));
    unittest.expect(o.sourceUrl, unittest.equals('foo'));
  }
  buildCounterFileInfo--;
}

core.int buildCounterHealthCheck = 0;
buildHealthCheck() {
  var o = new api.HealthCheck();
  buildCounterHealthCheck++;
  if (buildCounterHealthCheck < 3) {
    o.checkInterval = "foo";
    o.disableHealthCheck = true;
    o.healthyThreshold = 42;
    o.host = "foo";
    o.restartThreshold = 42;
    o.timeout = "foo";
    o.unhealthyThreshold = 42;
  }
  buildCounterHealthCheck--;
  return o;
}

checkHealthCheck(api.HealthCheck o) {
  buildCounterHealthCheck++;
  if (buildCounterHealthCheck < 3) {
    unittest.expect(o.checkInterval, unittest.equals('foo'));
    unittest.expect(o.disableHealthCheck, unittest.isTrue);
    unittest.expect(o.healthyThreshold, unittest.equals(42));
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.restartThreshold, unittest.equals(42));
    unittest.expect(o.timeout, unittest.equals('foo'));
    unittest.expect(o.unhealthyThreshold, unittest.equals(42));
  }
  buildCounterHealthCheck--;
}

core.int buildCounterInstance = 0;
buildInstance() {
  var o = new api.Instance();
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    o.appEngineRelease = "foo";
    o.availability = "foo";
    o.averageLatency = 42;
    o.errors = 42;
    o.id = "foo";
    o.memoryUsage = "foo";
    o.name = "foo";
    o.qps = 42.0;
    o.requests = 42;
    o.startTimestamp = "foo";
    o.vmId = "foo";
    o.vmName = "foo";
    o.vmStatus = "foo";
    o.vmUnlocked = true;
    o.vmZoneName = "foo";
  }
  buildCounterInstance--;
  return o;
}

checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    unittest.expect(o.appEngineRelease, unittest.equals('foo'));
    unittest.expect(o.availability, unittest.equals('foo'));
    unittest.expect(o.averageLatency, unittest.equals(42));
    unittest.expect(o.errors, unittest.equals(42));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.memoryUsage, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.qps, unittest.equals(42.0));
    unittest.expect(o.requests, unittest.equals(42));
    unittest.expect(o.startTimestamp, unittest.equals('foo'));
    unittest.expect(o.vmId, unittest.equals('foo'));
    unittest.expect(o.vmName, unittest.equals('foo'));
    unittest.expect(o.vmStatus, unittest.equals('foo'));
    unittest.expect(o.vmUnlocked, unittest.isTrue);
    unittest.expect(o.vmZoneName, unittest.equals('foo'));
  }
  buildCounterInstance--;
}

core.int buildCounterLibrary = 0;
buildLibrary() {
  var o = new api.Library();
  buildCounterLibrary++;
  if (buildCounterLibrary < 3) {
    o.name = "foo";
    o.version = "foo";
  }
  buildCounterLibrary--;
  return o;
}

checkLibrary(api.Library o) {
  buildCounterLibrary++;
  if (buildCounterLibrary < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterLibrary--;
}

buildUnnamed3775() {
  var o = new core.List<api.Instance>();
  o.add(buildInstance());
  o.add(buildInstance());
  return o;
}

checkUnnamed3775(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
}

core.int buildCounterListInstancesResponse = 0;
buildListInstancesResponse() {
  var o = new api.ListInstancesResponse();
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    o.instances = buildUnnamed3775();
    o.nextPageToken = "foo";
  }
  buildCounterListInstancesResponse--;
  return o;
}

checkListInstancesResponse(api.ListInstancesResponse o) {
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    checkUnnamed3775(o.instances);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListInstancesResponse--;
}

buildUnnamed3776() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed3776(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
buildListOperationsResponse() {
  var o = new api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed3776();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3776(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed3777() {
  var o = new core.List<api.Service>();
  o.add(buildService());
  o.add(buildService());
  return o;
}

checkUnnamed3777(core.List<api.Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkService(o[0]);
  checkService(o[1]);
}

core.int buildCounterListServicesResponse = 0;
buildListServicesResponse() {
  var o = new api.ListServicesResponse();
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    o.nextPageToken = "foo";
    o.services = buildUnnamed3777();
  }
  buildCounterListServicesResponse--;
  return o;
}

checkListServicesResponse(api.ListServicesResponse o) {
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3777(o.services);
  }
  buildCounterListServicesResponse--;
}

buildUnnamed3778() {
  var o = new core.List<api.Version>();
  o.add(buildVersion());
  o.add(buildVersion());
  return o;
}

checkUnnamed3778(core.List<api.Version> o) {
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
    o.versions = buildUnnamed3778();
  }
  buildCounterListVersionsResponse--;
  return o;
}

checkListVersionsResponse(api.ListVersionsResponse o) {
  buildCounterListVersionsResponse++;
  if (buildCounterListVersionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3778(o.versions);
  }
  buildCounterListVersionsResponse--;
}

core.int buildCounterManualScaling = 0;
buildManualScaling() {
  var o = new api.ManualScaling();
  buildCounterManualScaling++;
  if (buildCounterManualScaling < 3) {
    o.instances = 42;
  }
  buildCounterManualScaling--;
  return o;
}

checkManualScaling(api.ManualScaling o) {
  buildCounterManualScaling++;
  if (buildCounterManualScaling < 3) {
    unittest.expect(o.instances, unittest.equals(42));
  }
  buildCounterManualScaling--;
}

buildUnnamed3779() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3779(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNetwork = 0;
buildNetwork() {
  var o = new api.Network();
  buildCounterNetwork++;
  if (buildCounterNetwork < 3) {
    o.forwardedPorts = buildUnnamed3779();
    o.instanceTag = "foo";
    o.name = "foo";
  }
  buildCounterNetwork--;
  return o;
}

checkNetwork(api.Network o) {
  buildCounterNetwork++;
  if (buildCounterNetwork < 3) {
    checkUnnamed3779(o.forwardedPorts);
    unittest.expect(o.instanceTag, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterNetwork--;
}

core.int buildCounterNetworkUtilization = 0;
buildNetworkUtilization() {
  var o = new api.NetworkUtilization();
  buildCounterNetworkUtilization++;
  if (buildCounterNetworkUtilization < 3) {
    o.targetReceivedBytesPerSec = 42;
    o.targetReceivedPacketsPerSec = 42;
    o.targetSentBytesPerSec = 42;
    o.targetSentPacketsPerSec = 42;
  }
  buildCounterNetworkUtilization--;
  return o;
}

checkNetworkUtilization(api.NetworkUtilization o) {
  buildCounterNetworkUtilization++;
  if (buildCounterNetworkUtilization < 3) {
    unittest.expect(o.targetReceivedBytesPerSec, unittest.equals(42));
    unittest.expect(o.targetReceivedPacketsPerSec, unittest.equals(42));
    unittest.expect(o.targetSentBytesPerSec, unittest.equals(42));
    unittest.expect(o.targetSentPacketsPerSec, unittest.equals(42));
  }
  buildCounterNetworkUtilization--;
}

buildUnnamed3780() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed3780(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o["y"]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

buildUnnamed3781() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed3781(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map; unittest.expect(casted3, unittest.hasLength(3)); unittest.expect(casted3["list"], unittest.equals([1, 2, 3])); unittest.expect(casted3["bool"], unittest.equals(true)); unittest.expect(casted3["string"], unittest.equals('foo')); 
  var casted4 = (o["y"]) as core.Map; unittest.expect(casted4, unittest.hasLength(3)); unittest.expect(casted4["list"], unittest.equals([1, 2, 3])); unittest.expect(casted4["bool"], unittest.equals(true)); unittest.expect(casted4["string"], unittest.equals('foo')); 
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed3780();
    o.name = "foo";
    o.response = buildUnnamed3781();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed3780(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3781(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationMetadata = 0;
buildOperationMetadata() {
  var o = new api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.endTime = "foo";
    o.insertTime = "foo";
    o.method = "foo";
    o.operationType = "foo";
    o.target = "foo";
    o.user = "foo";
  }
  buildCounterOperationMetadata--;
  return o;
}

checkOperationMetadata(api.OperationMetadata o) {
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.insertTime, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.operationType, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.user, unittest.equals('foo'));
  }
  buildCounterOperationMetadata--;
}

core.int buildCounterOperationMetadataV1Beta5 = 0;
buildOperationMetadataV1Beta5() {
  var o = new api.OperationMetadataV1Beta5();
  buildCounterOperationMetadataV1Beta5++;
  if (buildCounterOperationMetadataV1Beta5 < 3) {
    o.endTime = "foo";
    o.insertTime = "foo";
    o.method = "foo";
    o.target = "foo";
    o.user = "foo";
  }
  buildCounterOperationMetadataV1Beta5--;
  return o;
}

checkOperationMetadataV1Beta5(api.OperationMetadataV1Beta5 o) {
  buildCounterOperationMetadataV1Beta5++;
  if (buildCounterOperationMetadataV1Beta5 < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.insertTime, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.user, unittest.equals('foo'));
  }
  buildCounterOperationMetadataV1Beta5--;
}

core.int buildCounterRequestUtilization = 0;
buildRequestUtilization() {
  var o = new api.RequestUtilization();
  buildCounterRequestUtilization++;
  if (buildCounterRequestUtilization < 3) {
    o.targetConcurrentRequests = 42;
    o.targetRequestCountPerSec = 42;
  }
  buildCounterRequestUtilization--;
  return o;
}

checkRequestUtilization(api.RequestUtilization o) {
  buildCounterRequestUtilization++;
  if (buildCounterRequestUtilization < 3) {
    unittest.expect(o.targetConcurrentRequests, unittest.equals(42));
    unittest.expect(o.targetRequestCountPerSec, unittest.equals(42));
  }
  buildCounterRequestUtilization--;
}

core.int buildCounterResources = 0;
buildResources() {
  var o = new api.Resources();
  buildCounterResources++;
  if (buildCounterResources < 3) {
    o.cpu = 42.0;
    o.diskGb = 42.0;
    o.memoryGb = 42.0;
  }
  buildCounterResources--;
  return o;
}

checkResources(api.Resources o) {
  buildCounterResources++;
  if (buildCounterResources < 3) {
    unittest.expect(o.cpu, unittest.equals(42.0));
    unittest.expect(o.diskGb, unittest.equals(42.0));
    unittest.expect(o.memoryGb, unittest.equals(42.0));
  }
  buildCounterResources--;
}

core.int buildCounterScriptHandler = 0;
buildScriptHandler() {
  var o = new api.ScriptHandler();
  buildCounterScriptHandler++;
  if (buildCounterScriptHandler < 3) {
    o.scriptPath = "foo";
  }
  buildCounterScriptHandler--;
  return o;
}

checkScriptHandler(api.ScriptHandler o) {
  buildCounterScriptHandler++;
  if (buildCounterScriptHandler < 3) {
    unittest.expect(o.scriptPath, unittest.equals('foo'));
  }
  buildCounterScriptHandler--;
}

core.int buildCounterService = 0;
buildService() {
  var o = new api.Service();
  buildCounterService++;
  if (buildCounterService < 3) {
    o.id = "foo";
    o.name = "foo";
    o.split = buildTrafficSplit();
  }
  buildCounterService--;
  return o;
}

checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkTrafficSplit(o.split);
  }
  buildCounterService--;
}

core.int buildCounterSourceReference = 0;
buildSourceReference() {
  var o = new api.SourceReference();
  buildCounterSourceReference++;
  if (buildCounterSourceReference < 3) {
    o.repository = "foo";
    o.revisionId = "foo";
  }
  buildCounterSourceReference--;
  return o;
}

checkSourceReference(api.SourceReference o) {
  buildCounterSourceReference++;
  if (buildCounterSourceReference < 3) {
    unittest.expect(o.repository, unittest.equals('foo'));
    unittest.expect(o.revisionId, unittest.equals('foo'));
  }
  buildCounterSourceReference--;
}

buildUnnamed3782() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3782(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterStaticFilesHandler = 0;
buildStaticFilesHandler() {
  var o = new api.StaticFilesHandler();
  buildCounterStaticFilesHandler++;
  if (buildCounterStaticFilesHandler < 3) {
    o.applicationReadable = true;
    o.expiration = "foo";
    o.httpHeaders = buildUnnamed3782();
    o.mimeType = "foo";
    o.path = "foo";
    o.requireMatchingFile = true;
    o.uploadPathRegex = "foo";
  }
  buildCounterStaticFilesHandler--;
  return o;
}

checkStaticFilesHandler(api.StaticFilesHandler o) {
  buildCounterStaticFilesHandler++;
  if (buildCounterStaticFilesHandler < 3) {
    unittest.expect(o.applicationReadable, unittest.isTrue);
    unittest.expect(o.expiration, unittest.equals('foo'));
    checkUnnamed3782(o.httpHeaders);
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.requireMatchingFile, unittest.isTrue);
    unittest.expect(o.uploadPathRegex, unittest.equals('foo'));
  }
  buildCounterStaticFilesHandler--;
}

buildUnnamed3783() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed3783(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map; unittest.expect(casted5, unittest.hasLength(3)); unittest.expect(casted5["list"], unittest.equals([1, 2, 3])); unittest.expect(casted5["bool"], unittest.equals(true)); unittest.expect(casted5["string"], unittest.equals('foo')); 
  var casted6 = (o["y"]) as core.Map; unittest.expect(casted6, unittest.hasLength(3)); unittest.expect(casted6["list"], unittest.equals([1, 2, 3])); unittest.expect(casted6["bool"], unittest.equals(true)); unittest.expect(casted6["string"], unittest.equals('foo')); 
}

buildUnnamed3784() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed3783());
  o.add(buildUnnamed3783());
  return o;
}

checkUnnamed3784(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3783(o[0]);
  checkUnnamed3783(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3784();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3784(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed3785() {
  var o = new core.Map<core.String, core.double>();
  o["x"] = 42.0;
  o["y"] = 42.0;
  return o;
}

checkUnnamed3785(core.Map<core.String, core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals(42.0));
  unittest.expect(o["y"], unittest.equals(42.0));
}

core.int buildCounterTrafficSplit = 0;
buildTrafficSplit() {
  var o = new api.TrafficSplit();
  buildCounterTrafficSplit++;
  if (buildCounterTrafficSplit < 3) {
    o.allocations = buildUnnamed3785();
    o.shardBy = "foo";
  }
  buildCounterTrafficSplit--;
  return o;
}

checkTrafficSplit(api.TrafficSplit o) {
  buildCounterTrafficSplit++;
  if (buildCounterTrafficSplit < 3) {
    checkUnnamed3785(o.allocations);
    unittest.expect(o.shardBy, unittest.equals('foo'));
  }
  buildCounterTrafficSplit--;
}

core.int buildCounterUrlDispatchRule = 0;
buildUrlDispatchRule() {
  var o = new api.UrlDispatchRule();
  buildCounterUrlDispatchRule++;
  if (buildCounterUrlDispatchRule < 3) {
    o.domain = "foo";
    o.path = "foo";
    o.service = "foo";
  }
  buildCounterUrlDispatchRule--;
  return o;
}

checkUrlDispatchRule(api.UrlDispatchRule o) {
  buildCounterUrlDispatchRule++;
  if (buildCounterUrlDispatchRule < 3) {
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterUrlDispatchRule--;
}

core.int buildCounterUrlMap = 0;
buildUrlMap() {
  var o = new api.UrlMap();
  buildCounterUrlMap++;
  if (buildCounterUrlMap < 3) {
    o.apiEndpoint = buildApiEndpointHandler();
    o.authFailAction = "foo";
    o.login = "foo";
    o.redirectHttpResponseCode = "foo";
    o.script = buildScriptHandler();
    o.securityLevel = "foo";
    o.staticFiles = buildStaticFilesHandler();
    o.urlRegex = "foo";
  }
  buildCounterUrlMap--;
  return o;
}

checkUrlMap(api.UrlMap o) {
  buildCounterUrlMap++;
  if (buildCounterUrlMap < 3) {
    checkApiEndpointHandler(o.apiEndpoint);
    unittest.expect(o.authFailAction, unittest.equals('foo'));
    unittest.expect(o.login, unittest.equals('foo'));
    unittest.expect(o.redirectHttpResponseCode, unittest.equals('foo'));
    checkScriptHandler(o.script);
    unittest.expect(o.securityLevel, unittest.equals('foo'));
    checkStaticFilesHandler(o.staticFiles);
    unittest.expect(o.urlRegex, unittest.equals('foo'));
  }
  buildCounterUrlMap--;
}

buildUnnamed3786() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3786(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3787() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3787(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3788() {
  var o = new core.List<api.ErrorHandler>();
  o.add(buildErrorHandler());
  o.add(buildErrorHandler());
  return o;
}

checkUnnamed3788(core.List<api.ErrorHandler> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorHandler(o[0]);
  checkErrorHandler(o[1]);
}

buildUnnamed3789() {
  var o = new core.List<api.UrlMap>();
  o.add(buildUrlMap());
  o.add(buildUrlMap());
  return o;
}

checkUnnamed3789(core.List<api.UrlMap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUrlMap(o[0]);
  checkUrlMap(o[1]);
}

buildUnnamed3790() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3790(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3791() {
  var o = new core.List<api.Library>();
  o.add(buildLibrary());
  o.add(buildLibrary());
  return o;
}

checkUnnamed3791(core.List<api.Library> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLibrary(o[0]);
  checkLibrary(o[1]);
}

core.int buildCounterVersion = 0;
buildVersion() {
  var o = new api.Version();
  buildCounterVersion++;
  if (buildCounterVersion < 3) {
    o.apiConfig = buildApiConfigHandler();
    o.automaticScaling = buildAutomaticScaling();
    o.basicScaling = buildBasicScaling();
    o.betaSettings = buildUnnamed3786();
    o.creationTime = "foo";
    o.defaultExpiration = "foo";
    o.deployer = "foo";
    o.deployment = buildDeployment();
    o.diskUsageBytes = "foo";
    o.env = "foo";
    o.envVariables = buildUnnamed3787();
    o.errorHandlers = buildUnnamed3788();
    o.handlers = buildUnnamed3789();
    o.healthCheck = buildHealthCheck();
    o.id = "foo";
    o.inboundServices = buildUnnamed3790();
    o.instanceClass = "foo";
    o.libraries = buildUnnamed3791();
    o.manualScaling = buildManualScaling();
    o.name = "foo";
    o.network = buildNetwork();
    o.nobuildFilesRegex = "foo";
    o.resources = buildResources();
    o.runtime = "foo";
    o.servingStatus = "foo";
    o.threadsafe = true;
    o.vm = true;
  }
  buildCounterVersion--;
  return o;
}

checkVersion(api.Version o) {
  buildCounterVersion++;
  if (buildCounterVersion < 3) {
    checkApiConfigHandler(o.apiConfig);
    checkAutomaticScaling(o.automaticScaling);
    checkBasicScaling(o.basicScaling);
    checkUnnamed3786(o.betaSettings);
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.defaultExpiration, unittest.equals('foo'));
    unittest.expect(o.deployer, unittest.equals('foo'));
    checkDeployment(o.deployment);
    unittest.expect(o.diskUsageBytes, unittest.equals('foo'));
    unittest.expect(o.env, unittest.equals('foo'));
    checkUnnamed3787(o.envVariables);
    checkUnnamed3788(o.errorHandlers);
    checkUnnamed3789(o.handlers);
    checkHealthCheck(o.healthCheck);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed3790(o.inboundServices);
    unittest.expect(o.instanceClass, unittest.equals('foo'));
    checkUnnamed3791(o.libraries);
    checkManualScaling(o.manualScaling);
    unittest.expect(o.name, unittest.equals('foo'));
    checkNetwork(o.network);
    unittest.expect(o.nobuildFilesRegex, unittest.equals('foo'));
    checkResources(o.resources);
    unittest.expect(o.runtime, unittest.equals('foo'));
    unittest.expect(o.servingStatus, unittest.equals('foo'));
    unittest.expect(o.threadsafe, unittest.isTrue);
    unittest.expect(o.vm, unittest.isTrue);
  }
  buildCounterVersion--;
}


main() {
  unittest.group("obj-schema-ApiConfigHandler", () {
    unittest.test("to-json--from-json", () {
      var o = buildApiConfigHandler();
      var od = new api.ApiConfigHandler.fromJson(o.toJson());
      checkApiConfigHandler(od);
    });
  });


  unittest.group("obj-schema-ApiEndpointHandler", () {
    unittest.test("to-json--from-json", () {
      var o = buildApiEndpointHandler();
      var od = new api.ApiEndpointHandler.fromJson(o.toJson());
      checkApiEndpointHandler(od);
    });
  });


  unittest.group("obj-schema-Application", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplication();
      var od = new api.Application.fromJson(o.toJson());
      checkApplication(od);
    });
  });


  unittest.group("obj-schema-AutomaticScaling", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutomaticScaling();
      var od = new api.AutomaticScaling.fromJson(o.toJson());
      checkAutomaticScaling(od);
    });
  });


  unittest.group("obj-schema-BasicScaling", () {
    unittest.test("to-json--from-json", () {
      var o = buildBasicScaling();
      var od = new api.BasicScaling.fromJson(o.toJson());
      checkBasicScaling(od);
    });
  });


  unittest.group("obj-schema-ContainerInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildContainerInfo();
      var od = new api.ContainerInfo.fromJson(o.toJson());
      checkContainerInfo(od);
    });
  });


  unittest.group("obj-schema-CpuUtilization", () {
    unittest.test("to-json--from-json", () {
      var o = buildCpuUtilization();
      var od = new api.CpuUtilization.fromJson(o.toJson());
      checkCpuUtilization(od);
    });
  });


  unittest.group("obj-schema-Deployment", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeployment();
      var od = new api.Deployment.fromJson(o.toJson());
      checkDeployment(od);
    });
  });


  unittest.group("obj-schema-DiskUtilization", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiskUtilization();
      var od = new api.DiskUtilization.fromJson(o.toJson());
      checkDiskUtilization(od);
    });
  });


  unittest.group("obj-schema-ErrorHandler", () {
    unittest.test("to-json--from-json", () {
      var o = buildErrorHandler();
      var od = new api.ErrorHandler.fromJson(o.toJson());
      checkErrorHandler(od);
    });
  });


  unittest.group("obj-schema-FileInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileInfo();
      var od = new api.FileInfo.fromJson(o.toJson());
      checkFileInfo(od);
    });
  });


  unittest.group("obj-schema-HealthCheck", () {
    unittest.test("to-json--from-json", () {
      var o = buildHealthCheck();
      var od = new api.HealthCheck.fromJson(o.toJson());
      checkHealthCheck(od);
    });
  });


  unittest.group("obj-schema-Instance", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstance();
      var od = new api.Instance.fromJson(o.toJson());
      checkInstance(od);
    });
  });


  unittest.group("obj-schema-Library", () {
    unittest.test("to-json--from-json", () {
      var o = buildLibrary();
      var od = new api.Library.fromJson(o.toJson());
      checkLibrary(od);
    });
  });


  unittest.group("obj-schema-ListInstancesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListInstancesResponse();
      var od = new api.ListInstancesResponse.fromJson(o.toJson());
      checkListInstancesResponse(od);
    });
  });


  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });


  unittest.group("obj-schema-ListServicesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListServicesResponse();
      var od = new api.ListServicesResponse.fromJson(o.toJson());
      checkListServicesResponse(od);
    });
  });


  unittest.group("obj-schema-ListVersionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListVersionsResponse();
      var od = new api.ListVersionsResponse.fromJson(o.toJson());
      checkListVersionsResponse(od);
    });
  });


  unittest.group("obj-schema-ManualScaling", () {
    unittest.test("to-json--from-json", () {
      var o = buildManualScaling();
      var od = new api.ManualScaling.fromJson(o.toJson());
      checkManualScaling(od);
    });
  });


  unittest.group("obj-schema-Network", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetwork();
      var od = new api.Network.fromJson(o.toJson());
      checkNetwork(od);
    });
  });


  unittest.group("obj-schema-NetworkUtilization", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetworkUtilization();
      var od = new api.NetworkUtilization.fromJson(o.toJson());
      checkNetworkUtilization(od);
    });
  });


  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });


  unittest.group("obj-schema-OperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadata();
      var od = new api.OperationMetadata.fromJson(o.toJson());
      checkOperationMetadata(od);
    });
  });


  unittest.group("obj-schema-OperationMetadataV1Beta5", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadataV1Beta5();
      var od = new api.OperationMetadataV1Beta5.fromJson(o.toJson());
      checkOperationMetadataV1Beta5(od);
    });
  });


  unittest.group("obj-schema-RequestUtilization", () {
    unittest.test("to-json--from-json", () {
      var o = buildRequestUtilization();
      var od = new api.RequestUtilization.fromJson(o.toJson());
      checkRequestUtilization(od);
    });
  });


  unittest.group("obj-schema-Resources", () {
    unittest.test("to-json--from-json", () {
      var o = buildResources();
      var od = new api.Resources.fromJson(o.toJson());
      checkResources(od);
    });
  });


  unittest.group("obj-schema-ScriptHandler", () {
    unittest.test("to-json--from-json", () {
      var o = buildScriptHandler();
      var od = new api.ScriptHandler.fromJson(o.toJson());
      checkScriptHandler(od);
    });
  });


  unittest.group("obj-schema-Service", () {
    unittest.test("to-json--from-json", () {
      var o = buildService();
      var od = new api.Service.fromJson(o.toJson());
      checkService(od);
    });
  });


  unittest.group("obj-schema-SourceReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceReference();
      var od = new api.SourceReference.fromJson(o.toJson());
      checkSourceReference(od);
    });
  });


  unittest.group("obj-schema-StaticFilesHandler", () {
    unittest.test("to-json--from-json", () {
      var o = buildStaticFilesHandler();
      var od = new api.StaticFilesHandler.fromJson(o.toJson());
      checkStaticFilesHandler(od);
    });
  });


  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });


  unittest.group("obj-schema-TrafficSplit", () {
    unittest.test("to-json--from-json", () {
      var o = buildTrafficSplit();
      var od = new api.TrafficSplit.fromJson(o.toJson());
      checkTrafficSplit(od);
    });
  });


  unittest.group("obj-schema-UrlDispatchRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrlDispatchRule();
      var od = new api.UrlDispatchRule.fromJson(o.toJson());
      checkUrlDispatchRule(od);
    });
  });


  unittest.group("obj-schema-UrlMap", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrlMap();
      var od = new api.UrlMap.fromJson(o.toJson());
      checkUrlMap(od);
    });
  });


  unittest.group("obj-schema-Version", () {
    unittest.test("to-json--from-json", () {
      var o = buildVersion();
      var od = new api.Version.fromJson(o.toJson());
      checkVersion(od);
    });
  });


  unittest.group("resource-AppsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.AppsResourceApi res = new api.AppengineApi(mock).apps;
      var arg_appsId = "foo";
      var arg_ensureResourcesExist = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("v1beta5/apps/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["ensureResourcesExist"].first, unittest.equals("$arg_ensureResourcesExist"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildApplication());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_appsId, ensureResourcesExist: arg_ensureResourcesExist).then(unittest.expectAsync(((api.Application response) {
        checkApplication(response);
      })));
    });

  });


  unittest.group("resource-AppsOperationsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.AppsOperationsResourceApi res = new api.AppengineApi(mock).apps.operations;
      var arg_appsId = "foo";
      var arg_operationsId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("v1beta5/apps/"));
        pathOffset += 13;
        index = path.indexOf("/operations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/operations/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_operationsId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_appsId, arg_operationsId).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AppsOperationsResourceApi res = new api.AppengineApi(mock).apps.operations;
      var arg_appsId = "foo";
      var arg_filter = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("v1beta5/apps/"));
        pathOffset += 13;
        index = path.indexOf("/operations", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/operations"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_appsId, filter: arg_filter, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListOperationsResponse response) {
        checkListOperationsResponse(response);
      })));
    });

  });


  unittest.group("resource-AppsServicesResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.AppsServicesResourceApi res = new api.AppengineApi(mock).apps.services;
      var arg_appsId = "foo";
      var arg_servicesId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("v1beta5/apps/"));
        pathOffset += 13;
        index = path.indexOf("/services/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/services/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_servicesId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_appsId, arg_servicesId).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.AppsServicesResourceApi res = new api.AppengineApi(mock).apps.services;
      var arg_appsId = "foo";
      var arg_servicesId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("v1beta5/apps/"));
        pathOffset += 13;
        index = path.indexOf("/services/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/services/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_servicesId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildService());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_appsId, arg_servicesId).then(unittest.expectAsync(((api.Service response) {
        checkService(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AppsServicesResourceApi res = new api.AppengineApi(mock).apps.services;
      var arg_appsId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("v1beta5/apps/"));
        pathOffset += 13;
        index = path.indexOf("/services", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/services"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListServicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_appsId, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListServicesResponse response) {
        checkListServicesResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.AppsServicesResourceApi res = new api.AppengineApi(mock).apps.services;
      var arg_request = buildService();
      var arg_appsId = "foo";
      var arg_servicesId = "foo";
      var arg_mask = "foo";
      var arg_migrateTraffic = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Service.fromJson(json);
        checkService(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("v1beta5/apps/"));
        pathOffset += 13;
        index = path.indexOf("/services/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/services/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_servicesId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["mask"].first, unittest.equals(arg_mask));
        unittest.expect(queryMap["migrateTraffic"].first, unittest.equals("$arg_migrateTraffic"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_appsId, arg_servicesId, mask: arg_mask, migrateTraffic: arg_migrateTraffic).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

  });


  unittest.group("resource-AppsServicesVersionsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.AppsServicesVersionsResourceApi res = new api.AppengineApi(mock).apps.services.versions;
      var arg_request = buildVersion();
      var arg_appsId = "foo";
      var arg_servicesId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Version.fromJson(json);
        checkVersion(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("v1beta5/apps/"));
        pathOffset += 13;
        index = path.indexOf("/services/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/services/"));
        pathOffset += 10;
        index = path.indexOf("/versions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_servicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/versions"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_appsId, arg_servicesId).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.AppsServicesVersionsResourceApi res = new api.AppengineApi(mock).apps.services.versions;
      var arg_appsId = "foo";
      var arg_servicesId = "foo";
      var arg_versionsId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("v1beta5/apps/"));
        pathOffset += 13;
        index = path.indexOf("/services/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/services/"));
        pathOffset += 10;
        index = path.indexOf("/versions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_servicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/versions/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_versionsId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_appsId, arg_servicesId, arg_versionsId).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.AppsServicesVersionsResourceApi res = new api.AppengineApi(mock).apps.services.versions;
      var arg_appsId = "foo";
      var arg_servicesId = "foo";
      var arg_versionsId = "foo";
      var arg_view = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("v1beta5/apps/"));
        pathOffset += 13;
        index = path.indexOf("/services/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/services/"));
        pathOffset += 10;
        index = path.indexOf("/versions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_servicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/versions/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_versionsId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_appsId, arg_servicesId, arg_versionsId, view: arg_view).then(unittest.expectAsync(((api.Version response) {
        checkVersion(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AppsServicesVersionsResourceApi res = new api.AppengineApi(mock).apps.services.versions;
      var arg_appsId = "foo";
      var arg_servicesId = "foo";
      var arg_view = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("v1beta5/apps/"));
        pathOffset += 13;
        index = path.indexOf("/services/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/services/"));
        pathOffset += 10;
        index = path.indexOf("/versions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_servicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/versions"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListVersionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_appsId, arg_servicesId, view: arg_view, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListVersionsResponse response) {
        checkListVersionsResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.AppsServicesVersionsResourceApi res = new api.AppengineApi(mock).apps.services.versions;
      var arg_request = buildVersion();
      var arg_appsId = "foo";
      var arg_servicesId = "foo";
      var arg_versionsId = "foo";
      var arg_mask = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Version.fromJson(json);
        checkVersion(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("v1beta5/apps/"));
        pathOffset += 13;
        index = path.indexOf("/services/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/services/"));
        pathOffset += 10;
        index = path.indexOf("/versions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_servicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/versions/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_versionsId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["mask"].first, unittest.equals(arg_mask));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_appsId, arg_servicesId, arg_versionsId, mask: arg_mask).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

  });


  unittest.group("resource-AppsServicesVersionsInstancesResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.AppsServicesVersionsInstancesResourceApi res = new api.AppengineApi(mock).apps.services.versions.instances;
      var arg_appsId = "foo";
      var arg_servicesId = "foo";
      var arg_versionsId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("v1beta5/apps/"));
        pathOffset += 13;
        index = path.indexOf("/services/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/services/"));
        pathOffset += 10;
        index = path.indexOf("/versions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_servicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/versions/"));
        pathOffset += 10;
        index = path.indexOf("/instances", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_versionsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/instances"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListInstancesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_appsId, arg_servicesId, arg_versionsId, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListInstancesResponse response) {
        checkListInstancesResponse(response);
      })));
    });

  });


}

