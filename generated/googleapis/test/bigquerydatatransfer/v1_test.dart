library googleapis.bigquerydatatransfer.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/bigquerydatatransfer/v1.dart' as api;

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

core.int buildCounterCheckValidCredsRequest = 0;
buildCheckValidCredsRequest() {
  var o = new api.CheckValidCredsRequest();
  buildCounterCheckValidCredsRequest++;
  if (buildCounterCheckValidCredsRequest < 3) {}
  buildCounterCheckValidCredsRequest--;
  return o;
}

checkCheckValidCredsRequest(api.CheckValidCredsRequest o) {
  buildCounterCheckValidCredsRequest++;
  if (buildCounterCheckValidCredsRequest < 3) {}
  buildCounterCheckValidCredsRequest--;
}

core.int buildCounterCheckValidCredsResponse = 0;
buildCheckValidCredsResponse() {
  var o = new api.CheckValidCredsResponse();
  buildCounterCheckValidCredsResponse++;
  if (buildCounterCheckValidCredsResponse < 3) {
    o.hasValidCreds = true;
  }
  buildCounterCheckValidCredsResponse--;
  return o;
}

checkCheckValidCredsResponse(api.CheckValidCredsResponse o) {
  buildCounterCheckValidCredsResponse++;
  if (buildCounterCheckValidCredsResponse < 3) {
    unittest.expect(o.hasValidCreds, unittest.isTrue);
  }
  buildCounterCheckValidCredsResponse--;
}

buildUnnamed3338() {
  var o = new core.List<api.DataSourceParameter>();
  o.add(buildDataSourceParameter());
  o.add(buildDataSourceParameter());
  return o;
}

checkUnnamed3338(core.List<api.DataSourceParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceParameter(o[0]);
  checkDataSourceParameter(o[1]);
}

buildUnnamed3339() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3339(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDataSource = 0;
buildDataSource() {
  var o = new api.DataSource();
  buildCounterDataSource++;
  if (buildCounterDataSource < 3) {
    o.authorizationType = "foo";
    o.clientId = "foo";
    o.dataRefreshType = "foo";
    o.dataSourceId = "foo";
    o.defaultDataRefreshWindowDays = 42;
    o.defaultSchedule = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.helpUrl = "foo";
    o.manualRunsDisabled = true;
    o.minimumScheduleInterval = "foo";
    o.name = "foo";
    o.parameters = buildUnnamed3338();
    o.scopes = buildUnnamed3339();
    o.supportsCustomSchedule = true;
    o.supportsMultipleTransfers = true;
    o.transferType = "foo";
    o.updateDeadlineSeconds = 42;
  }
  buildCounterDataSource--;
  return o;
}

checkDataSource(api.DataSource o) {
  buildCounterDataSource++;
  if (buildCounterDataSource < 3) {
    unittest.expect(o.authorizationType, unittest.equals('foo'));
    unittest.expect(o.clientId, unittest.equals('foo'));
    unittest.expect(o.dataRefreshType, unittest.equals('foo'));
    unittest.expect(o.dataSourceId, unittest.equals('foo'));
    unittest.expect(o.defaultDataRefreshWindowDays, unittest.equals(42));
    unittest.expect(o.defaultSchedule, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.helpUrl, unittest.equals('foo'));
    unittest.expect(o.manualRunsDisabled, unittest.isTrue);
    unittest.expect(o.minimumScheduleInterval, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3338(o.parameters);
    checkUnnamed3339(o.scopes);
    unittest.expect(o.supportsCustomSchedule, unittest.isTrue);
    unittest.expect(o.supportsMultipleTransfers, unittest.isTrue);
    unittest.expect(o.transferType, unittest.equals('foo'));
    unittest.expect(o.updateDeadlineSeconds, unittest.equals(42));
  }
  buildCounterDataSource--;
}

buildUnnamed3340() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3340(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3341() {
  var o = new core.List<api.DataSourceParameter>();
  o.add(buildDataSourceParameter());
  o.add(buildDataSourceParameter());
  return o;
}

checkUnnamed3341(core.List<api.DataSourceParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceParameter(o[0]);
  checkDataSourceParameter(o[1]);
}

core.int buildCounterDataSourceParameter = 0;
buildDataSourceParameter() {
  var o = new api.DataSourceParameter();
  buildCounterDataSourceParameter++;
  if (buildCounterDataSourceParameter < 3) {
    o.allowedValues = buildUnnamed3340();
    o.deprecated = true;
    o.description = "foo";
    o.displayName = "foo";
    o.fields = buildUnnamed3341();
    o.immutable = true;
    o.maxValue = 42.0;
    o.minValue = 42.0;
    o.paramId = "foo";
    o.recurse = true;
    o.repeated = true;
    o.required = true;
    o.type = "foo";
    o.validationDescription = "foo";
    o.validationHelpUrl = "foo";
    o.validationRegex = "foo";
  }
  buildCounterDataSourceParameter--;
  return o;
}

checkDataSourceParameter(api.DataSourceParameter o) {
  buildCounterDataSourceParameter++;
  if (buildCounterDataSourceParameter < 3) {
    checkUnnamed3340(o.allowedValues);
    unittest.expect(o.deprecated, unittest.isTrue);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed3341(o.fields);
    unittest.expect(o.immutable, unittest.isTrue);
    unittest.expect(o.maxValue, unittest.equals(42.0));
    unittest.expect(o.minValue, unittest.equals(42.0));
    unittest.expect(o.paramId, unittest.equals('foo'));
    unittest.expect(o.recurse, unittest.isTrue);
    unittest.expect(o.repeated, unittest.isTrue);
    unittest.expect(o.required, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.validationDescription, unittest.equals('foo'));
    unittest.expect(o.validationHelpUrl, unittest.equals('foo'));
    unittest.expect(o.validationRegex, unittest.equals('foo'));
  }
  buildCounterDataSourceParameter--;
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

buildUnnamed3342() {
  var o = new core.List<api.DataSource>();
  o.add(buildDataSource());
  o.add(buildDataSource());
  return o;
}

checkUnnamed3342(core.List<api.DataSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSource(o[0]);
  checkDataSource(o[1]);
}

core.int buildCounterListDataSourcesResponse = 0;
buildListDataSourcesResponse() {
  var o = new api.ListDataSourcesResponse();
  buildCounterListDataSourcesResponse++;
  if (buildCounterListDataSourcesResponse < 3) {
    o.dataSources = buildUnnamed3342();
    o.nextPageToken = "foo";
  }
  buildCounterListDataSourcesResponse--;
  return o;
}

checkListDataSourcesResponse(api.ListDataSourcesResponse o) {
  buildCounterListDataSourcesResponse++;
  if (buildCounterListDataSourcesResponse < 3) {
    checkUnnamed3342(o.dataSources);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDataSourcesResponse--;
}

buildUnnamed3343() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed3343(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
buildListLocationsResponse() {
  var o = new api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed3343();
    o.nextPageToken = "foo";
  }
  buildCounterListLocationsResponse--;
  return o;
}

checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed3343(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

buildUnnamed3344() {
  var o = new core.List<api.TransferConfig>();
  o.add(buildTransferConfig());
  o.add(buildTransferConfig());
  return o;
}

checkUnnamed3344(core.List<api.TransferConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransferConfig(o[0]);
  checkTransferConfig(o[1]);
}

core.int buildCounterListTransferConfigsResponse = 0;
buildListTransferConfigsResponse() {
  var o = new api.ListTransferConfigsResponse();
  buildCounterListTransferConfigsResponse++;
  if (buildCounterListTransferConfigsResponse < 3) {
    o.nextPageToken = "foo";
    o.transferConfigs = buildUnnamed3344();
  }
  buildCounterListTransferConfigsResponse--;
  return o;
}

checkListTransferConfigsResponse(api.ListTransferConfigsResponse o) {
  buildCounterListTransferConfigsResponse++;
  if (buildCounterListTransferConfigsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3344(o.transferConfigs);
  }
  buildCounterListTransferConfigsResponse--;
}

buildUnnamed3345() {
  var o = new core.List<api.TransferMessage>();
  o.add(buildTransferMessage());
  o.add(buildTransferMessage());
  return o;
}

checkUnnamed3345(core.List<api.TransferMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransferMessage(o[0]);
  checkTransferMessage(o[1]);
}

core.int buildCounterListTransferLogsResponse = 0;
buildListTransferLogsResponse() {
  var o = new api.ListTransferLogsResponse();
  buildCounterListTransferLogsResponse++;
  if (buildCounterListTransferLogsResponse < 3) {
    o.nextPageToken = "foo";
    o.transferMessages = buildUnnamed3345();
  }
  buildCounterListTransferLogsResponse--;
  return o;
}

checkListTransferLogsResponse(api.ListTransferLogsResponse o) {
  buildCounterListTransferLogsResponse++;
  if (buildCounterListTransferLogsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3345(o.transferMessages);
  }
  buildCounterListTransferLogsResponse--;
}

buildUnnamed3346() {
  var o = new core.List<api.TransferRun>();
  o.add(buildTransferRun());
  o.add(buildTransferRun());
  return o;
}

checkUnnamed3346(core.List<api.TransferRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransferRun(o[0]);
  checkTransferRun(o[1]);
}

core.int buildCounterListTransferRunsResponse = 0;
buildListTransferRunsResponse() {
  var o = new api.ListTransferRunsResponse();
  buildCounterListTransferRunsResponse++;
  if (buildCounterListTransferRunsResponse < 3) {
    o.nextPageToken = "foo";
    o.transferRuns = buildUnnamed3346();
  }
  buildCounterListTransferRunsResponse--;
  return o;
}

checkListTransferRunsResponse(api.ListTransferRunsResponse o) {
  buildCounterListTransferRunsResponse++;
  if (buildCounterListTransferRunsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3346(o.transferRuns);
  }
  buildCounterListTransferRunsResponse--;
}

buildUnnamed3347() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3347(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3348() {
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

checkUnnamed3348(core.Map<core.String, core.Object> o) {
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
    o.displayName = "foo";
    o.labels = buildUnnamed3347();
    o.locationId = "foo";
    o.metadata = buildUnnamed3348();
    o.name = "foo";
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed3347(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed3348(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterScheduleOptions = 0;
buildScheduleOptions() {
  var o = new api.ScheduleOptions();
  buildCounterScheduleOptions++;
  if (buildCounterScheduleOptions < 3) {
    o.disableAutoScheduling = true;
    o.endTime = "foo";
    o.startTime = "foo";
  }
  buildCounterScheduleOptions--;
  return o;
}

checkScheduleOptions(api.ScheduleOptions o) {
  buildCounterScheduleOptions++;
  if (buildCounterScheduleOptions < 3) {
    unittest.expect(o.disableAutoScheduling, unittest.isTrue);
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterScheduleOptions--;
}

core.int buildCounterScheduleTransferRunsRequest = 0;
buildScheduleTransferRunsRequest() {
  var o = new api.ScheduleTransferRunsRequest();
  buildCounterScheduleTransferRunsRequest++;
  if (buildCounterScheduleTransferRunsRequest < 3) {
    o.endTime = "foo";
    o.startTime = "foo";
  }
  buildCounterScheduleTransferRunsRequest--;
  return o;
}

checkScheduleTransferRunsRequest(api.ScheduleTransferRunsRequest o) {
  buildCounterScheduleTransferRunsRequest++;
  if (buildCounterScheduleTransferRunsRequest < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterScheduleTransferRunsRequest--;
}

buildUnnamed3349() {
  var o = new core.List<api.TransferRun>();
  o.add(buildTransferRun());
  o.add(buildTransferRun());
  return o;
}

checkUnnamed3349(core.List<api.TransferRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransferRun(o[0]);
  checkTransferRun(o[1]);
}

core.int buildCounterScheduleTransferRunsResponse = 0;
buildScheduleTransferRunsResponse() {
  var o = new api.ScheduleTransferRunsResponse();
  buildCounterScheduleTransferRunsResponse++;
  if (buildCounterScheduleTransferRunsResponse < 3) {
    o.runs = buildUnnamed3349();
  }
  buildCounterScheduleTransferRunsResponse--;
  return o;
}

checkScheduleTransferRunsResponse(api.ScheduleTransferRunsResponse o) {
  buildCounterScheduleTransferRunsResponse++;
  if (buildCounterScheduleTransferRunsResponse < 3) {
    checkUnnamed3349(o.runs);
  }
  buildCounterScheduleTransferRunsResponse--;
}

core.int buildCounterStartManualTransferRunsRequest = 0;
buildStartManualTransferRunsRequest() {
  var o = new api.StartManualTransferRunsRequest();
  buildCounterStartManualTransferRunsRequest++;
  if (buildCounterStartManualTransferRunsRequest < 3) {
    o.requestedRunTime = "foo";
    o.requestedTimeRange = buildTimeRange();
  }
  buildCounterStartManualTransferRunsRequest--;
  return o;
}

checkStartManualTransferRunsRequest(api.StartManualTransferRunsRequest o) {
  buildCounterStartManualTransferRunsRequest++;
  if (buildCounterStartManualTransferRunsRequest < 3) {
    unittest.expect(o.requestedRunTime, unittest.equals('foo'));
    checkTimeRange(o.requestedTimeRange);
  }
  buildCounterStartManualTransferRunsRequest--;
}

buildUnnamed3350() {
  var o = new core.List<api.TransferRun>();
  o.add(buildTransferRun());
  o.add(buildTransferRun());
  return o;
}

checkUnnamed3350(core.List<api.TransferRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransferRun(o[0]);
  checkTransferRun(o[1]);
}

core.int buildCounterStartManualTransferRunsResponse = 0;
buildStartManualTransferRunsResponse() {
  var o = new api.StartManualTransferRunsResponse();
  buildCounterStartManualTransferRunsResponse++;
  if (buildCounterStartManualTransferRunsResponse < 3) {
    o.runs = buildUnnamed3350();
  }
  buildCounterStartManualTransferRunsResponse--;
  return o;
}

checkStartManualTransferRunsResponse(api.StartManualTransferRunsResponse o) {
  buildCounterStartManualTransferRunsResponse++;
  if (buildCounterStartManualTransferRunsResponse < 3) {
    checkUnnamed3350(o.runs);
  }
  buildCounterStartManualTransferRunsResponse--;
}

buildUnnamed3351() {
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

checkUnnamed3351(core.Map<core.String, core.Object> o) {
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

buildUnnamed3352() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed3351());
  o.add(buildUnnamed3351());
  return o;
}

checkUnnamed3352(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3351(o[0]);
  checkUnnamed3351(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3352();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3352(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTimeRange = 0;
buildTimeRange() {
  var o = new api.TimeRange();
  buildCounterTimeRange++;
  if (buildCounterTimeRange < 3) {
    o.endTime = "foo";
    o.startTime = "foo";
  }
  buildCounterTimeRange--;
  return o;
}

checkTimeRange(api.TimeRange o) {
  buildCounterTimeRange++;
  if (buildCounterTimeRange < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterTimeRange--;
}

buildUnnamed3353() {
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

checkUnnamed3353(core.Map<core.String, core.Object> o) {
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

core.int buildCounterTransferConfig = 0;
buildTransferConfig() {
  var o = new api.TransferConfig();
  buildCounterTransferConfig++;
  if (buildCounterTransferConfig < 3) {
    o.dataRefreshWindowDays = 42;
    o.dataSourceId = "foo";
    o.datasetRegion = "foo";
    o.destinationDatasetId = "foo";
    o.disabled = true;
    o.displayName = "foo";
    o.name = "foo";
    o.nextRunTime = "foo";
    o.params = buildUnnamed3353();
    o.schedule = "foo";
    o.scheduleOptions = buildScheduleOptions();
    o.state = "foo";
    o.updateTime = "foo";
    o.userId = "foo";
  }
  buildCounterTransferConfig--;
  return o;
}

checkTransferConfig(api.TransferConfig o) {
  buildCounterTransferConfig++;
  if (buildCounterTransferConfig < 3) {
    unittest.expect(o.dataRefreshWindowDays, unittest.equals(42));
    unittest.expect(o.dataSourceId, unittest.equals('foo'));
    unittest.expect(o.datasetRegion, unittest.equals('foo'));
    unittest.expect(o.destinationDatasetId, unittest.equals('foo'));
    unittest.expect(o.disabled, unittest.isTrue);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.nextRunTime, unittest.equals('foo'));
    checkUnnamed3353(o.params);
    unittest.expect(o.schedule, unittest.equals('foo'));
    checkScheduleOptions(o.scheduleOptions);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterTransferConfig--;
}

core.int buildCounterTransferMessage = 0;
buildTransferMessage() {
  var o = new api.TransferMessage();
  buildCounterTransferMessage++;
  if (buildCounterTransferMessage < 3) {
    o.messageText = "foo";
    o.messageTime = "foo";
    o.severity = "foo";
  }
  buildCounterTransferMessage--;
  return o;
}

checkTransferMessage(api.TransferMessage o) {
  buildCounterTransferMessage++;
  if (buildCounterTransferMessage < 3) {
    unittest.expect(o.messageText, unittest.equals('foo'));
    unittest.expect(o.messageTime, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
  }
  buildCounterTransferMessage--;
}

buildUnnamed3354() {
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

checkUnnamed3354(core.Map<core.String, core.Object> o) {
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

core.int buildCounterTransferRun = 0;
buildTransferRun() {
  var o = new api.TransferRun();
  buildCounterTransferRun++;
  if (buildCounterTransferRun < 3) {
    o.dataSourceId = "foo";
    o.destinationDatasetId = "foo";
    o.endTime = "foo";
    o.errorStatus = buildStatus();
    o.name = "foo";
    o.params = buildUnnamed3354();
    o.runTime = "foo";
    o.schedule = "foo";
    o.scheduleTime = "foo";
    o.startTime = "foo";
    o.state = "foo";
    o.updateTime = "foo";
    o.userId = "foo";
  }
  buildCounterTransferRun--;
  return o;
}

checkTransferRun(api.TransferRun o) {
  buildCounterTransferRun++;
  if (buildCounterTransferRun < 3) {
    unittest.expect(o.dataSourceId, unittest.equals('foo'));
    unittest.expect(o.destinationDatasetId, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkStatus(o.errorStatus);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3354(o.params);
    unittest.expect(o.runTime, unittest.equals('foo'));
    unittest.expect(o.schedule, unittest.equals('foo'));
    unittest.expect(o.scheduleTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterTransferRun--;
}

buildUnnamed3355() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3355(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3356() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3356(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3357() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3357(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3358() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3358(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3359() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3359(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3360() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3360(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-CheckValidCredsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCheckValidCredsRequest();
      var od = new api.CheckValidCredsRequest.fromJson(o.toJson());
      checkCheckValidCredsRequest(od);
    });
  });

  unittest.group("obj-schema-CheckValidCredsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCheckValidCredsResponse();
      var od = new api.CheckValidCredsResponse.fromJson(o.toJson());
      checkCheckValidCredsResponse(od);
    });
  });

  unittest.group("obj-schema-DataSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataSource();
      var od = new api.DataSource.fromJson(o.toJson());
      checkDataSource(od);
    });
  });

  unittest.group("obj-schema-DataSourceParameter", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataSourceParameter();
      var od = new api.DataSourceParameter.fromJson(o.toJson());
      checkDataSourceParameter(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-ListDataSourcesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDataSourcesResponse();
      var od = new api.ListDataSourcesResponse.fromJson(o.toJson());
      checkListDataSourcesResponse(od);
    });
  });

  unittest.group("obj-schema-ListLocationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLocationsResponse();
      var od = new api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListTransferConfigsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListTransferConfigsResponse();
      var od = new api.ListTransferConfigsResponse.fromJson(o.toJson());
      checkListTransferConfigsResponse(od);
    });
  });

  unittest.group("obj-schema-ListTransferLogsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListTransferLogsResponse();
      var od = new api.ListTransferLogsResponse.fromJson(o.toJson());
      checkListTransferLogsResponse(od);
    });
  });

  unittest.group("obj-schema-ListTransferRunsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListTransferRunsResponse();
      var od = new api.ListTransferRunsResponse.fromJson(o.toJson());
      checkListTransferRunsResponse(od);
    });
  });

  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group("obj-schema-ScheduleOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildScheduleOptions();
      var od = new api.ScheduleOptions.fromJson(o.toJson());
      checkScheduleOptions(od);
    });
  });

  unittest.group("obj-schema-ScheduleTransferRunsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildScheduleTransferRunsRequest();
      var od = new api.ScheduleTransferRunsRequest.fromJson(o.toJson());
      checkScheduleTransferRunsRequest(od);
    });
  });

  unittest.group("obj-schema-ScheduleTransferRunsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildScheduleTransferRunsResponse();
      var od = new api.ScheduleTransferRunsResponse.fromJson(o.toJson());
      checkScheduleTransferRunsResponse(od);
    });
  });

  unittest.group("obj-schema-StartManualTransferRunsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildStartManualTransferRunsRequest();
      var od = new api.StartManualTransferRunsRequest.fromJson(o.toJson());
      checkStartManualTransferRunsRequest(od);
    });
  });

  unittest.group("obj-schema-StartManualTransferRunsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildStartManualTransferRunsResponse();
      var od = new api.StartManualTransferRunsResponse.fromJson(o.toJson());
      checkStartManualTransferRunsResponse(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-TimeRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimeRange();
      var od = new api.TimeRange.fromJson(o.toJson());
      checkTimeRange(od);
    });
  });

  unittest.group("obj-schema-TransferConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildTransferConfig();
      var od = new api.TransferConfig.fromJson(o.toJson());
      checkTransferConfig(od);
    });
  });

  unittest.group("obj-schema-TransferMessage", () {
    unittest.test("to-json--from-json", () {
      var o = buildTransferMessage();
      var od = new api.TransferMessage.fromJson(o.toJson());
      checkTransferMessage(od);
    });
  });

  unittest.group("obj-schema-TransferRun", () {
    unittest.test("to-json--from-json", () {
      var o = buildTransferRun();
      var od = new api.TransferRun.fromJson(o.toJson());
      checkTransferRun(od);
    });
  });

  unittest.group("resource-ProjectsDataSourcesResourceApi", () {
    unittest.test("method--checkValidCreds", () {
      var mock = new HttpServerMock();
      api.ProjectsDataSourcesResourceApi res =
          new api.BigquerydatatransferApi(mock).projects.dataSources;
      var arg_request = buildCheckValidCredsRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CheckValidCredsRequest.fromJson(json);
        checkCheckValidCredsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildCheckValidCredsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .checkValidCreds(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCheckValidCredsResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsDataSourcesResourceApi res =
          new api.BigquerydatatransferApi(mock).projects.dataSources;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildDataSource());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataSource(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsDataSourcesResourceApi res =
          new api.BigquerydatatransferApi(mock).projects.dataSources;
      var arg_parent = "foo";
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildListDataSourcesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDataSourcesResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.BigquerydatatransferApi(mock).projects.locations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildLocation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLocation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.BigquerydatatransferApi(mock).projects.locations;
      var arg_name = "foo";
      var arg_filter = "foo";
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListLocationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsDataSourcesResourceApi", () {
    unittest.test("method--checkValidCreds", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDataSourcesResourceApi res =
          new api.BigquerydatatransferApi(mock).projects.locations.dataSources;
      var arg_request = buildCheckValidCredsRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CheckValidCredsRequest.fromJson(json);
        checkCheckValidCredsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildCheckValidCredsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .checkValidCreds(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCheckValidCredsResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDataSourcesResourceApi res =
          new api.BigquerydatatransferApi(mock).projects.locations.dataSources;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildDataSource());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataSource(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDataSourcesResourceApi res =
          new api.BigquerydatatransferApi(mock).projects.locations.dataSources;
      var arg_parent = "foo";
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildListDataSourcesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDataSourcesResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsTransferConfigsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTransferConfigsResourceApi res =
          new api.BigquerydatatransferApi(mock)
              .projects
              .locations
              .transferConfigs;
      var arg_request = buildTransferConfig();
      var arg_parent = "foo";
      var arg_versionInfo = "foo";
      var arg_authorizationCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TransferConfig.fromJson(json);
        checkTransferConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["versionInfo"].first, unittest.equals(arg_versionInfo));
        unittest.expect(queryMap["authorizationCode"].first,
            unittest.equals(arg_authorizationCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTransferConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              versionInfo: arg_versionInfo,
              authorizationCode: arg_authorizationCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTransferConfig(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTransferConfigsResourceApi res =
          new api.BigquerydatatransferApi(mock)
              .projects
              .locations
              .transferConfigs;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTransferConfigsResourceApi res =
          new api.BigquerydatatransferApi(mock)
              .projects
              .locations
              .transferConfigs;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildTransferConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTransferConfig(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTransferConfigsResourceApi res =
          new api.BigquerydatatransferApi(mock)
              .projects
              .locations
              .transferConfigs;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_dataSourceIds = buildUnnamed3355();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(
            queryMap["dataSourceIds"], unittest.equals(arg_dataSourceIds));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListTransferConfigsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              dataSourceIds: arg_dataSourceIds,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTransferConfigsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTransferConfigsResourceApi res =
          new api.BigquerydatatransferApi(mock)
              .projects
              .locations
              .transferConfigs;
      var arg_request = buildTransferConfig();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_versionInfo = "foo";
      var arg_authorizationCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TransferConfig.fromJson(json);
        checkTransferConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(
            queryMap["versionInfo"].first, unittest.equals(arg_versionInfo));
        unittest.expect(queryMap["authorizationCode"].first,
            unittest.equals(arg_authorizationCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTransferConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask,
              versionInfo: arg_versionInfo,
              authorizationCode: arg_authorizationCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTransferConfig(response);
      })));
    });

    unittest.test("method--scheduleRuns", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTransferConfigsResourceApi res =
          new api.BigquerydatatransferApi(mock)
              .projects
              .locations
              .transferConfigs;
      var arg_request = buildScheduleTransferRunsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ScheduleTransferRunsRequest.fromJson(json);
        checkScheduleTransferRunsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildScheduleTransferRunsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .scheduleRuns(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkScheduleTransferRunsResponse(response);
      })));
    });

    unittest.test("method--startManualRuns", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTransferConfigsResourceApi res =
          new api.BigquerydatatransferApi(mock)
              .projects
              .locations
              .transferConfigs;
      var arg_request = buildStartManualTransferRunsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.StartManualTransferRunsRequest.fromJson(json);
        checkStartManualTransferRunsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildStartManualTransferRunsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .startManualRuns(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStartManualTransferRunsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsTransferConfigsRunsResourceApi",
      () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTransferConfigsRunsResourceApi res =
          new api.BigquerydatatransferApi(mock)
              .projects
              .locations
              .transferConfigs
              .runs;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTransferConfigsRunsResourceApi res =
          new api.BigquerydatatransferApi(mock)
              .projects
              .locations
              .transferConfigs
              .runs;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildTransferRun());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTransferRun(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTransferConfigsRunsResourceApi res =
          new api.BigquerydatatransferApi(mock)
              .projects
              .locations
              .transferConfigs
              .runs;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_states = buildUnnamed3356();
      var arg_pageSize = 42;
      var arg_runAttempt = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["states"], unittest.equals(arg_states));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["runAttempt"].first, unittest.equals(arg_runAttempt));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListTransferRunsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              states: arg_states,
              pageSize: arg_pageSize,
              runAttempt: arg_runAttempt,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTransferRunsResponse(response);
      })));
    });
  });

  unittest.group(
      "resource-ProjectsLocationsTransferConfigsRunsTransferLogsResourceApi",
      () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTransferConfigsRunsTransferLogsResourceApi res =
          new api.BigquerydatatransferApi(mock)
              .projects
              .locations
              .transferConfigs
              .runs
              .transferLogs;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_messageTypes = buildUnnamed3357();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(
            queryMap["messageTypes"], unittest.equals(arg_messageTypes));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListTransferLogsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              messageTypes: arg_messageTypes,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTransferLogsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsTransferConfigsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsTransferConfigsResourceApi res =
          new api.BigquerydatatransferApi(mock).projects.transferConfigs;
      var arg_request = buildTransferConfig();
      var arg_parent = "foo";
      var arg_versionInfo = "foo";
      var arg_authorizationCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TransferConfig.fromJson(json);
        checkTransferConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["versionInfo"].first, unittest.equals(arg_versionInfo));
        unittest.expect(queryMap["authorizationCode"].first,
            unittest.equals(arg_authorizationCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTransferConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              versionInfo: arg_versionInfo,
              authorizationCode: arg_authorizationCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTransferConfig(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsTransferConfigsResourceApi res =
          new api.BigquerydatatransferApi(mock).projects.transferConfigs;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsTransferConfigsResourceApi res =
          new api.BigquerydatatransferApi(mock).projects.transferConfigs;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildTransferConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTransferConfig(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsTransferConfigsResourceApi res =
          new api.BigquerydatatransferApi(mock).projects.transferConfigs;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_dataSourceIds = buildUnnamed3358();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(
            queryMap["dataSourceIds"], unittest.equals(arg_dataSourceIds));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListTransferConfigsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              dataSourceIds: arg_dataSourceIds,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTransferConfigsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsTransferConfigsResourceApi res =
          new api.BigquerydatatransferApi(mock).projects.transferConfigs;
      var arg_request = buildTransferConfig();
      var arg_name = "foo";
      var arg_versionInfo = "foo";
      var arg_authorizationCode = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TransferConfig.fromJson(json);
        checkTransferConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["versionInfo"].first, unittest.equals(arg_versionInfo));
        unittest.expect(queryMap["authorizationCode"].first,
            unittest.equals(arg_authorizationCode));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTransferConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              versionInfo: arg_versionInfo,
              authorizationCode: arg_authorizationCode,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTransferConfig(response);
      })));
    });

    unittest.test("method--scheduleRuns", () {
      var mock = new HttpServerMock();
      api.ProjectsTransferConfigsResourceApi res =
          new api.BigquerydatatransferApi(mock).projects.transferConfigs;
      var arg_request = buildScheduleTransferRunsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ScheduleTransferRunsRequest.fromJson(json);
        checkScheduleTransferRunsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildScheduleTransferRunsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .scheduleRuns(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkScheduleTransferRunsResponse(response);
      })));
    });

    unittest.test("method--startManualRuns", () {
      var mock = new HttpServerMock();
      api.ProjectsTransferConfigsResourceApi res =
          new api.BigquerydatatransferApi(mock).projects.transferConfigs;
      var arg_request = buildStartManualTransferRunsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.StartManualTransferRunsRequest.fromJson(json);
        checkStartManualTransferRunsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildStartManualTransferRunsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .startManualRuns(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStartManualTransferRunsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsTransferConfigsRunsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsTransferConfigsRunsResourceApi res =
          new api.BigquerydatatransferApi(mock).projects.transferConfigs.runs;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsTransferConfigsRunsResourceApi res =
          new api.BigquerydatatransferApi(mock).projects.transferConfigs.runs;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildTransferRun());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTransferRun(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsTransferConfigsRunsResourceApi res =
          new api.BigquerydatatransferApi(mock).projects.transferConfigs.runs;
      var arg_parent = "foo";
      var arg_runAttempt = "foo";
      var arg_pageToken = "foo";
      var arg_states = buildUnnamed3359();
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["runAttempt"].first, unittest.equals(arg_runAttempt));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["states"], unittest.equals(arg_states));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListTransferRunsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              runAttempt: arg_runAttempt,
              pageToken: arg_pageToken,
              states: arg_states,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTransferRunsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsTransferConfigsRunsTransferLogsResourceApi",
      () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsTransferConfigsRunsTransferLogsResourceApi res =
          new api.BigquerydatatransferApi(mock)
              .projects
              .transferConfigs
              .runs
              .transferLogs;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_messageTypes = buildUnnamed3360();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(
            queryMap["messageTypes"], unittest.equals(arg_messageTypes));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListTransferLogsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              messageTypes: arg_messageTypes,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTransferLogsResponse(response);
      })));
    });
  });
}
