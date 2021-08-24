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

import 'package:googleapis_beta/alertcenter/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccountSuspensionDetails = 0;
api.AccountSuspensionDetails buildAccountSuspensionDetails() {
  final o = api.AccountSuspensionDetails();
  buildCounterAccountSuspensionDetails++;
  if (buildCounterAccountSuspensionDetails < 3) {
    o.abuseReason = 'foo';
    o.productName = 'foo';
  }
  buildCounterAccountSuspensionDetails--;
  return o;
}

void checkAccountSuspensionDetails(api.AccountSuspensionDetails o) {
  buildCounterAccountSuspensionDetails++;
  if (buildCounterAccountSuspensionDetails < 3) {
    unittest.expect(
      o.abuseReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productName!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccountSuspensionDetails--;
}

core.List<api.AccountSuspensionDetails> buildUnnamed8909() => [
      buildAccountSuspensionDetails(),
      buildAccountSuspensionDetails(),
    ];

void checkUnnamed8909(core.List<api.AccountSuspensionDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountSuspensionDetails(o[0]);
  checkAccountSuspensionDetails(o[1]);
}

core.int buildCounterAccountSuspensionWarning = 0;
api.AccountSuspensionWarning buildAccountSuspensionWarning() {
  final o = api.AccountSuspensionWarning();
  buildCounterAccountSuspensionWarning++;
  if (buildCounterAccountSuspensionWarning < 3) {
    o.appealWindow = 'foo';
    o.state = 'foo';
    o.suspensionDetails = buildUnnamed8909();
  }
  buildCounterAccountSuspensionWarning--;
  return o;
}

void checkAccountSuspensionWarning(api.AccountSuspensionWarning o) {
  buildCounterAccountSuspensionWarning++;
  if (buildCounterAccountSuspensionWarning < 3) {
    unittest.expect(
      o.appealWindow!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed8909(o.suspensionDetails!);
  }
  buildCounterAccountSuspensionWarning--;
}

core.int buildCounterAccountWarning = 0;
api.AccountWarning buildAccountWarning() {
  final o = api.AccountWarning();
  buildCounterAccountWarning++;
  if (buildCounterAccountWarning < 3) {
    o.email = 'foo';
    o.loginDetails = buildLoginDetails();
  }
  buildCounterAccountWarning--;
  return o;
}

void checkAccountWarning(api.AccountWarning o) {
  buildCounterAccountWarning++;
  if (buildCounterAccountWarning < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    checkLoginDetails(o.loginDetails!);
  }
  buildCounterAccountWarning--;
}

core.int buildCounterActionInfo = 0;
api.ActionInfo buildActionInfo() {
  final o = api.ActionInfo();
  buildCounterActionInfo++;
  if (buildCounterActionInfo < 3) {}
  buildCounterActionInfo--;
  return o;
}

void checkActionInfo(api.ActionInfo o) {
  buildCounterActionInfo++;
  if (buildCounterActionInfo < 3) {}
  buildCounterActionInfo--;
}

core.List<core.String> buildUnnamed8910() => [
      'foo',
      'foo',
    ];

void checkUnnamed8910(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8911() => [
      'foo',
      'foo',
    ];

void checkUnnamed8911(core.List<core.String> o) {
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

core.int buildCounterActivityRule = 0;
api.ActivityRule buildActivityRule() {
  final o = api.ActivityRule();
  buildCounterActivityRule++;
  if (buildCounterActivityRule < 3) {
    o.actionNames = buildUnnamed8910();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.query = 'foo';
    o.supersededAlerts = buildUnnamed8911();
    o.supersedingAlert = 'foo';
    o.threshold = 'foo';
    o.triggerSource = 'foo';
    o.updateTime = 'foo';
    o.windowSize = 'foo';
  }
  buildCounterActivityRule--;
  return o;
}

void checkActivityRule(api.ActivityRule o) {
  buildCounterActivityRule++;
  if (buildCounterActivityRule < 3) {
    checkUnnamed8910(o.actionNames!);
    unittest.expect(
      o.createTime!,
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
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    checkUnnamed8911(o.supersededAlerts!);
    unittest.expect(
      o.supersedingAlert!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.threshold!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.windowSize!,
      unittest.equals('foo'),
    );
  }
  buildCounterActivityRule--;
}

core.Map<core.String, core.Object> buildUnnamed8912() => {
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

void checkUnnamed8912(core.Map<core.String, core.Object> o) {
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

core.int buildCounterAlert = 0;
api.Alert buildAlert() {
  final o = api.Alert();
  buildCounterAlert++;
  if (buildCounterAlert < 3) {
    o.alertId = 'foo';
    o.createTime = 'foo';
    o.customerId = 'foo';
    o.data = buildUnnamed8912();
    o.deleted = true;
    o.endTime = 'foo';
    o.etag = 'foo';
    o.metadata = buildAlertMetadata();
    o.securityInvestigationToolLink = 'foo';
    o.source = 'foo';
    o.startTime = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterAlert--;
  return o;
}

void checkAlert(api.Alert o) {
  buildCounterAlert++;
  if (buildCounterAlert < 3) {
    unittest.expect(
      o.alertId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
    checkUnnamed8912(o.data!);
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkAlertMetadata(o.metadata!);
    unittest.expect(
      o.securityInvestigationToolLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterAlert--;
}

core.int buildCounterAlertFeedback = 0;
api.AlertFeedback buildAlertFeedback() {
  final o = api.AlertFeedback();
  buildCounterAlertFeedback++;
  if (buildCounterAlertFeedback < 3) {
    o.alertId = 'foo';
    o.createTime = 'foo';
    o.customerId = 'foo';
    o.email = 'foo';
    o.feedbackId = 'foo';
    o.type = 'foo';
  }
  buildCounterAlertFeedback--;
  return o;
}

void checkAlertFeedback(api.AlertFeedback o) {
  buildCounterAlertFeedback++;
  if (buildCounterAlertFeedback < 3) {
    unittest.expect(
      o.alertId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.feedbackId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAlertFeedback--;
}

core.int buildCounterAlertMetadata = 0;
api.AlertMetadata buildAlertMetadata() {
  final o = api.AlertMetadata();
  buildCounterAlertMetadata++;
  if (buildCounterAlertMetadata < 3) {
    o.alertId = 'foo';
    o.assignee = 'foo';
    o.customerId = 'foo';
    o.etag = 'foo';
    o.severity = 'foo';
    o.status = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterAlertMetadata--;
  return o;
}

void checkAlertMetadata(api.AlertMetadata o) {
  buildCounterAlertMetadata++;
  if (buildCounterAlertMetadata < 3) {
    unittest.expect(
      o.alertId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.assignee!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterAlertMetadata--;
}

core.List<api.RequestInfo> buildUnnamed8913() => [
      buildRequestInfo(),
      buildRequestInfo(),
    ];

void checkUnnamed8913(core.List<api.RequestInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRequestInfo(o[0]);
  checkRequestInfo(o[1]);
}

core.int buildCounterAppMakerSqlSetupNotification = 0;
api.AppMakerSqlSetupNotification buildAppMakerSqlSetupNotification() {
  final o = api.AppMakerSqlSetupNotification();
  buildCounterAppMakerSqlSetupNotification++;
  if (buildCounterAppMakerSqlSetupNotification < 3) {
    o.requestInfo = buildUnnamed8913();
  }
  buildCounterAppMakerSqlSetupNotification--;
  return o;
}

void checkAppMakerSqlSetupNotification(api.AppMakerSqlSetupNotification o) {
  buildCounterAppMakerSqlSetupNotification++;
  if (buildCounterAppMakerSqlSetupNotification < 3) {
    checkUnnamed8913(o.requestInfo!);
  }
  buildCounterAppMakerSqlSetupNotification--;
}

core.int buildCounterAppSettingsChanged = 0;
api.AppSettingsChanged buildAppSettingsChanged() {
  final o = api.AppSettingsChanged();
  buildCounterAppSettingsChanged++;
  if (buildCounterAppSettingsChanged < 3) {
    o.alertDetails = 'foo';
    o.name = 'foo';
  }
  buildCounterAppSettingsChanged--;
  return o;
}

void checkAppSettingsChanged(api.AppSettingsChanged o) {
  buildCounterAppSettingsChanged++;
  if (buildCounterAppSettingsChanged < 3) {
    unittest.expect(
      o.alertDetails!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppSettingsChanged--;
}

core.List<core.String> buildUnnamed8914() => [
      'foo',
      'foo',
    ];

void checkUnnamed8914(core.List<core.String> o) {
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

core.int buildCounterAppsOutage = 0;
api.AppsOutage buildAppsOutage() {
  final o = api.AppsOutage();
  buildCounterAppsOutage++;
  if (buildCounterAppsOutage < 3) {
    o.dashboardUri = 'foo';
    o.nextUpdateTime = 'foo';
    o.products = buildUnnamed8914();
    o.resolutionTime = 'foo';
    o.status = 'foo';
  }
  buildCounterAppsOutage--;
  return o;
}

void checkAppsOutage(api.AppsOutage o) {
  buildCounterAppsOutage++;
  if (buildCounterAppsOutage < 3) {
    unittest.expect(
      o.dashboardUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextUpdateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed8914(o.products!);
    unittest.expect(
      o.resolutionTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppsOutage--;
}

core.int buildCounterAttachment = 0;
api.Attachment buildAttachment() {
  final o = api.Attachment();
  buildCounterAttachment++;
  if (buildCounterAttachment < 3) {
    o.csv = buildCsv();
  }
  buildCounterAttachment--;
  return o;
}

void checkAttachment(api.Attachment o) {
  buildCounterAttachment++;
  if (buildCounterAttachment < 3) {
    checkCsv(o.csv!);
  }
  buildCounterAttachment--;
}

core.List<api.GmailMessageInfo> buildUnnamed8915() => [
      buildGmailMessageInfo(),
      buildGmailMessageInfo(),
    ];

void checkUnnamed8915(core.List<api.GmailMessageInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGmailMessageInfo(o[0]);
  checkGmailMessageInfo(o[1]);
}

core.int buildCounterBadWhitelist = 0;
api.BadWhitelist buildBadWhitelist() {
  final o = api.BadWhitelist();
  buildCounterBadWhitelist++;
  if (buildCounterBadWhitelist < 3) {
    o.domainId = buildDomainId();
    o.maliciousEntity = buildMaliciousEntity();
    o.messages = buildUnnamed8915();
    o.sourceIp = 'foo';
  }
  buildCounterBadWhitelist--;
  return o;
}

void checkBadWhitelist(api.BadWhitelist o) {
  buildCounterBadWhitelist++;
  if (buildCounterBadWhitelist < 3) {
    checkDomainId(o.domainId!);
    checkMaliciousEntity(o.maliciousEntity!);
    checkUnnamed8915(o.messages!);
    unittest.expect(
      o.sourceIp!,
      unittest.equals('foo'),
    );
  }
  buildCounterBadWhitelist--;
}

core.List<core.String> buildUnnamed8916() => [
      'foo',
      'foo',
    ];

void checkUnnamed8916(core.List<core.String> o) {
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

core.int buildCounterBatchDeleteAlertsRequest = 0;
api.BatchDeleteAlertsRequest buildBatchDeleteAlertsRequest() {
  final o = api.BatchDeleteAlertsRequest();
  buildCounterBatchDeleteAlertsRequest++;
  if (buildCounterBatchDeleteAlertsRequest < 3) {
    o.alertId = buildUnnamed8916();
    o.customerId = 'foo';
  }
  buildCounterBatchDeleteAlertsRequest--;
  return o;
}

void checkBatchDeleteAlertsRequest(api.BatchDeleteAlertsRequest o) {
  buildCounterBatchDeleteAlertsRequest++;
  if (buildCounterBatchDeleteAlertsRequest < 3) {
    checkUnnamed8916(o.alertId!);
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterBatchDeleteAlertsRequest--;
}

core.Map<core.String, api.Status> buildUnnamed8917() => {
      'x': buildStatus(),
      'y': buildStatus(),
    };

void checkUnnamed8917(core.Map<core.String, api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o['x']!);
  checkStatus(o['y']!);
}

core.List<core.String> buildUnnamed8918() => [
      'foo',
      'foo',
    ];

void checkUnnamed8918(core.List<core.String> o) {
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

core.int buildCounterBatchDeleteAlertsResponse = 0;
api.BatchDeleteAlertsResponse buildBatchDeleteAlertsResponse() {
  final o = api.BatchDeleteAlertsResponse();
  buildCounterBatchDeleteAlertsResponse++;
  if (buildCounterBatchDeleteAlertsResponse < 3) {
    o.failedAlertStatus = buildUnnamed8917();
    o.successAlertIds = buildUnnamed8918();
  }
  buildCounterBatchDeleteAlertsResponse--;
  return o;
}

void checkBatchDeleteAlertsResponse(api.BatchDeleteAlertsResponse o) {
  buildCounterBatchDeleteAlertsResponse++;
  if (buildCounterBatchDeleteAlertsResponse < 3) {
    checkUnnamed8917(o.failedAlertStatus!);
    checkUnnamed8918(o.successAlertIds!);
  }
  buildCounterBatchDeleteAlertsResponse--;
}

core.List<core.String> buildUnnamed8919() => [
      'foo',
      'foo',
    ];

void checkUnnamed8919(core.List<core.String> o) {
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

core.int buildCounterBatchUndeleteAlertsRequest = 0;
api.BatchUndeleteAlertsRequest buildBatchUndeleteAlertsRequest() {
  final o = api.BatchUndeleteAlertsRequest();
  buildCounterBatchUndeleteAlertsRequest++;
  if (buildCounterBatchUndeleteAlertsRequest < 3) {
    o.alertId = buildUnnamed8919();
    o.customerId = 'foo';
  }
  buildCounterBatchUndeleteAlertsRequest--;
  return o;
}

void checkBatchUndeleteAlertsRequest(api.BatchUndeleteAlertsRequest o) {
  buildCounterBatchUndeleteAlertsRequest++;
  if (buildCounterBatchUndeleteAlertsRequest < 3) {
    checkUnnamed8919(o.alertId!);
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterBatchUndeleteAlertsRequest--;
}

core.Map<core.String, api.Status> buildUnnamed8920() => {
      'x': buildStatus(),
      'y': buildStatus(),
    };

void checkUnnamed8920(core.Map<core.String, api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o['x']!);
  checkStatus(o['y']!);
}

core.List<core.String> buildUnnamed8921() => [
      'foo',
      'foo',
    ];

void checkUnnamed8921(core.List<core.String> o) {
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

core.int buildCounterBatchUndeleteAlertsResponse = 0;
api.BatchUndeleteAlertsResponse buildBatchUndeleteAlertsResponse() {
  final o = api.BatchUndeleteAlertsResponse();
  buildCounterBatchUndeleteAlertsResponse++;
  if (buildCounterBatchUndeleteAlertsResponse < 3) {
    o.failedAlertStatus = buildUnnamed8920();
    o.successAlertIds = buildUnnamed8921();
  }
  buildCounterBatchUndeleteAlertsResponse--;
  return o;
}

void checkBatchUndeleteAlertsResponse(api.BatchUndeleteAlertsResponse o) {
  buildCounterBatchUndeleteAlertsResponse++;
  if (buildCounterBatchUndeleteAlertsResponse < 3) {
    checkUnnamed8920(o.failedAlertStatus!);
    checkUnnamed8921(o.successAlertIds!);
  }
  buildCounterBatchUndeleteAlertsResponse--;
}

core.int buildCounterCloudPubsubTopic = 0;
api.CloudPubsubTopic buildCloudPubsubTopic() {
  final o = api.CloudPubsubTopic();
  buildCounterCloudPubsubTopic++;
  if (buildCounterCloudPubsubTopic < 3) {
    o.payloadFormat = 'foo';
    o.topicName = 'foo';
  }
  buildCounterCloudPubsubTopic--;
  return o;
}

void checkCloudPubsubTopic(api.CloudPubsubTopic o) {
  buildCounterCloudPubsubTopic++;
  if (buildCounterCloudPubsubTopic < 3) {
    unittest.expect(
      o.payloadFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.topicName!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudPubsubTopic--;
}

core.List<api.CsvRow> buildUnnamed8922() => [
      buildCsvRow(),
      buildCsvRow(),
    ];

void checkUnnamed8922(core.List<api.CsvRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCsvRow(o[0]);
  checkCsvRow(o[1]);
}

core.List<core.String> buildUnnamed8923() => [
      'foo',
      'foo',
    ];

void checkUnnamed8923(core.List<core.String> o) {
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

core.int buildCounterCsv = 0;
api.Csv buildCsv() {
  final o = api.Csv();
  buildCounterCsv++;
  if (buildCounterCsv < 3) {
    o.dataRows = buildUnnamed8922();
    o.headers = buildUnnamed8923();
  }
  buildCounterCsv--;
  return o;
}

void checkCsv(api.Csv o) {
  buildCounterCsv++;
  if (buildCounterCsv < 3) {
    checkUnnamed8922(o.dataRows!);
    checkUnnamed8923(o.headers!);
  }
  buildCounterCsv--;
}

core.List<core.String> buildUnnamed8924() => [
      'foo',
      'foo',
    ];

void checkUnnamed8924(core.List<core.String> o) {
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

core.int buildCounterCsvRow = 0;
api.CsvRow buildCsvRow() {
  final o = api.CsvRow();
  buildCounterCsvRow++;
  if (buildCounterCsvRow < 3) {
    o.entries = buildUnnamed8924();
  }
  buildCounterCsvRow--;
  return o;
}

void checkCsvRow(api.CsvRow o) {
  buildCounterCsvRow++;
  if (buildCounterCsvRow < 3) {
    checkUnnamed8924(o.entries!);
  }
  buildCounterCsvRow--;
}

core.List<api.DeviceCompromisedSecurityDetail> buildUnnamed8925() => [
      buildDeviceCompromisedSecurityDetail(),
      buildDeviceCompromisedSecurityDetail(),
    ];

void checkUnnamed8925(core.List<api.DeviceCompromisedSecurityDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceCompromisedSecurityDetail(o[0]);
  checkDeviceCompromisedSecurityDetail(o[1]);
}

core.int buildCounterDeviceCompromised = 0;
api.DeviceCompromised buildDeviceCompromised() {
  final o = api.DeviceCompromised();
  buildCounterDeviceCompromised++;
  if (buildCounterDeviceCompromised < 3) {
    o.email = 'foo';
    o.events = buildUnnamed8925();
  }
  buildCounterDeviceCompromised--;
  return o;
}

void checkDeviceCompromised(api.DeviceCompromised o) {
  buildCounterDeviceCompromised++;
  if (buildCounterDeviceCompromised < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    checkUnnamed8925(o.events!);
  }
  buildCounterDeviceCompromised--;
}

core.int buildCounterDeviceCompromisedSecurityDetail = 0;
api.DeviceCompromisedSecurityDetail buildDeviceCompromisedSecurityDetail() {
  final o = api.DeviceCompromisedSecurityDetail();
  buildCounterDeviceCompromisedSecurityDetail++;
  if (buildCounterDeviceCompromisedSecurityDetail < 3) {
    o.deviceCompromisedState = 'foo';
    o.deviceId = 'foo';
    o.deviceModel = 'foo';
    o.deviceType = 'foo';
    o.iosVendorId = 'foo';
    o.resourceId = 'foo';
    o.serialNumber = 'foo';
  }
  buildCounterDeviceCompromisedSecurityDetail--;
  return o;
}

void checkDeviceCompromisedSecurityDetail(
    api.DeviceCompromisedSecurityDetail o) {
  buildCounterDeviceCompromisedSecurityDetail++;
  if (buildCounterDeviceCompromisedSecurityDetail < 3) {
    unittest.expect(
      o.deviceCompromisedState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iosVendorId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serialNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeviceCompromisedSecurityDetail--;
}

core.int buildCounterDlpRuleViolation = 0;
api.DlpRuleViolation buildDlpRuleViolation() {
  final o = api.DlpRuleViolation();
  buildCounterDlpRuleViolation++;
  if (buildCounterDlpRuleViolation < 3) {
    o.ruleViolationInfo = buildRuleViolationInfo();
  }
  buildCounterDlpRuleViolation--;
  return o;
}

void checkDlpRuleViolation(api.DlpRuleViolation o) {
  buildCounterDlpRuleViolation++;
  if (buildCounterDlpRuleViolation < 3) {
    checkRuleViolationInfo(o.ruleViolationInfo!);
  }
  buildCounterDlpRuleViolation--;
}

core.int buildCounterDomainId = 0;
api.DomainId buildDomainId() {
  final o = api.DomainId();
  buildCounterDomainId++;
  if (buildCounterDomainId < 3) {
    o.customerPrimaryDomain = 'foo';
  }
  buildCounterDomainId--;
  return o;
}

void checkDomainId(api.DomainId o) {
  buildCounterDomainId++;
  if (buildCounterDomainId < 3) {
    unittest.expect(
      o.customerPrimaryDomain!,
      unittest.equals('foo'),
    );
  }
  buildCounterDomainId--;
}

core.int buildCounterDomainWideTakeoutInitiated = 0;
api.DomainWideTakeoutInitiated buildDomainWideTakeoutInitiated() {
  final o = api.DomainWideTakeoutInitiated();
  buildCounterDomainWideTakeoutInitiated++;
  if (buildCounterDomainWideTakeoutInitiated < 3) {
    o.email = 'foo';
    o.takeoutRequestId = 'foo';
  }
  buildCounterDomainWideTakeoutInitiated--;
  return o;
}

void checkDomainWideTakeoutInitiated(api.DomainWideTakeoutInitiated o) {
  buildCounterDomainWideTakeoutInitiated++;
  if (buildCounterDomainWideTakeoutInitiated < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.takeoutRequestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDomainWideTakeoutInitiated--;
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

core.List<core.String> buildUnnamed8926() => [
      'foo',
      'foo',
    ];

void checkUnnamed8926(core.List<core.String> o) {
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

core.int buildCounterGmailMessageInfo = 0;
api.GmailMessageInfo buildGmailMessageInfo() {
  final o = api.GmailMessageInfo();
  buildCounterGmailMessageInfo++;
  if (buildCounterGmailMessageInfo < 3) {
    o.attachmentsSha256Hash = buildUnnamed8926();
    o.date = 'foo';
    o.md5HashMessageBody = 'foo';
    o.md5HashSubject = 'foo';
    o.messageBodySnippet = 'foo';
    o.messageId = 'foo';
    o.recipient = 'foo';
    o.subjectText = 'foo';
  }
  buildCounterGmailMessageInfo--;
  return o;
}

void checkGmailMessageInfo(api.GmailMessageInfo o) {
  buildCounterGmailMessageInfo++;
  if (buildCounterGmailMessageInfo < 3) {
    checkUnnamed8926(o.attachmentsSha256Hash!);
    unittest.expect(
      o.date!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.md5HashMessageBody!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.md5HashSubject!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.messageBodySnippet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.messageId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recipient!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subjectText!,
      unittest.equals('foo'),
    );
  }
  buildCounterGmailMessageInfo--;
}

core.List<core.String> buildUnnamed8927() => [
      'foo',
      'foo',
    ];

void checkUnnamed8927(core.List<core.String> o) {
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

core.int buildCounterGoogleOperations = 0;
api.GoogleOperations buildGoogleOperations() {
  final o = api.GoogleOperations();
  buildCounterGoogleOperations++;
  if (buildCounterGoogleOperations < 3) {
    o.affectedUserEmails = buildUnnamed8927();
    o.attachmentData = buildAttachment();
    o.description = 'foo';
    o.header = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleOperations--;
  return o;
}

void checkGoogleOperations(api.GoogleOperations o) {
  buildCounterGoogleOperations++;
  if (buildCounterGoogleOperations < 3) {
    checkUnnamed8927(o.affectedUserEmails!);
    checkAttachment(o.attachmentData!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.header!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleOperations--;
}

core.List<api.AlertFeedback> buildUnnamed8928() => [
      buildAlertFeedback(),
      buildAlertFeedback(),
    ];

void checkUnnamed8928(core.List<api.AlertFeedback> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAlertFeedback(o[0]);
  checkAlertFeedback(o[1]);
}

core.int buildCounterListAlertFeedbackResponse = 0;
api.ListAlertFeedbackResponse buildListAlertFeedbackResponse() {
  final o = api.ListAlertFeedbackResponse();
  buildCounterListAlertFeedbackResponse++;
  if (buildCounterListAlertFeedbackResponse < 3) {
    o.feedback = buildUnnamed8928();
  }
  buildCounterListAlertFeedbackResponse--;
  return o;
}

void checkListAlertFeedbackResponse(api.ListAlertFeedbackResponse o) {
  buildCounterListAlertFeedbackResponse++;
  if (buildCounterListAlertFeedbackResponse < 3) {
    checkUnnamed8928(o.feedback!);
  }
  buildCounterListAlertFeedbackResponse--;
}

core.List<api.Alert> buildUnnamed8929() => [
      buildAlert(),
      buildAlert(),
    ];

void checkUnnamed8929(core.List<api.Alert> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAlert(o[0]);
  checkAlert(o[1]);
}

core.int buildCounterListAlertsResponse = 0;
api.ListAlertsResponse buildListAlertsResponse() {
  final o = api.ListAlertsResponse();
  buildCounterListAlertsResponse++;
  if (buildCounterListAlertsResponse < 3) {
    o.alerts = buildUnnamed8929();
    o.nextPageToken = 'foo';
  }
  buildCounterListAlertsResponse--;
  return o;
}

void checkListAlertsResponse(api.ListAlertsResponse o) {
  buildCounterListAlertsResponse++;
  if (buildCounterListAlertsResponse < 3) {
    checkUnnamed8929(o.alerts!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAlertsResponse--;
}

core.int buildCounterLoginDetails = 0;
api.LoginDetails buildLoginDetails() {
  final o = api.LoginDetails();
  buildCounterLoginDetails++;
  if (buildCounterLoginDetails < 3) {
    o.ipAddress = 'foo';
    o.loginTime = 'foo';
  }
  buildCounterLoginDetails--;
  return o;
}

void checkLoginDetails(api.LoginDetails o) {
  buildCounterLoginDetails++;
  if (buildCounterLoginDetails < 3) {
    unittest.expect(
      o.ipAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.loginTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterLoginDetails--;
}

core.List<api.GmailMessageInfo> buildUnnamed8930() => [
      buildGmailMessageInfo(),
      buildGmailMessageInfo(),
    ];

void checkUnnamed8930(core.List<api.GmailMessageInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGmailMessageInfo(o[0]);
  checkGmailMessageInfo(o[1]);
}

core.int buildCounterMailPhishing = 0;
api.MailPhishing buildMailPhishing() {
  final o = api.MailPhishing();
  buildCounterMailPhishing++;
  if (buildCounterMailPhishing < 3) {
    o.domainId = buildDomainId();
    o.isInternal = true;
    o.maliciousEntity = buildMaliciousEntity();
    o.messages = buildUnnamed8930();
    o.systemActionType = 'foo';
  }
  buildCounterMailPhishing--;
  return o;
}

void checkMailPhishing(api.MailPhishing o) {
  buildCounterMailPhishing++;
  if (buildCounterMailPhishing < 3) {
    checkDomainId(o.domainId!);
    unittest.expect(o.isInternal!, unittest.isTrue);
    checkMaliciousEntity(o.maliciousEntity!);
    checkUnnamed8930(o.messages!);
    unittest.expect(
      o.systemActionType!,
      unittest.equals('foo'),
    );
  }
  buildCounterMailPhishing--;
}

core.int buildCounterMaliciousEntity = 0;
api.MaliciousEntity buildMaliciousEntity() {
  final o = api.MaliciousEntity();
  buildCounterMaliciousEntity++;
  if (buildCounterMaliciousEntity < 3) {
    o.displayName = 'foo';
    o.entity = buildUser();
    o.fromHeader = 'foo';
  }
  buildCounterMaliciousEntity--;
  return o;
}

void checkMaliciousEntity(api.MaliciousEntity o) {
  buildCounterMaliciousEntity++;
  if (buildCounterMaliciousEntity < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUser(o.entity!);
    unittest.expect(
      o.fromHeader!,
      unittest.equals('foo'),
    );
  }
  buildCounterMaliciousEntity--;
}

core.int buildCounterMatchInfo = 0;
api.MatchInfo buildMatchInfo() {
  final o = api.MatchInfo();
  buildCounterMatchInfo++;
  if (buildCounterMatchInfo < 3) {
    o.predefinedDetector = buildPredefinedDetectorInfo();
    o.userDefinedDetector = buildUserDefinedDetectorInfo();
  }
  buildCounterMatchInfo--;
  return o;
}

void checkMatchInfo(api.MatchInfo o) {
  buildCounterMatchInfo++;
  if (buildCounterMatchInfo < 3) {
    checkPredefinedDetectorInfo(o.predefinedDetector!);
    checkUserDefinedDetectorInfo(o.userDefinedDetector!);
  }
  buildCounterMatchInfo--;
}

core.int buildCounterNotification = 0;
api.Notification buildNotification() {
  final o = api.Notification();
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    o.cloudPubsubTopic = buildCloudPubsubTopic();
  }
  buildCounterNotification--;
  return o;
}

void checkNotification(api.Notification o) {
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    checkCloudPubsubTopic(o.cloudPubsubTopic!);
  }
  buildCounterNotification--;
}

core.List<api.GmailMessageInfo> buildUnnamed8931() => [
      buildGmailMessageInfo(),
      buildGmailMessageInfo(),
    ];

void checkUnnamed8931(core.List<api.GmailMessageInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGmailMessageInfo(o[0]);
  checkGmailMessageInfo(o[1]);
}

core.int buildCounterPhishingSpike = 0;
api.PhishingSpike buildPhishingSpike() {
  final o = api.PhishingSpike();
  buildCounterPhishingSpike++;
  if (buildCounterPhishingSpike < 3) {
    o.domainId = buildDomainId();
    o.isInternal = true;
    o.maliciousEntity = buildMaliciousEntity();
    o.messages = buildUnnamed8931();
  }
  buildCounterPhishingSpike--;
  return o;
}

void checkPhishingSpike(api.PhishingSpike o) {
  buildCounterPhishingSpike++;
  if (buildCounterPhishingSpike < 3) {
    checkDomainId(o.domainId!);
    unittest.expect(o.isInternal!, unittest.isTrue);
    checkMaliciousEntity(o.maliciousEntity!);
    checkUnnamed8931(o.messages!);
  }
  buildCounterPhishingSpike--;
}

core.int buildCounterPredefinedDetectorInfo = 0;
api.PredefinedDetectorInfo buildPredefinedDetectorInfo() {
  final o = api.PredefinedDetectorInfo();
  buildCounterPredefinedDetectorInfo++;
  if (buildCounterPredefinedDetectorInfo < 3) {
    o.detectorName = 'foo';
  }
  buildCounterPredefinedDetectorInfo--;
  return o;
}

void checkPredefinedDetectorInfo(api.PredefinedDetectorInfo o) {
  buildCounterPredefinedDetectorInfo++;
  if (buildCounterPredefinedDetectorInfo < 3) {
    unittest.expect(
      o.detectorName!,
      unittest.equals('foo'),
    );
  }
  buildCounterPredefinedDetectorInfo--;
}

core.int buildCounterReportingRule = 0;
api.ReportingRule buildReportingRule() {
  final o = api.ReportingRule();
  buildCounterReportingRule++;
  if (buildCounterReportingRule < 3) {
    o.alertDetails = 'foo';
    o.name = 'foo';
    o.query = 'foo';
  }
  buildCounterReportingRule--;
  return o;
}

void checkReportingRule(api.ReportingRule o) {
  buildCounterReportingRule++;
  if (buildCounterReportingRule < 3) {
    unittest.expect(
      o.alertDetails!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportingRule--;
}

core.List<core.String> buildUnnamed8932() => [
      'foo',
      'foo',
    ];

void checkUnnamed8932(core.List<core.String> o) {
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

core.int buildCounterRequestInfo = 0;
api.RequestInfo buildRequestInfo() {
  final o = api.RequestInfo();
  buildCounterRequestInfo++;
  if (buildCounterRequestInfo < 3) {
    o.appDeveloperEmail = buildUnnamed8932();
    o.appKey = 'foo';
    o.numberOfRequests = 'foo';
  }
  buildCounterRequestInfo--;
  return o;
}

void checkRequestInfo(api.RequestInfo o) {
  buildCounterRequestInfo++;
  if (buildCounterRequestInfo < 3) {
    checkUnnamed8932(o.appDeveloperEmail!);
    unittest.expect(
      o.appKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numberOfRequests!,
      unittest.equals('foo'),
    );
  }
  buildCounterRequestInfo--;
}

core.int buildCounterResourceInfo = 0;
api.ResourceInfo buildResourceInfo() {
  final o = api.ResourceInfo();
  buildCounterResourceInfo++;
  if (buildCounterResourceInfo < 3) {
    o.documentId = 'foo';
    o.resourceTitle = 'foo';
  }
  buildCounterResourceInfo--;
  return o;
}

void checkResourceInfo(api.ResourceInfo o) {
  buildCounterResourceInfo++;
  if (buildCounterResourceInfo < 3) {
    unittest.expect(
      o.documentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceTitle!,
      unittest.equals('foo'),
    );
  }
  buildCounterResourceInfo--;
}

core.int buildCounterRuleInfo = 0;
api.RuleInfo buildRuleInfo() {
  final o = api.RuleInfo();
  buildCounterRuleInfo++;
  if (buildCounterRuleInfo < 3) {
    o.displayName = 'foo';
    o.resourceName = 'foo';
  }
  buildCounterRuleInfo--;
  return o;
}

void checkRuleInfo(api.RuleInfo o) {
  buildCounterRuleInfo++;
  if (buildCounterRuleInfo < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterRuleInfo--;
}

core.List<api.MatchInfo> buildUnnamed8933() => [
      buildMatchInfo(),
      buildMatchInfo(),
    ];

void checkUnnamed8933(core.List<api.MatchInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatchInfo(o[0]);
  checkMatchInfo(o[1]);
}

core.List<core.String> buildUnnamed8934() => [
      'foo',
      'foo',
    ];

void checkUnnamed8934(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8935() => [
      'foo',
      'foo',
    ];

void checkUnnamed8935(core.List<core.String> o) {
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

core.List<api.ActionInfo> buildUnnamed8936() => [
      buildActionInfo(),
      buildActionInfo(),
    ];

void checkUnnamed8936(core.List<api.ActionInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActionInfo(o[0]);
  checkActionInfo(o[1]);
}

core.List<core.String> buildUnnamed8937() => [
      'foo',
      'foo',
    ];

void checkUnnamed8937(core.List<core.String> o) {
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

core.int buildCounterRuleViolationInfo = 0;
api.RuleViolationInfo buildRuleViolationInfo() {
  final o = api.RuleViolationInfo();
  buildCounterRuleViolationInfo++;
  if (buildCounterRuleViolationInfo < 3) {
    o.dataSource = 'foo';
    o.matchInfo = buildUnnamed8933();
    o.recipients = buildUnnamed8934();
    o.resourceInfo = buildResourceInfo();
    o.ruleInfo = buildRuleInfo();
    o.suppressedActionTypes = buildUnnamed8935();
    o.trigger = 'foo';
    o.triggeredActionInfo = buildUnnamed8936();
    o.triggeredActionTypes = buildUnnamed8937();
    o.triggeringUserEmail = 'foo';
  }
  buildCounterRuleViolationInfo--;
  return o;
}

void checkRuleViolationInfo(api.RuleViolationInfo o) {
  buildCounterRuleViolationInfo++;
  if (buildCounterRuleViolationInfo < 3) {
    unittest.expect(
      o.dataSource!,
      unittest.equals('foo'),
    );
    checkUnnamed8933(o.matchInfo!);
    checkUnnamed8934(o.recipients!);
    checkResourceInfo(o.resourceInfo!);
    checkRuleInfo(o.ruleInfo!);
    checkUnnamed8935(o.suppressedActionTypes!);
    unittest.expect(
      o.trigger!,
      unittest.equals('foo'),
    );
    checkUnnamed8936(o.triggeredActionInfo!);
    checkUnnamed8937(o.triggeredActionTypes!);
    unittest.expect(
      o.triggeringUserEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterRuleViolationInfo--;
}

core.List<api.Notification> buildUnnamed8938() => [
      buildNotification(),
      buildNotification(),
    ];

void checkUnnamed8938(core.List<api.Notification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotification(o[0]);
  checkNotification(o[1]);
}

core.int buildCounterSettings = 0;
api.Settings buildSettings() {
  final o = api.Settings();
  buildCounterSettings++;
  if (buildCounterSettings < 3) {
    o.notifications = buildUnnamed8938();
  }
  buildCounterSettings--;
  return o;
}

void checkSettings(api.Settings o) {
  buildCounterSettings++;
  if (buildCounterSettings < 3) {
    checkUnnamed8938(o.notifications!);
  }
  buildCounterSettings--;
}

core.int buildCounterStateSponsoredAttack = 0;
api.StateSponsoredAttack buildStateSponsoredAttack() {
  final o = api.StateSponsoredAttack();
  buildCounterStateSponsoredAttack++;
  if (buildCounterStateSponsoredAttack < 3) {
    o.email = 'foo';
  }
  buildCounterStateSponsoredAttack--;
  return o;
}

void checkStateSponsoredAttack(api.StateSponsoredAttack o) {
  buildCounterStateSponsoredAttack++;
  if (buildCounterStateSponsoredAttack < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
  }
  buildCounterStateSponsoredAttack--;
}

core.Map<core.String, core.Object> buildUnnamed8939() => {
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

void checkUnnamed8939(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed8940() => [
      buildUnnamed8939(),
      buildUnnamed8939(),
    ];

void checkUnnamed8940(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed8939(o[0]);
  checkUnnamed8939(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed8940();
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
    checkUnnamed8940(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<api.SuspiciousActivitySecurityDetail> buildUnnamed8941() => [
      buildSuspiciousActivitySecurityDetail(),
      buildSuspiciousActivitySecurityDetail(),
    ];

void checkUnnamed8941(core.List<api.SuspiciousActivitySecurityDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuspiciousActivitySecurityDetail(o[0]);
  checkSuspiciousActivitySecurityDetail(o[1]);
}

core.int buildCounterSuspiciousActivity = 0;
api.SuspiciousActivity buildSuspiciousActivity() {
  final o = api.SuspiciousActivity();
  buildCounterSuspiciousActivity++;
  if (buildCounterSuspiciousActivity < 3) {
    o.email = 'foo';
    o.events = buildUnnamed8941();
  }
  buildCounterSuspiciousActivity--;
  return o;
}

void checkSuspiciousActivity(api.SuspiciousActivity o) {
  buildCounterSuspiciousActivity++;
  if (buildCounterSuspiciousActivity < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    checkUnnamed8941(o.events!);
  }
  buildCounterSuspiciousActivity--;
}

core.int buildCounterSuspiciousActivitySecurityDetail = 0;
api.SuspiciousActivitySecurityDetail buildSuspiciousActivitySecurityDetail() {
  final o = api.SuspiciousActivitySecurityDetail();
  buildCounterSuspiciousActivitySecurityDetail++;
  if (buildCounterSuspiciousActivitySecurityDetail < 3) {
    o.deviceId = 'foo';
    o.deviceModel = 'foo';
    o.deviceProperty = 'foo';
    o.deviceType = 'foo';
    o.iosVendorId = 'foo';
    o.newValue = 'foo';
    o.oldValue = 'foo';
    o.resourceId = 'foo';
    o.serialNumber = 'foo';
  }
  buildCounterSuspiciousActivitySecurityDetail--;
  return o;
}

void checkSuspiciousActivitySecurityDetail(
    api.SuspiciousActivitySecurityDetail o) {
  buildCounterSuspiciousActivitySecurityDetail++;
  if (buildCounterSuspiciousActivitySecurityDetail < 3) {
    unittest.expect(
      o.deviceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceProperty!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iosVendorId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oldValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serialNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterSuspiciousActivitySecurityDetail--;
}

core.int buildCounterUndeleteAlertRequest = 0;
api.UndeleteAlertRequest buildUndeleteAlertRequest() {
  final o = api.UndeleteAlertRequest();
  buildCounterUndeleteAlertRequest++;
  if (buildCounterUndeleteAlertRequest < 3) {
    o.customerId = 'foo';
  }
  buildCounterUndeleteAlertRequest--;
  return o;
}

void checkUndeleteAlertRequest(api.UndeleteAlertRequest o) {
  buildCounterUndeleteAlertRequest++;
  if (buildCounterUndeleteAlertRequest < 3) {
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUndeleteAlertRequest--;
}

core.int buildCounterUser = 0;
api.User buildUser() {
  final o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.displayName = 'foo';
    o.emailAddress = 'foo';
  }
  buildCounterUser--;
  return o;
}

void checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
  }
  buildCounterUser--;
}

core.int buildCounterUserChanges = 0;
api.UserChanges buildUserChanges() {
  final o = api.UserChanges();
  buildCounterUserChanges++;
  if (buildCounterUserChanges < 3) {
    o.name = 'foo';
  }
  buildCounterUserChanges--;
  return o;
}

void checkUserChanges(api.UserChanges o) {
  buildCounterUserChanges++;
  if (buildCounterUserChanges < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserChanges--;
}

core.int buildCounterUserDefinedDetectorInfo = 0;
api.UserDefinedDetectorInfo buildUserDefinedDetectorInfo() {
  final o = api.UserDefinedDetectorInfo();
  buildCounterUserDefinedDetectorInfo++;
  if (buildCounterUserDefinedDetectorInfo < 3) {
    o.displayName = 'foo';
    o.resourceName = 'foo';
  }
  buildCounterUserDefinedDetectorInfo--;
  return o;
}

void checkUserDefinedDetectorInfo(api.UserDefinedDetectorInfo o) {
  buildCounterUserDefinedDetectorInfo++;
  if (buildCounterUserDefinedDetectorInfo < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserDefinedDetectorInfo--;
}

void main() {
  unittest.group('obj-schema-AccountSuspensionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountSuspensionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountSuspensionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountSuspensionDetails(od);
    });
  });

  unittest.group('obj-schema-AccountSuspensionWarning', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountSuspensionWarning();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountSuspensionWarning.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountSuspensionWarning(od);
    });
  });

  unittest.group('obj-schema-AccountWarning', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountWarning();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountWarning.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountWarning(od);
    });
  });

  unittest.group('obj-schema-ActionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ActionInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkActionInfo(od);
    });
  });

  unittest.group('obj-schema-ActivityRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivityRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivityRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivityRule(od);
    });
  });

  unittest.group('obj-schema-Alert', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAlert();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Alert.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAlert(od);
    });
  });

  unittest.group('obj-schema-AlertFeedback', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAlertFeedback();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AlertFeedback.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAlertFeedback(od);
    });
  });

  unittest.group('obj-schema-AlertMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAlertMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AlertMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAlertMetadata(od);
    });
  });

  unittest.group('obj-schema-AppMakerSqlSetupNotification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppMakerSqlSetupNotification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppMakerSqlSetupNotification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppMakerSqlSetupNotification(od);
    });
  });

  unittest.group('obj-schema-AppSettingsChanged', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppSettingsChanged();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppSettingsChanged.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppSettingsChanged(od);
    });
  });

  unittest.group('obj-schema-AppsOutage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppsOutage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AppsOutage.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAppsOutage(od);
    });
  });

  unittest.group('obj-schema-Attachment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttachment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Attachment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAttachment(od);
    });
  });

  unittest.group('obj-schema-BadWhitelist', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBadWhitelist();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BadWhitelist.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBadWhitelist(od);
    });
  });

  unittest.group('obj-schema-BatchDeleteAlertsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchDeleteAlertsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchDeleteAlertsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchDeleteAlertsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchDeleteAlertsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchDeleteAlertsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchDeleteAlertsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchDeleteAlertsResponse(od);
    });
  });

  unittest.group('obj-schema-BatchUndeleteAlertsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUndeleteAlertsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUndeleteAlertsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUndeleteAlertsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUndeleteAlertsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUndeleteAlertsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUndeleteAlertsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUndeleteAlertsResponse(od);
    });
  });

  unittest.group('obj-schema-CloudPubsubTopic', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudPubsubTopic();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudPubsubTopic.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudPubsubTopic(od);
    });
  });

  unittest.group('obj-schema-Csv', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCsv();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Csv.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCsv(od);
    });
  });

  unittest.group('obj-schema-CsvRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCsvRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CsvRow.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCsvRow(od);
    });
  });

  unittest.group('obj-schema-DeviceCompromised', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceCompromised();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceCompromised.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceCompromised(od);
    });
  });

  unittest.group('obj-schema-DeviceCompromisedSecurityDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceCompromisedSecurityDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceCompromisedSecurityDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceCompromisedSecurityDetail(od);
    });
  });

  unittest.group('obj-schema-DlpRuleViolation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDlpRuleViolation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DlpRuleViolation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDlpRuleViolation(od);
    });
  });

  unittest.group('obj-schema-DomainId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomainId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DomainId.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDomainId(od);
    });
  });

  unittest.group('obj-schema-DomainWideTakeoutInitiated', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomainWideTakeoutInitiated();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DomainWideTakeoutInitiated.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDomainWideTakeoutInitiated(od);
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

  unittest.group('obj-schema-GmailMessageInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGmailMessageInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GmailMessageInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGmailMessageInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleOperations', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleOperations();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleOperations.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleOperations(od);
    });
  });

  unittest.group('obj-schema-ListAlertFeedbackResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAlertFeedbackResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAlertFeedbackResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAlertFeedbackResponse(od);
    });
  });

  unittest.group('obj-schema-ListAlertsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAlertsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAlertsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAlertsResponse(od);
    });
  });

  unittest.group('obj-schema-LoginDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoginDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoginDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLoginDetails(od);
    });
  });

  unittest.group('obj-schema-MailPhishing', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMailPhishing();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MailPhishing.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMailPhishing(od);
    });
  });

  unittest.group('obj-schema-MaliciousEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaliciousEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaliciousEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMaliciousEntity(od);
    });
  });

  unittest.group('obj-schema-MatchInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMatchInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MatchInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMatchInfo(od);
    });
  });

  unittest.group('obj-schema-Notification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Notification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotification(od);
    });
  });

  unittest.group('obj-schema-PhishingSpike', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhishingSpike();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PhishingSpike.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPhishingSpike(od);
    });
  });

  unittest.group('obj-schema-PredefinedDetectorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPredefinedDetectorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PredefinedDetectorInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPredefinedDetectorInfo(od);
    });
  });

  unittest.group('obj-schema-ReportingRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportingRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportingRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportingRule(od);
    });
  });

  unittest.group('obj-schema-RequestInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequestInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RequestInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRequestInfo(od);
    });
  });

  unittest.group('obj-schema-ResourceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceInfo(od);
    });
  });

  unittest.group('obj-schema-RuleInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuleInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RuleInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRuleInfo(od);
    });
  });

  unittest.group('obj-schema-RuleViolationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuleViolationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuleViolationInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRuleViolationInfo(od);
    });
  });

  unittest.group('obj-schema-Settings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Settings.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSettings(od);
    });
  });

  unittest.group('obj-schema-StateSponsoredAttack', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStateSponsoredAttack();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StateSponsoredAttack.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStateSponsoredAttack(od);
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

  unittest.group('obj-schema-SuspiciousActivity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuspiciousActivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuspiciousActivity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuspiciousActivity(od);
    });
  });

  unittest.group('obj-schema-SuspiciousActivitySecurityDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuspiciousActivitySecurityDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuspiciousActivitySecurityDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuspiciousActivitySecurityDetail(od);
    });
  });

  unittest.group('obj-schema-UndeleteAlertRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndeleteAlertRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndeleteAlertRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUndeleteAlertRequest(od);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.User.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUser(od);
    });
  });

  unittest.group('obj-schema-UserChanges', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserChanges();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserChanges.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserChanges(od);
    });
  });

  unittest.group('obj-schema-UserDefinedDetectorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserDefinedDetectorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserDefinedDetectorInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserDefinedDetectorInfo(od);
    });
  });

  unittest.group('resource-AlertsResource', () {
    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.AlertCenterApi(mock).alerts;
      final arg_request = buildBatchDeleteAlertsRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchDeleteAlertsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchDeleteAlertsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('v1beta1/alerts:batchDelete'),
        );
        pathOffset += 26;

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
        final resp = convert.json.encode(buildBatchDeleteAlertsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchDelete(arg_request, $fields: arg_$fields);
      checkBatchDeleteAlertsResponse(response as api.BatchDeleteAlertsResponse);
    });

    unittest.test('method--batchUndelete', () async {
      final mock = HttpServerMock();
      final res = api.AlertCenterApi(mock).alerts;
      final arg_request = buildBatchUndeleteAlertsRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchUndeleteAlertsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchUndeleteAlertsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('v1beta1/alerts:batchUndelete'),
        );
        pathOffset += 28;

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
        final resp = convert.json.encode(buildBatchUndeleteAlertsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUndelete(arg_request, $fields: arg_$fields);
      checkBatchUndeleteAlertsResponse(
          response as api.BatchUndeleteAlertsResponse);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AlertCenterApi(mock).alerts;
      final arg_alertId = 'foo';
      final arg_customerId = 'foo';
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
          unittest.equals('v1beta1/alerts/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_alertId'),
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
          queryMap['customerId']!.first,
          unittest.equals(arg_customerId),
        );
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
      final response = await res.delete(arg_alertId,
          customerId: arg_customerId, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AlertCenterApi(mock).alerts;
      final arg_alertId = 'foo';
      final arg_customerId = 'foo';
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
          unittest.equals('v1beta1/alerts/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_alertId'),
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
          queryMap['customerId']!.first,
          unittest.equals(arg_customerId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAlert());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_alertId,
          customerId: arg_customerId, $fields: arg_$fields);
      checkAlert(response as api.Alert);
    });

    unittest.test('method--getMetadata', () async {
      final mock = HttpServerMock();
      final res = api.AlertCenterApi(mock).alerts;
      final arg_alertId = 'foo';
      final arg_customerId = 'foo';
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
          unittest.equals('v1beta1/alerts/'),
        );
        pathOffset += 15;
        index = path.indexOf('/metadata', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_alertId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/metadata'),
        );
        pathOffset += 9;

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
          queryMap['customerId']!.first,
          unittest.equals(arg_customerId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAlertMetadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getMetadata(arg_alertId,
          customerId: arg_customerId, $fields: arg_$fields);
      checkAlertMetadata(response as api.AlertMetadata);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AlertCenterApi(mock).alerts;
      final arg_customerId = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1beta1/alerts'),
        );
        pathOffset += 14;

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
          queryMap['customerId']!.first,
          unittest.equals(arg_customerId),
        );
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
        final resp = convert.json.encode(buildListAlertsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          customerId: arg_customerId,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAlertsResponse(response as api.ListAlertsResponse);
    });

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.AlertCenterApi(mock).alerts;
      final arg_request = buildUndeleteAlertRequest();
      final arg_alertId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UndeleteAlertRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUndeleteAlertRequest(obj);

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
          unittest.equals('v1beta1/alerts/'),
        );
        pathOffset += 15;
        index = path.indexOf(':undelete', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_alertId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals(':undelete'),
        );
        pathOffset += 9;

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
        final resp = convert.json.encode(buildAlert());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.undelete(arg_request, arg_alertId, $fields: arg_$fields);
      checkAlert(response as api.Alert);
    });
  });

  unittest.group('resource-AlertsFeedbackResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AlertCenterApi(mock).alerts.feedback;
      final arg_request = buildAlertFeedback();
      final arg_alertId = 'foo';
      final arg_customerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AlertFeedback.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAlertFeedback(obj);

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
          unittest.equals('v1beta1/alerts/'),
        );
        pathOffset += 15;
        index = path.indexOf('/feedback', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_alertId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/feedback'),
        );
        pathOffset += 9;

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
          queryMap['customerId']!.first,
          unittest.equals(arg_customerId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAlertFeedback());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_alertId,
          customerId: arg_customerId, $fields: arg_$fields);
      checkAlertFeedback(response as api.AlertFeedback);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AlertCenterApi(mock).alerts.feedback;
      final arg_alertId = 'foo';
      final arg_customerId = 'foo';
      final arg_filter = 'foo';
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
          unittest.equals('v1beta1/alerts/'),
        );
        pathOffset += 15;
        index = path.indexOf('/feedback', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_alertId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/feedback'),
        );
        pathOffset += 9;

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
          queryMap['customerId']!.first,
          unittest.equals(arg_customerId),
        );
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListAlertFeedbackResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_alertId,
          customerId: arg_customerId, filter: arg_filter, $fields: arg_$fields);
      checkListAlertFeedbackResponse(response as api.ListAlertFeedbackResponse);
    });
  });

  unittest.group('resource-V1beta1Resource', () {
    unittest.test('method--getSettings', () async {
      final mock = HttpServerMock();
      final res = api.AlertCenterApi(mock).v1beta1;
      final arg_customerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1beta1/settings'),
        );
        pathOffset += 16;

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
          queryMap['customerId']!.first,
          unittest.equals(arg_customerId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getSettings(
          customerId: arg_customerId, $fields: arg_$fields);
      checkSettings(response as api.Settings);
    });

    unittest.test('method--updateSettings', () async {
      final mock = HttpServerMock();
      final res = api.AlertCenterApi(mock).v1beta1;
      final arg_request = buildSettings();
      final arg_customerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Settings.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSettings(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1beta1/settings'),
        );
        pathOffset += 16;

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
          queryMap['customerId']!.first,
          unittest.equals(arg_customerId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateSettings(arg_request,
          customerId: arg_customerId, $fields: arg_$fields);
      checkSettings(response as api.Settings);
    });
  });
}
