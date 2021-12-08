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

import 'package:googleapis/storagetransfer/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAgentPool = 0;
api.AgentPool buildAgentPool() {
  final o = api.AgentPool();
  buildCounterAgentPool++;
  if (buildCounterAgentPool < 3) {
    o.bandwidthLimit = buildBandwidthLimit();
    o.displayName = 'foo';
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterAgentPool--;
  return o;
}

void checkAgentPool(api.AgentPool o) {
  buildCounterAgentPool++;
  if (buildCounterAgentPool < 3) {
    checkBandwidthLimit(o.bandwidthLimit!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterAgentPool--;
}

core.int buildCounterAwsAccessKey = 0;
api.AwsAccessKey buildAwsAccessKey() {
  final o = api.AwsAccessKey();
  buildCounterAwsAccessKey++;
  if (buildCounterAwsAccessKey < 3) {
    o.accessKeyId = 'foo';
    o.secretAccessKey = 'foo';
  }
  buildCounterAwsAccessKey--;
  return o;
}

void checkAwsAccessKey(api.AwsAccessKey o) {
  buildCounterAwsAccessKey++;
  if (buildCounterAwsAccessKey < 3) {
    unittest.expect(
      o.accessKeyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.secretAccessKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterAwsAccessKey--;
}

core.int buildCounterAwsS3Data = 0;
api.AwsS3Data buildAwsS3Data() {
  final o = api.AwsS3Data();
  buildCounterAwsS3Data++;
  if (buildCounterAwsS3Data < 3) {
    o.awsAccessKey = buildAwsAccessKey();
    o.bucketName = 'foo';
    o.path = 'foo';
    o.roleArn = 'foo';
  }
  buildCounterAwsS3Data--;
  return o;
}

void checkAwsS3Data(api.AwsS3Data o) {
  buildCounterAwsS3Data++;
  if (buildCounterAwsS3Data < 3) {
    checkAwsAccessKey(o.awsAccessKey!);
    unittest.expect(
      o.bucketName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.roleArn!,
      unittest.equals('foo'),
    );
  }
  buildCounterAwsS3Data--;
}

core.int buildCounterAzureBlobStorageData = 0;
api.AzureBlobStorageData buildAzureBlobStorageData() {
  final o = api.AzureBlobStorageData();
  buildCounterAzureBlobStorageData++;
  if (buildCounterAzureBlobStorageData < 3) {
    o.azureCredentials = buildAzureCredentials();
    o.container = 'foo';
    o.path = 'foo';
    o.storageAccount = 'foo';
  }
  buildCounterAzureBlobStorageData--;
  return o;
}

void checkAzureBlobStorageData(api.AzureBlobStorageData o) {
  buildCounterAzureBlobStorageData++;
  if (buildCounterAzureBlobStorageData < 3) {
    checkAzureCredentials(o.azureCredentials!);
    unittest.expect(
      o.container!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageAccount!,
      unittest.equals('foo'),
    );
  }
  buildCounterAzureBlobStorageData--;
}

core.int buildCounterAzureCredentials = 0;
api.AzureCredentials buildAzureCredentials() {
  final o = api.AzureCredentials();
  buildCounterAzureCredentials++;
  if (buildCounterAzureCredentials < 3) {
    o.sasToken = 'foo';
  }
  buildCounterAzureCredentials--;
  return o;
}

void checkAzureCredentials(api.AzureCredentials o) {
  buildCounterAzureCredentials++;
  if (buildCounterAzureCredentials < 3) {
    unittest.expect(
      o.sasToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterAzureCredentials--;
}

core.int buildCounterBandwidthLimit = 0;
api.BandwidthLimit buildBandwidthLimit() {
  final o = api.BandwidthLimit();
  buildCounterBandwidthLimit++;
  if (buildCounterBandwidthLimit < 3) {
    o.limitMbps = 'foo';
  }
  buildCounterBandwidthLimit--;
  return o;
}

void checkBandwidthLimit(api.BandwidthLimit o) {
  buildCounterBandwidthLimit++;
  if (buildCounterBandwidthLimit < 3) {
    unittest.expect(
      o.limitMbps!,
      unittest.equals('foo'),
    );
  }
  buildCounterBandwidthLimit--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  final o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.int buildCounterDate = 0;
api.Date buildDate() {
  final o = api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

void checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterDate--;
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

core.int buildCounterGcsData = 0;
api.GcsData buildGcsData() {
  final o = api.GcsData();
  buildCounterGcsData++;
  if (buildCounterGcsData < 3) {
    o.bucketName = 'foo';
    o.path = 'foo';
  }
  buildCounterGcsData--;
  return o;
}

void checkGcsData(api.GcsData o) {
  buildCounterGcsData++;
  if (buildCounterGcsData < 3) {
    unittest.expect(
      o.bucketName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
  }
  buildCounterGcsData--;
}

core.int buildCounterGoogleServiceAccount = 0;
api.GoogleServiceAccount buildGoogleServiceAccount() {
  final o = api.GoogleServiceAccount();
  buildCounterGoogleServiceAccount++;
  if (buildCounterGoogleServiceAccount < 3) {
    o.accountEmail = 'foo';
    o.subjectId = 'foo';
  }
  buildCounterGoogleServiceAccount--;
  return o;
}

void checkGoogleServiceAccount(api.GoogleServiceAccount o) {
  buildCounterGoogleServiceAccount++;
  if (buildCounterGoogleServiceAccount < 3) {
    unittest.expect(
      o.accountEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subjectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleServiceAccount--;
}

core.int buildCounterHttpData = 0;
api.HttpData buildHttpData() {
  final o = api.HttpData();
  buildCounterHttpData++;
  if (buildCounterHttpData < 3) {
    o.listUrl = 'foo';
  }
  buildCounterHttpData--;
  return o;
}

void checkHttpData(api.HttpData o) {
  buildCounterHttpData++;
  if (buildCounterHttpData < 3) {
    unittest.expect(
      o.listUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterHttpData--;
}

core.List<api.AgentPool> buildUnnamed0() => [
      buildAgentPool(),
      buildAgentPool(),
    ];

void checkUnnamed0(core.List<api.AgentPool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentPool(o[0]);
  checkAgentPool(o[1]);
}

core.int buildCounterListAgentPoolsResponse = 0;
api.ListAgentPoolsResponse buildListAgentPoolsResponse() {
  final o = api.ListAgentPoolsResponse();
  buildCounterListAgentPoolsResponse++;
  if (buildCounterListAgentPoolsResponse < 3) {
    o.agentPools = buildUnnamed0();
    o.nextPageToken = 'foo';
  }
  buildCounterListAgentPoolsResponse--;
  return o;
}

void checkListAgentPoolsResponse(api.ListAgentPoolsResponse o) {
  buildCounterListAgentPoolsResponse++;
  if (buildCounterListAgentPoolsResponse < 3) {
    checkUnnamed0(o.agentPools!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAgentPoolsResponse--;
}

core.List<api.Operation> buildUnnamed1() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed1(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed1();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.TransferJob> buildUnnamed2() => [
      buildTransferJob(),
      buildTransferJob(),
    ];

void checkUnnamed2(core.List<api.TransferJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransferJob(o[0]);
  checkTransferJob(o[1]);
}

core.int buildCounterListTransferJobsResponse = 0;
api.ListTransferJobsResponse buildListTransferJobsResponse() {
  final o = api.ListTransferJobsResponse();
  buildCounterListTransferJobsResponse++;
  if (buildCounterListTransferJobsResponse < 3) {
    o.nextPageToken = 'foo';
    o.transferJobs = buildUnnamed2();
  }
  buildCounterListTransferJobsResponse--;
  return o;
}

void checkListTransferJobsResponse(api.ListTransferJobsResponse o) {
  buildCounterListTransferJobsResponse++;
  if (buildCounterListTransferJobsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.transferJobs!);
  }
  buildCounterListTransferJobsResponse--;
}

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.int buildCounterLoggingConfig = 0;
api.LoggingConfig buildLoggingConfig() {
  final o = api.LoggingConfig();
  buildCounterLoggingConfig++;
  if (buildCounterLoggingConfig < 3) {
    o.enableOnpremGcsTransferLogs = true;
    o.logActionStates = buildUnnamed3();
    o.logActions = buildUnnamed4();
  }
  buildCounterLoggingConfig--;
  return o;
}

void checkLoggingConfig(api.LoggingConfig o) {
  buildCounterLoggingConfig++;
  if (buildCounterLoggingConfig < 3) {
    unittest.expect(o.enableOnpremGcsTransferLogs!, unittest.isTrue);
    checkUnnamed3(o.logActionStates!);
    checkUnnamed4(o.logActions!);
  }
  buildCounterLoggingConfig--;
}

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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

core.int buildCounterNotificationConfig = 0;
api.NotificationConfig buildNotificationConfig() {
  final o = api.NotificationConfig();
  buildCounterNotificationConfig++;
  if (buildCounterNotificationConfig < 3) {
    o.eventTypes = buildUnnamed5();
    o.payloadFormat = 'foo';
    o.pubsubTopic = 'foo';
  }
  buildCounterNotificationConfig--;
  return o;
}

void checkNotificationConfig(api.NotificationConfig o) {
  buildCounterNotificationConfig++;
  if (buildCounterNotificationConfig < 3) {
    checkUnnamed5(o.eventTypes!);
    unittest.expect(
      o.payloadFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pubsubTopic!,
      unittest.equals('foo'),
    );
  }
  buildCounterNotificationConfig--;
}

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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

core.int buildCounterObjectConditions = 0;
api.ObjectConditions buildObjectConditions() {
  final o = api.ObjectConditions();
  buildCounterObjectConditions++;
  if (buildCounterObjectConditions < 3) {
    o.excludePrefixes = buildUnnamed6();
    o.includePrefixes = buildUnnamed7();
    o.lastModifiedBefore = 'foo';
    o.lastModifiedSince = 'foo';
    o.maxTimeElapsedSinceLastModification = 'foo';
    o.minTimeElapsedSinceLastModification = 'foo';
  }
  buildCounterObjectConditions--;
  return o;
}

void checkObjectConditions(api.ObjectConditions o) {
  buildCounterObjectConditions++;
  if (buildCounterObjectConditions < 3) {
    checkUnnamed6(o.excludePrefixes!);
    checkUnnamed7(o.includePrefixes!);
    unittest.expect(
      o.lastModifiedBefore!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastModifiedSince!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxTimeElapsedSinceLastModification!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minTimeElapsedSinceLastModification!,
      unittest.equals('foo'),
    );
  }
  buildCounterObjectConditions--;
}

core.Map<core.String, core.Object?> buildUnnamed8() => {
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

void checkUnnamed8(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed9() => {
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

void checkUnnamed9(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed8();
    o.name = 'foo';
    o.response = buildUnnamed9();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed8(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterPauseTransferOperationRequest = 0;
api.PauseTransferOperationRequest buildPauseTransferOperationRequest() {
  final o = api.PauseTransferOperationRequest();
  buildCounterPauseTransferOperationRequest++;
  if (buildCounterPauseTransferOperationRequest < 3) {}
  buildCounterPauseTransferOperationRequest--;
  return o;
}

void checkPauseTransferOperationRequest(api.PauseTransferOperationRequest o) {
  buildCounterPauseTransferOperationRequest++;
  if (buildCounterPauseTransferOperationRequest < 3) {}
  buildCounterPauseTransferOperationRequest--;
}

core.int buildCounterPosixFilesystem = 0;
api.PosixFilesystem buildPosixFilesystem() {
  final o = api.PosixFilesystem();
  buildCounterPosixFilesystem++;
  if (buildCounterPosixFilesystem < 3) {
    o.rootDirectory = 'foo';
  }
  buildCounterPosixFilesystem--;
  return o;
}

void checkPosixFilesystem(api.PosixFilesystem o) {
  buildCounterPosixFilesystem++;
  if (buildCounterPosixFilesystem < 3) {
    unittest.expect(
      o.rootDirectory!,
      unittest.equals('foo'),
    );
  }
  buildCounterPosixFilesystem--;
}

core.int buildCounterResumeTransferOperationRequest = 0;
api.ResumeTransferOperationRequest buildResumeTransferOperationRequest() {
  final o = api.ResumeTransferOperationRequest();
  buildCounterResumeTransferOperationRequest++;
  if (buildCounterResumeTransferOperationRequest < 3) {}
  buildCounterResumeTransferOperationRequest--;
  return o;
}

void checkResumeTransferOperationRequest(api.ResumeTransferOperationRequest o) {
  buildCounterResumeTransferOperationRequest++;
  if (buildCounterResumeTransferOperationRequest < 3) {}
  buildCounterResumeTransferOperationRequest--;
}

core.int buildCounterRunTransferJobRequest = 0;
api.RunTransferJobRequest buildRunTransferJobRequest() {
  final o = api.RunTransferJobRequest();
  buildCounterRunTransferJobRequest++;
  if (buildCounterRunTransferJobRequest < 3) {
    o.projectId = 'foo';
  }
  buildCounterRunTransferJobRequest--;
  return o;
}

void checkRunTransferJobRequest(api.RunTransferJobRequest o) {
  buildCounterRunTransferJobRequest++;
  if (buildCounterRunTransferJobRequest < 3) {
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRunTransferJobRequest--;
}

core.int buildCounterSchedule = 0;
api.Schedule buildSchedule() {
  final o = api.Schedule();
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    o.endTimeOfDay = buildTimeOfDay();
    o.repeatInterval = 'foo';
    o.scheduleEndDate = buildDate();
    o.scheduleStartDate = buildDate();
    o.startTimeOfDay = buildTimeOfDay();
  }
  buildCounterSchedule--;
  return o;
}

void checkSchedule(api.Schedule o) {
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    checkTimeOfDay(o.endTimeOfDay!);
    unittest.expect(
      o.repeatInterval!,
      unittest.equals('foo'),
    );
    checkDate(o.scheduleEndDate!);
    checkDate(o.scheduleStartDate!);
    checkTimeOfDay(o.startTimeOfDay!);
  }
  buildCounterSchedule--;
}

core.Map<core.String, core.Object?> buildUnnamed10() => {
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

void checkUnnamed10(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed11() => [
      buildUnnamed10(),
      buildUnnamed10(),
    ];

void checkUnnamed11(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed10(o[0]);
  checkUnnamed10(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed11();
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
    checkUnnamed11(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterTimeOfDay = 0;
api.TimeOfDay buildTimeOfDay() {
  final o = api.TimeOfDay();
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    o.hours = 42;
    o.minutes = 42;
    o.nanos = 42;
    o.seconds = 42;
  }
  buildCounterTimeOfDay--;
  return o;
}

void checkTimeOfDay(api.TimeOfDay o) {
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    unittest.expect(
      o.hours!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minutes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.seconds!,
      unittest.equals(42),
    );
  }
  buildCounterTimeOfDay--;
}

core.int buildCounterTransferJob = 0;
api.TransferJob buildTransferJob() {
  final o = api.TransferJob();
  buildCounterTransferJob++;
  if (buildCounterTransferJob < 3) {
    o.creationTime = 'foo';
    o.deletionTime = 'foo';
    o.description = 'foo';
    o.lastModificationTime = 'foo';
    o.latestOperationName = 'foo';
    o.loggingConfig = buildLoggingConfig();
    o.name = 'foo';
    o.notificationConfig = buildNotificationConfig();
    o.projectId = 'foo';
    o.schedule = buildSchedule();
    o.status = 'foo';
    o.transferSpec = buildTransferSpec();
  }
  buildCounterTransferJob--;
  return o;
}

void checkTransferJob(api.TransferJob o) {
  buildCounterTransferJob++;
  if (buildCounterTransferJob < 3) {
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deletionTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastModificationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latestOperationName!,
      unittest.equals('foo'),
    );
    checkLoggingConfig(o.loggingConfig!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkNotificationConfig(o.notificationConfig!);
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkSchedule(o.schedule!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    checkTransferSpec(o.transferSpec!);
  }
  buildCounterTransferJob--;
}

core.int buildCounterTransferManifest = 0;
api.TransferManifest buildTransferManifest() {
  final o = api.TransferManifest();
  buildCounterTransferManifest++;
  if (buildCounterTransferManifest < 3) {
    o.location = 'foo';
  }
  buildCounterTransferManifest--;
  return o;
}

void checkTransferManifest(api.TransferManifest o) {
  buildCounterTransferManifest++;
  if (buildCounterTransferManifest < 3) {
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
  }
  buildCounterTransferManifest--;
}

core.int buildCounterTransferOptions = 0;
api.TransferOptions buildTransferOptions() {
  final o = api.TransferOptions();
  buildCounterTransferOptions++;
  if (buildCounterTransferOptions < 3) {
    o.deleteObjectsFromSourceAfterTransfer = true;
    o.deleteObjectsUniqueInSink = true;
    o.overwriteObjectsAlreadyExistingInSink = true;
  }
  buildCounterTransferOptions--;
  return o;
}

void checkTransferOptions(api.TransferOptions o) {
  buildCounterTransferOptions++;
  if (buildCounterTransferOptions < 3) {
    unittest.expect(o.deleteObjectsFromSourceAfterTransfer!, unittest.isTrue);
    unittest.expect(o.deleteObjectsUniqueInSink!, unittest.isTrue);
    unittest.expect(o.overwriteObjectsAlreadyExistingInSink!, unittest.isTrue);
  }
  buildCounterTransferOptions--;
}

core.int buildCounterTransferSpec = 0;
api.TransferSpec buildTransferSpec() {
  final o = api.TransferSpec();
  buildCounterTransferSpec++;
  if (buildCounterTransferSpec < 3) {
    o.awsS3DataSource = buildAwsS3Data();
    o.azureBlobStorageDataSource = buildAzureBlobStorageData();
    o.gcsDataSink = buildGcsData();
    o.gcsDataSource = buildGcsData();
    o.httpDataSource = buildHttpData();
    o.objectConditions = buildObjectConditions();
    o.posixDataSink = buildPosixFilesystem();
    o.posixDataSource = buildPosixFilesystem();
    o.sinkAgentPoolName = 'foo';
    o.sourceAgentPoolName = 'foo';
    o.transferManifest = buildTransferManifest();
    o.transferOptions = buildTransferOptions();
  }
  buildCounterTransferSpec--;
  return o;
}

void checkTransferSpec(api.TransferSpec o) {
  buildCounterTransferSpec++;
  if (buildCounterTransferSpec < 3) {
    checkAwsS3Data(o.awsS3DataSource!);
    checkAzureBlobStorageData(o.azureBlobStorageDataSource!);
    checkGcsData(o.gcsDataSink!);
    checkGcsData(o.gcsDataSource!);
    checkHttpData(o.httpDataSource!);
    checkObjectConditions(o.objectConditions!);
    checkPosixFilesystem(o.posixDataSink!);
    checkPosixFilesystem(o.posixDataSource!);
    unittest.expect(
      o.sinkAgentPoolName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceAgentPoolName!,
      unittest.equals('foo'),
    );
    checkTransferManifest(o.transferManifest!);
    checkTransferOptions(o.transferOptions!);
  }
  buildCounterTransferSpec--;
}

core.int buildCounterUpdateTransferJobRequest = 0;
api.UpdateTransferJobRequest buildUpdateTransferJobRequest() {
  final o = api.UpdateTransferJobRequest();
  buildCounterUpdateTransferJobRequest++;
  if (buildCounterUpdateTransferJobRequest < 3) {
    o.projectId = 'foo';
    o.transferJob = buildTransferJob();
    o.updateTransferJobFieldMask = 'foo';
  }
  buildCounterUpdateTransferJobRequest--;
  return o;
}

void checkUpdateTransferJobRequest(api.UpdateTransferJobRequest o) {
  buildCounterUpdateTransferJobRequest++;
  if (buildCounterUpdateTransferJobRequest < 3) {
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkTransferJob(o.transferJob!);
    unittest.expect(
      o.updateTransferJobFieldMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateTransferJobRequest--;
}

void main() {
  unittest.group('obj-schema-AgentPool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentPool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AgentPool.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAgentPool(od);
    });
  });

  unittest.group('obj-schema-AwsAccessKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAwsAccessKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AwsAccessKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAwsAccessKey(od);
    });
  });

  unittest.group('obj-schema-AwsS3Data', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAwsS3Data();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AwsS3Data.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAwsS3Data(od);
    });
  });

  unittest.group('obj-schema-AzureBlobStorageData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAzureBlobStorageData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AzureBlobStorageData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAzureBlobStorageData(od);
    });
  });

  unittest.group('obj-schema-AzureCredentials', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAzureCredentials();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AzureCredentials.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAzureCredentials(od);
    });
  });

  unittest.group('obj-schema-BandwidthLimit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBandwidthLimit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BandwidthLimit.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBandwidthLimit(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Date.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDate(od);
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

  unittest.group('obj-schema-GcsData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GcsData.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGcsData(od);
    });
  });

  unittest.group('obj-schema-GoogleServiceAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleServiceAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleServiceAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleServiceAccount(od);
    });
  });

  unittest.group('obj-schema-HttpData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HttpData.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHttpData(od);
    });
  });

  unittest.group('obj-schema-ListAgentPoolsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAgentPoolsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAgentPoolsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAgentPoolsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTransferJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTransferJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTransferJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTransferJobsResponse(od);
    });
  });

  unittest.group('obj-schema-LoggingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoggingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoggingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLoggingConfig(od);
    });
  });

  unittest.group('obj-schema-NotificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NotificationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotificationConfig(od);
    });
  });

  unittest.group('obj-schema-ObjectConditions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectConditions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObjectConditions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkObjectConditions(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-PauseTransferOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPauseTransferOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PauseTransferOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPauseTransferOperationRequest(od);
    });
  });

  unittest.group('obj-schema-PosixFilesystem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosixFilesystem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PosixFilesystem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPosixFilesystem(od);
    });
  });

  unittest.group('obj-schema-ResumeTransferOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResumeTransferOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResumeTransferOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResumeTransferOperationRequest(od);
    });
  });

  unittest.group('obj-schema-RunTransferJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunTransferJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunTransferJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunTransferJobRequest(od);
    });
  });

  unittest.group('obj-schema-Schedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Schedule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSchedule(od);
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

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeOfDay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeOfDay.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeOfDay(od);
    });
  });

  unittest.group('obj-schema-TransferJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransferJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransferJob.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransferJob(od);
    });
  });

  unittest.group('obj-schema-TransferManifest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransferManifest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransferManifest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransferManifest(od);
    });
  });

  unittest.group('obj-schema-TransferOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransferOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransferOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransferOptions(od);
    });
  });

  unittest.group('obj-schema-TransferSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransferSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransferSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransferSpec(od);
    });
  });

  unittest.group('obj-schema-UpdateTransferJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateTransferJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateTransferJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateTransferJobRequest(od);
    });
  });

  unittest.group('resource-GoogleServiceAccountsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.StoragetransferApi(mock).googleServiceAccounts;
      final arg_projectId = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('v1/googleServiceAccounts/'),
        );
        pathOffset += 25;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
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
        final resp = convert.json.encode(buildGoogleServiceAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_projectId, $fields: arg_$fields);
      checkGoogleServiceAccount(response as api.GoogleServiceAccount);
    });
  });

  unittest.group('resource-ProjectsAgentPoolsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.StoragetransferApi(mock).projects.agentPools;
      final arg_request = buildAgentPool();
      final arg_projectId = 'foo';
      final arg_agentPoolId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.AgentPool.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAgentPool(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
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
          queryMap['agentPoolId']!.first,
          unittest.equals(arg_agentPoolId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAgentPool());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_projectId,
          agentPoolId: arg_agentPoolId, $fields: arg_$fields);
      checkAgentPool(response as api.AgentPool);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.StoragetransferApi(mock).projects.agentPools;
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
      final res = api.StoragetransferApi(mock).projects.agentPools;
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
        final resp = convert.json.encode(buildAgentPool());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAgentPool(response as api.AgentPool);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.StoragetransferApi(mock).projects.agentPools;
      final arg_projectId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
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
        final resp = convert.json.encode(buildListAgentPoolsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAgentPoolsResponse(response as api.ListAgentPoolsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.StoragetransferApi(mock).projects.agentPools;
      final arg_request = buildAgentPool();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.AgentPool.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAgentPool(obj);

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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAgentPool());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkAgentPool(response as api.AgentPool);
    });
  });

  unittest.group('resource-TransferJobsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.StoragetransferApi(mock).transferJobs;
      final arg_request = buildTransferJob();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TransferJob.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTransferJob(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('v1/transferJobs'),
        );
        pathOffset += 15;

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
        final resp = convert.json.encode(buildTransferJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkTransferJob(response as api.TransferJob);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.StoragetransferApi(mock).transferJobs;
      final arg_jobName = 'foo';
      final arg_projectId = 'foo';
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
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTransferJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_jobName, arg_projectId, $fields: arg_$fields);
      checkTransferJob(response as api.TransferJob);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.StoragetransferApi(mock).transferJobs;
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('v1/transferJobs'),
        );
        pathOffset += 15;

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
        final resp = convert.json.encode(buildListTransferJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTransferJobsResponse(response as api.ListTransferJobsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.StoragetransferApi(mock).transferJobs;
      final arg_request = buildUpdateTransferJobRequest();
      final arg_jobName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateTransferJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateTransferJobRequest(obj);

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
        final resp = convert.json.encode(buildTransferJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_jobName, $fields: arg_$fields);
      checkTransferJob(response as api.TransferJob);
    });

    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res = api.StoragetransferApi(mock).transferJobs;
      final arg_request = buildRunTransferJobRequest();
      final arg_jobName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RunTransferJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRunTransferJobRequest(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.run(arg_request, arg_jobName, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-TransferOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.StoragetransferApi(mock).transferOperations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj);

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
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.StoragetransferApi(mock).transferOperations;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.StoragetransferApi(mock).transferOperations;
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
        final resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name, arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });

    unittest.test('method--pause', () async {
      final mock = HttpServerMock();
      final res = api.StoragetransferApi(mock).transferOperations;
      final arg_request = buildPauseTransferOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PauseTransferOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPauseTransferOperationRequest(obj);

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
      final response =
          await res.pause(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--resume', () async {
      final mock = HttpServerMock();
      final res = api.StoragetransferApi(mock).transferOperations;
      final arg_request = buildResumeTransferOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResumeTransferOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResumeTransferOperationRequest(obj);

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
      final response =
          await res.resume(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });
}
