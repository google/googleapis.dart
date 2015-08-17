library googleapis_beta.logging.v1beta3.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis_beta/logging/v1beta3.dart' as api;

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

core.int buildCounterAuditData = 0;
buildAuditData() {
  var o = new api.AuditData();
  buildCounterAuditData++;
  if (buildCounterAuditData < 3) {
    o.datasetInsertRequest = buildDatasetInsertRequest();
    o.datasetInsertResponse = buildDatasetInsertResponse();
    o.datasetListRequest = buildDatasetListRequest();
    o.datasetUpdateRequest = buildDatasetUpdateRequest();
    o.datasetUpdateResponse = buildDatasetUpdateResponse();
    o.jobGetQueryResultsRequest = buildJobGetQueryResultsRequest();
    o.jobGetQueryResultsResponse = buildJobGetQueryResultsResponse();
    o.jobInsertRequest = buildJobInsertRequest();
    o.jobQueryDoneResponse = buildJobQueryDoneResponse();
    o.jobQueryRequest = buildJobQueryRequest();
    o.jobQueryResponse = buildJobQueryResponse();
    o.tableDataListRequest = buildTableDataListRequest();
    o.tableInsertRequest = buildTableInsertRequest();
    o.tableInsertResponse = buildTableInsertResponse();
    o.tableUpdateRequest = buildTableUpdateRequest();
    o.tableUpdateResponse = buildTableUpdateResponse();
  }
  buildCounterAuditData--;
  return o;
}

checkAuditData(api.AuditData o) {
  buildCounterAuditData++;
  if (buildCounterAuditData < 3) {
    checkDatasetInsertRequest(o.datasetInsertRequest);
    checkDatasetInsertResponse(o.datasetInsertResponse);
    checkDatasetListRequest(o.datasetListRequest);
    checkDatasetUpdateRequest(o.datasetUpdateRequest);
    checkDatasetUpdateResponse(o.datasetUpdateResponse);
    checkJobGetQueryResultsRequest(o.jobGetQueryResultsRequest);
    checkJobGetQueryResultsResponse(o.jobGetQueryResultsResponse);
    checkJobInsertRequest(o.jobInsertRequest);
    checkJobQueryDoneResponse(o.jobQueryDoneResponse);
    checkJobQueryRequest(o.jobQueryRequest);
    checkJobQueryResponse(o.jobQueryResponse);
    checkTableDataListRequest(o.tableDataListRequest);
    checkTableInsertRequest(o.tableInsertRequest);
    checkTableInsertResponse(o.tableInsertResponse);
    checkTableUpdateRequest(o.tableUpdateRequest);
    checkTableUpdateResponse(o.tableUpdateResponse);
  }
  buildCounterAuditData--;
}

buildUnnamed2451() {
  var o = new core.List<api.AuthorizationInfo>();
  o.add(buildAuthorizationInfo());
  o.add(buildAuthorizationInfo());
  return o;
}

checkUnnamed2451(core.List<api.AuthorizationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthorizationInfo(o[0]);
  checkAuthorizationInfo(o[1]);
}

buildUnnamed2452() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed2452(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o["y"]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

core.int buildCounterAuditLog = 0;
buildAuditLog() {
  var o = new api.AuditLog();
  buildCounterAuditLog++;
  if (buildCounterAuditLog < 3) {
    o.authenticationInfo = buildAuthenticationInfo();
    o.authorizationInfo = buildUnnamed2451();
    o.bigqueryData = buildAuditData();
    o.methodName = "foo";
    o.numResponseItems = "foo";
    o.requestMetadata = buildRequestMetadata();
    o.resourceName = "foo";
    o.serviceData = buildUnnamed2452();
    o.serviceName = "foo";
    o.status = buildStatus();
  }
  buildCounterAuditLog--;
  return o;
}

checkAuditLog(api.AuditLog o) {
  buildCounterAuditLog++;
  if (buildCounterAuditLog < 3) {
    checkAuthenticationInfo(o.authenticationInfo);
    checkUnnamed2451(o.authorizationInfo);
    checkAuditData(o.bigqueryData);
    unittest.expect(o.methodName, unittest.equals('foo'));
    unittest.expect(o.numResponseItems, unittest.equals('foo'));
    checkRequestMetadata(o.requestMetadata);
    unittest.expect(o.resourceName, unittest.equals('foo'));
    checkUnnamed2452(o.serviceData);
    unittest.expect(o.serviceName, unittest.equals('foo'));
    checkStatus(o.status);
  }
  buildCounterAuditLog--;
}

core.int buildCounterAuthenticationInfo = 0;
buildAuthenticationInfo() {
  var o = new api.AuthenticationInfo();
  buildCounterAuthenticationInfo++;
  if (buildCounterAuthenticationInfo < 3) {
    o.principalEmail = "foo";
  }
  buildCounterAuthenticationInfo--;
  return o;
}

checkAuthenticationInfo(api.AuthenticationInfo o) {
  buildCounterAuthenticationInfo++;
  if (buildCounterAuthenticationInfo < 3) {
    unittest.expect(o.principalEmail, unittest.equals('foo'));
  }
  buildCounterAuthenticationInfo--;
}

core.int buildCounterAuthorizationInfo = 0;
buildAuthorizationInfo() {
  var o = new api.AuthorizationInfo();
  buildCounterAuthorizationInfo++;
  if (buildCounterAuthorizationInfo < 3) {
    o.granted = true;
    o.permission = "foo";
    o.resource = "foo";
  }
  buildCounterAuthorizationInfo--;
  return o;
}

checkAuthorizationInfo(api.AuthorizationInfo o) {
  buildCounterAuthorizationInfo++;
  if (buildCounterAuthorizationInfo < 3) {
    unittest.expect(o.granted, unittest.isTrue);
    unittest.expect(o.permission, unittest.equals('foo'));
    unittest.expect(o.resource, unittest.equals('foo'));
  }
  buildCounterAuthorizationInfo--;
}

buildUnnamed2453() {
  var o = new core.List<api.Entry>();
  o.add(buildEntry());
  o.add(buildEntry());
  return o;
}

checkUnnamed2453(core.List<api.Entry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntry(o[0]);
  checkEntry(o[1]);
}

core.int buildCounterBigQueryAcl = 0;
buildBigQueryAcl() {
  var o = new api.BigQueryAcl();
  buildCounterBigQueryAcl++;
  if (buildCounterBigQueryAcl < 3) {
    o.entries = buildUnnamed2453();
  }
  buildCounterBigQueryAcl--;
  return o;
}

checkBigQueryAcl(api.BigQueryAcl o) {
  buildCounterBigQueryAcl++;
  if (buildCounterBigQueryAcl < 3) {
    checkUnnamed2453(o.entries);
  }
  buildCounterBigQueryAcl--;
}

core.int buildCounterDataset = 0;
buildDataset() {
  var o = new api.Dataset();
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    o.acl = buildBigQueryAcl();
    o.createTime = "foo";
    o.datasetName = buildDatasetName();
    o.defaultTableExpireDuration = "foo";
    o.info = buildDatasetInfo();
    o.updateTime = "foo";
  }
  buildCounterDataset--;
  return o;
}

checkDataset(api.Dataset o) {
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    checkBigQueryAcl(o.acl);
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkDatasetName(o.datasetName);
    unittest.expect(o.defaultTableExpireDuration, unittest.equals('foo'));
    checkDatasetInfo(o.info);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterDataset--;
}

core.int buildCounterDatasetInfo = 0;
buildDatasetInfo() {
  var o = new api.DatasetInfo();
  buildCounterDatasetInfo++;
  if (buildCounterDatasetInfo < 3) {
    o.description = "foo";
    o.friendlyName = "foo";
  }
  buildCounterDatasetInfo--;
  return o;
}

checkDatasetInfo(api.DatasetInfo o) {
  buildCounterDatasetInfo++;
  if (buildCounterDatasetInfo < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.friendlyName, unittest.equals('foo'));
  }
  buildCounterDatasetInfo--;
}

core.int buildCounterDatasetInsertRequest = 0;
buildDatasetInsertRequest() {
  var o = new api.DatasetInsertRequest();
  buildCounterDatasetInsertRequest++;
  if (buildCounterDatasetInsertRequest < 3) {
    o.resource = buildDataset();
  }
  buildCounterDatasetInsertRequest--;
  return o;
}

checkDatasetInsertRequest(api.DatasetInsertRequest o) {
  buildCounterDatasetInsertRequest++;
  if (buildCounterDatasetInsertRequest < 3) {
    checkDataset(o.resource);
  }
  buildCounterDatasetInsertRequest--;
}

core.int buildCounterDatasetInsertResponse = 0;
buildDatasetInsertResponse() {
  var o = new api.DatasetInsertResponse();
  buildCounterDatasetInsertResponse++;
  if (buildCounterDatasetInsertResponse < 3) {
    o.resource = buildDataset();
  }
  buildCounterDatasetInsertResponse--;
  return o;
}

checkDatasetInsertResponse(api.DatasetInsertResponse o) {
  buildCounterDatasetInsertResponse++;
  if (buildCounterDatasetInsertResponse < 3) {
    checkDataset(o.resource);
  }
  buildCounterDatasetInsertResponse--;
}

core.int buildCounterDatasetListRequest = 0;
buildDatasetListRequest() {
  var o = new api.DatasetListRequest();
  buildCounterDatasetListRequest++;
  if (buildCounterDatasetListRequest < 3) {
    o.listAll = true;
  }
  buildCounterDatasetListRequest--;
  return o;
}

checkDatasetListRequest(api.DatasetListRequest o) {
  buildCounterDatasetListRequest++;
  if (buildCounterDatasetListRequest < 3) {
    unittest.expect(o.listAll, unittest.isTrue);
  }
  buildCounterDatasetListRequest--;
}

core.int buildCounterDatasetName = 0;
buildDatasetName() {
  var o = new api.DatasetName();
  buildCounterDatasetName++;
  if (buildCounterDatasetName < 3) {
    o.datasetId = "foo";
    o.projectId = "foo";
  }
  buildCounterDatasetName--;
  return o;
}

checkDatasetName(api.DatasetName o) {
  buildCounterDatasetName++;
  if (buildCounterDatasetName < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterDatasetName--;
}

core.int buildCounterDatasetUpdateRequest = 0;
buildDatasetUpdateRequest() {
  var o = new api.DatasetUpdateRequest();
  buildCounterDatasetUpdateRequest++;
  if (buildCounterDatasetUpdateRequest < 3) {
    o.resource = buildDataset();
  }
  buildCounterDatasetUpdateRequest--;
  return o;
}

checkDatasetUpdateRequest(api.DatasetUpdateRequest o) {
  buildCounterDatasetUpdateRequest++;
  if (buildCounterDatasetUpdateRequest < 3) {
    checkDataset(o.resource);
  }
  buildCounterDatasetUpdateRequest--;
}

core.int buildCounterDatasetUpdateResponse = 0;
buildDatasetUpdateResponse() {
  var o = new api.DatasetUpdateResponse();
  buildCounterDatasetUpdateResponse++;
  if (buildCounterDatasetUpdateResponse < 3) {
    o.resource = buildDataset();
  }
  buildCounterDatasetUpdateResponse--;
  return o;
}

checkDatasetUpdateResponse(api.DatasetUpdateResponse o) {
  buildCounterDatasetUpdateResponse++;
  if (buildCounterDatasetUpdateResponse < 3) {
    checkDataset(o.resource);
  }
  buildCounterDatasetUpdateResponse--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {
  }
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {
  }
  buildCounterEmpty--;
}

core.int buildCounterEntry = 0;
buildEntry() {
  var o = new api.Entry();
  buildCounterEntry++;
  if (buildCounterEntry < 3) {
    o.domain = "foo";
    o.groupEmail = "foo";
    o.role = "foo";
    o.specialGroup = "foo";
    o.userEmail = "foo";
    o.viewName = buildTableName();
  }
  buildCounterEntry--;
  return o;
}

checkEntry(api.Entry o) {
  buildCounterEntry++;
  if (buildCounterEntry < 3) {
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.groupEmail, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
    unittest.expect(o.specialGroup, unittest.equals('foo'));
    unittest.expect(o.userEmail, unittest.equals('foo'));
    checkTableName(o.viewName);
  }
  buildCounterEntry--;
}

buildUnnamed2454() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2454(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExtract = 0;
buildExtract() {
  var o = new api.Extract();
  buildCounterExtract++;
  if (buildCounterExtract < 3) {
    o.destinationUris = buildUnnamed2454();
    o.sourceTable = buildTableName();
  }
  buildCounterExtract--;
  return o;
}

checkExtract(api.Extract o) {
  buildCounterExtract++;
  if (buildCounterExtract < 3) {
    checkUnnamed2454(o.destinationUris);
    checkTableName(o.sourceTable);
  }
  buildCounterExtract--;
}

core.int buildCounterFieldSchema = 0;
buildFieldSchema() {
  var o = new api.FieldSchema();
  buildCounterFieldSchema++;
  if (buildCounterFieldSchema < 3) {
    o.mode = "foo";
    o.name = "foo";
    o.schema = buildTableSchema();
    o.type = "foo";
  }
  buildCounterFieldSchema--;
  return o;
}

checkFieldSchema(api.FieldSchema o) {
  buildCounterFieldSchema++;
  if (buildCounterFieldSchema < 3) {
    unittest.expect(o.mode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkTableSchema(o.schema);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterFieldSchema--;
}

core.int buildCounterHttpRequest = 0;
buildHttpRequest() {
  var o = new api.HttpRequest();
  buildCounterHttpRequest++;
  if (buildCounterHttpRequest < 3) {
    o.referer = "foo";
    o.remoteIp = "foo";
    o.requestMethod = "foo";
    o.requestSize = "foo";
    o.requestUrl = "foo";
    o.responseSize = "foo";
    o.status = 42;
    o.userAgent = "foo";
  }
  buildCounterHttpRequest--;
  return o;
}

checkHttpRequest(api.HttpRequest o) {
  buildCounterHttpRequest++;
  if (buildCounterHttpRequest < 3) {
    unittest.expect(o.referer, unittest.equals('foo'));
    unittest.expect(o.remoteIp, unittest.equals('foo'));
    unittest.expect(o.requestMethod, unittest.equals('foo'));
    unittest.expect(o.requestSize, unittest.equals('foo'));
    unittest.expect(o.requestUrl, unittest.equals('foo'));
    unittest.expect(o.responseSize, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals(42));
    unittest.expect(o.userAgent, unittest.equals('foo'));
  }
  buildCounterHttpRequest--;
}

core.int buildCounterJob = 0;
buildJob() {
  var o = new api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.jobConfiguration = buildJobConfiguration();
    o.jobName = buildJobName();
    o.jobStatistics = buildJobStatistics();
    o.jobStatus = buildJobStatus();
  }
  buildCounterJob--;
  return o;
}

checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    checkJobConfiguration(o.jobConfiguration);
    checkJobName(o.jobName);
    checkJobStatistics(o.jobStatistics);
    checkJobStatus(o.jobStatus);
  }
  buildCounterJob--;
}

core.int buildCounterJobConfiguration = 0;
buildJobConfiguration() {
  var o = new api.JobConfiguration();
  buildCounterJobConfiguration++;
  if (buildCounterJobConfiguration < 3) {
    o.dryRun = true;
    o.extract = buildExtract();
    o.load = buildLoad();
    o.query = buildQuery();
    o.tableCopy = buildTableCopy();
  }
  buildCounterJobConfiguration--;
  return o;
}

checkJobConfiguration(api.JobConfiguration o) {
  buildCounterJobConfiguration++;
  if (buildCounterJobConfiguration < 3) {
    unittest.expect(o.dryRun, unittest.isTrue);
    checkExtract(o.extract);
    checkLoad(o.load);
    checkQuery(o.query);
    checkTableCopy(o.tableCopy);
  }
  buildCounterJobConfiguration--;
}

core.int buildCounterJobGetQueryResultsRequest = 0;
buildJobGetQueryResultsRequest() {
  var o = new api.JobGetQueryResultsRequest();
  buildCounterJobGetQueryResultsRequest++;
  if (buildCounterJobGetQueryResultsRequest < 3) {
    o.maxResults = 42;
    o.startRow = "foo";
  }
  buildCounterJobGetQueryResultsRequest--;
  return o;
}

checkJobGetQueryResultsRequest(api.JobGetQueryResultsRequest o) {
  buildCounterJobGetQueryResultsRequest++;
  if (buildCounterJobGetQueryResultsRequest < 3) {
    unittest.expect(o.maxResults, unittest.equals(42));
    unittest.expect(o.startRow, unittest.equals('foo'));
  }
  buildCounterJobGetQueryResultsRequest--;
}

core.int buildCounterJobGetQueryResultsResponse = 0;
buildJobGetQueryResultsResponse() {
  var o = new api.JobGetQueryResultsResponse();
  buildCounterJobGetQueryResultsResponse++;
  if (buildCounterJobGetQueryResultsResponse < 3) {
    o.job = buildJob();
    o.totalResults = "foo";
  }
  buildCounterJobGetQueryResultsResponse--;
  return o;
}

checkJobGetQueryResultsResponse(api.JobGetQueryResultsResponse o) {
  buildCounterJobGetQueryResultsResponse++;
  if (buildCounterJobGetQueryResultsResponse < 3) {
    checkJob(o.job);
    unittest.expect(o.totalResults, unittest.equals('foo'));
  }
  buildCounterJobGetQueryResultsResponse--;
}

core.int buildCounterJobInsertRequest = 0;
buildJobInsertRequest() {
  var o = new api.JobInsertRequest();
  buildCounterJobInsertRequest++;
  if (buildCounterJobInsertRequest < 3) {
    o.resource = buildJob();
  }
  buildCounterJobInsertRequest--;
  return o;
}

checkJobInsertRequest(api.JobInsertRequest o) {
  buildCounterJobInsertRequest++;
  if (buildCounterJobInsertRequest < 3) {
    checkJob(o.resource);
  }
  buildCounterJobInsertRequest--;
}

core.int buildCounterJobName = 0;
buildJobName() {
  var o = new api.JobName();
  buildCounterJobName++;
  if (buildCounterJobName < 3) {
    o.jobId = "foo";
    o.projectId = "foo";
  }
  buildCounterJobName--;
  return o;
}

checkJobName(api.JobName o) {
  buildCounterJobName++;
  if (buildCounterJobName < 3) {
    unittest.expect(o.jobId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterJobName--;
}

core.int buildCounterJobQueryDoneResponse = 0;
buildJobQueryDoneResponse() {
  var o = new api.JobQueryDoneResponse();
  buildCounterJobQueryDoneResponse++;
  if (buildCounterJobQueryDoneResponse < 3) {
    o.job = buildJob();
  }
  buildCounterJobQueryDoneResponse--;
  return o;
}

checkJobQueryDoneResponse(api.JobQueryDoneResponse o) {
  buildCounterJobQueryDoneResponse++;
  if (buildCounterJobQueryDoneResponse < 3) {
    checkJob(o.job);
  }
  buildCounterJobQueryDoneResponse--;
}

core.int buildCounterJobQueryRequest = 0;
buildJobQueryRequest() {
  var o = new api.JobQueryRequest();
  buildCounterJobQueryRequest++;
  if (buildCounterJobQueryRequest < 3) {
    o.defaultDataset = buildDatasetName();
    o.dryRun = true;
    o.maxResults = 42;
    o.projectId = "foo";
    o.query = "foo";
  }
  buildCounterJobQueryRequest--;
  return o;
}

checkJobQueryRequest(api.JobQueryRequest o) {
  buildCounterJobQueryRequest++;
  if (buildCounterJobQueryRequest < 3) {
    checkDatasetName(o.defaultDataset);
    unittest.expect(o.dryRun, unittest.isTrue);
    unittest.expect(o.maxResults, unittest.equals(42));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.query, unittest.equals('foo'));
  }
  buildCounterJobQueryRequest--;
}

core.int buildCounterJobQueryResponse = 0;
buildJobQueryResponse() {
  var o = new api.JobQueryResponse();
  buildCounterJobQueryResponse++;
  if (buildCounterJobQueryResponse < 3) {
    o.job = buildJob();
    o.totalResults = "foo";
  }
  buildCounterJobQueryResponse--;
  return o;
}

checkJobQueryResponse(api.JobQueryResponse o) {
  buildCounterJobQueryResponse++;
  if (buildCounterJobQueryResponse < 3) {
    checkJob(o.job);
    unittest.expect(o.totalResults, unittest.equals('foo'));
  }
  buildCounterJobQueryResponse--;
}

core.int buildCounterJobStatistics = 0;
buildJobStatistics() {
  var o = new api.JobStatistics();
  buildCounterJobStatistics++;
  if (buildCounterJobStatistics < 3) {
    o.createTime = "foo";
    o.endTime = "foo";
    o.startTime = "foo";
    o.totalProcessedBytes = "foo";
  }
  buildCounterJobStatistics--;
  return o;
}

checkJobStatistics(api.JobStatistics o) {
  buildCounterJobStatistics++;
  if (buildCounterJobStatistics < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.totalProcessedBytes, unittest.equals('foo'));
  }
  buildCounterJobStatistics--;
}

core.int buildCounterJobStatus = 0;
buildJobStatus() {
  var o = new api.JobStatus();
  buildCounterJobStatus++;
  if (buildCounterJobStatus < 3) {
    o.error = buildStatus();
    o.state = "foo";
  }
  buildCounterJobStatus--;
  return o;
}

checkJobStatus(api.JobStatus o) {
  buildCounterJobStatus++;
  if (buildCounterJobStatus < 3) {
    checkStatus(o.error);
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterJobStatus--;
}

buildUnnamed2455() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2455(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListLogServiceIndexesResponse = 0;
buildListLogServiceIndexesResponse() {
  var o = new api.ListLogServiceIndexesResponse();
  buildCounterListLogServiceIndexesResponse++;
  if (buildCounterListLogServiceIndexesResponse < 3) {
    o.nextPageToken = "foo";
    o.serviceIndexPrefixes = buildUnnamed2455();
  }
  buildCounterListLogServiceIndexesResponse--;
  return o;
}

checkListLogServiceIndexesResponse(api.ListLogServiceIndexesResponse o) {
  buildCounterListLogServiceIndexesResponse++;
  if (buildCounterListLogServiceIndexesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2455(o.serviceIndexPrefixes);
  }
  buildCounterListLogServiceIndexesResponse--;
}

buildUnnamed2456() {
  var o = new core.List<api.LogSink>();
  o.add(buildLogSink());
  o.add(buildLogSink());
  return o;
}

checkUnnamed2456(core.List<api.LogSink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogSink(o[0]);
  checkLogSink(o[1]);
}

core.int buildCounterListLogServiceSinksResponse = 0;
buildListLogServiceSinksResponse() {
  var o = new api.ListLogServiceSinksResponse();
  buildCounterListLogServiceSinksResponse++;
  if (buildCounterListLogServiceSinksResponse < 3) {
    o.sinks = buildUnnamed2456();
  }
  buildCounterListLogServiceSinksResponse--;
  return o;
}

checkListLogServiceSinksResponse(api.ListLogServiceSinksResponse o) {
  buildCounterListLogServiceSinksResponse++;
  if (buildCounterListLogServiceSinksResponse < 3) {
    checkUnnamed2456(o.sinks);
  }
  buildCounterListLogServiceSinksResponse--;
}

buildUnnamed2457() {
  var o = new core.List<api.LogService>();
  o.add(buildLogService());
  o.add(buildLogService());
  return o;
}

checkUnnamed2457(core.List<api.LogService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogService(o[0]);
  checkLogService(o[1]);
}

core.int buildCounterListLogServicesResponse = 0;
buildListLogServicesResponse() {
  var o = new api.ListLogServicesResponse();
  buildCounterListLogServicesResponse++;
  if (buildCounterListLogServicesResponse < 3) {
    o.logServices = buildUnnamed2457();
    o.nextPageToken = "foo";
  }
  buildCounterListLogServicesResponse--;
  return o;
}

checkListLogServicesResponse(api.ListLogServicesResponse o) {
  buildCounterListLogServicesResponse++;
  if (buildCounterListLogServicesResponse < 3) {
    checkUnnamed2457(o.logServices);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLogServicesResponse--;
}

buildUnnamed2458() {
  var o = new core.List<api.LogSink>();
  o.add(buildLogSink());
  o.add(buildLogSink());
  return o;
}

checkUnnamed2458(core.List<api.LogSink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogSink(o[0]);
  checkLogSink(o[1]);
}

core.int buildCounterListLogSinksResponse = 0;
buildListLogSinksResponse() {
  var o = new api.ListLogSinksResponse();
  buildCounterListLogSinksResponse++;
  if (buildCounterListLogSinksResponse < 3) {
    o.sinks = buildUnnamed2458();
  }
  buildCounterListLogSinksResponse--;
  return o;
}

checkListLogSinksResponse(api.ListLogSinksResponse o) {
  buildCounterListLogSinksResponse++;
  if (buildCounterListLogSinksResponse < 3) {
    checkUnnamed2458(o.sinks);
  }
  buildCounterListLogSinksResponse--;
}

buildUnnamed2459() {
  var o = new core.List<api.Log>();
  o.add(buildLog());
  o.add(buildLog());
  return o;
}

checkUnnamed2459(core.List<api.Log> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLog(o[0]);
  checkLog(o[1]);
}

core.int buildCounterListLogsResponse = 0;
buildListLogsResponse() {
  var o = new api.ListLogsResponse();
  buildCounterListLogsResponse++;
  if (buildCounterListLogsResponse < 3) {
    o.logs = buildUnnamed2459();
    o.nextPageToken = "foo";
  }
  buildCounterListLogsResponse--;
  return o;
}

checkListLogsResponse(api.ListLogsResponse o) {
  buildCounterListLogsResponse++;
  if (buildCounterListLogsResponse < 3) {
    checkUnnamed2459(o.logs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLogsResponse--;
}

buildUnnamed2460() {
  var o = new core.List<api.LogSink>();
  o.add(buildLogSink());
  o.add(buildLogSink());
  return o;
}

checkUnnamed2460(core.List<api.LogSink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogSink(o[0]);
  checkLogSink(o[1]);
}

core.int buildCounterListSinksResponse = 0;
buildListSinksResponse() {
  var o = new api.ListSinksResponse();
  buildCounterListSinksResponse++;
  if (buildCounterListSinksResponse < 3) {
    o.sinks = buildUnnamed2460();
  }
  buildCounterListSinksResponse--;
  return o;
}

checkListSinksResponse(api.ListSinksResponse o) {
  buildCounterListSinksResponse++;
  if (buildCounterListSinksResponse < 3) {
    checkUnnamed2460(o.sinks);
  }
  buildCounterListSinksResponse--;
}

buildUnnamed2461() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2461(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLoad = 0;
buildLoad() {
  var o = new api.Load();
  buildCounterLoad++;
  if (buildCounterLoad < 3) {
    o.createDisposition = "foo";
    o.destinationTable = buildTableName();
    o.schema = buildTableSchema();
    o.sourceUris = buildUnnamed2461();
    o.writeDisposition = "foo";
  }
  buildCounterLoad--;
  return o;
}

checkLoad(api.Load o) {
  buildCounterLoad++;
  if (buildCounterLoad < 3) {
    unittest.expect(o.createDisposition, unittest.equals('foo'));
    checkTableName(o.destinationTable);
    checkTableSchema(o.schema);
    checkUnnamed2461(o.sourceUris);
    unittest.expect(o.writeDisposition, unittest.equals('foo'));
  }
  buildCounterLoad--;
}

core.int buildCounterLog = 0;
buildLog() {
  var o = new api.Log();
  buildCounterLog++;
  if (buildCounterLog < 3) {
    o.displayName = "foo";
    o.name = "foo";
    o.payloadType = "foo";
  }
  buildCounterLog--;
  return o;
}

checkLog(api.Log o) {
  buildCounterLog++;
  if (buildCounterLog < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.payloadType, unittest.equals('foo'));
  }
  buildCounterLog--;
}

buildUnnamed2462() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed2462(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map; unittest.expect(casted3, unittest.hasLength(3)); unittest.expect(casted3["list"], unittest.equals([1, 2, 3])); unittest.expect(casted3["bool"], unittest.equals(true)); unittest.expect(casted3["string"], unittest.equals('foo')); 
  var casted4 = (o["y"]) as core.Map; unittest.expect(casted4, unittest.hasLength(3)); unittest.expect(casted4["list"], unittest.equals([1, 2, 3])); unittest.expect(casted4["bool"], unittest.equals(true)); unittest.expect(casted4["string"], unittest.equals('foo')); 
}

buildUnnamed2463() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed2463(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map; unittest.expect(casted5, unittest.hasLength(3)); unittest.expect(casted5["list"], unittest.equals([1, 2, 3])); unittest.expect(casted5["bool"], unittest.equals(true)); unittest.expect(casted5["string"], unittest.equals('foo')); 
  var casted6 = (o["y"]) as core.Map; unittest.expect(casted6, unittest.hasLength(3)); unittest.expect(casted6["list"], unittest.equals([1, 2, 3])); unittest.expect(casted6["bool"], unittest.equals(true)); unittest.expect(casted6["string"], unittest.equals('foo')); 
}

core.int buildCounterLogEntry = 0;
buildLogEntry() {
  var o = new api.LogEntry();
  buildCounterLogEntry++;
  if (buildCounterLogEntry < 3) {
    o.httpRequest = buildHttpRequest();
    o.insertId = "foo";
    o.log = "foo";
    o.metadata = buildLogEntryMetadata();
    o.protoPayload = buildUnnamed2462();
    o.structPayload = buildUnnamed2463();
    o.textPayload = "foo";
  }
  buildCounterLogEntry--;
  return o;
}

checkLogEntry(api.LogEntry o) {
  buildCounterLogEntry++;
  if (buildCounterLogEntry < 3) {
    checkHttpRequest(o.httpRequest);
    unittest.expect(o.insertId, unittest.equals('foo'));
    unittest.expect(o.log, unittest.equals('foo'));
    checkLogEntryMetadata(o.metadata);
    checkUnnamed2462(o.protoPayload);
    checkUnnamed2463(o.structPayload);
    unittest.expect(o.textPayload, unittest.equals('foo'));
  }
  buildCounterLogEntry--;
}

buildUnnamed2464() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2464(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterLogEntryMetadata = 0;
buildLogEntryMetadata() {
  var o = new api.LogEntryMetadata();
  buildCounterLogEntryMetadata++;
  if (buildCounterLogEntryMetadata < 3) {
    o.labels = buildUnnamed2464();
    o.projectId = "foo";
    o.region = "foo";
    o.serviceName = "foo";
    o.severity = "foo";
    o.timestamp = "foo";
    o.userId = "foo";
    o.zone = "foo";
  }
  buildCounterLogEntryMetadata--;
  return o;
}

checkLogEntryMetadata(api.LogEntryMetadata o) {
  buildCounterLogEntryMetadata++;
  if (buildCounterLogEntryMetadata < 3) {
    checkUnnamed2464(o.labels);
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.serviceName, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterLogEntryMetadata--;
}

core.int buildCounterLogError = 0;
buildLogError() {
  var o = new api.LogError();
  buildCounterLogError++;
  if (buildCounterLogError < 3) {
    o.resource = "foo";
    o.status = buildStatus();
    o.timeNanos = "foo";
  }
  buildCounterLogError--;
  return o;
}

checkLogError(api.LogError o) {
  buildCounterLogError++;
  if (buildCounterLogError < 3) {
    unittest.expect(o.resource, unittest.equals('foo'));
    checkStatus(o.status);
    unittest.expect(o.timeNanos, unittest.equals('foo'));
  }
  buildCounterLogError--;
}

core.int buildCounterLogLine = 0;
buildLogLine() {
  var o = new api.LogLine();
  buildCounterLogLine++;
  if (buildCounterLogLine < 3) {
    o.logMessage = "foo";
    o.severity = "foo";
    o.sourceLocation = buildSourceLocation();
    o.time = "foo";
  }
  buildCounterLogLine--;
  return o;
}

checkLogLine(api.LogLine o) {
  buildCounterLogLine++;
  if (buildCounterLogLine < 3) {
    unittest.expect(o.logMessage, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
    checkSourceLocation(o.sourceLocation);
    unittest.expect(o.time, unittest.equals('foo'));
  }
  buildCounterLogLine--;
}

buildUnnamed2465() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2465(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLogService = 0;
buildLogService() {
  var o = new api.LogService();
  buildCounterLogService++;
  if (buildCounterLogService < 3) {
    o.indexKeys = buildUnnamed2465();
    o.name = "foo";
  }
  buildCounterLogService--;
  return o;
}

checkLogService(api.LogService o) {
  buildCounterLogService++;
  if (buildCounterLogService < 3) {
    checkUnnamed2465(o.indexKeys);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLogService--;
}

buildUnnamed2466() {
  var o = new core.List<api.LogError>();
  o.add(buildLogError());
  o.add(buildLogError());
  return o;
}

checkUnnamed2466(core.List<api.LogError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogError(o[0]);
  checkLogError(o[1]);
}

core.int buildCounterLogSink = 0;
buildLogSink() {
  var o = new api.LogSink();
  buildCounterLogSink++;
  if (buildCounterLogSink < 3) {
    o.destination = "foo";
    o.errors = buildUnnamed2466();
    o.filter = "foo";
    o.name = "foo";
  }
  buildCounterLogSink--;
  return o;
}

checkLogSink(api.LogSink o) {
  buildCounterLogSink++;
  if (buildCounterLogSink < 3) {
    unittest.expect(o.destination, unittest.equals('foo'));
    checkUnnamed2466(o.errors);
    unittest.expect(o.filter, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLogSink--;
}

core.int buildCounterMoney = 0;
buildMoney() {
  var o = new api.Money();
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    o.currencyCode = "foo";
    o.nanos = 42;
    o.units = "foo";
  }
  buildCounterMoney--;
  return o;
}

checkMoney(api.Money o) {
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.units, unittest.equals('foo'));
  }
  buildCounterMoney--;
}

buildUnnamed2467() {
  var o = new core.List<api.TableDefinition>();
  o.add(buildTableDefinition());
  o.add(buildTableDefinition());
  return o;
}

checkUnnamed2467(core.List<api.TableDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableDefinition(o[0]);
  checkTableDefinition(o[1]);
}

core.int buildCounterQuery = 0;
buildQuery() {
  var o = new api.Query();
  buildCounterQuery++;
  if (buildCounterQuery < 3) {
    o.createDisposition = "foo";
    o.defaultDataset = buildDatasetName();
    o.destinationTable = buildTableName();
    o.query = "foo";
    o.tableDefinitions = buildUnnamed2467();
    o.writeDisposition = "foo";
  }
  buildCounterQuery--;
  return o;
}

checkQuery(api.Query o) {
  buildCounterQuery++;
  if (buildCounterQuery < 3) {
    unittest.expect(o.createDisposition, unittest.equals('foo'));
    checkDatasetName(o.defaultDataset);
    checkTableName(o.destinationTable);
    unittest.expect(o.query, unittest.equals('foo'));
    checkUnnamed2467(o.tableDefinitions);
    unittest.expect(o.writeDisposition, unittest.equals('foo'));
  }
  buildCounterQuery--;
}

buildUnnamed2468() {
  var o = new core.List<api.LogLine>();
  o.add(buildLogLine());
  o.add(buildLogLine());
  return o;
}

checkUnnamed2468(core.List<api.LogLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogLine(o[0]);
  checkLogLine(o[1]);
}

buildUnnamed2469() {
  var o = new core.List<api.SourceReference>();
  o.add(buildSourceReference());
  o.add(buildSourceReference());
  return o;
}

checkUnnamed2469(core.List<api.SourceReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceReference(o[0]);
  checkSourceReference(o[1]);
}

core.int buildCounterRequestLog = 0;
buildRequestLog() {
  var o = new api.RequestLog();
  buildCounterRequestLog++;
  if (buildCounterRequestLog < 3) {
    o.appEngineRelease = "foo";
    o.appId = "foo";
    o.cost = 42.0;
    o.endTime = "foo";
    o.finished = true;
    o.host = "foo";
    o.httpVersion = "foo";
    o.instanceId = "foo";
    o.instanceIndex = 42;
    o.ip = "foo";
    o.latency = "foo";
    o.line = buildUnnamed2468();
    o.megaCycles = "foo";
    o.method = "foo";
    o.moduleId = "foo";
    o.nickname = "foo";
    o.pendingTime = "foo";
    o.referrer = "foo";
    o.requestId = "foo";
    o.resource = "foo";
    o.responseSize = "foo";
    o.sourceReference = buildUnnamed2469();
    o.startTime = "foo";
    o.status = 42;
    o.taskName = "foo";
    o.taskQueueName = "foo";
    o.traceId = "foo";
    o.urlMapEntry = "foo";
    o.userAgent = "foo";
    o.versionId = "foo";
    o.wasLoadingRequest = true;
  }
  buildCounterRequestLog--;
  return o;
}

checkRequestLog(api.RequestLog o) {
  buildCounterRequestLog++;
  if (buildCounterRequestLog < 3) {
    unittest.expect(o.appEngineRelease, unittest.equals('foo'));
    unittest.expect(o.appId, unittest.equals('foo'));
    unittest.expect(o.cost, unittest.equals(42.0));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.finished, unittest.isTrue);
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.httpVersion, unittest.equals('foo'));
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.instanceIndex, unittest.equals(42));
    unittest.expect(o.ip, unittest.equals('foo'));
    unittest.expect(o.latency, unittest.equals('foo'));
    checkUnnamed2468(o.line);
    unittest.expect(o.megaCycles, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.moduleId, unittest.equals('foo'));
    unittest.expect(o.nickname, unittest.equals('foo'));
    unittest.expect(o.pendingTime, unittest.equals('foo'));
    unittest.expect(o.referrer, unittest.equals('foo'));
    unittest.expect(o.requestId, unittest.equals('foo'));
    unittest.expect(o.resource, unittest.equals('foo'));
    unittest.expect(o.responseSize, unittest.equals('foo'));
    checkUnnamed2469(o.sourceReference);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals(42));
    unittest.expect(o.taskName, unittest.equals('foo'));
    unittest.expect(o.taskQueueName, unittest.equals('foo'));
    unittest.expect(o.traceId, unittest.equals('foo'));
    unittest.expect(o.urlMapEntry, unittest.equals('foo'));
    unittest.expect(o.userAgent, unittest.equals('foo'));
    unittest.expect(o.versionId, unittest.equals('foo'));
    unittest.expect(o.wasLoadingRequest, unittest.isTrue);
  }
  buildCounterRequestLog--;
}

core.int buildCounterRequestMetadata = 0;
buildRequestMetadata() {
  var o = new api.RequestMetadata();
  buildCounterRequestMetadata++;
  if (buildCounterRequestMetadata < 3) {
    o.callerIp = "foo";
    o.callerSuppliedUserAgent = "foo";
  }
  buildCounterRequestMetadata--;
  return o;
}

checkRequestMetadata(api.RequestMetadata o) {
  buildCounterRequestMetadata++;
  if (buildCounterRequestMetadata < 3) {
    unittest.expect(o.callerIp, unittest.equals('foo'));
    unittest.expect(o.callerSuppliedUserAgent, unittest.equals('foo'));
  }
  buildCounterRequestMetadata--;
}

core.int buildCounterSourceLocation = 0;
buildSourceLocation() {
  var o = new api.SourceLocation();
  buildCounterSourceLocation++;
  if (buildCounterSourceLocation < 3) {
    o.file = "foo";
    o.functionName = "foo";
    o.line = "foo";
  }
  buildCounterSourceLocation--;
  return o;
}

checkSourceLocation(api.SourceLocation o) {
  buildCounterSourceLocation++;
  if (buildCounterSourceLocation < 3) {
    unittest.expect(o.file, unittest.equals('foo'));
    unittest.expect(o.functionName, unittest.equals('foo'));
    unittest.expect(o.line, unittest.equals('foo'));
  }
  buildCounterSourceLocation--;
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

buildUnnamed2470() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed2470(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o["x"]) as core.Map; unittest.expect(casted7, unittest.hasLength(3)); unittest.expect(casted7["list"], unittest.equals([1, 2, 3])); unittest.expect(casted7["bool"], unittest.equals(true)); unittest.expect(casted7["string"], unittest.equals('foo')); 
  var casted8 = (o["y"]) as core.Map; unittest.expect(casted8, unittest.hasLength(3)); unittest.expect(casted8["list"], unittest.equals([1, 2, 3])); unittest.expect(casted8["bool"], unittest.equals(true)); unittest.expect(casted8["string"], unittest.equals('foo')); 
}

buildUnnamed2471() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed2470());
  o.add(buildUnnamed2470());
  return o;
}

checkUnnamed2471(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2470(o[0]);
  checkUnnamed2470(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2471();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2471(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTable = 0;
buildTable() {
  var o = new api.Table();
  buildCounterTable++;
  if (buildCounterTable < 3) {
    o.createTime = "foo";
    o.expireTime = "foo";
    o.info = buildTableInfo();
    o.schema = buildTableSchema();
    o.tableName = buildTableName();
    o.truncateTime = "foo";
    o.view = buildTableViewDefinition();
  }
  buildCounterTable--;
  return o;
}

checkTable(api.Table o) {
  buildCounterTable++;
  if (buildCounterTable < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
    checkTableInfo(o.info);
    checkTableSchema(o.schema);
    checkTableName(o.tableName);
    unittest.expect(o.truncateTime, unittest.equals('foo'));
    checkTableViewDefinition(o.view);
  }
  buildCounterTable--;
}

buildUnnamed2472() {
  var o = new core.List<api.TableName>();
  o.add(buildTableName());
  o.add(buildTableName());
  return o;
}

checkUnnamed2472(core.List<api.TableName> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableName(o[0]);
  checkTableName(o[1]);
}

core.int buildCounterTableCopy = 0;
buildTableCopy() {
  var o = new api.TableCopy();
  buildCounterTableCopy++;
  if (buildCounterTableCopy < 3) {
    o.createDisposition = "foo";
    o.destinationTable = buildTableName();
    o.sourceTables = buildUnnamed2472();
    o.writeDisposition = "foo";
  }
  buildCounterTableCopy--;
  return o;
}

checkTableCopy(api.TableCopy o) {
  buildCounterTableCopy++;
  if (buildCounterTableCopy < 3) {
    unittest.expect(o.createDisposition, unittest.equals('foo'));
    checkTableName(o.destinationTable);
    checkUnnamed2472(o.sourceTables);
    unittest.expect(o.writeDisposition, unittest.equals('foo'));
  }
  buildCounterTableCopy--;
}

core.int buildCounterTableDataListRequest = 0;
buildTableDataListRequest() {
  var o = new api.TableDataListRequest();
  buildCounterTableDataListRequest++;
  if (buildCounterTableDataListRequest < 3) {
    o.maxResults = 42;
    o.startRow = "foo";
  }
  buildCounterTableDataListRequest--;
  return o;
}

checkTableDataListRequest(api.TableDataListRequest o) {
  buildCounterTableDataListRequest++;
  if (buildCounterTableDataListRequest < 3) {
    unittest.expect(o.maxResults, unittest.equals(42));
    unittest.expect(o.startRow, unittest.equals('foo'));
  }
  buildCounterTableDataListRequest--;
}

buildUnnamed2473() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2473(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTableDefinition = 0;
buildTableDefinition() {
  var o = new api.TableDefinition();
  buildCounterTableDefinition++;
  if (buildCounterTableDefinition < 3) {
    o.name = "foo";
    o.sourceUris = buildUnnamed2473();
  }
  buildCounterTableDefinition--;
  return o;
}

checkTableDefinition(api.TableDefinition o) {
  buildCounterTableDefinition++;
  if (buildCounterTableDefinition < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2473(o.sourceUris);
  }
  buildCounterTableDefinition--;
}

core.int buildCounterTableInfo = 0;
buildTableInfo() {
  var o = new api.TableInfo();
  buildCounterTableInfo++;
  if (buildCounterTableInfo < 3) {
    o.description = "foo";
    o.friendlyName = "foo";
  }
  buildCounterTableInfo--;
  return o;
}

checkTableInfo(api.TableInfo o) {
  buildCounterTableInfo++;
  if (buildCounterTableInfo < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.friendlyName, unittest.equals('foo'));
  }
  buildCounterTableInfo--;
}

core.int buildCounterTableInsertRequest = 0;
buildTableInsertRequest() {
  var o = new api.TableInsertRequest();
  buildCounterTableInsertRequest++;
  if (buildCounterTableInsertRequest < 3) {
    o.resource = buildTable();
  }
  buildCounterTableInsertRequest--;
  return o;
}

checkTableInsertRequest(api.TableInsertRequest o) {
  buildCounterTableInsertRequest++;
  if (buildCounterTableInsertRequest < 3) {
    checkTable(o.resource);
  }
  buildCounterTableInsertRequest--;
}

core.int buildCounterTableInsertResponse = 0;
buildTableInsertResponse() {
  var o = new api.TableInsertResponse();
  buildCounterTableInsertResponse++;
  if (buildCounterTableInsertResponse < 3) {
    o.resource = buildTable();
  }
  buildCounterTableInsertResponse--;
  return o;
}

checkTableInsertResponse(api.TableInsertResponse o) {
  buildCounterTableInsertResponse++;
  if (buildCounterTableInsertResponse < 3) {
    checkTable(o.resource);
  }
  buildCounterTableInsertResponse--;
}

core.int buildCounterTableName = 0;
buildTableName() {
  var o = new api.TableName();
  buildCounterTableName++;
  if (buildCounterTableName < 3) {
    o.datasetId = "foo";
    o.projectId = "foo";
    o.tableId = "foo";
  }
  buildCounterTableName--;
  return o;
}

checkTableName(api.TableName o) {
  buildCounterTableName++;
  if (buildCounterTableName < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.tableId, unittest.equals('foo'));
  }
  buildCounterTableName--;
}

buildUnnamed2474() {
  var o = new core.List<api.FieldSchema>();
  o.add(buildFieldSchema());
  o.add(buildFieldSchema());
  return o;
}

checkUnnamed2474(core.List<api.FieldSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldSchema(o[0]);
  checkFieldSchema(o[1]);
}

core.int buildCounterTableSchema = 0;
buildTableSchema() {
  var o = new api.TableSchema();
  buildCounterTableSchema++;
  if (buildCounterTableSchema < 3) {
    o.fields = buildUnnamed2474();
  }
  buildCounterTableSchema--;
  return o;
}

checkTableSchema(api.TableSchema o) {
  buildCounterTableSchema++;
  if (buildCounterTableSchema < 3) {
    checkUnnamed2474(o.fields);
  }
  buildCounterTableSchema--;
}

core.int buildCounterTableUpdateRequest = 0;
buildTableUpdateRequest() {
  var o = new api.TableUpdateRequest();
  buildCounterTableUpdateRequest++;
  if (buildCounterTableUpdateRequest < 3) {
    o.resource = buildTable();
  }
  buildCounterTableUpdateRequest--;
  return o;
}

checkTableUpdateRequest(api.TableUpdateRequest o) {
  buildCounterTableUpdateRequest++;
  if (buildCounterTableUpdateRequest < 3) {
    checkTable(o.resource);
  }
  buildCounterTableUpdateRequest--;
}

core.int buildCounterTableUpdateResponse = 0;
buildTableUpdateResponse() {
  var o = new api.TableUpdateResponse();
  buildCounterTableUpdateResponse++;
  if (buildCounterTableUpdateResponse < 3) {
    o.resource = buildTable();
  }
  buildCounterTableUpdateResponse--;
  return o;
}

checkTableUpdateResponse(api.TableUpdateResponse o) {
  buildCounterTableUpdateResponse++;
  if (buildCounterTableUpdateResponse < 3) {
    checkTable(o.resource);
  }
  buildCounterTableUpdateResponse--;
}

core.int buildCounterTableViewDefinition = 0;
buildTableViewDefinition() {
  var o = new api.TableViewDefinition();
  buildCounterTableViewDefinition++;
  if (buildCounterTableViewDefinition < 3) {
    o.query = "foo";
  }
  buildCounterTableViewDefinition--;
  return o;
}

checkTableViewDefinition(api.TableViewDefinition o) {
  buildCounterTableViewDefinition++;
  if (buildCounterTableViewDefinition < 3) {
    unittest.expect(o.query, unittest.equals('foo'));
  }
  buildCounterTableViewDefinition--;
}

buildUnnamed2475() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2475(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed2476() {
  var o = new core.List<api.LogEntry>();
  o.add(buildLogEntry());
  o.add(buildLogEntry());
  return o;
}

checkUnnamed2476(core.List<api.LogEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogEntry(o[0]);
  checkLogEntry(o[1]);
}

core.int buildCounterWriteLogEntriesRequest = 0;
buildWriteLogEntriesRequest() {
  var o = new api.WriteLogEntriesRequest();
  buildCounterWriteLogEntriesRequest++;
  if (buildCounterWriteLogEntriesRequest < 3) {
    o.commonLabels = buildUnnamed2475();
    o.entries = buildUnnamed2476();
  }
  buildCounterWriteLogEntriesRequest--;
  return o;
}

checkWriteLogEntriesRequest(api.WriteLogEntriesRequest o) {
  buildCounterWriteLogEntriesRequest++;
  if (buildCounterWriteLogEntriesRequest < 3) {
    checkUnnamed2475(o.commonLabels);
    checkUnnamed2476(o.entries);
  }
  buildCounterWriteLogEntriesRequest--;
}

core.int buildCounterWriteLogEntriesResponse = 0;
buildWriteLogEntriesResponse() {
  var o = new api.WriteLogEntriesResponse();
  buildCounterWriteLogEntriesResponse++;
  if (buildCounterWriteLogEntriesResponse < 3) {
  }
  buildCounterWriteLogEntriesResponse--;
  return o;
}

checkWriteLogEntriesResponse(api.WriteLogEntriesResponse o) {
  buildCounterWriteLogEntriesResponse++;
  if (buildCounterWriteLogEntriesResponse < 3) {
  }
  buildCounterWriteLogEntriesResponse--;
}


main() {
  unittest.group("obj-schema-AuditData", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditData();
      var od = new api.AuditData.fromJson(o.toJson());
      checkAuditData(od);
    });
  });


  unittest.group("obj-schema-AuditLog", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditLog();
      var od = new api.AuditLog.fromJson(o.toJson());
      checkAuditLog(od);
    });
  });


  unittest.group("obj-schema-AuthenticationInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthenticationInfo();
      var od = new api.AuthenticationInfo.fromJson(o.toJson());
      checkAuthenticationInfo(od);
    });
  });


  unittest.group("obj-schema-AuthorizationInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthorizationInfo();
      var od = new api.AuthorizationInfo.fromJson(o.toJson());
      checkAuthorizationInfo(od);
    });
  });


  unittest.group("obj-schema-BigQueryAcl", () {
    unittest.test("to-json--from-json", () {
      var o = buildBigQueryAcl();
      var od = new api.BigQueryAcl.fromJson(o.toJson());
      checkBigQueryAcl(od);
    });
  });


  unittest.group("obj-schema-Dataset", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataset();
      var od = new api.Dataset.fromJson(o.toJson());
      checkDataset(od);
    });
  });


  unittest.group("obj-schema-DatasetInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatasetInfo();
      var od = new api.DatasetInfo.fromJson(o.toJson());
      checkDatasetInfo(od);
    });
  });


  unittest.group("obj-schema-DatasetInsertRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatasetInsertRequest();
      var od = new api.DatasetInsertRequest.fromJson(o.toJson());
      checkDatasetInsertRequest(od);
    });
  });


  unittest.group("obj-schema-DatasetInsertResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatasetInsertResponse();
      var od = new api.DatasetInsertResponse.fromJson(o.toJson());
      checkDatasetInsertResponse(od);
    });
  });


  unittest.group("obj-schema-DatasetListRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatasetListRequest();
      var od = new api.DatasetListRequest.fromJson(o.toJson());
      checkDatasetListRequest(od);
    });
  });


  unittest.group("obj-schema-DatasetName", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatasetName();
      var od = new api.DatasetName.fromJson(o.toJson());
      checkDatasetName(od);
    });
  });


  unittest.group("obj-schema-DatasetUpdateRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatasetUpdateRequest();
      var od = new api.DatasetUpdateRequest.fromJson(o.toJson());
      checkDatasetUpdateRequest(od);
    });
  });


  unittest.group("obj-schema-DatasetUpdateResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatasetUpdateResponse();
      var od = new api.DatasetUpdateResponse.fromJson(o.toJson());
      checkDatasetUpdateResponse(od);
    });
  });


  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });


  unittest.group("obj-schema-Entry", () {
    unittest.test("to-json--from-json", () {
      var o = buildEntry();
      var od = new api.Entry.fromJson(o.toJson());
      checkEntry(od);
    });
  });


  unittest.group("obj-schema-Extract", () {
    unittest.test("to-json--from-json", () {
      var o = buildExtract();
      var od = new api.Extract.fromJson(o.toJson());
      checkExtract(od);
    });
  });


  unittest.group("obj-schema-FieldSchema", () {
    unittest.test("to-json--from-json", () {
      var o = buildFieldSchema();
      var od = new api.FieldSchema.fromJson(o.toJson());
      checkFieldSchema(od);
    });
  });


  unittest.group("obj-schema-HttpRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildHttpRequest();
      var od = new api.HttpRequest.fromJson(o.toJson());
      checkHttpRequest(od);
    });
  });


  unittest.group("obj-schema-Job", () {
    unittest.test("to-json--from-json", () {
      var o = buildJob();
      var od = new api.Job.fromJson(o.toJson());
      checkJob(od);
    });
  });


  unittest.group("obj-schema-JobConfiguration", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobConfiguration();
      var od = new api.JobConfiguration.fromJson(o.toJson());
      checkJobConfiguration(od);
    });
  });


  unittest.group("obj-schema-JobGetQueryResultsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobGetQueryResultsRequest();
      var od = new api.JobGetQueryResultsRequest.fromJson(o.toJson());
      checkJobGetQueryResultsRequest(od);
    });
  });


  unittest.group("obj-schema-JobGetQueryResultsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobGetQueryResultsResponse();
      var od = new api.JobGetQueryResultsResponse.fromJson(o.toJson());
      checkJobGetQueryResultsResponse(od);
    });
  });


  unittest.group("obj-schema-JobInsertRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobInsertRequest();
      var od = new api.JobInsertRequest.fromJson(o.toJson());
      checkJobInsertRequest(od);
    });
  });


  unittest.group("obj-schema-JobName", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobName();
      var od = new api.JobName.fromJson(o.toJson());
      checkJobName(od);
    });
  });


  unittest.group("obj-schema-JobQueryDoneResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobQueryDoneResponse();
      var od = new api.JobQueryDoneResponse.fromJson(o.toJson());
      checkJobQueryDoneResponse(od);
    });
  });


  unittest.group("obj-schema-JobQueryRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobQueryRequest();
      var od = new api.JobQueryRequest.fromJson(o.toJson());
      checkJobQueryRequest(od);
    });
  });


  unittest.group("obj-schema-JobQueryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobQueryResponse();
      var od = new api.JobQueryResponse.fromJson(o.toJson());
      checkJobQueryResponse(od);
    });
  });


  unittest.group("obj-schema-JobStatistics", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobStatistics();
      var od = new api.JobStatistics.fromJson(o.toJson());
      checkJobStatistics(od);
    });
  });


  unittest.group("obj-schema-JobStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobStatus();
      var od = new api.JobStatus.fromJson(o.toJson());
      checkJobStatus(od);
    });
  });


  unittest.group("obj-schema-ListLogServiceIndexesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLogServiceIndexesResponse();
      var od = new api.ListLogServiceIndexesResponse.fromJson(o.toJson());
      checkListLogServiceIndexesResponse(od);
    });
  });


  unittest.group("obj-schema-ListLogServiceSinksResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLogServiceSinksResponse();
      var od = new api.ListLogServiceSinksResponse.fromJson(o.toJson());
      checkListLogServiceSinksResponse(od);
    });
  });


  unittest.group("obj-schema-ListLogServicesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLogServicesResponse();
      var od = new api.ListLogServicesResponse.fromJson(o.toJson());
      checkListLogServicesResponse(od);
    });
  });


  unittest.group("obj-schema-ListLogSinksResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLogSinksResponse();
      var od = new api.ListLogSinksResponse.fromJson(o.toJson());
      checkListLogSinksResponse(od);
    });
  });


  unittest.group("obj-schema-ListLogsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLogsResponse();
      var od = new api.ListLogsResponse.fromJson(o.toJson());
      checkListLogsResponse(od);
    });
  });


  unittest.group("obj-schema-ListSinksResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListSinksResponse();
      var od = new api.ListSinksResponse.fromJson(o.toJson());
      checkListSinksResponse(od);
    });
  });


  unittest.group("obj-schema-Load", () {
    unittest.test("to-json--from-json", () {
      var o = buildLoad();
      var od = new api.Load.fromJson(o.toJson());
      checkLoad(od);
    });
  });


  unittest.group("obj-schema-Log", () {
    unittest.test("to-json--from-json", () {
      var o = buildLog();
      var od = new api.Log.fromJson(o.toJson());
      checkLog(od);
    });
  });


  unittest.group("obj-schema-LogEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogEntry();
      var od = new api.LogEntry.fromJson(o.toJson());
      checkLogEntry(od);
    });
  });


  unittest.group("obj-schema-LogEntryMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogEntryMetadata();
      var od = new api.LogEntryMetadata.fromJson(o.toJson());
      checkLogEntryMetadata(od);
    });
  });


  unittest.group("obj-schema-LogError", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogError();
      var od = new api.LogError.fromJson(o.toJson());
      checkLogError(od);
    });
  });


  unittest.group("obj-schema-LogLine", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogLine();
      var od = new api.LogLine.fromJson(o.toJson());
      checkLogLine(od);
    });
  });


  unittest.group("obj-schema-LogService", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogService();
      var od = new api.LogService.fromJson(o.toJson());
      checkLogService(od);
    });
  });


  unittest.group("obj-schema-LogSink", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogSink();
      var od = new api.LogSink.fromJson(o.toJson());
      checkLogSink(od);
    });
  });


  unittest.group("obj-schema-Money", () {
    unittest.test("to-json--from-json", () {
      var o = buildMoney();
      var od = new api.Money.fromJson(o.toJson());
      checkMoney(od);
    });
  });


  unittest.group("obj-schema-Query", () {
    unittest.test("to-json--from-json", () {
      var o = buildQuery();
      var od = new api.Query.fromJson(o.toJson());
      checkQuery(od);
    });
  });


  unittest.group("obj-schema-RequestLog", () {
    unittest.test("to-json--from-json", () {
      var o = buildRequestLog();
      var od = new api.RequestLog.fromJson(o.toJson());
      checkRequestLog(od);
    });
  });


  unittest.group("obj-schema-RequestMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildRequestMetadata();
      var od = new api.RequestMetadata.fromJson(o.toJson());
      checkRequestMetadata(od);
    });
  });


  unittest.group("obj-schema-SourceLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceLocation();
      var od = new api.SourceLocation.fromJson(o.toJson());
      checkSourceLocation(od);
    });
  });


  unittest.group("obj-schema-SourceReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceReference();
      var od = new api.SourceReference.fromJson(o.toJson());
      checkSourceReference(od);
    });
  });


  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });


  unittest.group("obj-schema-Table", () {
    unittest.test("to-json--from-json", () {
      var o = buildTable();
      var od = new api.Table.fromJson(o.toJson());
      checkTable(od);
    });
  });


  unittest.group("obj-schema-TableCopy", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableCopy();
      var od = new api.TableCopy.fromJson(o.toJson());
      checkTableCopy(od);
    });
  });


  unittest.group("obj-schema-TableDataListRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableDataListRequest();
      var od = new api.TableDataListRequest.fromJson(o.toJson());
      checkTableDataListRequest(od);
    });
  });


  unittest.group("obj-schema-TableDefinition", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableDefinition();
      var od = new api.TableDefinition.fromJson(o.toJson());
      checkTableDefinition(od);
    });
  });


  unittest.group("obj-schema-TableInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableInfo();
      var od = new api.TableInfo.fromJson(o.toJson());
      checkTableInfo(od);
    });
  });


  unittest.group("obj-schema-TableInsertRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableInsertRequest();
      var od = new api.TableInsertRequest.fromJson(o.toJson());
      checkTableInsertRequest(od);
    });
  });


  unittest.group("obj-schema-TableInsertResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableInsertResponse();
      var od = new api.TableInsertResponse.fromJson(o.toJson());
      checkTableInsertResponse(od);
    });
  });


  unittest.group("obj-schema-TableName", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableName();
      var od = new api.TableName.fromJson(o.toJson());
      checkTableName(od);
    });
  });


  unittest.group("obj-schema-TableSchema", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableSchema();
      var od = new api.TableSchema.fromJson(o.toJson());
      checkTableSchema(od);
    });
  });


  unittest.group("obj-schema-TableUpdateRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableUpdateRequest();
      var od = new api.TableUpdateRequest.fromJson(o.toJson());
      checkTableUpdateRequest(od);
    });
  });


  unittest.group("obj-schema-TableUpdateResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableUpdateResponse();
      var od = new api.TableUpdateResponse.fromJson(o.toJson());
      checkTableUpdateResponse(od);
    });
  });


  unittest.group("obj-schema-TableViewDefinition", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableViewDefinition();
      var od = new api.TableViewDefinition.fromJson(o.toJson());
      checkTableViewDefinition(od);
    });
  });


  unittest.group("obj-schema-WriteLogEntriesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildWriteLogEntriesRequest();
      var od = new api.WriteLogEntriesRequest.fromJson(o.toJson());
      checkWriteLogEntriesRequest(od);
    });
  });


  unittest.group("obj-schema-WriteLogEntriesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildWriteLogEntriesResponse();
      var od = new api.WriteLogEntriesResponse.fromJson(o.toJson());
      checkWriteLogEntriesResponse(od);
    });
  });


  unittest.group("resource-ProjectsLogServicesResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsLogServicesResourceApi res = new api.LoggingApi(mock).projects.logServices;
      var arg_projectsId = "foo";
      var arg_log = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logServices", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/logServices"));
        pathOffset += 12;

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
        unittest.expect(queryMap["log"].first, unittest.equals(arg_log));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListLogServicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectsId, log: arg_log, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListLogServicesResponse response) {
        checkListLogServicesResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsLogServicesIndexesResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsLogServicesIndexesResourceApi res = new api.LoggingApi(mock).projects.logServices.indexes;
      var arg_projectsId = "foo";
      var arg_logServicesId = "foo";
      var arg_indexPrefix = "foo";
      var arg_depth = 42;
      var arg_log = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logServices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/logServices/"));
        pathOffset += 13;
        index = path.indexOf("/indexes", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logServicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/indexes"));
        pathOffset += 8;

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
        unittest.expect(queryMap["indexPrefix"].first, unittest.equals(arg_indexPrefix));
        unittest.expect(core.int.parse(queryMap["depth"].first), unittest.equals(arg_depth));
        unittest.expect(queryMap["log"].first, unittest.equals(arg_log));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListLogServiceIndexesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectsId, arg_logServicesId, indexPrefix: arg_indexPrefix, depth: arg_depth, log: arg_log, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListLogServiceIndexesResponse response) {
        checkListLogServiceIndexesResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsLogServicesSinksResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsLogServicesSinksResourceApi res = new api.LoggingApi(mock).projects.logServices.sinks;
      var arg_request = buildLogSink();
      var arg_projectsId = "foo";
      var arg_logServicesId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.LogSink.fromJson(json);
        checkLogSink(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logServices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/logServices/"));
        pathOffset += 13;
        index = path.indexOf("/sinks", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logServicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/sinks"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLogSink());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_projectsId, arg_logServicesId).then(unittest.expectAsync(((api.LogSink response) {
        checkLogSink(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsLogServicesSinksResourceApi res = new api.LoggingApi(mock).projects.logServices.sinks;
      var arg_projectsId = "foo";
      var arg_logServicesId = "foo";
      var arg_sinksId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logServices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/logServices/"));
        pathOffset += 13;
        index = path.indexOf("/sinks/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logServicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/sinks/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_sinksId"));

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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_projectsId, arg_logServicesId, arg_sinksId).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsLogServicesSinksResourceApi res = new api.LoggingApi(mock).projects.logServices.sinks;
      var arg_projectsId = "foo";
      var arg_logServicesId = "foo";
      var arg_sinksId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logServices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/logServices/"));
        pathOffset += 13;
        index = path.indexOf("/sinks/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logServicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/sinks/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_sinksId"));

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
        var resp = convert.JSON.encode(buildLogSink());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_projectsId, arg_logServicesId, arg_sinksId).then(unittest.expectAsync(((api.LogSink response) {
        checkLogSink(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsLogServicesSinksResourceApi res = new api.LoggingApi(mock).projects.logServices.sinks;
      var arg_projectsId = "foo";
      var arg_logServicesId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logServices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/logServices/"));
        pathOffset += 13;
        index = path.indexOf("/sinks", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logServicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/sinks"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListLogServiceSinksResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectsId, arg_logServicesId).then(unittest.expectAsync(((api.ListLogServiceSinksResponse response) {
        checkListLogServiceSinksResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.ProjectsLogServicesSinksResourceApi res = new api.LoggingApi(mock).projects.logServices.sinks;
      var arg_request = buildLogSink();
      var arg_projectsId = "foo";
      var arg_logServicesId = "foo";
      var arg_sinksId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.LogSink.fromJson(json);
        checkLogSink(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logServices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/logServices/"));
        pathOffset += 13;
        index = path.indexOf("/sinks/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logServicesId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/sinks/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_sinksId"));

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
        var resp = convert.JSON.encode(buildLogSink());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_projectsId, arg_logServicesId, arg_sinksId).then(unittest.expectAsync(((api.LogSink response) {
        checkLogSink(response);
      })));
    });

  });


  unittest.group("resource-ProjectsLogsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsLogsResourceApi res = new api.LoggingApi(mock).projects.logs;
      var arg_projectsId = "foo";
      var arg_logsId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/logs/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_logsId"));

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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_projectsId, arg_logsId).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsLogsResourceApi res = new api.LoggingApi(mock).projects.logs;
      var arg_projectsId = "foo";
      var arg_serviceName = "foo";
      var arg_serviceIndexPrefix = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logs", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("/logs"));
        pathOffset += 5;

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
        unittest.expect(queryMap["serviceName"].first, unittest.equals(arg_serviceName));
        unittest.expect(queryMap["serviceIndexPrefix"].first, unittest.equals(arg_serviceIndexPrefix));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListLogsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectsId, serviceName: arg_serviceName, serviceIndexPrefix: arg_serviceIndexPrefix, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListLogsResponse response) {
        checkListLogsResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsLogsEntriesResourceApi", () {
    unittest.test("method--write", () {

      var mock = new HttpServerMock();
      api.ProjectsLogsEntriesResourceApi res = new api.LoggingApi(mock).projects.logs.entries;
      var arg_request = buildWriteLogEntriesRequest();
      var arg_projectsId = "foo";
      var arg_logsId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.WriteLogEntriesRequest.fromJson(json);
        checkWriteLogEntriesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/logs/"));
        pathOffset += 6;
        index = path.indexOf("/entries:write", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("/entries:write"));
        pathOffset += 14;

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
        var resp = convert.JSON.encode(buildWriteLogEntriesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.write(arg_request, arg_projectsId, arg_logsId).then(unittest.expectAsync(((api.WriteLogEntriesResponse response) {
        checkWriteLogEntriesResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsLogsSinksResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsLogsSinksResourceApi res = new api.LoggingApi(mock).projects.logs.sinks;
      var arg_request = buildLogSink();
      var arg_projectsId = "foo";
      var arg_logsId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.LogSink.fromJson(json);
        checkLogSink(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/logs/"));
        pathOffset += 6;
        index = path.indexOf("/sinks", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/sinks"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLogSink());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_projectsId, arg_logsId).then(unittest.expectAsync(((api.LogSink response) {
        checkLogSink(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsLogsSinksResourceApi res = new api.LoggingApi(mock).projects.logs.sinks;
      var arg_projectsId = "foo";
      var arg_logsId = "foo";
      var arg_sinksId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/logs/"));
        pathOffset += 6;
        index = path.indexOf("/sinks/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/sinks/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_sinksId"));

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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_projectsId, arg_logsId, arg_sinksId).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsLogsSinksResourceApi res = new api.LoggingApi(mock).projects.logs.sinks;
      var arg_projectsId = "foo";
      var arg_logsId = "foo";
      var arg_sinksId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/logs/"));
        pathOffset += 6;
        index = path.indexOf("/sinks/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/sinks/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_sinksId"));

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
        var resp = convert.JSON.encode(buildLogSink());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_projectsId, arg_logsId, arg_sinksId).then(unittest.expectAsync(((api.LogSink response) {
        checkLogSink(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsLogsSinksResourceApi res = new api.LoggingApi(mock).projects.logs.sinks;
      var arg_projectsId = "foo";
      var arg_logsId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/logs/"));
        pathOffset += 6;
        index = path.indexOf("/sinks", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/sinks"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListLogSinksResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectsId, arg_logsId).then(unittest.expectAsync(((api.ListLogSinksResponse response) {
        checkListLogSinksResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.ProjectsLogsSinksResourceApi res = new api.LoggingApi(mock).projects.logs.sinks;
      var arg_request = buildLogSink();
      var arg_projectsId = "foo";
      var arg_logsId = "foo";
      var arg_sinksId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.LogSink.fromJson(json);
        checkLogSink(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/logs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/logs/"));
        pathOffset += 6;
        index = path.indexOf("/sinks/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_logsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/sinks/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_sinksId"));

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
        var resp = convert.JSON.encode(buildLogSink());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_projectsId, arg_logsId, arg_sinksId).then(unittest.expectAsync(((api.LogSink response) {
        checkLogSink(response);
      })));
    });

  });


  unittest.group("resource-ProjectsSinksResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsSinksResourceApi res = new api.LoggingApi(mock).projects.sinks;
      var arg_request = buildLogSink();
      var arg_projectsId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.LogSink.fromJson(json);
        checkLogSink(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/sinks", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/sinks"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLogSink());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_projectsId).then(unittest.expectAsync(((api.LogSink response) {
        checkLogSink(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsSinksResourceApi res = new api.LoggingApi(mock).projects.sinks;
      var arg_projectsId = "foo";
      var arg_sinksId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/sinks/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/sinks/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_sinksId"));

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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_projectsId, arg_sinksId).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsSinksResourceApi res = new api.LoggingApi(mock).projects.sinks;
      var arg_projectsId = "foo";
      var arg_sinksId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/sinks/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/sinks/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_sinksId"));

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
        var resp = convert.JSON.encode(buildLogSink());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_projectsId, arg_sinksId).then(unittest.expectAsync(((api.LogSink response) {
        checkLogSink(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsSinksResourceApi res = new api.LoggingApi(mock).projects.sinks;
      var arg_projectsId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/sinks", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/sinks"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListSinksResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectsId).then(unittest.expectAsync(((api.ListSinksResponse response) {
        checkListSinksResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.ProjectsSinksResourceApi res = new api.LoggingApi(mock).projects.sinks;
      var arg_request = buildLogSink();
      var arg_projectsId = "foo";
      var arg_sinksId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.LogSink.fromJson(json);
        checkLogSink(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta3/projects/"));
        pathOffset += 17;
        index = path.indexOf("/sinks/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectsId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/sinks/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_sinksId"));

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
        var resp = convert.JSON.encode(buildLogSink());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_projectsId, arg_sinksId).then(unittest.expectAsync(((api.LogSink response) {
        checkLogSink(response);
      })));
    });

  });


}

