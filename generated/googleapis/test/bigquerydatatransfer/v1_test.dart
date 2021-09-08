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

import 'package:googleapis/bigquerydatatransfer/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterCheckValidCredsRequest = 0;
api.CheckValidCredsRequest buildCheckValidCredsRequest() {
  final o = api.CheckValidCredsRequest();
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
  final o = api.CheckValidCredsResponse();
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
    unittest.expect(o.hasValidCreds!, unittest.isTrue);
  }
  buildCounterCheckValidCredsResponse--;
}

core.List<api.DataSourceParameter> buildUnnamed2878() => [
      buildDataSourceParameter(),
      buildDataSourceParameter(),
    ];

void checkUnnamed2878(core.List<api.DataSourceParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceParameter(o[0]);
  checkDataSourceParameter(o[1]);
}

core.List<core.String> buildUnnamed2879() => [
      'foo',
      'foo',
    ];

void checkUnnamed2879(core.List<core.String> o) {
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

core.int buildCounterDataSource = 0;
api.DataSource buildDataSource() {
  final o = api.DataSource();
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
    o.parameters = buildUnnamed2878();
    o.scopes = buildUnnamed2879();
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
    unittest.expect(
      o.authorizationType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataRefreshType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataSourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultDataRefreshWindowDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.defaultSchedule!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.helpUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(o.manualRunsDisabled!, unittest.isTrue);
    unittest.expect(
      o.minimumScheduleInterval!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2878(o.parameters!);
    checkUnnamed2879(o.scopes!);
    unittest.expect(o.supportsCustomSchedule!, unittest.isTrue);
    unittest.expect(o.supportsMultipleTransfers!, unittest.isTrue);
    unittest.expect(
      o.transferType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateDeadlineSeconds!,
      unittest.equals(42),
    );
  }
  buildCounterDataSource--;
}

core.List<core.String> buildUnnamed2880() => [
      'foo',
      'foo',
    ];

void checkUnnamed2880(core.List<core.String> o) {
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

core.List<api.DataSourceParameter> buildUnnamed2881() => [
      buildDataSourceParameter(),
      buildDataSourceParameter(),
    ];

void checkUnnamed2881(core.List<api.DataSourceParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSourceParameter(o[0]);
  checkDataSourceParameter(o[1]);
}

core.int buildCounterDataSourceParameter = 0;
api.DataSourceParameter buildDataSourceParameter() {
  final o = api.DataSourceParameter();
  buildCounterDataSourceParameter++;
  if (buildCounterDataSourceParameter < 3) {
    o.allowedValues = buildUnnamed2880();
    o.deprecated = true;
    o.description = 'foo';
    o.displayName = 'foo';
    o.fields = buildUnnamed2881();
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
    checkUnnamed2880(o.allowedValues!);
    unittest.expect(o.deprecated!, unittest.isTrue);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed2881(o.fields!);
    unittest.expect(o.immutable!, unittest.isTrue);
    unittest.expect(
      o.maxValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.minValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.paramId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.recurse!, unittest.isTrue);
    unittest.expect(o.repeated!, unittest.isTrue);
    unittest.expect(o.required!, unittest.isTrue);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.validationDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.validationHelpUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.validationRegex!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataSourceParameter--;
}

core.int buildCounterEmailPreferences = 0;
api.EmailPreferences buildEmailPreferences() {
  final o = api.EmailPreferences();
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
    unittest.expect(o.enableFailureEmail!, unittest.isTrue);
  }
  buildCounterEmailPreferences--;
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

core.List<core.String> buildUnnamed2882() => [
      'foo',
      'foo',
    ];

void checkUnnamed2882(core.List<core.String> o) {
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

core.int buildCounterEnrollDataSourcesRequest = 0;
api.EnrollDataSourcesRequest buildEnrollDataSourcesRequest() {
  final o = api.EnrollDataSourcesRequest();
  buildCounterEnrollDataSourcesRequest++;
  if (buildCounterEnrollDataSourcesRequest < 3) {
    o.dataSourceIds = buildUnnamed2882();
  }
  buildCounterEnrollDataSourcesRequest--;
  return o;
}

void checkEnrollDataSourcesRequest(api.EnrollDataSourcesRequest o) {
  buildCounterEnrollDataSourcesRequest++;
  if (buildCounterEnrollDataSourcesRequest < 3) {
    checkUnnamed2882(o.dataSourceIds!);
  }
  buildCounterEnrollDataSourcesRequest--;
}

core.List<api.DataSource> buildUnnamed2883() => [
      buildDataSource(),
      buildDataSource(),
    ];

void checkUnnamed2883(core.List<api.DataSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataSource(o[0]);
  checkDataSource(o[1]);
}

core.int buildCounterListDataSourcesResponse = 0;
api.ListDataSourcesResponse buildListDataSourcesResponse() {
  final o = api.ListDataSourcesResponse();
  buildCounterListDataSourcesResponse++;
  if (buildCounterListDataSourcesResponse < 3) {
    o.dataSources = buildUnnamed2883();
    o.nextPageToken = 'foo';
  }
  buildCounterListDataSourcesResponse--;
  return o;
}

void checkListDataSourcesResponse(api.ListDataSourcesResponse o) {
  buildCounterListDataSourcesResponse++;
  if (buildCounterListDataSourcesResponse < 3) {
    checkUnnamed2883(o.dataSources!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDataSourcesResponse--;
}

core.List<api.Location> buildUnnamed2884() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed2884(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed2884();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed2884(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.TransferConfig> buildUnnamed2885() => [
      buildTransferConfig(),
      buildTransferConfig(),
    ];

void checkUnnamed2885(core.List<api.TransferConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransferConfig(o[0]);
  checkTransferConfig(o[1]);
}

core.int buildCounterListTransferConfigsResponse = 0;
api.ListTransferConfigsResponse buildListTransferConfigsResponse() {
  final o = api.ListTransferConfigsResponse();
  buildCounterListTransferConfigsResponse++;
  if (buildCounterListTransferConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.transferConfigs = buildUnnamed2885();
  }
  buildCounterListTransferConfigsResponse--;
  return o;
}

void checkListTransferConfigsResponse(api.ListTransferConfigsResponse o) {
  buildCounterListTransferConfigsResponse++;
  if (buildCounterListTransferConfigsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed2885(o.transferConfigs!);
  }
  buildCounterListTransferConfigsResponse--;
}

core.List<api.TransferMessage> buildUnnamed2886() => [
      buildTransferMessage(),
      buildTransferMessage(),
    ];

void checkUnnamed2886(core.List<api.TransferMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransferMessage(o[0]);
  checkTransferMessage(o[1]);
}

core.int buildCounterListTransferLogsResponse = 0;
api.ListTransferLogsResponse buildListTransferLogsResponse() {
  final o = api.ListTransferLogsResponse();
  buildCounterListTransferLogsResponse++;
  if (buildCounterListTransferLogsResponse < 3) {
    o.nextPageToken = 'foo';
    o.transferMessages = buildUnnamed2886();
  }
  buildCounterListTransferLogsResponse--;
  return o;
}

void checkListTransferLogsResponse(api.ListTransferLogsResponse o) {
  buildCounterListTransferLogsResponse++;
  if (buildCounterListTransferLogsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed2886(o.transferMessages!);
  }
  buildCounterListTransferLogsResponse--;
}

core.List<api.TransferRun> buildUnnamed2887() => [
      buildTransferRun(),
      buildTransferRun(),
    ];

void checkUnnamed2887(core.List<api.TransferRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransferRun(o[0]);
  checkTransferRun(o[1]);
}

core.int buildCounterListTransferRunsResponse = 0;
api.ListTransferRunsResponse buildListTransferRunsResponse() {
  final o = api.ListTransferRunsResponse();
  buildCounterListTransferRunsResponse++;
  if (buildCounterListTransferRunsResponse < 3) {
    o.nextPageToken = 'foo';
    o.transferRuns = buildUnnamed2887();
  }
  buildCounterListTransferRunsResponse--;
  return o;
}

void checkListTransferRunsResponse(api.ListTransferRunsResponse o) {
  buildCounterListTransferRunsResponse++;
  if (buildCounterListTransferRunsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed2887(o.transferRuns!);
  }
  buildCounterListTransferRunsResponse--;
}

core.Map<core.String, core.String> buildUnnamed2888() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2888(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed2889() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed2889(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed2888();
    o.locationId = 'foo';
    o.metadata = buildUnnamed2889();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed2888(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed2889(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterScheduleOptions = 0;
api.ScheduleOptions buildScheduleOptions() {
  final o = api.ScheduleOptions();
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
    unittest.expect(o.disableAutoScheduling!, unittest.isTrue);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterScheduleOptions--;
}

core.int buildCounterScheduleTransferRunsRequest = 0;
api.ScheduleTransferRunsRequest buildScheduleTransferRunsRequest() {
  final o = api.ScheduleTransferRunsRequest();
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
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterScheduleTransferRunsRequest--;
}

core.List<api.TransferRun> buildUnnamed2890() => [
      buildTransferRun(),
      buildTransferRun(),
    ];

void checkUnnamed2890(core.List<api.TransferRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransferRun(o[0]);
  checkTransferRun(o[1]);
}

core.int buildCounterScheduleTransferRunsResponse = 0;
api.ScheduleTransferRunsResponse buildScheduleTransferRunsResponse() {
  final o = api.ScheduleTransferRunsResponse();
  buildCounterScheduleTransferRunsResponse++;
  if (buildCounterScheduleTransferRunsResponse < 3) {
    o.runs = buildUnnamed2890();
  }
  buildCounterScheduleTransferRunsResponse--;
  return o;
}

void checkScheduleTransferRunsResponse(api.ScheduleTransferRunsResponse o) {
  buildCounterScheduleTransferRunsResponse++;
  if (buildCounterScheduleTransferRunsResponse < 3) {
    checkUnnamed2890(o.runs!);
  }
  buildCounterScheduleTransferRunsResponse--;
}

core.int buildCounterStartManualTransferRunsRequest = 0;
api.StartManualTransferRunsRequest buildStartManualTransferRunsRequest() {
  final o = api.StartManualTransferRunsRequest();
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
    unittest.expect(
      o.requestedRunTime!,
      unittest.equals('foo'),
    );
    checkTimeRange(o.requestedTimeRange!);
  }
  buildCounterStartManualTransferRunsRequest--;
}

core.List<api.TransferRun> buildUnnamed2891() => [
      buildTransferRun(),
      buildTransferRun(),
    ];

void checkUnnamed2891(core.List<api.TransferRun> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransferRun(o[0]);
  checkTransferRun(o[1]);
}

core.int buildCounterStartManualTransferRunsResponse = 0;
api.StartManualTransferRunsResponse buildStartManualTransferRunsResponse() {
  final o = api.StartManualTransferRunsResponse();
  buildCounterStartManualTransferRunsResponse++;
  if (buildCounterStartManualTransferRunsResponse < 3) {
    o.runs = buildUnnamed2891();
  }
  buildCounterStartManualTransferRunsResponse--;
  return o;
}

void checkStartManualTransferRunsResponse(
    api.StartManualTransferRunsResponse o) {
  buildCounterStartManualTransferRunsResponse++;
  if (buildCounterStartManualTransferRunsResponse < 3) {
    checkUnnamed2891(o.runs!);
  }
  buildCounterStartManualTransferRunsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed2892() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed2892(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(
    casted4['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted4['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted4['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object>> buildUnnamed2893() => [
      buildUnnamed2892(),
      buildUnnamed2892(),
    ];

void checkUnnamed2893(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2892(o[0]);
  checkUnnamed2892(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2893();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed2893(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterTimeRange = 0;
api.TimeRange buildTimeRange() {
  final o = api.TimeRange();
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
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimeRange--;
}

core.Map<core.String, core.Object> buildUnnamed2894() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed2894(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterTransferConfig = 0;
api.TransferConfig buildTransferConfig() {
  final o = api.TransferConfig();
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
    o.ownerInfo = buildUserInfo();
    o.params = buildUnnamed2894();
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
    unittest.expect(
      o.dataRefreshWindowDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.dataSourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.datasetRegion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destinationDatasetId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkEmailPreferences(o.emailPreferences!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextRunTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notificationPubsubTopic!,
      unittest.equals('foo'),
    );
    checkUserInfo(o.ownerInfo!);
    checkUnnamed2894(o.params!);
    unittest.expect(
      o.schedule!,
      unittest.equals('foo'),
    );
    checkScheduleOptions(o.scheduleOptions!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterTransferConfig--;
}

core.int buildCounterTransferMessage = 0;
api.TransferMessage buildTransferMessage() {
  final o = api.TransferMessage();
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
    unittest.expect(
      o.messageText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.messageTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
  }
  buildCounterTransferMessage--;
}

core.Map<core.String, core.Object> buildUnnamed2895() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed2895(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterTransferRun = 0;
api.TransferRun buildTransferRun() {
  final o = api.TransferRun();
  buildCounterTransferRun++;
  if (buildCounterTransferRun < 3) {
    o.dataSourceId = 'foo';
    o.destinationDatasetId = 'foo';
    o.emailPreferences = buildEmailPreferences();
    o.endTime = 'foo';
    o.errorStatus = buildStatus();
    o.name = 'foo';
    o.notificationPubsubTopic = 'foo';
    o.params = buildUnnamed2895();
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
    unittest.expect(
      o.dataSourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destinationDatasetId!,
      unittest.equals('foo'),
    );
    checkEmailPreferences(o.emailPreferences!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkStatus(o.errorStatus!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notificationPubsubTopic!,
      unittest.equals('foo'),
    );
    checkUnnamed2895(o.params!);
    unittest.expect(
      o.runTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.schedule!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scheduleTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterTransferRun--;
}

core.int buildCounterUserInfo = 0;
api.UserInfo buildUserInfo() {
  final o = api.UserInfo();
  buildCounterUserInfo++;
  if (buildCounterUserInfo < 3) {
    o.email = 'foo';
  }
  buildCounterUserInfo--;
  return o;
}

void checkUserInfo(api.UserInfo o) {
  buildCounterUserInfo++;
  if (buildCounterUserInfo < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserInfo--;
}

core.List<core.String> buildUnnamed2896() => [
      'foo',
      'foo',
    ];

void checkUnnamed2896(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2897() => [
      'foo',
      'foo',
    ];

void checkUnnamed2897(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2898() => [
      'foo',
      'foo',
    ];

void checkUnnamed2898(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2899() => [
      'foo',
      'foo',
    ];

void checkUnnamed2899(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2900() => [
      'foo',
      'foo',
    ];

void checkUnnamed2900(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2901() => [
      'foo',
      'foo',
    ];

void checkUnnamed2901(core.List<core.String> o) {
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
  unittest.group('obj-schema-CheckValidCredsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckValidCredsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckValidCredsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCheckValidCredsRequest(od);
    });
  });

  unittest.group('obj-schema-CheckValidCredsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckValidCredsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckValidCredsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCheckValidCredsResponse(od);
    });
  });

  unittest.group('obj-schema-DataSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DataSource.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDataSource(od);
    });
  });

  unittest.group('obj-schema-DataSourceParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSourceParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSourceParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSourceParameter(od);
    });
  });

  unittest.group('obj-schema-EmailPreferences', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmailPreferences();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmailPreferences.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEmailPreferences(od);
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

  unittest.group('obj-schema-EnrollDataSourcesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnrollDataSourcesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnrollDataSourcesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnrollDataSourcesRequest(od);
    });
  });

  unittest.group('obj-schema-ListDataSourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDataSourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDataSourcesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDataSourcesResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTransferConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTransferConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTransferConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTransferConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTransferLogsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTransferLogsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTransferLogsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTransferLogsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTransferRunsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTransferRunsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTransferRunsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTransferRunsResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-ScheduleOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScheduleOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScheduleOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScheduleOptions(od);
    });
  });

  unittest.group('obj-schema-ScheduleTransferRunsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScheduleTransferRunsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScheduleTransferRunsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScheduleTransferRunsRequest(od);
    });
  });

  unittest.group('obj-schema-ScheduleTransferRunsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScheduleTransferRunsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScheduleTransferRunsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScheduleTransferRunsResponse(od);
    });
  });

  unittest.group('obj-schema-StartManualTransferRunsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartManualTransferRunsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartManualTransferRunsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStartManualTransferRunsRequest(od);
    });
  });

  unittest.group('obj-schema-StartManualTransferRunsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartManualTransferRunsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartManualTransferRunsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStartManualTransferRunsResponse(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-TimeRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeRange.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeRange(od);
    });
  });

  unittest.group('obj-schema-TransferConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransferConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransferConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransferConfig(od);
    });
  });

  unittest.group('obj-schema-TransferMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransferMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransferMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransferMessage(od);
    });
  });

  unittest.group('obj-schema-TransferRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransferRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransferRun.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransferRun(od);
    });
  });

  unittest.group('obj-schema-UserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.UserInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUserInfo(od);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--enrollDataSources', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryDataTransferApi(mock).projects;
      final arg_request = buildEnrollDataSourcesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EnrollDataSourcesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnrollDataSourcesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.enrollDataSources(arg_request, arg_name,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-ProjectsDataSourcesResource', () {
    unittest.test('method--checkValidCreds', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryDataTransferApi(mock).projects.dataSources;
      final arg_request = buildCheckValidCredsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CheckValidCredsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCheckValidCredsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildCheckValidCredsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.checkValidCreds(arg_request, arg_name,
          $fields: arg_$fields);
      checkCheckValidCredsResponse(response as api.CheckValidCredsResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryDataTransferApi(mock).projects.dataSources;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildDataSource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDataSource(response as api.DataSource);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryDataTransferApi(mock).projects.dataSources;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
        final resp = convert.json.encode(buildListDataSourcesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDataSourcesResponse(response as api.ListDataSourcesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--enrollDataSources', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryDataTransferApi(mock).projects.locations;
      final arg_request = buildEnrollDataSourcesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EnrollDataSourcesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnrollDataSourcesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.enrollDataSources(arg_request, arg_name,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryDataTransferApi(mock).projects.locations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryDataTransferApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
        final resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDataSourcesResource', () {
    unittest.test('method--checkValidCreds', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryDataTransferApi(mock).projects.locations.dataSources;
      final arg_request = buildCheckValidCredsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CheckValidCredsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCheckValidCredsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildCheckValidCredsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.checkValidCreds(arg_request, arg_name,
          $fields: arg_$fields);
      checkCheckValidCredsResponse(response as api.CheckValidCredsResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryDataTransferApi(mock).projects.locations.dataSources;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildDataSource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDataSource(response as api.DataSource);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryDataTransferApi(mock).projects.locations.dataSources;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
        final resp = convert.json.encode(buildListDataSourcesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDataSourcesResponse(response as api.ListDataSourcesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsTransferConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryDataTransferApi(mock).projects.locations.transferConfigs;
      final arg_request = buildTransferConfig();
      final arg_parent = 'foo';
      final arg_authorizationCode = 'foo';
      final arg_serviceAccountName = 'foo';
      final arg_versionInfo = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TransferConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTransferConfig(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          queryMap['authorizationCode']!.first,
          unittest.equals(arg_authorizationCode),
        );
        unittest.expect(
          queryMap['serviceAccountName']!.first,
          unittest.equals(arg_serviceAccountName),
        );
        unittest.expect(
          queryMap['versionInfo']!.first,
          unittest.equals(arg_versionInfo),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTransferConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          authorizationCode: arg_authorizationCode,
          serviceAccountName: arg_serviceAccountName,
          versionInfo: arg_versionInfo,
          $fields: arg_$fields);
      checkTransferConfig(response as api.TransferConfig);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryDataTransferApi(mock).projects.locations.transferConfigs;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryDataTransferApi(mock).projects.locations.transferConfigs;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildTransferConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTransferConfig(response as api.TransferConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryDataTransferApi(mock).projects.locations.transferConfigs;
      final arg_parent = 'foo';
      final arg_dataSourceIds = buildUnnamed2896();
      final arg_pageSize = 42;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          queryMap['dataSourceIds']!,
          unittest.equals(arg_dataSourceIds),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
        final resp = convert.json.encode(buildListTransferConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          dataSourceIds: arg_dataSourceIds,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTransferConfigsResponse(
          response as api.ListTransferConfigsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryDataTransferApi(mock).projects.locations.transferConfigs;
      final arg_request = buildTransferConfig();
      final arg_name = 'foo';
      final arg_authorizationCode = 'foo';
      final arg_serviceAccountName = 'foo';
      final arg_updateMask = 'foo';
      final arg_versionInfo = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TransferConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTransferConfig(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          queryMap['authorizationCode']!.first,
          unittest.equals(arg_authorizationCode),
        );
        unittest.expect(
          queryMap['serviceAccountName']!.first,
          unittest.equals(arg_serviceAccountName),
        );
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['versionInfo']!.first,
          unittest.equals(arg_versionInfo),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTransferConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          authorizationCode: arg_authorizationCode,
          serviceAccountName: arg_serviceAccountName,
          updateMask: arg_updateMask,
          versionInfo: arg_versionInfo,
          $fields: arg_$fields);
      checkTransferConfig(response as api.TransferConfig);
    });

    unittest.test('method--scheduleRuns', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryDataTransferApi(mock).projects.locations.transferConfigs;
      final arg_request = buildScheduleTransferRunsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ScheduleTransferRunsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkScheduleTransferRunsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildScheduleTransferRunsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.scheduleRuns(arg_request, arg_parent, $fields: arg_$fields);
      checkScheduleTransferRunsResponse(
          response as api.ScheduleTransferRunsResponse);
    });

    unittest.test('method--startManualRuns', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryDataTransferApi(mock).projects.locations.transferConfigs;
      final arg_request = buildStartManualTransferRunsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StartManualTransferRunsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartManualTransferRunsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp =
            convert.json.encode(buildStartManualTransferRunsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.startManualRuns(arg_request, arg_parent,
          $fields: arg_$fields);
      checkStartManualTransferRunsResponse(
          response as api.StartManualTransferRunsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsTransferConfigsRunsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryDataTransferApi(mock)
          .projects
          .locations
          .transferConfigs
          .runs;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryDataTransferApi(mock)
          .projects
          .locations
          .transferConfigs
          .runs;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildTransferRun());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTransferRun(response as api.TransferRun);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryDataTransferApi(mock)
          .projects
          .locations
          .transferConfigs
          .runs;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_runAttempt = 'foo';
      final arg_states = buildUnnamed2897();
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['runAttempt']!.first,
          unittest.equals(arg_runAttempt),
        );
        unittest.expect(
          queryMap['states']!,
          unittest.equals(arg_states),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListTransferRunsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          runAttempt: arg_runAttempt,
          states: arg_states,
          $fields: arg_$fields);
      checkListTransferRunsResponse(response as api.ListTransferRunsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsTransferConfigsRunsTransferLogsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryDataTransferApi(mock)
          .projects
          .locations
          .transferConfigs
          .runs
          .transferLogs;
      final arg_parent = 'foo';
      final arg_messageTypes = buildUnnamed2898();
      final arg_pageSize = 42;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          queryMap['messageTypes']!,
          unittest.equals(arg_messageTypes),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
        final resp = convert.json.encode(buildListTransferLogsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          messageTypes: arg_messageTypes,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTransferLogsResponse(response as api.ListTransferLogsResponse);
    });
  });

  unittest.group('resource-ProjectsTransferConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryDataTransferApi(mock).projects.transferConfigs;
      final arg_request = buildTransferConfig();
      final arg_parent = 'foo';
      final arg_authorizationCode = 'foo';
      final arg_serviceAccountName = 'foo';
      final arg_versionInfo = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TransferConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTransferConfig(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          queryMap['authorizationCode']!.first,
          unittest.equals(arg_authorizationCode),
        );
        unittest.expect(
          queryMap['serviceAccountName']!.first,
          unittest.equals(arg_serviceAccountName),
        );
        unittest.expect(
          queryMap['versionInfo']!.first,
          unittest.equals(arg_versionInfo),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTransferConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          authorizationCode: arg_authorizationCode,
          serviceAccountName: arg_serviceAccountName,
          versionInfo: arg_versionInfo,
          $fields: arg_$fields);
      checkTransferConfig(response as api.TransferConfig);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryDataTransferApi(mock).projects.transferConfigs;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryDataTransferApi(mock).projects.transferConfigs;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildTransferConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTransferConfig(response as api.TransferConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryDataTransferApi(mock).projects.transferConfigs;
      final arg_parent = 'foo';
      final arg_dataSourceIds = buildUnnamed2899();
      final arg_pageSize = 42;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          queryMap['dataSourceIds']!,
          unittest.equals(arg_dataSourceIds),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
        final resp = convert.json.encode(buildListTransferConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          dataSourceIds: arg_dataSourceIds,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTransferConfigsResponse(
          response as api.ListTransferConfigsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryDataTransferApi(mock).projects.transferConfigs;
      final arg_request = buildTransferConfig();
      final arg_name = 'foo';
      final arg_authorizationCode = 'foo';
      final arg_serviceAccountName = 'foo';
      final arg_updateMask = 'foo';
      final arg_versionInfo = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TransferConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTransferConfig(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          queryMap['authorizationCode']!.first,
          unittest.equals(arg_authorizationCode),
        );
        unittest.expect(
          queryMap['serviceAccountName']!.first,
          unittest.equals(arg_serviceAccountName),
        );
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['versionInfo']!.first,
          unittest.equals(arg_versionInfo),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTransferConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          authorizationCode: arg_authorizationCode,
          serviceAccountName: arg_serviceAccountName,
          updateMask: arg_updateMask,
          versionInfo: arg_versionInfo,
          $fields: arg_$fields);
      checkTransferConfig(response as api.TransferConfig);
    });

    unittest.test('method--scheduleRuns', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryDataTransferApi(mock).projects.transferConfigs;
      final arg_request = buildScheduleTransferRunsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ScheduleTransferRunsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkScheduleTransferRunsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildScheduleTransferRunsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.scheduleRuns(arg_request, arg_parent, $fields: arg_$fields);
      checkScheduleTransferRunsResponse(
          response as api.ScheduleTransferRunsResponse);
    });

    unittest.test('method--startManualRuns', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryDataTransferApi(mock).projects.transferConfigs;
      final arg_request = buildStartManualTransferRunsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StartManualTransferRunsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartManualTransferRunsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp =
            convert.json.encode(buildStartManualTransferRunsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.startManualRuns(arg_request, arg_parent,
          $fields: arg_$fields);
      checkStartManualTransferRunsResponse(
          response as api.StartManualTransferRunsResponse);
    });
  });

  unittest.group('resource-ProjectsTransferConfigsRunsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryDataTransferApi(mock).projects.transferConfigs.runs;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryDataTransferApi(mock).projects.transferConfigs.runs;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildTransferRun());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTransferRun(response as api.TransferRun);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.BigQueryDataTransferApi(mock).projects.transferConfigs.runs;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_runAttempt = 'foo';
      final arg_states = buildUnnamed2900();
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['runAttempt']!.first,
          unittest.equals(arg_runAttempt),
        );
        unittest.expect(
          queryMap['states']!,
          unittest.equals(arg_states),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListTransferRunsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          runAttempt: arg_runAttempt,
          states: arg_states,
          $fields: arg_$fields);
      checkListTransferRunsResponse(response as api.ListTransferRunsResponse);
    });
  });

  unittest.group('resource-ProjectsTransferConfigsRunsTransferLogsResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BigQueryDataTransferApi(mock)
          .projects
          .transferConfigs
          .runs
          .transferLogs;
      final arg_parent = 'foo';
      final arg_messageTypes = buildUnnamed2901();
      final arg_pageSize = 42;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          queryMap['messageTypes']!,
          unittest.equals(arg_messageTypes),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
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
        final resp = convert.json.encode(buildListTransferLogsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          messageTypes: arg_messageTypes,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTransferLogsResponse(response as api.ListTransferLogsResponse);
    });
  });
}
