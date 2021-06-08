// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
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

core.int buildCounterAccountWarning = 0;
api.AccountWarning buildAccountWarning() {
  var o = api.AccountWarning();
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
    checkLoginDetails(o.loginDetails! as api.LoginDetails);
  }
  buildCounterAccountWarning--;
}

core.int buildCounterActionInfo = 0;
api.ActionInfo buildActionInfo() {
  var o = api.ActionInfo();
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

core.List<core.String> buildUnnamed8708() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8708(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8709() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8709(core.List<core.String> o) {
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
  var o = api.ActivityRule();
  buildCounterActivityRule++;
  if (buildCounterActivityRule < 3) {
    o.actionNames = buildUnnamed8708();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.query = 'foo';
    o.supersededAlerts = buildUnnamed8709();
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
    checkUnnamed8708(o.actionNames!);
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
    checkUnnamed8709(o.supersededAlerts!);
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

core.Map<core.String, core.Object> buildUnnamed8710() {
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

void checkUnnamed8710(core.Map<core.String, core.Object> o) {
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
  var o = api.Alert();
  buildCounterAlert++;
  if (buildCounterAlert < 3) {
    o.alertId = 'foo';
    o.createTime = 'foo';
    o.customerId = 'foo';
    o.data = buildUnnamed8710();
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
    checkUnnamed8710(o.data!);
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkAlertMetadata(o.metadata! as api.AlertMetadata);
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
  var o = api.AlertFeedback();
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
  var o = api.AlertMetadata();
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

core.List<api.RequestInfo> buildUnnamed8711() {
  var o = <api.RequestInfo>[];
  o.add(buildRequestInfo());
  o.add(buildRequestInfo());
  return o;
}

void checkUnnamed8711(core.List<api.RequestInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRequestInfo(o[0] as api.RequestInfo);
  checkRequestInfo(o[1] as api.RequestInfo);
}

core.int buildCounterAppMakerSqlSetupNotification = 0;
api.AppMakerSqlSetupNotification buildAppMakerSqlSetupNotification() {
  var o = api.AppMakerSqlSetupNotification();
  buildCounterAppMakerSqlSetupNotification++;
  if (buildCounterAppMakerSqlSetupNotification < 3) {
    o.requestInfo = buildUnnamed8711();
  }
  buildCounterAppMakerSqlSetupNotification--;
  return o;
}

void checkAppMakerSqlSetupNotification(api.AppMakerSqlSetupNotification o) {
  buildCounterAppMakerSqlSetupNotification++;
  if (buildCounterAppMakerSqlSetupNotification < 3) {
    checkUnnamed8711(o.requestInfo!);
  }
  buildCounterAppMakerSqlSetupNotification--;
}

core.int buildCounterAppSettingsChanged = 0;
api.AppSettingsChanged buildAppSettingsChanged() {
  var o = api.AppSettingsChanged();
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

core.int buildCounterAttachment = 0;
api.Attachment buildAttachment() {
  var o = api.Attachment();
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
    checkCsv(o.csv! as api.Csv);
  }
  buildCounterAttachment--;
}

core.List<api.GmailMessageInfo> buildUnnamed8712() {
  var o = <api.GmailMessageInfo>[];
  o.add(buildGmailMessageInfo());
  o.add(buildGmailMessageInfo());
  return o;
}

void checkUnnamed8712(core.List<api.GmailMessageInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGmailMessageInfo(o[0] as api.GmailMessageInfo);
  checkGmailMessageInfo(o[1] as api.GmailMessageInfo);
}

core.int buildCounterBadWhitelist = 0;
api.BadWhitelist buildBadWhitelist() {
  var o = api.BadWhitelist();
  buildCounterBadWhitelist++;
  if (buildCounterBadWhitelist < 3) {
    o.domainId = buildDomainId();
    o.maliciousEntity = buildMaliciousEntity();
    o.messages = buildUnnamed8712();
    o.sourceIp = 'foo';
  }
  buildCounterBadWhitelist--;
  return o;
}

void checkBadWhitelist(api.BadWhitelist o) {
  buildCounterBadWhitelist++;
  if (buildCounterBadWhitelist < 3) {
    checkDomainId(o.domainId! as api.DomainId);
    checkMaliciousEntity(o.maliciousEntity! as api.MaliciousEntity);
    checkUnnamed8712(o.messages!);
    unittest.expect(
      o.sourceIp!,
      unittest.equals('foo'),
    );
  }
  buildCounterBadWhitelist--;
}

core.List<core.String> buildUnnamed8713() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8713(core.List<core.String> o) {
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
  var o = api.BatchDeleteAlertsRequest();
  buildCounterBatchDeleteAlertsRequest++;
  if (buildCounterBatchDeleteAlertsRequest < 3) {
    o.alertId = buildUnnamed8713();
    o.customerId = 'foo';
  }
  buildCounterBatchDeleteAlertsRequest--;
  return o;
}

void checkBatchDeleteAlertsRequest(api.BatchDeleteAlertsRequest o) {
  buildCounterBatchDeleteAlertsRequest++;
  if (buildCounterBatchDeleteAlertsRequest < 3) {
    checkUnnamed8713(o.alertId!);
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterBatchDeleteAlertsRequest--;
}

core.Map<core.String, api.Status> buildUnnamed8714() {
  var o = <core.String, api.Status>{};
  o['x'] = buildStatus();
  o['y'] = buildStatus();
  return o;
}

void checkUnnamed8714(core.Map<core.String, api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o['x']! as api.Status);
  checkStatus(o['y']! as api.Status);
}

core.List<core.String> buildUnnamed8715() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8715(core.List<core.String> o) {
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
  var o = api.BatchDeleteAlertsResponse();
  buildCounterBatchDeleteAlertsResponse++;
  if (buildCounterBatchDeleteAlertsResponse < 3) {
    o.failedAlertStatus = buildUnnamed8714();
    o.successAlertIds = buildUnnamed8715();
  }
  buildCounterBatchDeleteAlertsResponse--;
  return o;
}

void checkBatchDeleteAlertsResponse(api.BatchDeleteAlertsResponse o) {
  buildCounterBatchDeleteAlertsResponse++;
  if (buildCounterBatchDeleteAlertsResponse < 3) {
    checkUnnamed8714(o.failedAlertStatus!);
    checkUnnamed8715(o.successAlertIds!);
  }
  buildCounterBatchDeleteAlertsResponse--;
}

core.List<core.String> buildUnnamed8716() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8716(core.List<core.String> o) {
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
  var o = api.BatchUndeleteAlertsRequest();
  buildCounterBatchUndeleteAlertsRequest++;
  if (buildCounterBatchUndeleteAlertsRequest < 3) {
    o.alertId = buildUnnamed8716();
    o.customerId = 'foo';
  }
  buildCounterBatchUndeleteAlertsRequest--;
  return o;
}

void checkBatchUndeleteAlertsRequest(api.BatchUndeleteAlertsRequest o) {
  buildCounterBatchUndeleteAlertsRequest++;
  if (buildCounterBatchUndeleteAlertsRequest < 3) {
    checkUnnamed8716(o.alertId!);
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterBatchUndeleteAlertsRequest--;
}

core.Map<core.String, api.Status> buildUnnamed8717() {
  var o = <core.String, api.Status>{};
  o['x'] = buildStatus();
  o['y'] = buildStatus();
  return o;
}

void checkUnnamed8717(core.Map<core.String, api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o['x']! as api.Status);
  checkStatus(o['y']! as api.Status);
}

core.List<core.String> buildUnnamed8718() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8718(core.List<core.String> o) {
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
  var o = api.BatchUndeleteAlertsResponse();
  buildCounterBatchUndeleteAlertsResponse++;
  if (buildCounterBatchUndeleteAlertsResponse < 3) {
    o.failedAlertStatus = buildUnnamed8717();
    o.successAlertIds = buildUnnamed8718();
  }
  buildCounterBatchUndeleteAlertsResponse--;
  return o;
}

void checkBatchUndeleteAlertsResponse(api.BatchUndeleteAlertsResponse o) {
  buildCounterBatchUndeleteAlertsResponse++;
  if (buildCounterBatchUndeleteAlertsResponse < 3) {
    checkUnnamed8717(o.failedAlertStatus!);
    checkUnnamed8718(o.successAlertIds!);
  }
  buildCounterBatchUndeleteAlertsResponse--;
}

core.int buildCounterCloudPubsubTopic = 0;
api.CloudPubsubTopic buildCloudPubsubTopic() {
  var o = api.CloudPubsubTopic();
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

core.List<api.CsvRow> buildUnnamed8719() {
  var o = <api.CsvRow>[];
  o.add(buildCsvRow());
  o.add(buildCsvRow());
  return o;
}

void checkUnnamed8719(core.List<api.CsvRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCsvRow(o[0] as api.CsvRow);
  checkCsvRow(o[1] as api.CsvRow);
}

core.List<core.String> buildUnnamed8720() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8720(core.List<core.String> o) {
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
  var o = api.Csv();
  buildCounterCsv++;
  if (buildCounterCsv < 3) {
    o.dataRows = buildUnnamed8719();
    o.headers = buildUnnamed8720();
  }
  buildCounterCsv--;
  return o;
}

void checkCsv(api.Csv o) {
  buildCounterCsv++;
  if (buildCounterCsv < 3) {
    checkUnnamed8719(o.dataRows!);
    checkUnnamed8720(o.headers!);
  }
  buildCounterCsv--;
}

core.List<core.String> buildUnnamed8721() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8721(core.List<core.String> o) {
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
  var o = api.CsvRow();
  buildCounterCsvRow++;
  if (buildCounterCsvRow < 3) {
    o.entries = buildUnnamed8721();
  }
  buildCounterCsvRow--;
  return o;
}

void checkCsvRow(api.CsvRow o) {
  buildCounterCsvRow++;
  if (buildCounterCsvRow < 3) {
    checkUnnamed8721(o.entries!);
  }
  buildCounterCsvRow--;
}

core.List<api.DeviceCompromisedSecurityDetail> buildUnnamed8722() {
  var o = <api.DeviceCompromisedSecurityDetail>[];
  o.add(buildDeviceCompromisedSecurityDetail());
  o.add(buildDeviceCompromisedSecurityDetail());
  return o;
}

void checkUnnamed8722(core.List<api.DeviceCompromisedSecurityDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceCompromisedSecurityDetail(
      o[0] as api.DeviceCompromisedSecurityDetail);
  checkDeviceCompromisedSecurityDetail(
      o[1] as api.DeviceCompromisedSecurityDetail);
}

core.int buildCounterDeviceCompromised = 0;
api.DeviceCompromised buildDeviceCompromised() {
  var o = api.DeviceCompromised();
  buildCounterDeviceCompromised++;
  if (buildCounterDeviceCompromised < 3) {
    o.email = 'foo';
    o.events = buildUnnamed8722();
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
    checkUnnamed8722(o.events!);
  }
  buildCounterDeviceCompromised--;
}

core.int buildCounterDeviceCompromisedSecurityDetail = 0;
api.DeviceCompromisedSecurityDetail buildDeviceCompromisedSecurityDetail() {
  var o = api.DeviceCompromisedSecurityDetail();
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
  var o = api.DlpRuleViolation();
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
    checkRuleViolationInfo(o.ruleViolationInfo! as api.RuleViolationInfo);
  }
  buildCounterDlpRuleViolation--;
}

core.int buildCounterDomainId = 0;
api.DomainId buildDomainId() {
  var o = api.DomainId();
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
  var o = api.DomainWideTakeoutInitiated();
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

core.List<core.String> buildUnnamed8723() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8723(core.List<core.String> o) {
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
  var o = api.GmailMessageInfo();
  buildCounterGmailMessageInfo++;
  if (buildCounterGmailMessageInfo < 3) {
    o.attachmentsSha256Hash = buildUnnamed8723();
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
    checkUnnamed8723(o.attachmentsSha256Hash!);
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

core.List<core.String> buildUnnamed8724() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8724(core.List<core.String> o) {
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
  var o = api.GoogleOperations();
  buildCounterGoogleOperations++;
  if (buildCounterGoogleOperations < 3) {
    o.affectedUserEmails = buildUnnamed8724();
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
    checkUnnamed8724(o.affectedUserEmails!);
    checkAttachment(o.attachmentData! as api.Attachment);
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

core.List<api.AlertFeedback> buildUnnamed8725() {
  var o = <api.AlertFeedback>[];
  o.add(buildAlertFeedback());
  o.add(buildAlertFeedback());
  return o;
}

void checkUnnamed8725(core.List<api.AlertFeedback> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAlertFeedback(o[0] as api.AlertFeedback);
  checkAlertFeedback(o[1] as api.AlertFeedback);
}

core.int buildCounterListAlertFeedbackResponse = 0;
api.ListAlertFeedbackResponse buildListAlertFeedbackResponse() {
  var o = api.ListAlertFeedbackResponse();
  buildCounterListAlertFeedbackResponse++;
  if (buildCounterListAlertFeedbackResponse < 3) {
    o.feedback = buildUnnamed8725();
  }
  buildCounterListAlertFeedbackResponse--;
  return o;
}

void checkListAlertFeedbackResponse(api.ListAlertFeedbackResponse o) {
  buildCounterListAlertFeedbackResponse++;
  if (buildCounterListAlertFeedbackResponse < 3) {
    checkUnnamed8725(o.feedback!);
  }
  buildCounterListAlertFeedbackResponse--;
}

core.List<api.Alert> buildUnnamed8726() {
  var o = <api.Alert>[];
  o.add(buildAlert());
  o.add(buildAlert());
  return o;
}

void checkUnnamed8726(core.List<api.Alert> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAlert(o[0] as api.Alert);
  checkAlert(o[1] as api.Alert);
}

core.int buildCounterListAlertsResponse = 0;
api.ListAlertsResponse buildListAlertsResponse() {
  var o = api.ListAlertsResponse();
  buildCounterListAlertsResponse++;
  if (buildCounterListAlertsResponse < 3) {
    o.alerts = buildUnnamed8726();
    o.nextPageToken = 'foo';
  }
  buildCounterListAlertsResponse--;
  return o;
}

void checkListAlertsResponse(api.ListAlertsResponse o) {
  buildCounterListAlertsResponse++;
  if (buildCounterListAlertsResponse < 3) {
    checkUnnamed8726(o.alerts!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAlertsResponse--;
}

core.int buildCounterLoginDetails = 0;
api.LoginDetails buildLoginDetails() {
  var o = api.LoginDetails();
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

core.List<api.GmailMessageInfo> buildUnnamed8727() {
  var o = <api.GmailMessageInfo>[];
  o.add(buildGmailMessageInfo());
  o.add(buildGmailMessageInfo());
  return o;
}

void checkUnnamed8727(core.List<api.GmailMessageInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGmailMessageInfo(o[0] as api.GmailMessageInfo);
  checkGmailMessageInfo(o[1] as api.GmailMessageInfo);
}

core.int buildCounterMailPhishing = 0;
api.MailPhishing buildMailPhishing() {
  var o = api.MailPhishing();
  buildCounterMailPhishing++;
  if (buildCounterMailPhishing < 3) {
    o.domainId = buildDomainId();
    o.isInternal = true;
    o.maliciousEntity = buildMaliciousEntity();
    o.messages = buildUnnamed8727();
    o.systemActionType = 'foo';
  }
  buildCounterMailPhishing--;
  return o;
}

void checkMailPhishing(api.MailPhishing o) {
  buildCounterMailPhishing++;
  if (buildCounterMailPhishing < 3) {
    checkDomainId(o.domainId! as api.DomainId);
    unittest.expect(o.isInternal!, unittest.isTrue);
    checkMaliciousEntity(o.maliciousEntity! as api.MaliciousEntity);
    checkUnnamed8727(o.messages!);
    unittest.expect(
      o.systemActionType!,
      unittest.equals('foo'),
    );
  }
  buildCounterMailPhishing--;
}

core.int buildCounterMaliciousEntity = 0;
api.MaliciousEntity buildMaliciousEntity() {
  var o = api.MaliciousEntity();
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
    checkUser(o.entity! as api.User);
    unittest.expect(
      o.fromHeader!,
      unittest.equals('foo'),
    );
  }
  buildCounterMaliciousEntity--;
}

core.int buildCounterMatchInfo = 0;
api.MatchInfo buildMatchInfo() {
  var o = api.MatchInfo();
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
    checkPredefinedDetectorInfo(
        o.predefinedDetector! as api.PredefinedDetectorInfo);
    checkUserDefinedDetectorInfo(
        o.userDefinedDetector! as api.UserDefinedDetectorInfo);
  }
  buildCounterMatchInfo--;
}

core.int buildCounterNotification = 0;
api.Notification buildNotification() {
  var o = api.Notification();
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
    checkCloudPubsubTopic(o.cloudPubsubTopic! as api.CloudPubsubTopic);
  }
  buildCounterNotification--;
}

core.List<api.GmailMessageInfo> buildUnnamed8728() {
  var o = <api.GmailMessageInfo>[];
  o.add(buildGmailMessageInfo());
  o.add(buildGmailMessageInfo());
  return o;
}

void checkUnnamed8728(core.List<api.GmailMessageInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGmailMessageInfo(o[0] as api.GmailMessageInfo);
  checkGmailMessageInfo(o[1] as api.GmailMessageInfo);
}

core.int buildCounterPhishingSpike = 0;
api.PhishingSpike buildPhishingSpike() {
  var o = api.PhishingSpike();
  buildCounterPhishingSpike++;
  if (buildCounterPhishingSpike < 3) {
    o.domainId = buildDomainId();
    o.isInternal = true;
    o.maliciousEntity = buildMaliciousEntity();
    o.messages = buildUnnamed8728();
  }
  buildCounterPhishingSpike--;
  return o;
}

void checkPhishingSpike(api.PhishingSpike o) {
  buildCounterPhishingSpike++;
  if (buildCounterPhishingSpike < 3) {
    checkDomainId(o.domainId! as api.DomainId);
    unittest.expect(o.isInternal!, unittest.isTrue);
    checkMaliciousEntity(o.maliciousEntity! as api.MaliciousEntity);
    checkUnnamed8728(o.messages!);
  }
  buildCounterPhishingSpike--;
}

core.int buildCounterPredefinedDetectorInfo = 0;
api.PredefinedDetectorInfo buildPredefinedDetectorInfo() {
  var o = api.PredefinedDetectorInfo();
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
  var o = api.ReportingRule();
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

core.List<core.String> buildUnnamed8729() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8729(core.List<core.String> o) {
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
  var o = api.RequestInfo();
  buildCounterRequestInfo++;
  if (buildCounterRequestInfo < 3) {
    o.appDeveloperEmail = buildUnnamed8729();
    o.appKey = 'foo';
    o.numberOfRequests = 'foo';
  }
  buildCounterRequestInfo--;
  return o;
}

void checkRequestInfo(api.RequestInfo o) {
  buildCounterRequestInfo++;
  if (buildCounterRequestInfo < 3) {
    checkUnnamed8729(o.appDeveloperEmail!);
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
  var o = api.ResourceInfo();
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
  var o = api.RuleInfo();
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

core.List<api.MatchInfo> buildUnnamed8730() {
  var o = <api.MatchInfo>[];
  o.add(buildMatchInfo());
  o.add(buildMatchInfo());
  return o;
}

void checkUnnamed8730(core.List<api.MatchInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatchInfo(o[0] as api.MatchInfo);
  checkMatchInfo(o[1] as api.MatchInfo);
}

core.List<core.String> buildUnnamed8731() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8731(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8732() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8732(core.List<core.String> o) {
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

core.List<api.ActionInfo> buildUnnamed8733() {
  var o = <api.ActionInfo>[];
  o.add(buildActionInfo());
  o.add(buildActionInfo());
  return o;
}

void checkUnnamed8733(core.List<api.ActionInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActionInfo(o[0] as api.ActionInfo);
  checkActionInfo(o[1] as api.ActionInfo);
}

core.List<core.String> buildUnnamed8734() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8734(core.List<core.String> o) {
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
  var o = api.RuleViolationInfo();
  buildCounterRuleViolationInfo++;
  if (buildCounterRuleViolationInfo < 3) {
    o.dataSource = 'foo';
    o.matchInfo = buildUnnamed8730();
    o.recipients = buildUnnamed8731();
    o.resourceInfo = buildResourceInfo();
    o.ruleInfo = buildRuleInfo();
    o.suppressedActionTypes = buildUnnamed8732();
    o.trigger = 'foo';
    o.triggeredActionInfo = buildUnnamed8733();
    o.triggeredActionTypes = buildUnnamed8734();
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
    checkUnnamed8730(o.matchInfo!);
    checkUnnamed8731(o.recipients!);
    checkResourceInfo(o.resourceInfo! as api.ResourceInfo);
    checkRuleInfo(o.ruleInfo! as api.RuleInfo);
    checkUnnamed8732(o.suppressedActionTypes!);
    unittest.expect(
      o.trigger!,
      unittest.equals('foo'),
    );
    checkUnnamed8733(o.triggeredActionInfo!);
    checkUnnamed8734(o.triggeredActionTypes!);
    unittest.expect(
      o.triggeringUserEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterRuleViolationInfo--;
}

core.List<api.Notification> buildUnnamed8735() {
  var o = <api.Notification>[];
  o.add(buildNotification());
  o.add(buildNotification());
  return o;
}

void checkUnnamed8735(core.List<api.Notification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotification(o[0] as api.Notification);
  checkNotification(o[1] as api.Notification);
}

core.int buildCounterSettings = 0;
api.Settings buildSettings() {
  var o = api.Settings();
  buildCounterSettings++;
  if (buildCounterSettings < 3) {
    o.notifications = buildUnnamed8735();
  }
  buildCounterSettings--;
  return o;
}

void checkSettings(api.Settings o) {
  buildCounterSettings++;
  if (buildCounterSettings < 3) {
    checkUnnamed8735(o.notifications!);
  }
  buildCounterSettings--;
}

core.int buildCounterStateSponsoredAttack = 0;
api.StateSponsoredAttack buildStateSponsoredAttack() {
  var o = api.StateSponsoredAttack();
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

core.Map<core.String, core.Object> buildUnnamed8736() {
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

void checkUnnamed8736(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed8737() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed8736());
  o.add(buildUnnamed8736());
  return o;
}

void checkUnnamed8737(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed8736(o[0]);
  checkUnnamed8736(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed8737();
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
    checkUnnamed8737(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<api.SuspiciousActivitySecurityDetail> buildUnnamed8738() {
  var o = <api.SuspiciousActivitySecurityDetail>[];
  o.add(buildSuspiciousActivitySecurityDetail());
  o.add(buildSuspiciousActivitySecurityDetail());
  return o;
}

void checkUnnamed8738(core.List<api.SuspiciousActivitySecurityDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuspiciousActivitySecurityDetail(
      o[0] as api.SuspiciousActivitySecurityDetail);
  checkSuspiciousActivitySecurityDetail(
      o[1] as api.SuspiciousActivitySecurityDetail);
}

core.int buildCounterSuspiciousActivity = 0;
api.SuspiciousActivity buildSuspiciousActivity() {
  var o = api.SuspiciousActivity();
  buildCounterSuspiciousActivity++;
  if (buildCounterSuspiciousActivity < 3) {
    o.email = 'foo';
    o.events = buildUnnamed8738();
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
    checkUnnamed8738(o.events!);
  }
  buildCounterSuspiciousActivity--;
}

core.int buildCounterSuspiciousActivitySecurityDetail = 0;
api.SuspiciousActivitySecurityDetail buildSuspiciousActivitySecurityDetail() {
  var o = api.SuspiciousActivitySecurityDetail();
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
  var o = api.UndeleteAlertRequest();
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
  var o = api.User();
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
  var o = api.UserChanges();
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
  var o = api.UserDefinedDetectorInfo();
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
  unittest.group('obj-schema-AccountWarning', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAccountWarning();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AccountWarning.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountWarning(od as api.AccountWarning);
    });
  });

  unittest.group('obj-schema-ActionInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildActionInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.ActionInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkActionInfo(od as api.ActionInfo);
    });
  });

  unittest.group('obj-schema-ActivityRule', () {
    unittest.test('to-json--from-json', () async {
      var o = buildActivityRule();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ActivityRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivityRule(od as api.ActivityRule);
    });
  });

  unittest.group('obj-schema-Alert', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAlert();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Alert.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAlert(od as api.Alert);
    });
  });

  unittest.group('obj-schema-AlertFeedback', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAlertFeedback();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AlertFeedback.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAlertFeedback(od as api.AlertFeedback);
    });
  });

  unittest.group('obj-schema-AlertMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAlertMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AlertMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAlertMetadata(od as api.AlertMetadata);
    });
  });

  unittest.group('obj-schema-AppMakerSqlSetupNotification', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAppMakerSqlSetupNotification();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AppMakerSqlSetupNotification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppMakerSqlSetupNotification(od as api.AppMakerSqlSetupNotification);
    });
  });

  unittest.group('obj-schema-AppSettingsChanged', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAppSettingsChanged();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AppSettingsChanged.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppSettingsChanged(od as api.AppSettingsChanged);
    });
  });

  unittest.group('obj-schema-Attachment', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAttachment();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Attachment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAttachment(od as api.Attachment);
    });
  });

  unittest.group('obj-schema-BadWhitelist', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBadWhitelist();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BadWhitelist.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBadWhitelist(od as api.BadWhitelist);
    });
  });

  unittest.group('obj-schema-BatchDeleteAlertsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchDeleteAlertsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchDeleteAlertsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchDeleteAlertsRequest(od as api.BatchDeleteAlertsRequest);
    });
  });

  unittest.group('obj-schema-BatchDeleteAlertsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchDeleteAlertsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchDeleteAlertsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchDeleteAlertsResponse(od as api.BatchDeleteAlertsResponse);
    });
  });

  unittest.group('obj-schema-BatchUndeleteAlertsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchUndeleteAlertsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchUndeleteAlertsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUndeleteAlertsRequest(od as api.BatchUndeleteAlertsRequest);
    });
  });

  unittest.group('obj-schema-BatchUndeleteAlertsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBatchUndeleteAlertsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BatchUndeleteAlertsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUndeleteAlertsResponse(od as api.BatchUndeleteAlertsResponse);
    });
  });

  unittest.group('obj-schema-CloudPubsubTopic', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCloudPubsubTopic();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CloudPubsubTopic.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudPubsubTopic(od as api.CloudPubsubTopic);
    });
  });

  unittest.group('obj-schema-Csv', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCsv();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Csv.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCsv(od as api.Csv);
    });
  });

  unittest.group('obj-schema-CsvRow', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCsvRow();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.CsvRow.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCsvRow(od as api.CsvRow);
    });
  });

  unittest.group('obj-schema-DeviceCompromised', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDeviceCompromised();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DeviceCompromised.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceCompromised(od as api.DeviceCompromised);
    });
  });

  unittest.group('obj-schema-DeviceCompromisedSecurityDetail', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDeviceCompromisedSecurityDetail();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DeviceCompromisedSecurityDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceCompromisedSecurityDetail(
          od as api.DeviceCompromisedSecurityDetail);
    });
  });

  unittest.group('obj-schema-DlpRuleViolation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDlpRuleViolation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DlpRuleViolation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDlpRuleViolation(od as api.DlpRuleViolation);
    });
  });

  unittest.group('obj-schema-DomainId', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDomainId();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.DomainId.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDomainId(od as api.DomainId);
    });
  });

  unittest.group('obj-schema-DomainWideTakeoutInitiated', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDomainWideTakeoutInitiated();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DomainWideTakeoutInitiated.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDomainWideTakeoutInitiated(od as api.DomainWideTakeoutInitiated);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEmpty();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-GmailMessageInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGmailMessageInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GmailMessageInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGmailMessageInfo(od as api.GmailMessageInfo);
    });
  });

  unittest.group('obj-schema-GoogleOperations', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleOperations();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleOperations.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleOperations(od as api.GoogleOperations);
    });
  });

  unittest.group('obj-schema-ListAlertFeedbackResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListAlertFeedbackResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListAlertFeedbackResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAlertFeedbackResponse(od as api.ListAlertFeedbackResponse);
    });
  });

  unittest.group('obj-schema-ListAlertsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListAlertsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListAlertsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAlertsResponse(od as api.ListAlertsResponse);
    });
  });

  unittest.group('obj-schema-LoginDetails', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLoginDetails();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.LoginDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLoginDetails(od as api.LoginDetails);
    });
  });

  unittest.group('obj-schema-MailPhishing', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMailPhishing();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.MailPhishing.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMailPhishing(od as api.MailPhishing);
    });
  });

  unittest.group('obj-schema-MaliciousEntity', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMaliciousEntity();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.MaliciousEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMaliciousEntity(od as api.MaliciousEntity);
    });
  });

  unittest.group('obj-schema-MatchInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMatchInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.MatchInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMatchInfo(od as api.MatchInfo);
    });
  });

  unittest.group('obj-schema-Notification', () {
    unittest.test('to-json--from-json', () async {
      var o = buildNotification();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Notification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotification(od as api.Notification);
    });
  });

  unittest.group('obj-schema-PhishingSpike', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPhishingSpike();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PhishingSpike.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPhishingSpike(od as api.PhishingSpike);
    });
  });

  unittest.group('obj-schema-PredefinedDetectorInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPredefinedDetectorInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PredefinedDetectorInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPredefinedDetectorInfo(od as api.PredefinedDetectorInfo);
    });
  });

  unittest.group('obj-schema-ReportingRule', () {
    unittest.test('to-json--from-json', () async {
      var o = buildReportingRule();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ReportingRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportingRule(od as api.ReportingRule);
    });
  });

  unittest.group('obj-schema-RequestInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRequestInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RequestInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRequestInfo(od as api.RequestInfo);
    });
  });

  unittest.group('obj-schema-ResourceInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildResourceInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ResourceInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceInfo(od as api.ResourceInfo);
    });
  });

  unittest.group('obj-schema-RuleInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRuleInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.RuleInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRuleInfo(od as api.RuleInfo);
    });
  });

  unittest.group('obj-schema-RuleViolationInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRuleViolationInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RuleViolationInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRuleViolationInfo(od as api.RuleViolationInfo);
    });
  });

  unittest.group('obj-schema-Settings', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSettings();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Settings.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSettings(od as api.Settings);
    });
  });

  unittest.group('obj-schema-StateSponsoredAttack', () {
    unittest.test('to-json--from-json', () async {
      var o = buildStateSponsoredAttack();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.StateSponsoredAttack.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStateSponsoredAttack(od as api.StateSponsoredAttack);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      var o = buildStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-SuspiciousActivity', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSuspiciousActivity();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SuspiciousActivity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuspiciousActivity(od as api.SuspiciousActivity);
    });
  });

  unittest.group('obj-schema-SuspiciousActivitySecurityDetail', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSuspiciousActivitySecurityDetail();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SuspiciousActivitySecurityDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuspiciousActivitySecurityDetail(
          od as api.SuspiciousActivitySecurityDetail);
    });
  });

  unittest.group('obj-schema-UndeleteAlertRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUndeleteAlertRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UndeleteAlertRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUndeleteAlertRequest(od as api.UndeleteAlertRequest);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUser();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.User.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUser(od as api.User);
    });
  });

  unittest.group('obj-schema-UserChanges', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUserChanges();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UserChanges.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserChanges(od as api.UserChanges);
    });
  });

  unittest.group('obj-schema-UserDefinedDetectorInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUserDefinedDetectorInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UserDefinedDetectorInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserDefinedDetectorInfo(od as api.UserDefinedDetectorInfo);
    });
  });

  unittest.group('resource-AlertsResource', () {
    unittest.test('method--batchDelete', () async {
      var mock = HttpServerMock();
      var res = api.AlertCenterApi(mock).alerts;
      var arg_request = buildBatchDeleteAlertsRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchDeleteAlertsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchDeleteAlertsRequest(obj as api.BatchDeleteAlertsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals("v1beta1/alerts:batchDelete"),
        );
        pathOffset += 26;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBatchDeleteAlertsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchDelete(arg_request, $fields: arg_$fields);
      checkBatchDeleteAlertsResponse(response as api.BatchDeleteAlertsResponse);
    });

    unittest.test('method--batchUndelete', () async {
      var mock = HttpServerMock();
      var res = api.AlertCenterApi(mock).alerts;
      var arg_request = buildBatchUndeleteAlertsRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchUndeleteAlertsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchUndeleteAlertsRequest(obj as api.BatchUndeleteAlertsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals("v1beta1/alerts:batchUndelete"),
        );
        pathOffset += 28;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBatchUndeleteAlertsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUndelete(arg_request, $fields: arg_$fields);
      checkBatchUndeleteAlertsResponse(
          response as api.BatchUndeleteAlertsResponse);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.AlertCenterApi(mock).alerts;
      var arg_alertId = 'foo';
      var arg_customerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("v1beta1/alerts/"),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_alertId'),
        );

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
          queryMap["customerId"]!.first,
          unittest.equals(arg_customerId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_alertId,
          customerId: arg_customerId, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.AlertCenterApi(mock).alerts;
      var arg_alertId = 'foo';
      var arg_customerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("v1beta1/alerts/"),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_alertId'),
        );

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
          queryMap["customerId"]!.first,
          unittest.equals(arg_customerId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAlert());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_alertId,
          customerId: arg_customerId, $fields: arg_$fields);
      checkAlert(response as api.Alert);
    });

    unittest.test('method--getMetadata', () async {
      var mock = HttpServerMock();
      var res = api.AlertCenterApi(mock).alerts;
      var arg_alertId = 'foo';
      var arg_customerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("v1beta1/alerts/"),
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
          unittest.equals("/metadata"),
        );
        pathOffset += 9;

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
          queryMap["customerId"]!.first,
          unittest.equals(arg_customerId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAlertMetadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getMetadata(arg_alertId,
          customerId: arg_customerId, $fields: arg_$fields);
      checkAlertMetadata(response as api.AlertMetadata);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.AlertCenterApi(mock).alerts;
      var arg_customerId = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals("v1beta1/alerts"),
        );
        pathOffset += 14;

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
          queryMap["customerId"]!.first,
          unittest.equals(arg_customerId),
        );
        unittest.expect(
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap["orderBy"]!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListAlertsResponse());
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
      var mock = HttpServerMock();
      var res = api.AlertCenterApi(mock).alerts;
      var arg_request = buildUndeleteAlertRequest();
      var arg_alertId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UndeleteAlertRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUndeleteAlertRequest(obj as api.UndeleteAlertRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("v1beta1/alerts/"),
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
          unittest.equals(":undelete"),
        );
        pathOffset += 9;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAlert());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.undelete(arg_request, arg_alertId, $fields: arg_$fields);
      checkAlert(response as api.Alert);
    });
  });

  unittest.group('resource-AlertsFeedbackResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.AlertCenterApi(mock).alerts.feedback;
      var arg_request = buildAlertFeedback();
      var arg_alertId = 'foo';
      var arg_customerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AlertFeedback.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAlertFeedback(obj as api.AlertFeedback);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("v1beta1/alerts/"),
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
          unittest.equals("/feedback"),
        );
        pathOffset += 9;

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
          queryMap["customerId"]!.first,
          unittest.equals(arg_customerId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAlertFeedback());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_alertId,
          customerId: arg_customerId, $fields: arg_$fields);
      checkAlertFeedback(response as api.AlertFeedback);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.AlertCenterApi(mock).alerts.feedback;
      var arg_alertId = 'foo';
      var arg_customerId = 'foo';
      var arg_filter = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("v1beta1/alerts/"),
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
          unittest.equals("/feedback"),
        );
        pathOffset += 9;

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
          queryMap["customerId"]!.first,
          unittest.equals(arg_customerId),
        );
        unittest.expect(
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListAlertFeedbackResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_alertId,
          customerId: arg_customerId, filter: arg_filter, $fields: arg_$fields);
      checkListAlertFeedbackResponse(response as api.ListAlertFeedbackResponse);
    });
  });

  unittest.group('resource-V1beta1Resource', () {
    unittest.test('method--getSettings', () async {
      var mock = HttpServerMock();
      var res = api.AlertCenterApi(mock).v1beta1;
      var arg_customerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals("v1beta1/settings"),
        );
        pathOffset += 16;

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
          queryMap["customerId"]!.first,
          unittest.equals(arg_customerId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getSettings(
          customerId: arg_customerId, $fields: arg_$fields);
      checkSettings(response as api.Settings);
    });

    unittest.test('method--updateSettings', () async {
      var mock = HttpServerMock();
      var res = api.AlertCenterApi(mock).v1beta1;
      var arg_request = buildSettings();
      var arg_customerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Settings.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSettings(obj as api.Settings);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals("v1beta1/settings"),
        );
        pathOffset += 16;

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
          queryMap["customerId"]!.first,
          unittest.equals(arg_customerId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateSettings(arg_request,
          customerId: arg_customerId, $fields: arg_$fields);
      checkSettings(response as api.Settings);
    });
  });
}
