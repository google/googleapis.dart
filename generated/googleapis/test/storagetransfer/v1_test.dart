// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis.storagetransfer.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/storagetransfer/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAwsAccessKey = 0;
api.AwsAccessKey buildAwsAccessKey() {
  var o = api.AwsAccessKey();
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
    unittest.expect(o.accessKeyId, unittest.equals('foo'));
    unittest.expect(o.secretAccessKey, unittest.equals('foo'));
  }
  buildCounterAwsAccessKey--;
}

core.int buildCounterAwsS3Data = 0;
api.AwsS3Data buildAwsS3Data() {
  var o = api.AwsS3Data();
  buildCounterAwsS3Data++;
  if (buildCounterAwsS3Data < 3) {
    o.awsAccessKey = buildAwsAccessKey();
    o.bucketName = 'foo';
  }
  buildCounterAwsS3Data--;
  return o;
}

void checkAwsS3Data(api.AwsS3Data o) {
  buildCounterAwsS3Data++;
  if (buildCounterAwsS3Data < 3) {
    checkAwsAccessKey(o.awsAccessKey);
    unittest.expect(o.bucketName, unittest.equals('foo'));
  }
  buildCounterAwsS3Data--;
}

core.int buildCounterAzureBlobStorageData = 0;
api.AzureBlobStorageData buildAzureBlobStorageData() {
  var o = api.AzureBlobStorageData();
  buildCounterAzureBlobStorageData++;
  if (buildCounterAzureBlobStorageData < 3) {
    o.azureCredentials = buildAzureCredentials();
    o.container = 'foo';
    o.storageAccount = 'foo';
  }
  buildCounterAzureBlobStorageData--;
  return o;
}

void checkAzureBlobStorageData(api.AzureBlobStorageData o) {
  buildCounterAzureBlobStorageData++;
  if (buildCounterAzureBlobStorageData < 3) {
    checkAzureCredentials(o.azureCredentials);
    unittest.expect(o.container, unittest.equals('foo'));
    unittest.expect(o.storageAccount, unittest.equals('foo'));
  }
  buildCounterAzureBlobStorageData--;
}

core.int buildCounterAzureCredentials = 0;
api.AzureCredentials buildAzureCredentials() {
  var o = api.AzureCredentials();
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
    unittest.expect(o.sasToken, unittest.equals('foo'));
  }
  buildCounterAzureCredentials--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  var o = api.CancelOperationRequest();
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
  var o = api.Date();
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
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterDate--;
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

core.List<core.String> buildUnnamed1396() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1396(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterErrorLogEntry = 0;
api.ErrorLogEntry buildErrorLogEntry() {
  var o = api.ErrorLogEntry();
  buildCounterErrorLogEntry++;
  if (buildCounterErrorLogEntry < 3) {
    o.errorDetails = buildUnnamed1396();
    o.url = 'foo';
  }
  buildCounterErrorLogEntry--;
  return o;
}

void checkErrorLogEntry(api.ErrorLogEntry o) {
  buildCounterErrorLogEntry++;
  if (buildCounterErrorLogEntry < 3) {
    checkUnnamed1396(o.errorDetails);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterErrorLogEntry--;
}

core.List<api.ErrorLogEntry> buildUnnamed1397() {
  var o = <api.ErrorLogEntry>[];
  o.add(buildErrorLogEntry());
  o.add(buildErrorLogEntry());
  return o;
}

void checkUnnamed1397(core.List<api.ErrorLogEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorLogEntry(o[0]);
  checkErrorLogEntry(o[1]);
}

core.int buildCounterErrorSummary = 0;
api.ErrorSummary buildErrorSummary() {
  var o = api.ErrorSummary();
  buildCounterErrorSummary++;
  if (buildCounterErrorSummary < 3) {
    o.errorCode = 'foo';
    o.errorCount = 'foo';
    o.errorLogEntries = buildUnnamed1397();
  }
  buildCounterErrorSummary--;
  return o;
}

void checkErrorSummary(api.ErrorSummary o) {
  buildCounterErrorSummary++;
  if (buildCounterErrorSummary < 3) {
    unittest.expect(o.errorCode, unittest.equals('foo'));
    unittest.expect(o.errorCount, unittest.equals('foo'));
    checkUnnamed1397(o.errorLogEntries);
  }
  buildCounterErrorSummary--;
}

core.int buildCounterGcsData = 0;
api.GcsData buildGcsData() {
  var o = api.GcsData();
  buildCounterGcsData++;
  if (buildCounterGcsData < 3) {
    o.bucketName = 'foo';
  }
  buildCounterGcsData--;
  return o;
}

void checkGcsData(api.GcsData o) {
  buildCounterGcsData++;
  if (buildCounterGcsData < 3) {
    unittest.expect(o.bucketName, unittest.equals('foo'));
  }
  buildCounterGcsData--;
}

core.int buildCounterGoogleServiceAccount = 0;
api.GoogleServiceAccount buildGoogleServiceAccount() {
  var o = api.GoogleServiceAccount();
  buildCounterGoogleServiceAccount++;
  if (buildCounterGoogleServiceAccount < 3) {
    o.accountEmail = 'foo';
  }
  buildCounterGoogleServiceAccount--;
  return o;
}

void checkGoogleServiceAccount(api.GoogleServiceAccount o) {
  buildCounterGoogleServiceAccount++;
  if (buildCounterGoogleServiceAccount < 3) {
    unittest.expect(o.accountEmail, unittest.equals('foo'));
  }
  buildCounterGoogleServiceAccount--;
}

core.int buildCounterHttpData = 0;
api.HttpData buildHttpData() {
  var o = api.HttpData();
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
    unittest.expect(o.listUrl, unittest.equals('foo'));
  }
  buildCounterHttpData--;
}

core.List<api.Operation> buildUnnamed1398() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed1398(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  var o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed1398();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1398(o.operations);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.TransferJob> buildUnnamed1399() {
  var o = <api.TransferJob>[];
  o.add(buildTransferJob());
  o.add(buildTransferJob());
  return o;
}

void checkUnnamed1399(core.List<api.TransferJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransferJob(o[0]);
  checkTransferJob(o[1]);
}

core.int buildCounterListTransferJobsResponse = 0;
api.ListTransferJobsResponse buildListTransferJobsResponse() {
  var o = api.ListTransferJobsResponse();
  buildCounterListTransferJobsResponse++;
  if (buildCounterListTransferJobsResponse < 3) {
    o.nextPageToken = 'foo';
    o.transferJobs = buildUnnamed1399();
  }
  buildCounterListTransferJobsResponse--;
  return o;
}

void checkListTransferJobsResponse(api.ListTransferJobsResponse o) {
  buildCounterListTransferJobsResponse++;
  if (buildCounterListTransferJobsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1399(o.transferJobs);
  }
  buildCounterListTransferJobsResponse--;
}

core.List<core.String> buildUnnamed1400() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1400(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNotificationConfig = 0;
api.NotificationConfig buildNotificationConfig() {
  var o = api.NotificationConfig();
  buildCounterNotificationConfig++;
  if (buildCounterNotificationConfig < 3) {
    o.eventTypes = buildUnnamed1400();
    o.payloadFormat = 'foo';
    o.pubsubTopic = 'foo';
  }
  buildCounterNotificationConfig--;
  return o;
}

void checkNotificationConfig(api.NotificationConfig o) {
  buildCounterNotificationConfig++;
  if (buildCounterNotificationConfig < 3) {
    checkUnnamed1400(o.eventTypes);
    unittest.expect(o.payloadFormat, unittest.equals('foo'));
    unittest.expect(o.pubsubTopic, unittest.equals('foo'));
  }
  buildCounterNotificationConfig--;
}

core.List<core.String> buildUnnamed1401() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1401(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1402() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1402(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterObjectConditions = 0;
api.ObjectConditions buildObjectConditions() {
  var o = api.ObjectConditions();
  buildCounterObjectConditions++;
  if (buildCounterObjectConditions < 3) {
    o.excludePrefixes = buildUnnamed1401();
    o.includePrefixes = buildUnnamed1402();
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
    checkUnnamed1401(o.excludePrefixes);
    checkUnnamed1402(o.includePrefixes);
    unittest.expect(o.lastModifiedBefore, unittest.equals('foo'));
    unittest.expect(o.lastModifiedSince, unittest.equals('foo'));
    unittest.expect(
        o.maxTimeElapsedSinceLastModification, unittest.equals('foo'));
    unittest.expect(
        o.minTimeElapsedSinceLastModification, unittest.equals('foo'));
  }
  buildCounterObjectConditions--;
}

core.Map<core.String, core.Object> buildUnnamed1403() {
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

void checkUnnamed1403(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed1404() {
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

void checkUnnamed1404(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed1403();
    o.name = 'foo';
    o.response = buildUnnamed1404();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed1403(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1404(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterPauseTransferOperationRequest = 0;
api.PauseTransferOperationRequest buildPauseTransferOperationRequest() {
  var o = api.PauseTransferOperationRequest();
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

core.int buildCounterResumeTransferOperationRequest = 0;
api.ResumeTransferOperationRequest buildResumeTransferOperationRequest() {
  var o = api.ResumeTransferOperationRequest();
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

core.int buildCounterSchedule = 0;
api.Schedule buildSchedule() {
  var o = api.Schedule();
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
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
    checkDate(o.scheduleEndDate);
    checkDate(o.scheduleStartDate);
    checkTimeOfDay(o.startTimeOfDay);
  }
  buildCounterSchedule--;
}

core.Map<core.String, core.Object> buildUnnamed1405() {
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

void checkUnnamed1405(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed1406() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed1405());
  o.add(buildUnnamed1405());
  return o;
}

void checkUnnamed1406(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1405(o[0]);
  checkUnnamed1405(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed1406();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed1406(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTimeOfDay = 0;
api.TimeOfDay buildTimeOfDay() {
  var o = api.TimeOfDay();
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
    unittest.expect(o.hours, unittest.equals(42));
    unittest.expect(o.minutes, unittest.equals(42));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.seconds, unittest.equals(42));
  }
  buildCounterTimeOfDay--;
}

core.int buildCounterTransferCounters = 0;
api.TransferCounters buildTransferCounters() {
  var o = api.TransferCounters();
  buildCounterTransferCounters++;
  if (buildCounterTransferCounters < 3) {
    o.bytesCopiedToSink = 'foo';
    o.bytesDeletedFromSink = 'foo';
    o.bytesDeletedFromSource = 'foo';
    o.bytesFailedToDeleteFromSink = 'foo';
    o.bytesFoundFromSource = 'foo';
    o.bytesFoundOnlyFromSink = 'foo';
    o.bytesFromSourceFailed = 'foo';
    o.bytesFromSourceSkippedBySync = 'foo';
    o.objectsCopiedToSink = 'foo';
    o.objectsDeletedFromSink = 'foo';
    o.objectsDeletedFromSource = 'foo';
    o.objectsFailedToDeleteFromSink = 'foo';
    o.objectsFoundFromSource = 'foo';
    o.objectsFoundOnlyFromSink = 'foo';
    o.objectsFromSourceFailed = 'foo';
    o.objectsFromSourceSkippedBySync = 'foo';
  }
  buildCounterTransferCounters--;
  return o;
}

void checkTransferCounters(api.TransferCounters o) {
  buildCounterTransferCounters++;
  if (buildCounterTransferCounters < 3) {
    unittest.expect(o.bytesCopiedToSink, unittest.equals('foo'));
    unittest.expect(o.bytesDeletedFromSink, unittest.equals('foo'));
    unittest.expect(o.bytesDeletedFromSource, unittest.equals('foo'));
    unittest.expect(o.bytesFailedToDeleteFromSink, unittest.equals('foo'));
    unittest.expect(o.bytesFoundFromSource, unittest.equals('foo'));
    unittest.expect(o.bytesFoundOnlyFromSink, unittest.equals('foo'));
    unittest.expect(o.bytesFromSourceFailed, unittest.equals('foo'));
    unittest.expect(o.bytesFromSourceSkippedBySync, unittest.equals('foo'));
    unittest.expect(o.objectsCopiedToSink, unittest.equals('foo'));
    unittest.expect(o.objectsDeletedFromSink, unittest.equals('foo'));
    unittest.expect(o.objectsDeletedFromSource, unittest.equals('foo'));
    unittest.expect(o.objectsFailedToDeleteFromSink, unittest.equals('foo'));
    unittest.expect(o.objectsFoundFromSource, unittest.equals('foo'));
    unittest.expect(o.objectsFoundOnlyFromSink, unittest.equals('foo'));
    unittest.expect(o.objectsFromSourceFailed, unittest.equals('foo'));
    unittest.expect(o.objectsFromSourceSkippedBySync, unittest.equals('foo'));
  }
  buildCounterTransferCounters--;
}

core.int buildCounterTransferJob = 0;
api.TransferJob buildTransferJob() {
  var o = api.TransferJob();
  buildCounterTransferJob++;
  if (buildCounterTransferJob < 3) {
    o.creationTime = 'foo';
    o.deletionTime = 'foo';
    o.description = 'foo';
    o.lastModificationTime = 'foo';
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
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.deletionTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.lastModificationTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkNotificationConfig(o.notificationConfig);
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkSchedule(o.schedule);
    unittest.expect(o.status, unittest.equals('foo'));
    checkTransferSpec(o.transferSpec);
  }
  buildCounterTransferJob--;
}

core.List<api.ErrorSummary> buildUnnamed1407() {
  var o = <api.ErrorSummary>[];
  o.add(buildErrorSummary());
  o.add(buildErrorSummary());
  return o;
}

void checkUnnamed1407(core.List<api.ErrorSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorSummary(o[0]);
  checkErrorSummary(o[1]);
}

core.int buildCounterTransferOperation = 0;
api.TransferOperation buildTransferOperation() {
  var o = api.TransferOperation();
  buildCounterTransferOperation++;
  if (buildCounterTransferOperation < 3) {
    o.counters = buildTransferCounters();
    o.endTime = 'foo';
    o.errorBreakdowns = buildUnnamed1407();
    o.name = 'foo';
    o.notificationConfig = buildNotificationConfig();
    o.projectId = 'foo';
    o.startTime = 'foo';
    o.status = 'foo';
    o.transferJobName = 'foo';
    o.transferSpec = buildTransferSpec();
  }
  buildCounterTransferOperation--;
  return o;
}

void checkTransferOperation(api.TransferOperation o) {
  buildCounterTransferOperation++;
  if (buildCounterTransferOperation < 3) {
    checkTransferCounters(o.counters);
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed1407(o.errorBreakdowns);
    unittest.expect(o.name, unittest.equals('foo'));
    checkNotificationConfig(o.notificationConfig);
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.transferJobName, unittest.equals('foo'));
    checkTransferSpec(o.transferSpec);
  }
  buildCounterTransferOperation--;
}

core.int buildCounterTransferOptions = 0;
api.TransferOptions buildTransferOptions() {
  var o = api.TransferOptions();
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
    unittest.expect(o.deleteObjectsFromSourceAfterTransfer, unittest.isTrue);
    unittest.expect(o.deleteObjectsUniqueInSink, unittest.isTrue);
    unittest.expect(o.overwriteObjectsAlreadyExistingInSink, unittest.isTrue);
  }
  buildCounterTransferOptions--;
}

core.int buildCounterTransferSpec = 0;
api.TransferSpec buildTransferSpec() {
  var o = api.TransferSpec();
  buildCounterTransferSpec++;
  if (buildCounterTransferSpec < 3) {
    o.awsS3DataSource = buildAwsS3Data();
    o.azureBlobStorageDataSource = buildAzureBlobStorageData();
    o.gcsDataSink = buildGcsData();
    o.gcsDataSource = buildGcsData();
    o.httpDataSource = buildHttpData();
    o.objectConditions = buildObjectConditions();
    o.transferOptions = buildTransferOptions();
  }
  buildCounterTransferSpec--;
  return o;
}

void checkTransferSpec(api.TransferSpec o) {
  buildCounterTransferSpec++;
  if (buildCounterTransferSpec < 3) {
    checkAwsS3Data(o.awsS3DataSource);
    checkAzureBlobStorageData(o.azureBlobStorageDataSource);
    checkGcsData(o.gcsDataSink);
    checkGcsData(o.gcsDataSource);
    checkHttpData(o.httpDataSource);
    checkObjectConditions(o.objectConditions);
    checkTransferOptions(o.transferOptions);
  }
  buildCounterTransferSpec--;
}

core.int buildCounterUpdateTransferJobRequest = 0;
api.UpdateTransferJobRequest buildUpdateTransferJobRequest() {
  var o = api.UpdateTransferJobRequest();
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
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkTransferJob(o.transferJob);
    unittest.expect(o.updateTransferJobFieldMask, unittest.equals('foo'));
  }
  buildCounterUpdateTransferJobRequest--;
}

void main() {
  unittest.group('obj-schema-AwsAccessKey', () {
    unittest.test('to-json--from-json', () {
      var o = buildAwsAccessKey();
      var od = api.AwsAccessKey.fromJson(o.toJson());
      checkAwsAccessKey(od);
    });
  });

  unittest.group('obj-schema-AwsS3Data', () {
    unittest.test('to-json--from-json', () {
      var o = buildAwsS3Data();
      var od = api.AwsS3Data.fromJson(o.toJson());
      checkAwsS3Data(od);
    });
  });

  unittest.group('obj-schema-AzureBlobStorageData', () {
    unittest.test('to-json--from-json', () {
      var o = buildAzureBlobStorageData();
      var od = api.AzureBlobStorageData.fromJson(o.toJson());
      checkAzureBlobStorageData(od);
    });
  });

  unittest.group('obj-schema-AzureCredentials', () {
    unittest.test('to-json--from-json', () {
      var o = buildAzureCredentials();
      var od = api.AzureCredentials.fromJson(o.toJson());
      checkAzureCredentials(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCancelOperationRequest();
      var od = api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () {
      var o = buildDate();
      var od = api.Date.fromJson(o.toJson());
      checkDate(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-ErrorLogEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildErrorLogEntry();
      var od = api.ErrorLogEntry.fromJson(o.toJson());
      checkErrorLogEntry(od);
    });
  });

  unittest.group('obj-schema-ErrorSummary', () {
    unittest.test('to-json--from-json', () {
      var o = buildErrorSummary();
      var od = api.ErrorSummary.fromJson(o.toJson());
      checkErrorSummary(od);
    });
  });

  unittest.group('obj-schema-GcsData', () {
    unittest.test('to-json--from-json', () {
      var o = buildGcsData();
      var od = api.GcsData.fromJson(o.toJson());
      checkGcsData(od);
    });
  });

  unittest.group('obj-schema-GoogleServiceAccount', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleServiceAccount();
      var od = api.GoogleServiceAccount.fromJson(o.toJson());
      checkGoogleServiceAccount(od);
    });
  });

  unittest.group('obj-schema-HttpData', () {
    unittest.test('to-json--from-json', () {
      var o = buildHttpData();
      var od = api.HttpData.fromJson(o.toJson());
      checkHttpData(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOperationsResponse();
      var od = api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTransferJobsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListTransferJobsResponse();
      var od = api.ListTransferJobsResponse.fromJson(o.toJson());
      checkListTransferJobsResponse(od);
    });
  });

  unittest.group('obj-schema-NotificationConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildNotificationConfig();
      var od = api.NotificationConfig.fromJson(o.toJson());
      checkNotificationConfig(od);
    });
  });

  unittest.group('obj-schema-ObjectConditions', () {
    unittest.test('to-json--from-json', () {
      var o = buildObjectConditions();
      var od = api.ObjectConditions.fromJson(o.toJson());
      checkObjectConditions(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-PauseTransferOperationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildPauseTransferOperationRequest();
      var od = api.PauseTransferOperationRequest.fromJson(o.toJson());
      checkPauseTransferOperationRequest(od);
    });
  });

  unittest.group('obj-schema-ResumeTransferOperationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildResumeTransferOperationRequest();
      var od = api.ResumeTransferOperationRequest.fromJson(o.toJson());
      checkResumeTransferOperationRequest(od);
    });
  });

  unittest.group('obj-schema-Schedule', () {
    unittest.test('to-json--from-json', () {
      var o = buildSchedule();
      var od = api.Schedule.fromJson(o.toJson());
      checkSchedule(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () {
      var o = buildTimeOfDay();
      var od = api.TimeOfDay.fromJson(o.toJson());
      checkTimeOfDay(od);
    });
  });

  unittest.group('obj-schema-TransferCounters', () {
    unittest.test('to-json--from-json', () {
      var o = buildTransferCounters();
      var od = api.TransferCounters.fromJson(o.toJson());
      checkTransferCounters(od);
    });
  });

  unittest.group('obj-schema-TransferJob', () {
    unittest.test('to-json--from-json', () {
      var o = buildTransferJob();
      var od = api.TransferJob.fromJson(o.toJson());
      checkTransferJob(od);
    });
  });

  unittest.group('obj-schema-TransferOperation', () {
    unittest.test('to-json--from-json', () {
      var o = buildTransferOperation();
      var od = api.TransferOperation.fromJson(o.toJson());
      checkTransferOperation(od);
    });
  });

  unittest.group('obj-schema-TransferOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildTransferOptions();
      var od = api.TransferOptions.fromJson(o.toJson());
      checkTransferOptions(od);
    });
  });

  unittest.group('obj-schema-TransferSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildTransferSpec();
      var od = api.TransferSpec.fromJson(o.toJson());
      checkTransferSpec(od);
    });
  });

  unittest.group('obj-schema-UpdateTransferJobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateTransferJobRequest();
      var od = api.UpdateTransferJobRequest.fromJson(o.toJson());
      checkUpdateTransferJobRequest(od);
    });
  });

  unittest.group('resource-GoogleServiceAccountsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.GoogleServiceAccountsResourceApi res =
          api.StoragetransferApi(mock).googleServiceAccounts;
      var arg_projectId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("v1/googleServiceAccounts/"));
        pathOffset += 25;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildGoogleServiceAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleServiceAccount(response);
      })));
    });
  });

  unittest.group('resource-TransferJobsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.TransferJobsResourceApi res =
          api.StoragetransferApi(mock).transferJobs;
      var arg_request = buildTransferJob();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TransferJob.fromJson(json);
        checkTransferJob(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/transferJobs"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildTransferJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTransferJob(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.TransferJobsResourceApi res =
          api.StoragetransferApi(mock).transferJobs;
      var arg_jobName = 'foo';
      var arg_projectId = 'foo';
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTransferJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_jobName, projectId: arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTransferJob(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.TransferJobsResourceApi res =
          api.StoragetransferApi(mock).transferJobs;
      var arg_pageSize = 42;
      var arg_filter = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/transferJobs"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListTransferJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageSize: arg_pageSize,
              filter: arg_filter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTransferJobsResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.TransferJobsResourceApi res =
          api.StoragetransferApi(mock).transferJobs;
      var arg_request = buildUpdateTransferJobRequest();
      var arg_jobName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UpdateTransferJobRequest.fromJson(json);
        checkUpdateTransferJobRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildTransferJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_jobName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTransferJob(response);
      })));
    });
  });

  unittest.group('resource-TransferOperationsResourceApi', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      api.TransferOperationsResourceApi res =
          api.StoragetransferApi(mock).transferOperations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CancelOperationRequest.fromJson(json);
        checkCancelOperationRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.TransferOperationsResourceApi res =
          api.StoragetransferApi(mock).transferOperations;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.TransferOperationsResourceApi res =
          api.StoragetransferApi(mock).transferOperations;
      var arg_name = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_filter = 'foo';
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });

    unittest.test('method--pause', () {
      var mock = HttpServerMock();
      api.TransferOperationsResourceApi res =
          api.StoragetransferApi(mock).transferOperations;
      var arg_request = buildPauseTransferOperationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PauseTransferOperationRequest.fromJson(json);
        checkPauseTransferOperationRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
          .pause(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--resume', () {
      var mock = HttpServerMock();
      api.TransferOperationsResourceApi res =
          api.StoragetransferApi(mock).transferOperations;
      var arg_request = buildResumeTransferOperationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ResumeTransferOperationRequest.fromJson(json);
        checkResumeTransferOperationRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
          .resume(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });
  });
}
