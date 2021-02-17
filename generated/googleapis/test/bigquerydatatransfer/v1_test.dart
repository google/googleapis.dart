// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/bigquerydatatransfer/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterCheckValidCredsRequest = 0;
api.CheckValidCredsRequest buildCheckValidCredsRequest() {
  var o = api.CheckValidCredsRequest();
  buildCounterCheckValidCredsRequest++;
  if (buildCounterCheckValidCredsRequest < 3) {}
  buildCounterCheckValidCredsRequest--;
  return o;
}

void checkCheckValidCredsRequest(api.CheckValidCredsRequest o) {
  buildCounterCheckValidCredsRequest++;
  if (buildCounterCheckValidCredsRequest < 3) {}
  buildCounterCheckValidCredsRequest--;
}

core.int buildCounterCheckValidCredsResponse = 0;
api.CheckValidCredsResponse buildCheckValidCredsResponse() {
  var o = api.CheckValidCredsResponse();
  buildCounterCheckValidCredsResponse++;
  if (buildCounterCheckValidCredsResponse < 3) {
    o.hasValidCreds = true;
  }
  buildCounterCheckValidCredsResponse--;
  return o;
}

void checkCheckValidCredsResponse(api.CheckValidCredsResponse o) {
  buildCounterCheckValidCredsResponse++;
  if (buildCounterCheckValidCredsResponse < 3) {
    unittest.expect(o.hasValidCreds, unittest.isTrue);
  }
  buildCounterCheckValidCredsResponse--;
}

core.List<api.DataSourceParameter> buildUnnamed2542() {
  var o = <api.DataSourceParameter>[];
  o.add(buildDataSourceParameter());
  o.add(buildDataSourceParameter());
  return o;
}

void checkUnnamed2542(core.List<api.DataSourceParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceParameter(o[0] as api.DataSourceParameter);
  checkDataSourceParameter(o[1] as api.DataSourceParameter);
}

core.List<core.String> buildUnnamed2543() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2543(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDataSource = 0;
api.DataSource buildDataSource() {
  var o = api.DataSource();
  buildCounterDataSource++;
  if (buildCounterDataSource < 3) {
    o.authorizationType = 'foo';
    o.clientId = 'foo';
    o.dataRefreshType = 'foo';
    o.dataSourceId = 'foo';
    o.defaultDataRefreshWindowDays = 42;
    o.defaultSchedule = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.helpUrl = 'foo';
    o.manualRunsDisabled = true;
    o.minimumScheduleInterval = 'foo';
    o.name = 'foo';
    o.parameters = buildUnnamed2542();
    o.scopes = buildUnnamed2543();
    o.supportsCustomSchedule = true;
    o.supportsMultipleTransfers = true;
    o.transferType = 'foo';
    o.updateDeadlineSeconds = 42;
  }
  buildCounterDataSource--;
  return o;
}

void checkDataSource(api.DataSource o) {
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
    checkUnnamed2542(o.parameters);
    checkUnnamed2543(o.scopes);
    unittest.expect(o.supportsCustomSchedule, unittest.isTrue);
    unittest.expect(o.supportsMultipleTransfers, unittest.isTrue);
    unittest.expect(o.transferType, unittest.equals('foo'));
    unittest.expect(o.updateDeadlineSeconds, unittest.equals(42));
  }
  buildCounterDataSource--;
}

core.List<core.String> buildUnnamed2544() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2544(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.DataSourceParameter> buildUnnamed2545() {
  var o = <api.DataSourceParameter>[];
  o.add(buildDataSourceParameter());
  o.add(buildDataSourceParameter());
  return o;
}

void checkUnnamed2545(core.List<api.DataSourceParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceParameter(o[0] as api.DataSourceParameter);
  checkDataSourceParameter(o[1] as api.DataSourceParameter);
}

core.int buildCounterDataSourceParameter = 0;
api.DataSourceParameter buildDataSourceParameter() {
  var o = api.DataSourceParameter();
  buildCounterDataSourceParameter++;
  if (buildCounterDataSourceParameter < 3) {
    o.allowedValues = buildUnnamed2544();
    o.deprecated = true;
    o.description = 'foo';
    o.displayName = 'foo';
    o.fields = buildUnnamed2545();
    o.immutable = true;
    o.maxValue = 42.0;
    o.minValue = 42.0;
    o.paramId = 'foo';
    o.recurse = true;
    o.repeated = true;
    o.required = true;
    o.type = 'foo';
    o.validationDescription = 'foo';
    o.validationHelpUrl = 'foo';
    o.validationRegex = 'foo';
  }
  buildCounterDataSourceParameter--;
  return o;
}

void checkDataSourceParameter(api.DataSourceParameter o) {
  buildCounterDataSourceParameter++;
  if (buildCounterDataSourceParameter < 3) {
    checkUnnamed2544(o.allowedValues);
    unittest.expect(o.deprecated, unittest.isTrue);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed2545(o.fields);
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

core.int buildCounterEmailPreferences = 0;
api.EmailPreferences buildEmailPreferences() {
  var o = api.EmailPreferences();
  buildCounterEmailPreferences++;
  if (buildCounterEmailPreferences < 3) {
    o.enableFailureEmail = true;
  }
  buildCounterEmailPreferences--;
  return o;
}

void checkEmailPreferences(api.EmailPreferences o) {
  buildCounterEmailPreferences++;
  if (buildCounterEmailPreferences < 3) {
    unittest.expect(o.enableFailureEmail, unittest.isTrue);
  }
  buildCounterEmailPreferences--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
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

core.List<api.DataSource> buildUnnamed2546() {
  var o = <api.DataSource>[];
  o.add(buildDataSource());
  o.add(buildDataSource());
  return o;
}

void checkUnnamed2546(core.List<api.DataSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSource(o[0] as api.DataSource);
  checkDataSource(o[1] as api.DataSource);
}

core.int buildCounterListDataSourcesResponse = 0;
api.ListDataSourcesResponse buildListDataSourcesResponse() {
  var o = api.ListDataSourcesResponse();
  buildCounterListDataSourcesResponse++;
  if (buildCounterListDataSourcesResponse < 3) {
    o.dataSources = buildUnnamed2546();
    o.nextPageToken = 'foo';
  }
  buildCounterListDataSourcesResponse--;
  return o;
}

void checkListDataSourcesResponse(api.ListDataSourcesResponse o) {
  buildCounterListDataSourcesResponse++;
  if (buildCounterListDataSourcesResponse < 3) {
    checkUnnamed2546(o.dataSources);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDataSourcesResponse--;
}

core.List<api.Location> buildUnnamed2547() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed2547(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0] as api.Location);
  checkLocation(o[1] as api.Location);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  var o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed2547();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed2547(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.TransferConfig> buildUnnamed2548() {
  var o = <api.TransferConfig>[];
  o.add(buildTransferConfig());
  o.add(buildTransferConfig());
  return o;
}

void checkUnnamed2548(core.List<api.TransferConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransferConfig(o[0] as api.TransferConfig);
  checkTransferConfig(o[1] as api.TransferConfig);
}

core.int buildCounterListTransferConfigsResponse = 0;
api.ListTransferConfigsResponse buildListTransferConfigsResponse() {
  var o = api.ListTransferConfigsResponse();
  buildCounterListTransferConfigsResponse++;
  if (buildCounterListTransferConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.transferConfigs = buildUnnamed2548();
  }
  buildCounterListTransferConfigsResponse--;
  return o;
}

void checkListTransferConfigsResponse(api.ListTransferConfigsResponse o) {
  buildCounterListTransferConfigsResponse++;
  if (buildCounterListTransferConfigsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2548(o.transferConfigs);
  }
  buildCounterListTransferConfigsResponse--;
}

core.List<api.TransferMessage> buildUnnamed2549() {
  var o = <api.TransferMessage>[];
  o.add(buildTransferMessage());
  o.add(buildTransferMessage());
  return o;
}

void checkUnnamed2549(core.List<api.TransferMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransferMessage(o[0] as api.TransferMessage);
  checkTransferMessage(o[1] as api.TransferMessage);
}

core.int buildCounterListTransferLogsResponse = 0;
api.ListTransferLogsResponse buildListTransferLogsResponse() {
  var o = api.ListTransferLogsResponse();
  buildCounterListTransferLogsResponse++;
  if (buildCounterListTransferLogsResponse < 3) {
    o.nextPageToken = 'foo';
    o.transferMessages = buildUnnamed2549();
  }
  buildCounterListTransferLogsResponse--;
  return o;
}

void checkListTransferLogsResponse(api.ListTransferLogsResponse o) {
  buildCounterListTransferLogsResponse++;
  if (buildCounterListTransferLogsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2549(o.transferMessages);
  }
  buildCounterListTransferLogsResponse--;
}

core.List<api.TransferRun> buildUnnamed2550() {
  var o = <api.TransferRun>[];
  o.add(buildTransferRun());
  o.add(buildTransferRun());
  return o;
}

void checkUnnamed2550(core.List<api.TransferRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransferRun(o[0] as api.TransferRun);
  checkTransferRun(o[1] as api.TransferRun);
}

core.int buildCounterListTransferRunsResponse = 0;
api.ListTransferRunsResponse buildListTransferRunsResponse() {
  var o = api.ListTransferRunsResponse();
  buildCounterListTransferRunsResponse++;
  if (buildCounterListTransferRunsResponse < 3) {
    o.nextPageToken = 'foo';
    o.transferRuns = buildUnnamed2550();
  }
  buildCounterListTransferRunsResponse--;
  return o;
}

void checkListTransferRunsResponse(api.ListTransferRunsResponse o) {
  buildCounterListTransferRunsResponse++;
  if (buildCounterListTransferRunsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2550(o.transferRuns);
  }
  buildCounterListTransferRunsResponse--;
}

core.Map<core.String, core.String> buildUnnamed2551() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2551(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed2552() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed2552(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  var o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed2551();
    o.locationId = 'foo';
    o.metadata = buildUnnamed2552();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed2551(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed2552(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterScheduleOptions = 0;
api.ScheduleOptions buildScheduleOptions() {
  var o = api.ScheduleOptions();
  buildCounterScheduleOptions++;
  if (buildCounterScheduleOptions < 3) {
    o.disableAutoScheduling = true;
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterScheduleOptions--;
  return o;
}

void checkScheduleOptions(api.ScheduleOptions o) {
  buildCounterScheduleOptions++;
  if (buildCounterScheduleOptions < 3) {
    unittest.expect(o.disableAutoScheduling, unittest.isTrue);
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterScheduleOptions--;
}

core.int buildCounterScheduleTransferRunsRequest = 0;
api.ScheduleTransferRunsRequest buildScheduleTransferRunsRequest() {
  var o = api.ScheduleTransferRunsRequest();
  buildCounterScheduleTransferRunsRequest++;
  if (buildCounterScheduleTransferRunsRequest < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterScheduleTransferRunsRequest--;
  return o;
}

void checkScheduleTransferRunsRequest(api.ScheduleTransferRunsRequest o) {
  buildCounterScheduleTransferRunsRequest++;
  if (buildCounterScheduleTransferRunsRequest < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterScheduleTransferRunsRequest--;
}

core.List<api.TransferRun> buildUnnamed2553() {
  var o = <api.TransferRun>[];
  o.add(buildTransferRun());
  o.add(buildTransferRun());
  return o;
}

void checkUnnamed2553(core.List<api.TransferRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransferRun(o[0] as api.TransferRun);
  checkTransferRun(o[1] as api.TransferRun);
}

core.int buildCounterScheduleTransferRunsResponse = 0;
api.ScheduleTransferRunsResponse buildScheduleTransferRunsResponse() {
  var o = api.ScheduleTransferRunsResponse();
  buildCounterScheduleTransferRunsResponse++;
  if (buildCounterScheduleTransferRunsResponse < 3) {
    o.runs = buildUnnamed2553();
  }
  buildCounterScheduleTransferRunsResponse--;
  return o;
}

void checkScheduleTransferRunsResponse(api.ScheduleTransferRunsResponse o) {
  buildCounterScheduleTransferRunsResponse++;
  if (buildCounterScheduleTransferRunsResponse < 3) {
    checkUnnamed2553(o.runs);
  }
  buildCounterScheduleTransferRunsResponse--;
}

core.int buildCounterStartManualTransferRunsRequest = 0;
api.StartManualTransferRunsRequest buildStartManualTransferRunsRequest() {
  var o = api.StartManualTransferRunsRequest();
  buildCounterStartManualTransferRunsRequest++;
  if (buildCounterStartManualTransferRunsRequest < 3) {
    o.requestedRunTime = 'foo';
    o.requestedTimeRange = buildTimeRange();
  }
  buildCounterStartManualTransferRunsRequest--;
  return o;
}

void checkStartManualTransferRunsRequest(api.StartManualTransferRunsRequest o) {
  buildCounterStartManualTransferRunsRequest++;
  if (buildCounterStartManualTransferRunsRequest < 3) {
    unittest.expect(o.requestedRunTime, unittest.equals('foo'));
    checkTimeRange(o.requestedTimeRange as api.TimeRange);
  }
  buildCounterStartManualTransferRunsRequest--;
}

core.List<api.TransferRun> buildUnnamed2554() {
  var o = <api.TransferRun>[];
  o.add(buildTransferRun());
  o.add(buildTransferRun());
  return o;
}

void checkUnnamed2554(core.List<api.TransferRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransferRun(o[0] as api.TransferRun);
  checkTransferRun(o[1] as api.TransferRun);
}

core.int buildCounterStartManualTransferRunsResponse = 0;
api.StartManualTransferRunsResponse buildStartManualTransferRunsResponse() {
  var o = api.StartManualTransferRunsResponse();
  buildCounterStartManualTransferRunsResponse++;
  if (buildCounterStartManualTransferRunsResponse < 3) {
    o.runs = buildUnnamed2554();
  }
  buildCounterStartManualTransferRunsResponse--;
  return o;
}

void checkStartManualTransferRunsResponse(
    api.StartManualTransferRunsResponse o) {
  buildCounterStartManualTransferRunsResponse++;
  if (buildCounterStartManualTransferRunsResponse < 3) {
    checkUnnamed2554(o.runs);
  }
  buildCounterStartManualTransferRunsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed2555() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed2555(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed2556() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed2555());
  o.add(buildUnnamed2555());
  return o;
}

void checkUnnamed2556(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2555(o[0]);
  checkUnnamed2555(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2556();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2556(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTimeRange = 0;
api.TimeRange buildTimeRange() {
  var o = api.TimeRange();
  buildCounterTimeRange++;
  if (buildCounterTimeRange < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterTimeRange--;
  return o;
}

void checkTimeRange(api.TimeRange o) {
  buildCounterTimeRange++;
  if (buildCounterTimeRange < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterTimeRange--;
}

core.Map<core.String, core.Object> buildUnnamed2557() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed2557(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.int buildCounterTransferConfig = 0;
api.TransferConfig buildTransferConfig() {
  var o = api.TransferConfig();
  buildCounterTransferConfig++;
  if (buildCounterTransferConfig < 3) {
    o.dataRefreshWindowDays = 42;
    o.dataSourceId = 'foo';
    o.datasetRegion = 'foo';
    o.destinationDatasetId = 'foo';
    o.disabled = true;
    o.displayName = 'foo';
    o.emailPreferences = buildEmailPreferences();
    o.name = 'foo';
    o.nextRunTime = 'foo';
    o.notificationPubsubTopic = 'foo';
    o.params = buildUnnamed2557();
    o.schedule = 'foo';
    o.scheduleOptions = buildScheduleOptions();
    o.state = 'foo';
    o.updateTime = 'foo';
    o.userId = 'foo';
  }
  buildCounterTransferConfig--;
  return o;
}

void checkTransferConfig(api.TransferConfig o) {
  buildCounterTransferConfig++;
  if (buildCounterTransferConfig < 3) {
    unittest.expect(o.dataRefreshWindowDays, unittest.equals(42));
    unittest.expect(o.dataSourceId, unittest.equals('foo'));
    unittest.expect(o.datasetRegion, unittest.equals('foo'));
    unittest.expect(o.destinationDatasetId, unittest.equals('foo'));
    unittest.expect(o.disabled, unittest.isTrue);
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkEmailPreferences(o.emailPreferences as api.EmailPreferences);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.nextRunTime, unittest.equals('foo'));
    unittest.expect(o.notificationPubsubTopic, unittest.equals('foo'));
    checkUnnamed2557(o.params);
    unittest.expect(o.schedule, unittest.equals('foo'));
    checkScheduleOptions(o.scheduleOptions as api.ScheduleOptions);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterTransferConfig--;
}

core.int buildCounterTransferMessage = 0;
api.TransferMessage buildTransferMessage() {
  var o = api.TransferMessage();
  buildCounterTransferMessage++;
  if (buildCounterTransferMessage < 3) {
    o.messageText = 'foo';
    o.messageTime = 'foo';
    o.severity = 'foo';
  }
  buildCounterTransferMessage--;
  return o;
}

void checkTransferMessage(api.TransferMessage o) {
  buildCounterTransferMessage++;
  if (buildCounterTransferMessage < 3) {
    unittest.expect(o.messageText, unittest.equals('foo'));
    unittest.expect(o.messageTime, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
  }
  buildCounterTransferMessage--;
}

core.Map<core.String, core.Object> buildUnnamed2558() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed2558(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.int buildCounterTransferRun = 0;
api.TransferRun buildTransferRun() {
  var o = api.TransferRun();
  buildCounterTransferRun++;
  if (buildCounterTransferRun < 3) {
    o.dataSourceId = 'foo';
    o.destinationDatasetId = 'foo';
    o.emailPreferences = buildEmailPreferences();
    o.endTime = 'foo';
    o.errorStatus = buildStatus();
    o.name = 'foo';
    o.notificationPubsubTopic = 'foo';
    o.params = buildUnnamed2558();
    o.runTime = 'foo';
    o.schedule = 'foo';
    o.scheduleTime = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
    o.userId = 'foo';
  }
  buildCounterTransferRun--;
  return o;
}

void checkTransferRun(api.TransferRun o) {
  buildCounterTransferRun++;
  if (buildCounterTransferRun < 3) {
    unittest.expect(o.dataSourceId, unittest.equals('foo'));
    unittest.expect(o.destinationDatasetId, unittest.equals('foo'));
    checkEmailPreferences(o.emailPreferences as api.EmailPreferences);
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkStatus(o.errorStatus as api.Status);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.notificationPubsubTopic, unittest.equals('foo'));
    checkUnnamed2558(o.params);
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

core.List<core.String> buildUnnamed2559() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2559(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2560() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2560(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2561() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2561(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2562() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2562(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2563() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2563(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2564() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2564(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-CheckValidCredsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCheckValidCredsRequest();
      var od = api.CheckValidCredsRequest.fromJson(o.toJson());
      checkCheckValidCredsRequest(od as api.CheckValidCredsRequest);
    });
  });

  unittest.group('obj-schema-CheckValidCredsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCheckValidCredsResponse();
      var od = api.CheckValidCredsResponse.fromJson(o.toJson());
      checkCheckValidCredsResponse(od as api.CheckValidCredsResponse);
    });
  });

  unittest.group('obj-schema-DataSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataSource();
      var od = api.DataSource.fromJson(o.toJson());
      checkDataSource(od as api.DataSource);
    });
  });

  unittest.group('obj-schema-DataSourceParameter', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataSourceParameter();
      var od = api.DataSourceParameter.fromJson(o.toJson());
      checkDataSourceParameter(od as api.DataSourceParameter);
    });
  });

  unittest.group('obj-schema-EmailPreferences', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmailPreferences();
      var od = api.EmailPreferences.fromJson(o.toJson());
      checkEmailPreferences(od as api.EmailPreferences);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-ListDataSourcesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListDataSourcesResponse();
      var od = api.ListDataSourcesResponse.fromJson(o.toJson());
      checkListDataSourcesResponse(od as api.ListDataSourcesResponse);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListLocationsResponse();
      var od = api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od as api.ListLocationsResponse);
    });
  });

  unittest.group('obj-schema-ListTransferConfigsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListTransferConfigsResponse();
      var od = api.ListTransferConfigsResponse.fromJson(o.toJson());
      checkListTransferConfigsResponse(od as api.ListTransferConfigsResponse);
    });
  });

  unittest.group('obj-schema-ListTransferLogsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListTransferLogsResponse();
      var od = api.ListTransferLogsResponse.fromJson(o.toJson());
      checkListTransferLogsResponse(od as api.ListTransferLogsResponse);
    });
  });

  unittest.group('obj-schema-ListTransferRunsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListTransferRunsResponse();
      var od = api.ListTransferRunsResponse.fromJson(o.toJson());
      checkListTransferRunsResponse(od as api.ListTransferRunsResponse);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocation();
      var od = api.Location.fromJson(o.toJson());
      checkLocation(od as api.Location);
    });
  });

  unittest.group('obj-schema-ScheduleOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildScheduleOptions();
      var od = api.ScheduleOptions.fromJson(o.toJson());
      checkScheduleOptions(od as api.ScheduleOptions);
    });
  });

  unittest.group('obj-schema-ScheduleTransferRunsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildScheduleTransferRunsRequest();
      var od = api.ScheduleTransferRunsRequest.fromJson(o.toJson());
      checkScheduleTransferRunsRequest(od as api.ScheduleTransferRunsRequest);
    });
  });

  unittest.group('obj-schema-ScheduleTransferRunsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildScheduleTransferRunsResponse();
      var od = api.ScheduleTransferRunsResponse.fromJson(o.toJson());
      checkScheduleTransferRunsResponse(od as api.ScheduleTransferRunsResponse);
    });
  });

  unittest.group('obj-schema-StartManualTransferRunsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildStartManualTransferRunsRequest();
      var od = api.StartManualTransferRunsRequest.fromJson(o.toJson());
      checkStartManualTransferRunsRequest(
          od as api.StartManualTransferRunsRequest);
    });
  });

  unittest.group('obj-schema-StartManualTransferRunsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildStartManualTransferRunsResponse();
      var od = api.StartManualTransferRunsResponse.fromJson(o.toJson());
      checkStartManualTransferRunsResponse(
          od as api.StartManualTransferRunsResponse);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-TimeRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildTimeRange();
      var od = api.TimeRange.fromJson(o.toJson());
      checkTimeRange(od as api.TimeRange);
    });
  });

  unittest.group('obj-schema-TransferConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildTransferConfig();
      var od = api.TransferConfig.fromJson(o.toJson());
      checkTransferConfig(od as api.TransferConfig);
    });
  });

  unittest.group('obj-schema-TransferMessage', () {
    unittest.test('to-json--from-json', () {
      var o = buildTransferMessage();
      var od = api.TransferMessage.fromJson(o.toJson());
      checkTransferMessage(od as api.TransferMessage);
    });
  });

  unittest.group('obj-schema-TransferRun', () {
    unittest.test('to-json--from-json', () {
      var o = buildTransferRun();
      var od = api.TransferRun.fromJson(o.toJson());
      checkTransferRun(od as api.TransferRun);
    });
  });

  unittest.group('resource-ProjectsDataSourcesResource', () {
    unittest.test('method--checkValidCreds', () {
      var mock = HttpServerMock();
      var res = api.BigQueryDataTransferApi(mock).projects.dataSources;
      var arg_request = buildCheckValidCredsRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CheckValidCredsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCheckValidCredsRequest(obj as api.CheckValidCredsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCheckValidCredsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .checkValidCreds(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCheckValidCredsResponse(response as api.CheckValidCredsResponse);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.BigQueryDataTransferApi(mock).projects.dataSources;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDataSource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataSource(response as api.DataSource);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BigQueryDataTransferApi(mock).projects.dataSources;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListDataSourcesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDataSourcesResponse(response as api.ListDataSourcesResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.BigQueryDataTransferApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLocation(response as api.Location);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BigQueryDataTransferApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response as api.ListLocationsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsDataSourcesResource', () {
    unittest.test('method--checkValidCreds', () {
      var mock = HttpServerMock();
      var res =
          api.BigQueryDataTransferApi(mock).projects.locations.dataSources;
      var arg_request = buildCheckValidCredsRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CheckValidCredsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCheckValidCredsRequest(obj as api.CheckValidCredsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCheckValidCredsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .checkValidCreds(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCheckValidCredsResponse(response as api.CheckValidCredsResponse);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res =
          api.BigQueryDataTransferApi(mock).projects.locations.dataSources;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDataSource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataSource(response as api.DataSource);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res =
          api.BigQueryDataTransferApi(mock).projects.locations.dataSources;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListDataSourcesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDataSourcesResponse(response as api.ListDataSourcesResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsTransferConfigsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res =
          api.BigQueryDataTransferApi(mock).projects.locations.transferConfigs;
      var arg_request = buildTransferConfig();
      var arg_parent = 'foo';
      var arg_authorizationCode = 'foo';
      var arg_serviceAccountName = 'foo';
      var arg_versionInfo = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TransferConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTransferConfig(obj as api.TransferConfig);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["authorizationCode"].first,
            unittest.equals(arg_authorizationCode));
        unittest.expect(queryMap["serviceAccountName"].first,
            unittest.equals(arg_serviceAccountName));
        unittest.expect(
            queryMap["versionInfo"].first, unittest.equals(arg_versionInfo));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTransferConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              authorizationCode: arg_authorizationCode,
              serviceAccountName: arg_serviceAccountName,
              versionInfo: arg_versionInfo,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTransferConfig(response as api.TransferConfig);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res =
          api.BigQueryDataTransferApi(mock).projects.locations.transferConfigs;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res =
          api.BigQueryDataTransferApi(mock).projects.locations.transferConfigs;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTransferConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTransferConfig(response as api.TransferConfig);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res =
          api.BigQueryDataTransferApi(mock).projects.locations.transferConfigs;
      var arg_parent = 'foo';
      var arg_dataSourceIds = buildUnnamed2559();
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["dataSourceIds"], unittest.equals(arg_dataSourceIds));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListTransferConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              dataSourceIds: arg_dataSourceIds,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTransferConfigsResponse(
            response as api.ListTransferConfigsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res =
          api.BigQueryDataTransferApi(mock).projects.locations.transferConfigs;
      var arg_request = buildTransferConfig();
      var arg_name = 'foo';
      var arg_authorizationCode = 'foo';
      var arg_serviceAccountName = 'foo';
      var arg_updateMask = 'foo';
      var arg_versionInfo = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TransferConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTransferConfig(obj as api.TransferConfig);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["authorizationCode"].first,
            unittest.equals(arg_authorizationCode));
        unittest.expect(queryMap["serviceAccountName"].first,
            unittest.equals(arg_serviceAccountName));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(
            queryMap["versionInfo"].first, unittest.equals(arg_versionInfo));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTransferConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              authorizationCode: arg_authorizationCode,
              serviceAccountName: arg_serviceAccountName,
              updateMask: arg_updateMask,
              versionInfo: arg_versionInfo,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTransferConfig(response as api.TransferConfig);
      })));
    });

    unittest.test('method--scheduleRuns', () {
      var mock = HttpServerMock();
      var res =
          api.BigQueryDataTransferApi(mock).projects.locations.transferConfigs;
      var arg_request = buildScheduleTransferRunsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ScheduleTransferRunsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkScheduleTransferRunsRequest(
            obj as api.ScheduleTransferRunsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildScheduleTransferRunsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .scheduleRuns(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkScheduleTransferRunsResponse(
            response as api.ScheduleTransferRunsResponse);
      })));
    });

    unittest.test('method--startManualRuns', () {
      var mock = HttpServerMock();
      var res =
          api.BigQueryDataTransferApi(mock).projects.locations.transferConfigs;
      var arg_request = buildStartManualTransferRunsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.StartManualTransferRunsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartManualTransferRunsRequest(
            obj as api.StartManualTransferRunsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildStartManualTransferRunsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .startManualRuns(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStartManualTransferRunsResponse(
            response as api.StartManualTransferRunsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsTransferConfigsRunsResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.BigQueryDataTransferApi(mock)
          .projects
          .locations
          .transferConfigs
          .runs;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.BigQueryDataTransferApi(mock)
          .projects
          .locations
          .transferConfigs
          .runs;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTransferRun());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTransferRun(response as api.TransferRun);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BigQueryDataTransferApi(mock)
          .projects
          .locations
          .transferConfigs
          .runs;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_runAttempt = 'foo';
      var arg_states = buildUnnamed2560();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["runAttempt"].first, unittest.equals(arg_runAttempt));
        unittest.expect(queryMap["states"], unittest.equals(arg_states));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListTransferRunsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              runAttempt: arg_runAttempt,
              states: arg_states,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTransferRunsResponse(response as api.ListTransferRunsResponse);
      })));
    });
  });

  unittest.group(
      'resource-ProjectsLocationsTransferConfigsRunsTransferLogsResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BigQueryDataTransferApi(mock)
          .projects
          .locations
          .transferConfigs
          .runs
          .transferLogs;
      var arg_parent = 'foo';
      var arg_messageTypes = buildUnnamed2561();
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["messageTypes"], unittest.equals(arg_messageTypes));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListTransferLogsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              messageTypes: arg_messageTypes,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTransferLogsResponse(response as api.ListTransferLogsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsTransferConfigsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.BigQueryDataTransferApi(mock).projects.transferConfigs;
      var arg_request = buildTransferConfig();
      var arg_parent = 'foo';
      var arg_authorizationCode = 'foo';
      var arg_serviceAccountName = 'foo';
      var arg_versionInfo = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TransferConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTransferConfig(obj as api.TransferConfig);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["authorizationCode"].first,
            unittest.equals(arg_authorizationCode));
        unittest.expect(queryMap["serviceAccountName"].first,
            unittest.equals(arg_serviceAccountName));
        unittest.expect(
            queryMap["versionInfo"].first, unittest.equals(arg_versionInfo));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTransferConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              authorizationCode: arg_authorizationCode,
              serviceAccountName: arg_serviceAccountName,
              versionInfo: arg_versionInfo,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTransferConfig(response as api.TransferConfig);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.BigQueryDataTransferApi(mock).projects.transferConfigs;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.BigQueryDataTransferApi(mock).projects.transferConfigs;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTransferConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTransferConfig(response as api.TransferConfig);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BigQueryDataTransferApi(mock).projects.transferConfigs;
      var arg_parent = 'foo';
      var arg_dataSourceIds = buildUnnamed2562();
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["dataSourceIds"], unittest.equals(arg_dataSourceIds));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListTransferConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              dataSourceIds: arg_dataSourceIds,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTransferConfigsResponse(
            response as api.ListTransferConfigsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.BigQueryDataTransferApi(mock).projects.transferConfigs;
      var arg_request = buildTransferConfig();
      var arg_name = 'foo';
      var arg_authorizationCode = 'foo';
      var arg_serviceAccountName = 'foo';
      var arg_updateMask = 'foo';
      var arg_versionInfo = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TransferConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTransferConfig(obj as api.TransferConfig);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["authorizationCode"].first,
            unittest.equals(arg_authorizationCode));
        unittest.expect(queryMap["serviceAccountName"].first,
            unittest.equals(arg_serviceAccountName));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(
            queryMap["versionInfo"].first, unittest.equals(arg_versionInfo));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTransferConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              authorizationCode: arg_authorizationCode,
              serviceAccountName: arg_serviceAccountName,
              updateMask: arg_updateMask,
              versionInfo: arg_versionInfo,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTransferConfig(response as api.TransferConfig);
      })));
    });

    unittest.test('method--scheduleRuns', () {
      var mock = HttpServerMock();
      var res = api.BigQueryDataTransferApi(mock).projects.transferConfigs;
      var arg_request = buildScheduleTransferRunsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ScheduleTransferRunsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkScheduleTransferRunsRequest(
            obj as api.ScheduleTransferRunsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildScheduleTransferRunsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .scheduleRuns(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkScheduleTransferRunsResponse(
            response as api.ScheduleTransferRunsResponse);
      })));
    });

    unittest.test('method--startManualRuns', () {
      var mock = HttpServerMock();
      var res = api.BigQueryDataTransferApi(mock).projects.transferConfigs;
      var arg_request = buildStartManualTransferRunsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.StartManualTransferRunsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartManualTransferRunsRequest(
            obj as api.StartManualTransferRunsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildStartManualTransferRunsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .startManualRuns(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStartManualTransferRunsResponse(
            response as api.StartManualTransferRunsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsTransferConfigsRunsResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.BigQueryDataTransferApi(mock).projects.transferConfigs.runs;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.BigQueryDataTransferApi(mock).projects.transferConfigs.runs;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTransferRun());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTransferRun(response as api.TransferRun);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BigQueryDataTransferApi(mock).projects.transferConfigs.runs;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_runAttempt = 'foo';
      var arg_states = buildUnnamed2563();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["runAttempt"].first, unittest.equals(arg_runAttempt));
        unittest.expect(queryMap["states"], unittest.equals(arg_states));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListTransferRunsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              runAttempt: arg_runAttempt,
              states: arg_states,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTransferRunsResponse(response as api.ListTransferRunsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsTransferConfigsRunsTransferLogsResource',
      () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BigQueryDataTransferApi(mock)
          .projects
          .transferConfigs
          .runs
          .transferLogs;
      var arg_parent = 'foo';
      var arg_messageTypes = buildUnnamed2564();
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["messageTypes"], unittest.equals(arg_messageTypes));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListTransferLogsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              messageTypes: arg_messageTypes,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTransferLogsResponse(response as api.ListTransferLogsResponse);
      })));
    });
  });
}
