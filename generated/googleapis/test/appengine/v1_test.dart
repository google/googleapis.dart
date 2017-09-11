library googleapis.appengine.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/appengine/v1.dart' as api;

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

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
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

buildUnnamed2668() {
  var o = new core.List<api.UrlDispatchRule>();
  o.add(buildUrlDispatchRule());
  o.add(buildUrlDispatchRule());
  return o;
}

checkUnnamed2668(core.List<api.UrlDispatchRule> o) {
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
    o.dispatchRules = buildUnnamed2668();
    o.featureSettings = buildFeatureSettings();
    o.gcrDomain = "foo";
    o.iap = buildIdentityAwareProxy();
    o.id = "foo";
    o.locationId = "foo";
    o.name = "foo";
    o.servingStatus = "foo";
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
    checkUnnamed2668(o.dispatchRules);
    checkFeatureSettings(o.featureSettings);
    unittest.expect(o.gcrDomain, unittest.equals('foo'));
    checkIdentityAwareProxy(o.iap);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.locationId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.servingStatus, unittest.equals('foo'));
  }
  buildCounterApplication--;
}

buildUnnamed2669() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2669(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2670() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2670(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuthorizedCertificate = 0;
buildAuthorizedCertificate() {
  var o = new api.AuthorizedCertificate();
  buildCounterAuthorizedCertificate++;
  if (buildCounterAuthorizedCertificate < 3) {
    o.certificateRawData = buildCertificateRawData();
    o.displayName = "foo";
    o.domainMappingsCount = 42;
    o.domainNames = buildUnnamed2669();
    o.expireTime = "foo";
    o.id = "foo";
    o.name = "foo";
    o.visibleDomainMappings = buildUnnamed2670();
  }
  buildCounterAuthorizedCertificate--;
  return o;
}

checkAuthorizedCertificate(api.AuthorizedCertificate o) {
  buildCounterAuthorizedCertificate++;
  if (buildCounterAuthorizedCertificate < 3) {
    checkCertificateRawData(o.certificateRawData);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.domainMappingsCount, unittest.equals(42));
    checkUnnamed2669(o.domainNames);
    unittest.expect(o.expireTime, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2670(o.visibleDomainMappings);
  }
  buildCounterAuthorizedCertificate--;
}

core.int buildCounterAuthorizedDomain = 0;
buildAuthorizedDomain() {
  var o = new api.AuthorizedDomain();
  buildCounterAuthorizedDomain++;
  if (buildCounterAuthorizedDomain < 3) {
    o.id = "foo";
    o.name = "foo";
  }
  buildCounterAuthorizedDomain--;
  return o;
}

checkAuthorizedDomain(api.AuthorizedDomain o) {
  buildCounterAuthorizedDomain++;
  if (buildCounterAuthorizedDomain < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterAuthorizedDomain--;
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

core.int buildCounterCertificateRawData = 0;
buildCertificateRawData() {
  var o = new api.CertificateRawData();
  buildCounterCertificateRawData++;
  if (buildCounterCertificateRawData < 3) {
    o.privateKey = "foo";
    o.publicCertificate = "foo";
  }
  buildCounterCertificateRawData--;
  return o;
}

checkCertificateRawData(api.CertificateRawData o) {
  buildCounterCertificateRawData++;
  if (buildCounterCertificateRawData < 3) {
    unittest.expect(o.privateKey, unittest.equals('foo'));
    unittest.expect(o.publicCertificate, unittest.equals('foo'));
  }
  buildCounterCertificateRawData--;
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

core.int buildCounterDebugInstanceRequest = 0;
buildDebugInstanceRequest() {
  var o = new api.DebugInstanceRequest();
  buildCounterDebugInstanceRequest++;
  if (buildCounterDebugInstanceRequest < 3) {
    o.sshKey = "foo";
  }
  buildCounterDebugInstanceRequest--;
  return o;
}

checkDebugInstanceRequest(api.DebugInstanceRequest o) {
  buildCounterDebugInstanceRequest++;
  if (buildCounterDebugInstanceRequest < 3) {
    unittest.expect(o.sshKey, unittest.equals('foo'));
  }
  buildCounterDebugInstanceRequest--;
}

buildUnnamed2671() {
  var o = new core.Map<core.String, api.FileInfo>();
  o["x"] = buildFileInfo();
  o["y"] = buildFileInfo();
  return o;
}

checkUnnamed2671(core.Map<core.String, api.FileInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileInfo(o["x"]);
  checkFileInfo(o["y"]);
}

core.int buildCounterDeployment = 0;
buildDeployment() {
  var o = new api.Deployment();
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    o.container = buildContainerInfo();
    o.files = buildUnnamed2671();
    o.zip = buildZipInfo();
  }
  buildCounterDeployment--;
  return o;
}

checkDeployment(api.Deployment o) {
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    checkContainerInfo(o.container);
    checkUnnamed2671(o.files);
    checkZipInfo(o.zip);
  }
  buildCounterDeployment--;
}

core.int buildCounterDiskUtilization = 0;
buildDiskUtilization() {
  var o = new api.DiskUtilization();
  buildCounterDiskUtilization++;
  if (buildCounterDiskUtilization < 3) {
    o.targetReadBytesPerSecond = 42;
    o.targetReadOpsPerSecond = 42;
    o.targetWriteBytesPerSecond = 42;
    o.targetWriteOpsPerSecond = 42;
  }
  buildCounterDiskUtilization--;
  return o;
}

checkDiskUtilization(api.DiskUtilization o) {
  buildCounterDiskUtilization++;
  if (buildCounterDiskUtilization < 3) {
    unittest.expect(o.targetReadBytesPerSecond, unittest.equals(42));
    unittest.expect(o.targetReadOpsPerSecond, unittest.equals(42));
    unittest.expect(o.targetWriteBytesPerSecond, unittest.equals(42));
    unittest.expect(o.targetWriteOpsPerSecond, unittest.equals(42));
  }
  buildCounterDiskUtilization--;
}

buildUnnamed2672() {
  var o = new core.List<api.ResourceRecord>();
  o.add(buildResourceRecord());
  o.add(buildResourceRecord());
  return o;
}

checkUnnamed2672(core.List<api.ResourceRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceRecord(o[0]);
  checkResourceRecord(o[1]);
}

core.int buildCounterDomainMapping = 0;
buildDomainMapping() {
  var o = new api.DomainMapping();
  buildCounterDomainMapping++;
  if (buildCounterDomainMapping < 3) {
    o.id = "foo";
    o.name = "foo";
    o.resourceRecords = buildUnnamed2672();
    o.sslSettings = buildSslSettings();
  }
  buildCounterDomainMapping--;
  return o;
}

checkDomainMapping(api.DomainMapping o) {
  buildCounterDomainMapping++;
  if (buildCounterDomainMapping < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2672(o.resourceRecords);
    checkSslSettings(o.sslSettings);
  }
  buildCounterDomainMapping--;
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

core.int buildCounterEndpointsApiService = 0;
buildEndpointsApiService() {
  var o = new api.EndpointsApiService();
  buildCounterEndpointsApiService++;
  if (buildCounterEndpointsApiService < 3) {
    o.configId = "foo";
    o.name = "foo";
  }
  buildCounterEndpointsApiService--;
  return o;
}

checkEndpointsApiService(api.EndpointsApiService o) {
  buildCounterEndpointsApiService++;
  if (buildCounterEndpointsApiService < 3) {
    unittest.expect(o.configId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterEndpointsApiService--;
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

core.int buildCounterFeatureSettings = 0;
buildFeatureSettings() {
  var o = new api.FeatureSettings();
  buildCounterFeatureSettings++;
  if (buildCounterFeatureSettings < 3) {
    o.splitHealthChecks = true;
  }
  buildCounterFeatureSettings--;
  return o;
}

checkFeatureSettings(api.FeatureSettings o) {
  buildCounterFeatureSettings++;
  if (buildCounterFeatureSettings < 3) {
    unittest.expect(o.splitHealthChecks, unittest.isTrue);
  }
  buildCounterFeatureSettings--;
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

core.int buildCounterIdentityAwareProxy = 0;
buildIdentityAwareProxy() {
  var o = new api.IdentityAwareProxy();
  buildCounterIdentityAwareProxy++;
  if (buildCounterIdentityAwareProxy < 3) {
    o.enabled = true;
    o.oauth2ClientId = "foo";
    o.oauth2ClientSecret = "foo";
    o.oauth2ClientSecretSha256 = "foo";
  }
  buildCounterIdentityAwareProxy--;
  return o;
}

checkIdentityAwareProxy(api.IdentityAwareProxy o) {
  buildCounterIdentityAwareProxy++;
  if (buildCounterIdentityAwareProxy < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.oauth2ClientId, unittest.equals('foo'));
    unittest.expect(o.oauth2ClientSecret, unittest.equals('foo'));
    unittest.expect(o.oauth2ClientSecretSha256, unittest.equals('foo'));
  }
  buildCounterIdentityAwareProxy--;
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
    o.startTime = "foo";
    o.vmDebugEnabled = true;
    o.vmId = "foo";
    o.vmIp = "foo";
    o.vmName = "foo";
    o.vmStatus = "foo";
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
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.vmDebugEnabled, unittest.isTrue);
    unittest.expect(o.vmId, unittest.equals('foo'));
    unittest.expect(o.vmIp, unittest.equals('foo'));
    unittest.expect(o.vmName, unittest.equals('foo'));
    unittest.expect(o.vmStatus, unittest.equals('foo'));
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

buildUnnamed2673() {
  var o = new core.List<api.AuthorizedCertificate>();
  o.add(buildAuthorizedCertificate());
  o.add(buildAuthorizedCertificate());
  return o;
}

checkUnnamed2673(core.List<api.AuthorizedCertificate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthorizedCertificate(o[0]);
  checkAuthorizedCertificate(o[1]);
}

core.int buildCounterListAuthorizedCertificatesResponse = 0;
buildListAuthorizedCertificatesResponse() {
  var o = new api.ListAuthorizedCertificatesResponse();
  buildCounterListAuthorizedCertificatesResponse++;
  if (buildCounterListAuthorizedCertificatesResponse < 3) {
    o.certificates = buildUnnamed2673();
    o.nextPageToken = "foo";
  }
  buildCounterListAuthorizedCertificatesResponse--;
  return o;
}

checkListAuthorizedCertificatesResponse(
    api.ListAuthorizedCertificatesResponse o) {
  buildCounterListAuthorizedCertificatesResponse++;
  if (buildCounterListAuthorizedCertificatesResponse < 3) {
    checkUnnamed2673(o.certificates);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAuthorizedCertificatesResponse--;
}

buildUnnamed2674() {
  var o = new core.List<api.AuthorizedDomain>();
  o.add(buildAuthorizedDomain());
  o.add(buildAuthorizedDomain());
  return o;
}

checkUnnamed2674(core.List<api.AuthorizedDomain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthorizedDomain(o[0]);
  checkAuthorizedDomain(o[1]);
}

core.int buildCounterListAuthorizedDomainsResponse = 0;
buildListAuthorizedDomainsResponse() {
  var o = new api.ListAuthorizedDomainsResponse();
  buildCounterListAuthorizedDomainsResponse++;
  if (buildCounterListAuthorizedDomainsResponse < 3) {
    o.domains = buildUnnamed2674();
    o.nextPageToken = "foo";
  }
  buildCounterListAuthorizedDomainsResponse--;
  return o;
}

checkListAuthorizedDomainsResponse(api.ListAuthorizedDomainsResponse o) {
  buildCounterListAuthorizedDomainsResponse++;
  if (buildCounterListAuthorizedDomainsResponse < 3) {
    checkUnnamed2674(o.domains);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAuthorizedDomainsResponse--;
}

buildUnnamed2675() {
  var o = new core.List<api.DomainMapping>();
  o.add(buildDomainMapping());
  o.add(buildDomainMapping());
  return o;
}

checkUnnamed2675(core.List<api.DomainMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomainMapping(o[0]);
  checkDomainMapping(o[1]);
}

core.int buildCounterListDomainMappingsResponse = 0;
buildListDomainMappingsResponse() {
  var o = new api.ListDomainMappingsResponse();
  buildCounterListDomainMappingsResponse++;
  if (buildCounterListDomainMappingsResponse < 3) {
    o.domainMappings = buildUnnamed2675();
    o.nextPageToken = "foo";
  }
  buildCounterListDomainMappingsResponse--;
  return o;
}

checkListDomainMappingsResponse(api.ListDomainMappingsResponse o) {
  buildCounterListDomainMappingsResponse++;
  if (buildCounterListDomainMappingsResponse < 3) {
    checkUnnamed2675(o.domainMappings);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDomainMappingsResponse--;
}

buildUnnamed2676() {
  var o = new core.List<api.Instance>();
  o.add(buildInstance());
  o.add(buildInstance());
  return o;
}

checkUnnamed2676(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
}

core.int buildCounterListInstancesResponse = 0;
buildListInstancesResponse() {
  var o = new api.ListInstancesResponse();
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    o.instances = buildUnnamed2676();
    o.nextPageToken = "foo";
  }
  buildCounterListInstancesResponse--;
  return o;
}

checkListInstancesResponse(api.ListInstancesResponse o) {
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    checkUnnamed2676(o.instances);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListInstancesResponse--;
}

buildUnnamed2677() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed2677(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
buildListLocationsResponse() {
  var o = new api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed2677();
    o.nextPageToken = "foo";
  }
  buildCounterListLocationsResponse--;
  return o;
}

checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed2677(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

buildUnnamed2678() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed2678(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed2678();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2678(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed2679() {
  var o = new core.List<api.Service>();
  o.add(buildService());
  o.add(buildService());
  return o;
}

checkUnnamed2679(core.List<api.Service> o) {
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
    o.services = buildUnnamed2679();
  }
  buildCounterListServicesResponse--;
  return o;
}

checkListServicesResponse(api.ListServicesResponse o) {
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2679(o.services);
  }
  buildCounterListServicesResponse--;
}

buildUnnamed2680() {
  var o = new core.List<api.Version>();
  o.add(buildVersion());
  o.add(buildVersion());
  return o;
}

checkUnnamed2680(core.List<api.Version> o) {
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
    o.versions = buildUnnamed2680();
  }
  buildCounterListVersionsResponse--;
  return o;
}

checkListVersionsResponse(api.ListVersionsResponse o) {
  buildCounterListVersionsResponse++;
  if (buildCounterListVersionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2680(o.versions);
  }
  buildCounterListVersionsResponse--;
}

core.int buildCounterLivenessCheck = 0;
buildLivenessCheck() {
  var o = new api.LivenessCheck();
  buildCounterLivenessCheck++;
  if (buildCounterLivenessCheck < 3) {
    o.checkInterval = "foo";
    o.failureThreshold = 42;
    o.host = "foo";
    o.initialDelay = "foo";
    o.path = "foo";
    o.successThreshold = 42;
    o.timeout = "foo";
  }
  buildCounterLivenessCheck--;
  return o;
}

checkLivenessCheck(api.LivenessCheck o) {
  buildCounterLivenessCheck++;
  if (buildCounterLivenessCheck < 3) {
    unittest.expect(o.checkInterval, unittest.equals('foo'));
    unittest.expect(o.failureThreshold, unittest.equals(42));
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.initialDelay, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.successThreshold, unittest.equals(42));
    unittest.expect(o.timeout, unittest.equals('foo'));
  }
  buildCounterLivenessCheck--;
}

buildUnnamed2681() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2681(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed2682() {
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

checkUnnamed2682(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
buildLocation() {
  var o = new api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.labels = buildUnnamed2681();
    o.locationId = "foo";
    o.metadata = buildUnnamed2682();
    o.name = "foo";
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    checkUnnamed2681(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed2682(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterLocationMetadata = 0;
buildLocationMetadata() {
  var o = new api.LocationMetadata();
  buildCounterLocationMetadata++;
  if (buildCounterLocationMetadata < 3) {
    o.flexibleEnvironmentAvailable = true;
    o.standardEnvironmentAvailable = true;
  }
  buildCounterLocationMetadata--;
  return o;
}

checkLocationMetadata(api.LocationMetadata o) {
  buildCounterLocationMetadata++;
  if (buildCounterLocationMetadata < 3) {
    unittest.expect(o.flexibleEnvironmentAvailable, unittest.isTrue);
    unittest.expect(o.standardEnvironmentAvailable, unittest.isTrue);
  }
  buildCounterLocationMetadata--;
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

buildUnnamed2683() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2683(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNetwork = 0;
buildNetwork() {
  var o = new api.Network();
  buildCounterNetwork++;
  if (buildCounterNetwork < 3) {
    o.forwardedPorts = buildUnnamed2683();
    o.instanceTag = "foo";
    o.name = "foo";
    o.subnetworkName = "foo";
  }
  buildCounterNetwork--;
  return o;
}

checkNetwork(api.Network o) {
  buildCounterNetwork++;
  if (buildCounterNetwork < 3) {
    checkUnnamed2683(o.forwardedPorts);
    unittest.expect(o.instanceTag, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.subnetworkName, unittest.equals('foo'));
  }
  buildCounterNetwork--;
}

core.int buildCounterNetworkUtilization = 0;
buildNetworkUtilization() {
  var o = new api.NetworkUtilization();
  buildCounterNetworkUtilization++;
  if (buildCounterNetworkUtilization < 3) {
    o.targetReceivedBytesPerSecond = 42;
    o.targetReceivedPacketsPerSecond = 42;
    o.targetSentBytesPerSecond = 42;
    o.targetSentPacketsPerSecond = 42;
  }
  buildCounterNetworkUtilization--;
  return o;
}

checkNetworkUtilization(api.NetworkUtilization o) {
  buildCounterNetworkUtilization++;
  if (buildCounterNetworkUtilization < 3) {
    unittest.expect(o.targetReceivedBytesPerSecond, unittest.equals(42));
    unittest.expect(o.targetReceivedPacketsPerSecond, unittest.equals(42));
    unittest.expect(o.targetSentBytesPerSecond, unittest.equals(42));
    unittest.expect(o.targetSentPacketsPerSecond, unittest.equals(42));
  }
  buildCounterNetworkUtilization--;
}

buildUnnamed2684() {
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

checkUnnamed2684(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o["y"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

buildUnnamed2685() {
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

checkUnnamed2685(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o["y"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed2684();
    o.name = "foo";
    o.response = buildUnnamed2685();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed2684(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2685(o.response);
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

core.int buildCounterOperationMetadataExperimental = 0;
buildOperationMetadataExperimental() {
  var o = new api.OperationMetadataExperimental();
  buildCounterOperationMetadataExperimental++;
  if (buildCounterOperationMetadataExperimental < 3) {
    o.endTime = "foo";
    o.insertTime = "foo";
    o.method = "foo";
    o.target = "foo";
    o.user = "foo";
  }
  buildCounterOperationMetadataExperimental--;
  return o;
}

checkOperationMetadataExperimental(api.OperationMetadataExperimental o) {
  buildCounterOperationMetadataExperimental++;
  if (buildCounterOperationMetadataExperimental < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.insertTime, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.user, unittest.equals('foo'));
  }
  buildCounterOperationMetadataExperimental--;
}

buildUnnamed2686() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2686(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOperationMetadataV1 = 0;
buildOperationMetadataV1() {
  var o = new api.OperationMetadataV1();
  buildCounterOperationMetadataV1++;
  if (buildCounterOperationMetadataV1 < 3) {
    o.endTime = "foo";
    o.ephemeralMessage = "foo";
    o.insertTime = "foo";
    o.method = "foo";
    o.target = "foo";
    o.user = "foo";
    o.warning = buildUnnamed2686();
  }
  buildCounterOperationMetadataV1--;
  return o;
}

checkOperationMetadataV1(api.OperationMetadataV1 o) {
  buildCounterOperationMetadataV1++;
  if (buildCounterOperationMetadataV1 < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.ephemeralMessage, unittest.equals('foo'));
    unittest.expect(o.insertTime, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.user, unittest.equals('foo'));
    checkUnnamed2686(o.warning);
  }
  buildCounterOperationMetadataV1--;
}

buildUnnamed2687() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2687(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOperationMetadataV1Alpha = 0;
buildOperationMetadataV1Alpha() {
  var o = new api.OperationMetadataV1Alpha();
  buildCounterOperationMetadataV1Alpha++;
  if (buildCounterOperationMetadataV1Alpha < 3) {
    o.endTime = "foo";
    o.ephemeralMessage = "foo";
    o.insertTime = "foo";
    o.method = "foo";
    o.target = "foo";
    o.user = "foo";
    o.warning = buildUnnamed2687();
  }
  buildCounterOperationMetadataV1Alpha--;
  return o;
}

checkOperationMetadataV1Alpha(api.OperationMetadataV1Alpha o) {
  buildCounterOperationMetadataV1Alpha++;
  if (buildCounterOperationMetadataV1Alpha < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.ephemeralMessage, unittest.equals('foo'));
    unittest.expect(o.insertTime, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.user, unittest.equals('foo'));
    checkUnnamed2687(o.warning);
  }
  buildCounterOperationMetadataV1Alpha--;
}

buildUnnamed2688() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2688(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOperationMetadataV1Beta = 0;
buildOperationMetadataV1Beta() {
  var o = new api.OperationMetadataV1Beta();
  buildCounterOperationMetadataV1Beta++;
  if (buildCounterOperationMetadataV1Beta < 3) {
    o.endTime = "foo";
    o.ephemeralMessage = "foo";
    o.insertTime = "foo";
    o.method = "foo";
    o.target = "foo";
    o.user = "foo";
    o.warning = buildUnnamed2688();
  }
  buildCounterOperationMetadataV1Beta--;
  return o;
}

checkOperationMetadataV1Beta(api.OperationMetadataV1Beta o) {
  buildCounterOperationMetadataV1Beta++;
  if (buildCounterOperationMetadataV1Beta < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.ephemeralMessage, unittest.equals('foo'));
    unittest.expect(o.insertTime, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.user, unittest.equals('foo'));
    checkUnnamed2688(o.warning);
  }
  buildCounterOperationMetadataV1Beta--;
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

core.int buildCounterReadinessCheck = 0;
buildReadinessCheck() {
  var o = new api.ReadinessCheck();
  buildCounterReadinessCheck++;
  if (buildCounterReadinessCheck < 3) {
    o.appStartTimeout = "foo";
    o.checkInterval = "foo";
    o.failureThreshold = 42;
    o.host = "foo";
    o.path = "foo";
    o.successThreshold = 42;
    o.timeout = "foo";
  }
  buildCounterReadinessCheck--;
  return o;
}

checkReadinessCheck(api.ReadinessCheck o) {
  buildCounterReadinessCheck++;
  if (buildCounterReadinessCheck < 3) {
    unittest.expect(o.appStartTimeout, unittest.equals('foo'));
    unittest.expect(o.checkInterval, unittest.equals('foo'));
    unittest.expect(o.failureThreshold, unittest.equals(42));
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.successThreshold, unittest.equals(42));
    unittest.expect(o.timeout, unittest.equals('foo'));
  }
  buildCounterReadinessCheck--;
}

core.int buildCounterRepairApplicationRequest = 0;
buildRepairApplicationRequest() {
  var o = new api.RepairApplicationRequest();
  buildCounterRepairApplicationRequest++;
  if (buildCounterRepairApplicationRequest < 3) {}
  buildCounterRepairApplicationRequest--;
  return o;
}

checkRepairApplicationRequest(api.RepairApplicationRequest o) {
  buildCounterRepairApplicationRequest++;
  if (buildCounterRepairApplicationRequest < 3) {}
  buildCounterRepairApplicationRequest--;
}

core.int buildCounterRequestUtilization = 0;
buildRequestUtilization() {
  var o = new api.RequestUtilization();
  buildCounterRequestUtilization++;
  if (buildCounterRequestUtilization < 3) {
    o.targetConcurrentRequests = 42;
    o.targetRequestCountPerSecond = 42;
  }
  buildCounterRequestUtilization--;
  return o;
}

checkRequestUtilization(api.RequestUtilization o) {
  buildCounterRequestUtilization++;
  if (buildCounterRequestUtilization < 3) {
    unittest.expect(o.targetConcurrentRequests, unittest.equals(42));
    unittest.expect(o.targetRequestCountPerSecond, unittest.equals(42));
  }
  buildCounterRequestUtilization--;
}

core.int buildCounterResourceRecord = 0;
buildResourceRecord() {
  var o = new api.ResourceRecord();
  buildCounterResourceRecord++;
  if (buildCounterResourceRecord < 3) {
    o.name = "foo";
    o.rrdata = "foo";
    o.type = "foo";
  }
  buildCounterResourceRecord--;
  return o;
}

checkResourceRecord(api.ResourceRecord o) {
  buildCounterResourceRecord++;
  if (buildCounterResourceRecord < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.rrdata, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterResourceRecord--;
}

buildUnnamed2689() {
  var o = new core.List<api.Volume>();
  o.add(buildVolume());
  o.add(buildVolume());
  return o;
}

checkUnnamed2689(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0]);
  checkVolume(o[1]);
}

core.int buildCounterResources = 0;
buildResources() {
  var o = new api.Resources();
  buildCounterResources++;
  if (buildCounterResources < 3) {
    o.cpu = 42.0;
    o.diskGb = 42.0;
    o.memoryGb = 42.0;
    o.volumes = buildUnnamed2689();
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
    checkUnnamed2689(o.volumes);
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

core.int buildCounterSslSettings = 0;
buildSslSettings() {
  var o = new api.SslSettings();
  buildCounterSslSettings++;
  if (buildCounterSslSettings < 3) {
    o.certificateId = "foo";
  }
  buildCounterSslSettings--;
  return o;
}

checkSslSettings(api.SslSettings o) {
  buildCounterSslSettings++;
  if (buildCounterSslSettings < 3) {
    unittest.expect(o.certificateId, unittest.equals('foo'));
  }
  buildCounterSslSettings--;
}

buildUnnamed2690() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2690(core.Map<core.String, core.String> o) {
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
    o.httpHeaders = buildUnnamed2690();
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
    checkUnnamed2690(o.httpHeaders);
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.requireMatchingFile, unittest.isTrue);
    unittest.expect(o.uploadPathRegex, unittest.equals('foo'));
  }
  buildCounterStaticFilesHandler--;
}

buildUnnamed2691() {
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

checkUnnamed2691(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o["x"]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted7["bool"], unittest.equals(true));
  unittest.expect(casted7["string"], unittest.equals('foo'));
  var casted8 = (o["y"]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted8["bool"], unittest.equals(true));
  unittest.expect(casted8["string"], unittest.equals('foo'));
}

buildUnnamed2692() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed2691());
  o.add(buildUnnamed2691());
  return o;
}

checkUnnamed2692(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2691(o[0]);
  checkUnnamed2691(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2692();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2692(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed2693() {
  var o = new core.Map<core.String, core.double>();
  o["x"] = 42.0;
  o["y"] = 42.0;
  return o;
}

checkUnnamed2693(core.Map<core.String, core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals(42.0));
  unittest.expect(o["y"], unittest.equals(42.0));
}

core.int buildCounterTrafficSplit = 0;
buildTrafficSplit() {
  var o = new api.TrafficSplit();
  buildCounterTrafficSplit++;
  if (buildCounterTrafficSplit < 3) {
    o.allocations = buildUnnamed2693();
    o.shardBy = "foo";
  }
  buildCounterTrafficSplit--;
  return o;
}

checkTrafficSplit(api.TrafficSplit o) {
  buildCounterTrafficSplit++;
  if (buildCounterTrafficSplit < 3) {
    checkUnnamed2693(o.allocations);
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

buildUnnamed2694() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2694(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed2695() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2695(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed2696() {
  var o = new core.List<api.ErrorHandler>();
  o.add(buildErrorHandler());
  o.add(buildErrorHandler());
  return o;
}

checkUnnamed2696(core.List<api.ErrorHandler> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorHandler(o[0]);
  checkErrorHandler(o[1]);
}

buildUnnamed2697() {
  var o = new core.List<api.UrlMap>();
  o.add(buildUrlMap());
  o.add(buildUrlMap());
  return o;
}

checkUnnamed2697(core.List<api.UrlMap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUrlMap(o[0]);
  checkUrlMap(o[1]);
}

buildUnnamed2698() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2698(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2699() {
  var o = new core.List<api.Library>();
  o.add(buildLibrary());
  o.add(buildLibrary());
  return o;
}

checkUnnamed2699(core.List<api.Library> o) {
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
    o.betaSettings = buildUnnamed2694();
    o.createTime = "foo";
    o.createdBy = "foo";
    o.defaultExpiration = "foo";
    o.deployment = buildDeployment();
    o.diskUsageBytes = "foo";
    o.endpointsApiService = buildEndpointsApiService();
    o.env = "foo";
    o.envVariables = buildUnnamed2695();
    o.errorHandlers = buildUnnamed2696();
    o.handlers = buildUnnamed2697();
    o.healthCheck = buildHealthCheck();
    o.id = "foo";
    o.inboundServices = buildUnnamed2698();
    o.instanceClass = "foo";
    o.libraries = buildUnnamed2699();
    o.livenessCheck = buildLivenessCheck();
    o.manualScaling = buildManualScaling();
    o.name = "foo";
    o.network = buildNetwork();
    o.nobuildFilesRegex = "foo";
    o.readinessCheck = buildReadinessCheck();
    o.resources = buildResources();
    o.runtime = "foo";
    o.runtimeApiVersion = "foo";
    o.servingStatus = "foo";
    o.threadsafe = true;
    o.versionUrl = "foo";
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
    checkUnnamed2694(o.betaSettings);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.createdBy, unittest.equals('foo'));
    unittest.expect(o.defaultExpiration, unittest.equals('foo'));
    checkDeployment(o.deployment);
    unittest.expect(o.diskUsageBytes, unittest.equals('foo'));
    checkEndpointsApiService(o.endpointsApiService);
    unittest.expect(o.env, unittest.equals('foo'));
    checkUnnamed2695(o.envVariables);
    checkUnnamed2696(o.errorHandlers);
    checkUnnamed2697(o.handlers);
    checkHealthCheck(o.healthCheck);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2698(o.inboundServices);
    unittest.expect(o.instanceClass, unittest.equals('foo'));
    checkUnnamed2699(o.libraries);
    checkLivenessCheck(o.livenessCheck);
    checkManualScaling(o.manualScaling);
    unittest.expect(o.name, unittest.equals('foo'));
    checkNetwork(o.network);
    unittest.expect(o.nobuildFilesRegex, unittest.equals('foo'));
    checkReadinessCheck(o.readinessCheck);
    checkResources(o.resources);
    unittest.expect(o.runtime, unittest.equals('foo'));
    unittest.expect(o.runtimeApiVersion, unittest.equals('foo'));
    unittest.expect(o.servingStatus, unittest.equals('foo'));
    unittest.expect(o.threadsafe, unittest.isTrue);
    unittest.expect(o.versionUrl, unittest.equals('foo'));
    unittest.expect(o.vm, unittest.isTrue);
  }
  buildCounterVersion--;
}

core.int buildCounterVolume = 0;
buildVolume() {
  var o = new api.Volume();
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    o.name = "foo";
    o.sizeGb = 42.0;
    o.volumeType = "foo";
  }
  buildCounterVolume--;
  return o;
}

checkVolume(api.Volume o) {
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.sizeGb, unittest.equals(42.0));
    unittest.expect(o.volumeType, unittest.equals('foo'));
  }
  buildCounterVolume--;
}

core.int buildCounterZipInfo = 0;
buildZipInfo() {
  var o = new api.ZipInfo();
  buildCounterZipInfo++;
  if (buildCounterZipInfo < 3) {
    o.filesCount = 42;
    o.sourceUrl = "foo";
  }
  buildCounterZipInfo--;
  return o;
}

checkZipInfo(api.ZipInfo o) {
  buildCounterZipInfo++;
  if (buildCounterZipInfo < 3) {
    unittest.expect(o.filesCount, unittest.equals(42));
    unittest.expect(o.sourceUrl, unittest.equals('foo'));
  }
  buildCounterZipInfo--;
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

  unittest.group("obj-schema-AuthorizedCertificate", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthorizedCertificate();
      var od = new api.AuthorizedCertificate.fromJson(o.toJson());
      checkAuthorizedCertificate(od);
    });
  });

  unittest.group("obj-schema-AuthorizedDomain", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthorizedDomain();
      var od = new api.AuthorizedDomain.fromJson(o.toJson());
      checkAuthorizedDomain(od);
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

  unittest.group("obj-schema-CertificateRawData", () {
    unittest.test("to-json--from-json", () {
      var o = buildCertificateRawData();
      var od = new api.CertificateRawData.fromJson(o.toJson());
      checkCertificateRawData(od);
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

  unittest.group("obj-schema-DebugInstanceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDebugInstanceRequest();
      var od = new api.DebugInstanceRequest.fromJson(o.toJson());
      checkDebugInstanceRequest(od);
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

  unittest.group("obj-schema-DomainMapping", () {
    unittest.test("to-json--from-json", () {
      var o = buildDomainMapping();
      var od = new api.DomainMapping.fromJson(o.toJson());
      checkDomainMapping(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-EndpointsApiService", () {
    unittest.test("to-json--from-json", () {
      var o = buildEndpointsApiService();
      var od = new api.EndpointsApiService.fromJson(o.toJson());
      checkEndpointsApiService(od);
    });
  });

  unittest.group("obj-schema-ErrorHandler", () {
    unittest.test("to-json--from-json", () {
      var o = buildErrorHandler();
      var od = new api.ErrorHandler.fromJson(o.toJson());
      checkErrorHandler(od);
    });
  });

  unittest.group("obj-schema-FeatureSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildFeatureSettings();
      var od = new api.FeatureSettings.fromJson(o.toJson());
      checkFeatureSettings(od);
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

  unittest.group("obj-schema-IdentityAwareProxy", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentityAwareProxy();
      var od = new api.IdentityAwareProxy.fromJson(o.toJson());
      checkIdentityAwareProxy(od);
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

  unittest.group("obj-schema-ListAuthorizedCertificatesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAuthorizedCertificatesResponse();
      var od = new api.ListAuthorizedCertificatesResponse.fromJson(o.toJson());
      checkListAuthorizedCertificatesResponse(od);
    });
  });

  unittest.group("obj-schema-ListAuthorizedDomainsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAuthorizedDomainsResponse();
      var od = new api.ListAuthorizedDomainsResponse.fromJson(o.toJson());
      checkListAuthorizedDomainsResponse(od);
    });
  });

  unittest.group("obj-schema-ListDomainMappingsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDomainMappingsResponse();
      var od = new api.ListDomainMappingsResponse.fromJson(o.toJson());
      checkListDomainMappingsResponse(od);
    });
  });

  unittest.group("obj-schema-ListInstancesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListInstancesResponse();
      var od = new api.ListInstancesResponse.fromJson(o.toJson());
      checkListInstancesResponse(od);
    });
  });

  unittest.group("obj-schema-ListLocationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLocationsResponse();
      var od = new api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od);
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

  unittest.group("obj-schema-LivenessCheck", () {
    unittest.test("to-json--from-json", () {
      var o = buildLivenessCheck();
      var od = new api.LivenessCheck.fromJson(o.toJson());
      checkLivenessCheck(od);
    });
  });

  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group("obj-schema-LocationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocationMetadata();
      var od = new api.LocationMetadata.fromJson(o.toJson());
      checkLocationMetadata(od);
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

  unittest.group("obj-schema-OperationMetadataExperimental", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadataExperimental();
      var od = new api.OperationMetadataExperimental.fromJson(o.toJson());
      checkOperationMetadataExperimental(od);
    });
  });

  unittest.group("obj-schema-OperationMetadataV1", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadataV1();
      var od = new api.OperationMetadataV1.fromJson(o.toJson());
      checkOperationMetadataV1(od);
    });
  });

  unittest.group("obj-schema-OperationMetadataV1Alpha", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadataV1Alpha();
      var od = new api.OperationMetadataV1Alpha.fromJson(o.toJson());
      checkOperationMetadataV1Alpha(od);
    });
  });

  unittest.group("obj-schema-OperationMetadataV1Beta", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadataV1Beta();
      var od = new api.OperationMetadataV1Beta.fromJson(o.toJson());
      checkOperationMetadataV1Beta(od);
    });
  });

  unittest.group("obj-schema-OperationMetadataV1Beta5", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadataV1Beta5();
      var od = new api.OperationMetadataV1Beta5.fromJson(o.toJson());
      checkOperationMetadataV1Beta5(od);
    });
  });

  unittest.group("obj-schema-ReadinessCheck", () {
    unittest.test("to-json--from-json", () {
      var o = buildReadinessCheck();
      var od = new api.ReadinessCheck.fromJson(o.toJson());
      checkReadinessCheck(od);
    });
  });

  unittest.group("obj-schema-RepairApplicationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRepairApplicationRequest();
      var od = new api.RepairApplicationRequest.fromJson(o.toJson());
      checkRepairApplicationRequest(od);
    });
  });

  unittest.group("obj-schema-RequestUtilization", () {
    unittest.test("to-json--from-json", () {
      var o = buildRequestUtilization();
      var od = new api.RequestUtilization.fromJson(o.toJson());
      checkRequestUtilization(od);
    });
  });

  unittest.group("obj-schema-ResourceRecord", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceRecord();
      var od = new api.ResourceRecord.fromJson(o.toJson());
      checkResourceRecord(od);
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

  unittest.group("obj-schema-SslSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildSslSettings();
      var od = new api.SslSettings.fromJson(o.toJson());
      checkSslSettings(od);
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

  unittest.group("obj-schema-Volume", () {
    unittest.test("to-json--from-json", () {
      var o = buildVolume();
      var od = new api.Volume.fromJson(o.toJson());
      checkVolume(od);
    });
  });

  unittest.group("obj-schema-ZipInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildZipInfo();
      var od = new api.ZipInfo.fromJson(o.toJson());
      checkZipInfo(od);
    });
  });

  unittest.group("resource-AppsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.AppsResourceApi res = new api.AppengineApi(mock).apps;
      var arg_request = buildApplication();
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Application.fromJson(json);
        checkApplication(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1/apps"));
        pathOffset += 7;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AppsResourceApi res = new api.AppengineApi(mock).apps;
      var arg_appsId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildApplication());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_appsId)
          .then(unittest.expectAsync1(((api.Application response) {
        checkApplication(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.AppsResourceApi res = new api.AppengineApi(mock).apps;
      var arg_request = buildApplication();
      var arg_appsId = "foo";
      var arg_updateMask = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Application.fromJson(json);
        checkApplication(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_appsId, updateMask: arg_updateMask)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--repair", () {
      var mock = new HttpServerMock();
      api.AppsResourceApi res = new api.AppengineApi(mock).apps;
      var arg_request = buildRepairApplicationRequest();
      var arg_appsId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RepairApplicationRequest.fromJson(json);
        checkRepairApplicationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf(":repair", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":repair"));
        pathOffset += 7;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .repair(arg_request, arg_appsId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-AppsAuthorizedCertificatesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.AppsAuthorizedCertificatesResourceApi res =
          new api.AppengineApi(mock).apps.authorizedCertificates;
      var arg_request = buildAuthorizedCertificate();
      var arg_appsId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AuthorizedCertificate.fromJson(json);
        checkAuthorizedCertificate(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/authorizedCertificates", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 23),
            unittest.equals("/authorizedCertificates"));
        pathOffset += 23;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAuthorizedCertificate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_appsId)
          .then(unittest.expectAsync1(((api.AuthorizedCertificate response) {
        checkAuthorizedCertificate(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.AppsAuthorizedCertificatesResourceApi res =
          new api.AppengineApi(mock).apps.authorizedCertificates;
      var arg_appsId = "foo";
      var arg_authorizedCertificatesId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/authorizedCertificates/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("/authorizedCertificates/"));
        pathOffset += 24;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
            subPart, unittest.equals("$arg_authorizedCertificatesId"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_appsId, arg_authorizedCertificatesId)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AppsAuthorizedCertificatesResourceApi res =
          new api.AppengineApi(mock).apps.authorizedCertificates;
      var arg_appsId = "foo";
      var arg_authorizedCertificatesId = "foo";
      var arg_view = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/authorizedCertificates/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("/authorizedCertificates/"));
        pathOffset += 24;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
            subPart, unittest.equals("$arg_authorizedCertificatesId"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAuthorizedCertificate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_appsId, arg_authorizedCertificatesId, view: arg_view)
          .then(unittest.expectAsync1(((api.AuthorizedCertificate response) {
        checkAuthorizedCertificate(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AppsAuthorizedCertificatesResourceApi res =
          new api.AppengineApi(mock).apps.authorizedCertificates;
      var arg_appsId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_view = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/authorizedCertificates", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 23),
            unittest.equals("/authorizedCertificates"));
        pathOffset += 23;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.JSON.encode(buildListAuthorizedCertificatesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_appsId,
              pageToken: arg_pageToken, pageSize: arg_pageSize, view: arg_view)
          .then(unittest
              .expectAsync1(((api.ListAuthorizedCertificatesResponse response) {
        checkListAuthorizedCertificatesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.AppsAuthorizedCertificatesResourceApi res =
          new api.AppengineApi(mock).apps.authorizedCertificates;
      var arg_request = buildAuthorizedCertificate();
      var arg_appsId = "foo";
      var arg_authorizedCertificatesId = "foo";
      var arg_updateMask = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AuthorizedCertificate.fromJson(json);
        checkAuthorizedCertificate(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/authorizedCertificates/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("/authorizedCertificates/"));
        pathOffset += 24;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
            subPart, unittest.equals("$arg_authorizedCertificatesId"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAuthorizedCertificate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_appsId, arg_authorizedCertificatesId,
              updateMask: arg_updateMask)
          .then(unittest.expectAsync1(((api.AuthorizedCertificate response) {
        checkAuthorizedCertificate(response);
      })));
    });
  });

  unittest.group("resource-AppsAuthorizedDomainsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AppsAuthorizedDomainsResourceApi res =
          new api.AppengineApi(mock).apps.authorizedDomains;
      var arg_appsId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/authorizedDomains", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/authorizedDomains"));
        pathOffset += 18;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListAuthorizedDomainsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_appsId, pageSize: arg_pageSize, pageToken: arg_pageToken)
          .then(unittest
              .expectAsync1(((api.ListAuthorizedDomainsResponse response) {
        checkListAuthorizedDomainsResponse(response);
      })));
    });
  });

  unittest.group("resource-AppsDomainMappingsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.AppsDomainMappingsResourceApi res =
          new api.AppengineApi(mock).apps.domainMappings;
      var arg_request = buildDomainMapping();
      var arg_appsId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DomainMapping.fromJson(json);
        checkDomainMapping(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/domainMappings", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/domainMappings"));
        pathOffset += 15;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_appsId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.AppsDomainMappingsResourceApi res =
          new api.AppengineApi(mock).apps.domainMappings;
      var arg_appsId = "foo";
      var arg_domainMappingsId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/domainMappings/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/domainMappings/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_domainMappingsId"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_appsId, arg_domainMappingsId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AppsDomainMappingsResourceApi res =
          new api.AppengineApi(mock).apps.domainMappings;
      var arg_appsId = "foo";
      var arg_domainMappingsId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/domainMappings/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/domainMappings/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_domainMappingsId"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDomainMapping());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_appsId, arg_domainMappingsId)
          .then(unittest.expectAsync1(((api.DomainMapping response) {
        checkDomainMapping(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AppsDomainMappingsResourceApi res =
          new api.AppengineApi(mock).apps.domainMappings;
      var arg_appsId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/domainMappings", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/domainMappings"));
        pathOffset += 15;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListDomainMappingsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_appsId, pageToken: arg_pageToken, pageSize: arg_pageSize)
          .then(
              unittest.expectAsync1(((api.ListDomainMappingsResponse response) {
        checkListDomainMappingsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.AppsDomainMappingsResourceApi res =
          new api.AppengineApi(mock).apps.domainMappings;
      var arg_request = buildDomainMapping();
      var arg_appsId = "foo";
      var arg_domainMappingsId = "foo";
      var arg_updateMask = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DomainMapping.fromJson(json);
        checkDomainMapping(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/domainMappings/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/domainMappings/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_domainMappingsId"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_appsId, arg_domainMappingsId,
              updateMask: arg_updateMask)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-AppsLocationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AppsLocationsResourceApi res =
          new api.AppengineApi(mock).apps.locations;
      var arg_appsId = "foo";
      var arg_locationsId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_locationsId"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLocation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_appsId, arg_locationsId)
          .then(unittest.expectAsync1(((api.Location response) {
        checkLocation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AppsLocationsResourceApi res =
          new api.AppengineApi(mock).apps.locations;
      var arg_appsId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/locations", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/locations"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListLocationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_appsId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter)
          .then(unittest.expectAsync1(((api.ListLocationsResponse response) {
        checkListLocationsResponse(response);
      })));
    });
  });

  unittest.group("resource-AppsOperationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AppsOperationsResourceApi res =
          new api.AppengineApi(mock).apps.operations;
      var arg_appsId = "foo";
      var arg_operationsId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/operations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/operations/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_appsId, arg_operationsId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AppsOperationsResourceApi res =
          new api.AppengineApi(mock).apps.operations;
      var arg_appsId = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/operations", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/operations"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_appsId,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize)
          .then(unittest.expectAsync1(((api.ListOperationsResponse response) {
        checkListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-AppsServicesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.AppsServicesResourceApi res =
          new api.AppengineApi(mock).apps.services;
      var arg_appsId = "foo";
      var arg_servicesId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/services/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/services/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_appsId, arg_servicesId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AppsServicesResourceApi res =
          new api.AppengineApi(mock).apps.services;
      var arg_appsId = "foo";
      var arg_servicesId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/services/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/services/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildService());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_appsId, arg_servicesId)
          .then(unittest.expectAsync1(((api.Service response) {
        checkService(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AppsServicesResourceApi res =
          new api.AppengineApi(mock).apps.services;
      var arg_appsId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/services", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/services"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListServicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_appsId, pageToken: arg_pageToken, pageSize: arg_pageSize)
          .then(unittest.expectAsync1(((api.ListServicesResponse response) {
        checkListServicesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.AppsServicesResourceApi res =
          new api.AppengineApi(mock).apps.services;
      var arg_request = buildService();
      var arg_appsId = "foo";
      var arg_servicesId = "foo";
      var arg_updateMask = "foo";
      var arg_migrateTraffic = true;
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Service.fromJson(json);
        checkService(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/services/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/services/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["migrateTraffic"].first,
            unittest.equals("$arg_migrateTraffic"));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_appsId, arg_servicesId,
              updateMask: arg_updateMask, migrateTraffic: arg_migrateTraffic)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-AppsServicesVersionsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.AppsServicesVersionsResourceApi res =
          new api.AppengineApi(mock).apps.services.versions;
      var arg_request = buildVersion();
      var arg_appsId = "foo";
      var arg_servicesId = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/services/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/services/"));
        pathOffset += 10;
        index = path.indexOf("/versions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_servicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/versions"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_appsId, arg_servicesId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.AppsServicesVersionsResourceApi res =
          new api.AppengineApi(mock).apps.services.versions;
      var arg_appsId = "foo";
      var arg_servicesId = "foo";
      var arg_versionsId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/services/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/services/"));
        pathOffset += 10;
        index = path.indexOf("/versions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_servicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/versions/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_appsId, arg_servicesId, arg_versionsId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AppsServicesVersionsResourceApi res =
          new api.AppengineApi(mock).apps.services.versions;
      var arg_appsId = "foo";
      var arg_servicesId = "foo";
      var arg_versionsId = "foo";
      var arg_view = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/services/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/services/"));
        pathOffset += 10;
        index = path.indexOf("/versions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_servicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/versions/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_appsId, arg_servicesId, arg_versionsId, view: arg_view)
          .then(unittest.expectAsync1(((api.Version response) {
        checkVersion(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AppsServicesVersionsResourceApi res =
          new api.AppengineApi(mock).apps.services.versions;
      var arg_appsId = "foo";
      var arg_servicesId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_view = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/services/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/services/"));
        pathOffset += 10;
        index = path.indexOf("/versions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_servicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/versions"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListVersionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_appsId, arg_servicesId,
              pageToken: arg_pageToken, pageSize: arg_pageSize, view: arg_view)
          .then(unittest.expectAsync1(((api.ListVersionsResponse response) {
        checkListVersionsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.AppsServicesVersionsResourceApi res =
          new api.AppengineApi(mock).apps.services.versions;
      var arg_request = buildVersion();
      var arg_appsId = "foo";
      var arg_servicesId = "foo";
      var arg_versionsId = "foo";
      var arg_updateMask = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/services/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/services/"));
        pathOffset += 10;
        index = path.indexOf("/versions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_servicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/versions/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_appsId, arg_servicesId, arg_versionsId,
              updateMask: arg_updateMask)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-AppsServicesVersionsInstancesResourceApi", () {
    unittest.test("method--debug", () {
      var mock = new HttpServerMock();
      api.AppsServicesVersionsInstancesResourceApi res =
          new api.AppengineApi(mock).apps.services.versions.instances;
      var arg_request = buildDebugInstanceRequest();
      var arg_appsId = "foo";
      var arg_servicesId = "foo";
      var arg_versionsId = "foo";
      var arg_instancesId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DebugInstanceRequest.fromJson(json);
        checkDebugInstanceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/services/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/services/"));
        pathOffset += 10;
        index = path.indexOf("/versions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_servicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/versions/"));
        pathOffset += 10;
        index = path.indexOf("/instances/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_versionsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/instances/"));
        pathOffset += 11;
        index = path.indexOf(":debug", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_instancesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals(":debug"));
        pathOffset += 6;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .debug(arg_request, arg_appsId, arg_servicesId, arg_versionsId,
              arg_instancesId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.AppsServicesVersionsInstancesResourceApi res =
          new api.AppengineApi(mock).apps.services.versions.instances;
      var arg_appsId = "foo";
      var arg_servicesId = "foo";
      var arg_versionsId = "foo";
      var arg_instancesId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/services/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/services/"));
        pathOffset += 10;
        index = path.indexOf("/versions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_servicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/versions/"));
        pathOffset += 10;
        index = path.indexOf("/instances/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_versionsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/instances/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_instancesId"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_appsId, arg_servicesId, arg_versionsId, arg_instancesId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AppsServicesVersionsInstancesResourceApi res =
          new api.AppengineApi(mock).apps.services.versions.instances;
      var arg_appsId = "foo";
      var arg_servicesId = "foo";
      var arg_versionsId = "foo";
      var arg_instancesId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/services/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/services/"));
        pathOffset += 10;
        index = path.indexOf("/versions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_servicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/versions/"));
        pathOffset += 10;
        index = path.indexOf("/instances/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_versionsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/instances/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_instancesId"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInstance());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_appsId, arg_servicesId, arg_versionsId, arg_instancesId)
          .then(unittest.expectAsync1(((api.Instance response) {
        checkInstance(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AppsServicesVersionsInstancesResourceApi res =
          new api.AppengineApi(mock).apps.services.versions.instances;
      var arg_appsId = "foo";
      var arg_servicesId = "foo";
      var arg_versionsId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/apps/"));
        pathOffset += 8;
        index = path.indexOf("/services/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_appsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/services/"));
        pathOffset += 10;
        index = path.indexOf("/versions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_servicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/versions/"));
        pathOffset += 10;
        index = path.indexOf("/instances", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_versionsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/instances"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListInstancesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_appsId, arg_servicesId, arg_versionsId,
              pageToken: arg_pageToken, pageSize: arg_pageSize)
          .then(unittest.expectAsync1(((api.ListInstancesResponse response) {
        checkListInstancesResponse(response);
      })));
    });
  });
}
