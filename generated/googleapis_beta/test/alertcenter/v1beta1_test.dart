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

library googleapis_beta.alertcenter.v1beta1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/alertcenter/v1beta1.dart' as api;

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
    unittest.expect(o.email, unittest.equals('foo'));
    checkLoginDetails(o.loginDetails);
  }
  buildCounterAccountWarning--;
}

core.List<core.String> buildUnnamed6806() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6806(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6807() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6807(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterActivityRule = 0;
api.ActivityRule buildActivityRule() {
  var o = api.ActivityRule();
  buildCounterActivityRule++;
  if (buildCounterActivityRule < 3) {
    o.actionNames = buildUnnamed6806();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.query = 'foo';
    o.supersededAlerts = buildUnnamed6807();
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
    checkUnnamed6806(o.actionNames);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.query, unittest.equals('foo'));
    checkUnnamed6807(o.supersededAlerts);
    unittest.expect(o.supersedingAlert, unittest.equals('foo'));
    unittest.expect(o.threshold, unittest.equals('foo'));
    unittest.expect(o.triggerSource, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.windowSize, unittest.equals('foo'));
  }
  buildCounterActivityRule--;
}

core.Map<core.String, core.Object> buildUnnamed6808() {
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

void checkUnnamed6808(core.Map<core.String, core.Object> o) {
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

core.int buildCounterAlert = 0;
api.Alert buildAlert() {
  var o = api.Alert();
  buildCounterAlert++;
  if (buildCounterAlert < 3) {
    o.alertId = 'foo';
    o.createTime = 'foo';
    o.customerId = 'foo';
    o.data = buildUnnamed6808();
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
    unittest.expect(o.alertId, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.customerId, unittest.equals('foo'));
    checkUnnamed6808(o.data);
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkAlertMetadata(o.metadata);
    unittest.expect(o.securityInvestigationToolLink, unittest.equals('foo'));
    unittest.expect(o.source, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
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
    unittest.expect(o.alertId, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.customerId, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.feedbackId, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
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
    unittest.expect(o.alertId, unittest.equals('foo'));
    unittest.expect(o.assignee, unittest.equals('foo'));
    unittest.expect(o.customerId, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterAlertMetadata--;
}

core.List<api.RequestInfo> buildUnnamed6809() {
  var o = <api.RequestInfo>[];
  o.add(buildRequestInfo());
  o.add(buildRequestInfo());
  return o;
}

void checkUnnamed6809(core.List<api.RequestInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRequestInfo(o[0]);
  checkRequestInfo(o[1]);
}

core.int buildCounterAppMakerSqlSetupNotification = 0;
api.AppMakerSqlSetupNotification buildAppMakerSqlSetupNotification() {
  var o = api.AppMakerSqlSetupNotification();
  buildCounterAppMakerSqlSetupNotification++;
  if (buildCounterAppMakerSqlSetupNotification < 3) {
    o.requestInfo = buildUnnamed6809();
  }
  buildCounterAppMakerSqlSetupNotification--;
  return o;
}

void checkAppMakerSqlSetupNotification(api.AppMakerSqlSetupNotification o) {
  buildCounterAppMakerSqlSetupNotification++;
  if (buildCounterAppMakerSqlSetupNotification < 3) {
    checkUnnamed6809(o.requestInfo);
  }
  buildCounterAppMakerSqlSetupNotification--;
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
    checkCsv(o.csv);
  }
  buildCounterAttachment--;
}

core.List<api.GmailMessageInfo> buildUnnamed6810() {
  var o = <api.GmailMessageInfo>[];
  o.add(buildGmailMessageInfo());
  o.add(buildGmailMessageInfo());
  return o;
}

void checkUnnamed6810(core.List<api.GmailMessageInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGmailMessageInfo(o[0]);
  checkGmailMessageInfo(o[1]);
}

core.int buildCounterBadWhitelist = 0;
api.BadWhitelist buildBadWhitelist() {
  var o = api.BadWhitelist();
  buildCounterBadWhitelist++;
  if (buildCounterBadWhitelist < 3) {
    o.domainId = buildDomainId();
    o.maliciousEntity = buildMaliciousEntity();
    o.messages = buildUnnamed6810();
    o.sourceIp = 'foo';
  }
  buildCounterBadWhitelist--;
  return o;
}

void checkBadWhitelist(api.BadWhitelist o) {
  buildCounterBadWhitelist++;
  if (buildCounterBadWhitelist < 3) {
    checkDomainId(o.domainId);
    checkMaliciousEntity(o.maliciousEntity);
    checkUnnamed6810(o.messages);
    unittest.expect(o.sourceIp, unittest.equals('foo'));
  }
  buildCounterBadWhitelist--;
}

core.List<core.String> buildUnnamed6811() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6811(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchDeleteAlertsRequest = 0;
api.BatchDeleteAlertsRequest buildBatchDeleteAlertsRequest() {
  var o = api.BatchDeleteAlertsRequest();
  buildCounterBatchDeleteAlertsRequest++;
  if (buildCounterBatchDeleteAlertsRequest < 3) {
    o.alertId = buildUnnamed6811();
    o.customerId = 'foo';
  }
  buildCounterBatchDeleteAlertsRequest--;
  return o;
}

void checkBatchDeleteAlertsRequest(api.BatchDeleteAlertsRequest o) {
  buildCounterBatchDeleteAlertsRequest++;
  if (buildCounterBatchDeleteAlertsRequest < 3) {
    checkUnnamed6811(o.alertId);
    unittest.expect(o.customerId, unittest.equals('foo'));
  }
  buildCounterBatchDeleteAlertsRequest--;
}

core.Map<core.String, api.Status> buildUnnamed6812() {
  var o = <core.String, api.Status>{};
  o['x'] = buildStatus();
  o['y'] = buildStatus();
  return o;
}

void checkUnnamed6812(core.Map<core.String, api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o['x']);
  checkStatus(o['y']);
}

core.List<core.String> buildUnnamed6813() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6813(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchDeleteAlertsResponse = 0;
api.BatchDeleteAlertsResponse buildBatchDeleteAlertsResponse() {
  var o = api.BatchDeleteAlertsResponse();
  buildCounterBatchDeleteAlertsResponse++;
  if (buildCounterBatchDeleteAlertsResponse < 3) {
    o.failedAlertStatus = buildUnnamed6812();
    o.successAlertIds = buildUnnamed6813();
  }
  buildCounterBatchDeleteAlertsResponse--;
  return o;
}

void checkBatchDeleteAlertsResponse(api.BatchDeleteAlertsResponse o) {
  buildCounterBatchDeleteAlertsResponse++;
  if (buildCounterBatchDeleteAlertsResponse < 3) {
    checkUnnamed6812(o.failedAlertStatus);
    checkUnnamed6813(o.successAlertIds);
  }
  buildCounterBatchDeleteAlertsResponse--;
}

core.List<core.String> buildUnnamed6814() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6814(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchUndeleteAlertsRequest = 0;
api.BatchUndeleteAlertsRequest buildBatchUndeleteAlertsRequest() {
  var o = api.BatchUndeleteAlertsRequest();
  buildCounterBatchUndeleteAlertsRequest++;
  if (buildCounterBatchUndeleteAlertsRequest < 3) {
    o.alertId = buildUnnamed6814();
    o.customerId = 'foo';
  }
  buildCounterBatchUndeleteAlertsRequest--;
  return o;
}

void checkBatchUndeleteAlertsRequest(api.BatchUndeleteAlertsRequest o) {
  buildCounterBatchUndeleteAlertsRequest++;
  if (buildCounterBatchUndeleteAlertsRequest < 3) {
    checkUnnamed6814(o.alertId);
    unittest.expect(o.customerId, unittest.equals('foo'));
  }
  buildCounterBatchUndeleteAlertsRequest--;
}

core.Map<core.String, api.Status> buildUnnamed6815() {
  var o = <core.String, api.Status>{};
  o['x'] = buildStatus();
  o['y'] = buildStatus();
  return o;
}

void checkUnnamed6815(core.Map<core.String, api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o['x']);
  checkStatus(o['y']);
}

core.List<core.String> buildUnnamed6816() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6816(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchUndeleteAlertsResponse = 0;
api.BatchUndeleteAlertsResponse buildBatchUndeleteAlertsResponse() {
  var o = api.BatchUndeleteAlertsResponse();
  buildCounterBatchUndeleteAlertsResponse++;
  if (buildCounterBatchUndeleteAlertsResponse < 3) {
    o.failedAlertStatus = buildUnnamed6815();
    o.successAlertIds = buildUnnamed6816();
  }
  buildCounterBatchUndeleteAlertsResponse--;
  return o;
}

void checkBatchUndeleteAlertsResponse(api.BatchUndeleteAlertsResponse o) {
  buildCounterBatchUndeleteAlertsResponse++;
  if (buildCounterBatchUndeleteAlertsResponse < 3) {
    checkUnnamed6815(o.failedAlertStatus);
    checkUnnamed6816(o.successAlertIds);
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
    unittest.expect(o.payloadFormat, unittest.equals('foo'));
    unittest.expect(o.topicName, unittest.equals('foo'));
  }
  buildCounterCloudPubsubTopic--;
}

core.List<api.CsvRow> buildUnnamed6817() {
  var o = <api.CsvRow>[];
  o.add(buildCsvRow());
  o.add(buildCsvRow());
  return o;
}

void checkUnnamed6817(core.List<api.CsvRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCsvRow(o[0]);
  checkCsvRow(o[1]);
}

core.List<core.String> buildUnnamed6818() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6818(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCsv = 0;
api.Csv buildCsv() {
  var o = api.Csv();
  buildCounterCsv++;
  if (buildCounterCsv < 3) {
    o.dataRows = buildUnnamed6817();
    o.headers = buildUnnamed6818();
  }
  buildCounterCsv--;
  return o;
}

void checkCsv(api.Csv o) {
  buildCounterCsv++;
  if (buildCounterCsv < 3) {
    checkUnnamed6817(o.dataRows);
    checkUnnamed6818(o.headers);
  }
  buildCounterCsv--;
}

core.List<core.String> buildUnnamed6819() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6819(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCsvRow = 0;
api.CsvRow buildCsvRow() {
  var o = api.CsvRow();
  buildCounterCsvRow++;
  if (buildCounterCsvRow < 3) {
    o.entries = buildUnnamed6819();
  }
  buildCounterCsvRow--;
  return o;
}

void checkCsvRow(api.CsvRow o) {
  buildCounterCsvRow++;
  if (buildCounterCsvRow < 3) {
    checkUnnamed6819(o.entries);
  }
  buildCounterCsvRow--;
}

core.List<api.DeviceCompromisedSecurityDetail> buildUnnamed6820() {
  var o = <api.DeviceCompromisedSecurityDetail>[];
  o.add(buildDeviceCompromisedSecurityDetail());
  o.add(buildDeviceCompromisedSecurityDetail());
  return o;
}

void checkUnnamed6820(core.List<api.DeviceCompromisedSecurityDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceCompromisedSecurityDetail(o[0]);
  checkDeviceCompromisedSecurityDetail(o[1]);
}

core.int buildCounterDeviceCompromised = 0;
api.DeviceCompromised buildDeviceCompromised() {
  var o = api.DeviceCompromised();
  buildCounterDeviceCompromised++;
  if (buildCounterDeviceCompromised < 3) {
    o.email = 'foo';
    o.events = buildUnnamed6820();
  }
  buildCounterDeviceCompromised--;
  return o;
}

void checkDeviceCompromised(api.DeviceCompromised o) {
  buildCounterDeviceCompromised++;
  if (buildCounterDeviceCompromised < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    checkUnnamed6820(o.events);
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
    unittest.expect(o.deviceCompromisedState, unittest.equals('foo'));
    unittest.expect(o.deviceId, unittest.equals('foo'));
    unittest.expect(o.deviceModel, unittest.equals('foo'));
    unittest.expect(o.deviceType, unittest.equals('foo'));
    unittest.expect(o.iosVendorId, unittest.equals('foo'));
    unittest.expect(o.resourceId, unittest.equals('foo'));
    unittest.expect(o.serialNumber, unittest.equals('foo'));
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
    checkRuleViolationInfo(o.ruleViolationInfo);
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
    unittest.expect(o.customerPrimaryDomain, unittest.equals('foo'));
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
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.takeoutRequestId, unittest.equals('foo'));
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

core.List<core.String> buildUnnamed6821() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6821(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGmailMessageInfo = 0;
api.GmailMessageInfo buildGmailMessageInfo() {
  var o = api.GmailMessageInfo();
  buildCounterGmailMessageInfo++;
  if (buildCounterGmailMessageInfo < 3) {
    o.attachmentsSha256Hash = buildUnnamed6821();
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
    checkUnnamed6821(o.attachmentsSha256Hash);
    unittest.expect(o.date, unittest.equals('foo'));
    unittest.expect(o.md5HashMessageBody, unittest.equals('foo'));
    unittest.expect(o.md5HashSubject, unittest.equals('foo'));
    unittest.expect(o.messageBodySnippet, unittest.equals('foo'));
    unittest.expect(o.messageId, unittest.equals('foo'));
    unittest.expect(o.recipient, unittest.equals('foo'));
    unittest.expect(o.subjectText, unittest.equals('foo'));
  }
  buildCounterGmailMessageInfo--;
}

core.List<core.String> buildUnnamed6822() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6822(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleOperations = 0;
api.GoogleOperations buildGoogleOperations() {
  var o = api.GoogleOperations();
  buildCounterGoogleOperations++;
  if (buildCounterGoogleOperations < 3) {
    o.affectedUserEmails = buildUnnamed6822();
    o.attachmentData = buildAttachment();
    o.description = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleOperations--;
  return o;
}

void checkGoogleOperations(api.GoogleOperations o) {
  buildCounterGoogleOperations++;
  if (buildCounterGoogleOperations < 3) {
    checkUnnamed6822(o.affectedUserEmails);
    checkAttachment(o.attachmentData);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleOperations--;
}

core.List<api.AlertFeedback> buildUnnamed6823() {
  var o = <api.AlertFeedback>[];
  o.add(buildAlertFeedback());
  o.add(buildAlertFeedback());
  return o;
}

void checkUnnamed6823(core.List<api.AlertFeedback> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAlertFeedback(o[0]);
  checkAlertFeedback(o[1]);
}

core.int buildCounterListAlertFeedbackResponse = 0;
api.ListAlertFeedbackResponse buildListAlertFeedbackResponse() {
  var o = api.ListAlertFeedbackResponse();
  buildCounterListAlertFeedbackResponse++;
  if (buildCounterListAlertFeedbackResponse < 3) {
    o.feedback = buildUnnamed6823();
  }
  buildCounterListAlertFeedbackResponse--;
  return o;
}

void checkListAlertFeedbackResponse(api.ListAlertFeedbackResponse o) {
  buildCounterListAlertFeedbackResponse++;
  if (buildCounterListAlertFeedbackResponse < 3) {
    checkUnnamed6823(o.feedback);
  }
  buildCounterListAlertFeedbackResponse--;
}

core.List<api.Alert> buildUnnamed6824() {
  var o = <api.Alert>[];
  o.add(buildAlert());
  o.add(buildAlert());
  return o;
}

void checkUnnamed6824(core.List<api.Alert> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAlert(o[0]);
  checkAlert(o[1]);
}

core.int buildCounterListAlertsResponse = 0;
api.ListAlertsResponse buildListAlertsResponse() {
  var o = api.ListAlertsResponse();
  buildCounterListAlertsResponse++;
  if (buildCounterListAlertsResponse < 3) {
    o.alerts = buildUnnamed6824();
    o.nextPageToken = 'foo';
  }
  buildCounterListAlertsResponse--;
  return o;
}

void checkListAlertsResponse(api.ListAlertsResponse o) {
  buildCounterListAlertsResponse++;
  if (buildCounterListAlertsResponse < 3) {
    checkUnnamed6824(o.alerts);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
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
    unittest.expect(o.ipAddress, unittest.equals('foo'));
    unittest.expect(o.loginTime, unittest.equals('foo'));
  }
  buildCounterLoginDetails--;
}

core.List<api.GmailMessageInfo> buildUnnamed6825() {
  var o = <api.GmailMessageInfo>[];
  o.add(buildGmailMessageInfo());
  o.add(buildGmailMessageInfo());
  return o;
}

void checkUnnamed6825(core.List<api.GmailMessageInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGmailMessageInfo(o[0]);
  checkGmailMessageInfo(o[1]);
}

core.int buildCounterMailPhishing = 0;
api.MailPhishing buildMailPhishing() {
  var o = api.MailPhishing();
  buildCounterMailPhishing++;
  if (buildCounterMailPhishing < 3) {
    o.domainId = buildDomainId();
    o.isInternal = true;
    o.maliciousEntity = buildMaliciousEntity();
    o.messages = buildUnnamed6825();
    o.systemActionType = 'foo';
  }
  buildCounterMailPhishing--;
  return o;
}

void checkMailPhishing(api.MailPhishing o) {
  buildCounterMailPhishing++;
  if (buildCounterMailPhishing < 3) {
    checkDomainId(o.domainId);
    unittest.expect(o.isInternal, unittest.isTrue);
    checkMaliciousEntity(o.maliciousEntity);
    checkUnnamed6825(o.messages);
    unittest.expect(o.systemActionType, unittest.equals('foo'));
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
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUser(o.entity);
    unittest.expect(o.fromHeader, unittest.equals('foo'));
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
    checkPredefinedDetectorInfo(o.predefinedDetector);
    checkUserDefinedDetectorInfo(o.userDefinedDetector);
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
    checkCloudPubsubTopic(o.cloudPubsubTopic);
  }
  buildCounterNotification--;
}

core.List<api.GmailMessageInfo> buildUnnamed6826() {
  var o = <api.GmailMessageInfo>[];
  o.add(buildGmailMessageInfo());
  o.add(buildGmailMessageInfo());
  return o;
}

void checkUnnamed6826(core.List<api.GmailMessageInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGmailMessageInfo(o[0]);
  checkGmailMessageInfo(o[1]);
}

core.int buildCounterPhishingSpike = 0;
api.PhishingSpike buildPhishingSpike() {
  var o = api.PhishingSpike();
  buildCounterPhishingSpike++;
  if (buildCounterPhishingSpike < 3) {
    o.domainId = buildDomainId();
    o.isInternal = true;
    o.maliciousEntity = buildMaliciousEntity();
    o.messages = buildUnnamed6826();
  }
  buildCounterPhishingSpike--;
  return o;
}

void checkPhishingSpike(api.PhishingSpike o) {
  buildCounterPhishingSpike++;
  if (buildCounterPhishingSpike < 3) {
    checkDomainId(o.domainId);
    unittest.expect(o.isInternal, unittest.isTrue);
    checkMaliciousEntity(o.maliciousEntity);
    checkUnnamed6826(o.messages);
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
    unittest.expect(o.detectorName, unittest.equals('foo'));
  }
  buildCounterPredefinedDetectorInfo--;
}

core.List<core.String> buildUnnamed6827() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6827(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRequestInfo = 0;
api.RequestInfo buildRequestInfo() {
  var o = api.RequestInfo();
  buildCounterRequestInfo++;
  if (buildCounterRequestInfo < 3) {
    o.appDeveloperEmail = buildUnnamed6827();
    o.appKey = 'foo';
    o.numberOfRequests = 'foo';
  }
  buildCounterRequestInfo--;
  return o;
}

void checkRequestInfo(api.RequestInfo o) {
  buildCounterRequestInfo++;
  if (buildCounterRequestInfo < 3) {
    checkUnnamed6827(o.appDeveloperEmail);
    unittest.expect(o.appKey, unittest.equals('foo'));
    unittest.expect(o.numberOfRequests, unittest.equals('foo'));
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
    unittest.expect(o.documentId, unittest.equals('foo'));
    unittest.expect(o.resourceTitle, unittest.equals('foo'));
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
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.resourceName, unittest.equals('foo'));
  }
  buildCounterRuleInfo--;
}

core.List<api.MatchInfo> buildUnnamed6828() {
  var o = <api.MatchInfo>[];
  o.add(buildMatchInfo());
  o.add(buildMatchInfo());
  return o;
}

void checkUnnamed6828(core.List<api.MatchInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatchInfo(o[0]);
  checkMatchInfo(o[1]);
}

core.List<core.String> buildUnnamed6829() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6829(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6830() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6830(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6831() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6831(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRuleViolationInfo = 0;
api.RuleViolationInfo buildRuleViolationInfo() {
  var o = api.RuleViolationInfo();
  buildCounterRuleViolationInfo++;
  if (buildCounterRuleViolationInfo < 3) {
    o.dataSource = 'foo';
    o.matchInfo = buildUnnamed6828();
    o.recipients = buildUnnamed6829();
    o.resourceInfo = buildResourceInfo();
    o.ruleInfo = buildRuleInfo();
    o.suppressedActionTypes = buildUnnamed6830();
    o.trigger = 'foo';
    o.triggeredActionTypes = buildUnnamed6831();
    o.triggeringUserEmail = 'foo';
  }
  buildCounterRuleViolationInfo--;
  return o;
}

void checkRuleViolationInfo(api.RuleViolationInfo o) {
  buildCounterRuleViolationInfo++;
  if (buildCounterRuleViolationInfo < 3) {
    unittest.expect(o.dataSource, unittest.equals('foo'));
    checkUnnamed6828(o.matchInfo);
    checkUnnamed6829(o.recipients);
    checkResourceInfo(o.resourceInfo);
    checkRuleInfo(o.ruleInfo);
    checkUnnamed6830(o.suppressedActionTypes);
    unittest.expect(o.trigger, unittest.equals('foo'));
    checkUnnamed6831(o.triggeredActionTypes);
    unittest.expect(o.triggeringUserEmail, unittest.equals('foo'));
  }
  buildCounterRuleViolationInfo--;
}

core.List<api.Notification> buildUnnamed6832() {
  var o = <api.Notification>[];
  o.add(buildNotification());
  o.add(buildNotification());
  return o;
}

void checkUnnamed6832(core.List<api.Notification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotification(o[0]);
  checkNotification(o[1]);
}

core.int buildCounterSettings = 0;
api.Settings buildSettings() {
  var o = api.Settings();
  buildCounterSettings++;
  if (buildCounterSettings < 3) {
    o.notifications = buildUnnamed6832();
  }
  buildCounterSettings--;
  return o;
}

void checkSettings(api.Settings o) {
  buildCounterSettings++;
  if (buildCounterSettings < 3) {
    checkUnnamed6832(o.notifications);
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
    unittest.expect(o.email, unittest.equals('foo'));
  }
  buildCounterStateSponsoredAttack--;
}

core.Map<core.String, core.Object> buildUnnamed6833() {
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

void checkUnnamed6833(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed6834() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed6833());
  o.add(buildUnnamed6833());
  return o;
}

void checkUnnamed6834(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6833(o[0]);
  checkUnnamed6833(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6834();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed6834(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<api.SuspiciousActivitySecurityDetail> buildUnnamed6835() {
  var o = <api.SuspiciousActivitySecurityDetail>[];
  o.add(buildSuspiciousActivitySecurityDetail());
  o.add(buildSuspiciousActivitySecurityDetail());
  return o;
}

void checkUnnamed6835(core.List<api.SuspiciousActivitySecurityDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuspiciousActivitySecurityDetail(o[0]);
  checkSuspiciousActivitySecurityDetail(o[1]);
}

core.int buildCounterSuspiciousActivity = 0;
api.SuspiciousActivity buildSuspiciousActivity() {
  var o = api.SuspiciousActivity();
  buildCounterSuspiciousActivity++;
  if (buildCounterSuspiciousActivity < 3) {
    o.email = 'foo';
    o.events = buildUnnamed6835();
  }
  buildCounterSuspiciousActivity--;
  return o;
}

void checkSuspiciousActivity(api.SuspiciousActivity o) {
  buildCounterSuspiciousActivity++;
  if (buildCounterSuspiciousActivity < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    checkUnnamed6835(o.events);
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
    unittest.expect(o.deviceId, unittest.equals('foo'));
    unittest.expect(o.deviceModel, unittest.equals('foo'));
    unittest.expect(o.deviceProperty, unittest.equals('foo'));
    unittest.expect(o.deviceType, unittest.equals('foo'));
    unittest.expect(o.iosVendorId, unittest.equals('foo'));
    unittest.expect(o.newValue, unittest.equals('foo'));
    unittest.expect(o.oldValue, unittest.equals('foo'));
    unittest.expect(o.resourceId, unittest.equals('foo'));
    unittest.expect(o.serialNumber, unittest.equals('foo'));
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
    unittest.expect(o.customerId, unittest.equals('foo'));
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
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.emailAddress, unittest.equals('foo'));
  }
  buildCounterUser--;
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
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.resourceName, unittest.equals('foo'));
  }
  buildCounterUserDefinedDetectorInfo--;
}

void main() {
  unittest.group('obj-schema-AccountWarning', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountWarning();
      var od = api.AccountWarning.fromJson(o.toJson());
      checkAccountWarning(od);
    });
  });

  unittest.group('obj-schema-ActivityRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildActivityRule();
      var od = api.ActivityRule.fromJson(o.toJson());
      checkActivityRule(od);
    });
  });

  unittest.group('obj-schema-Alert', () {
    unittest.test('to-json--from-json', () {
      var o = buildAlert();
      var od = api.Alert.fromJson(o.toJson());
      checkAlert(od);
    });
  });

  unittest.group('obj-schema-AlertFeedback', () {
    unittest.test('to-json--from-json', () {
      var o = buildAlertFeedback();
      var od = api.AlertFeedback.fromJson(o.toJson());
      checkAlertFeedback(od);
    });
  });

  unittest.group('obj-schema-AlertMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildAlertMetadata();
      var od = api.AlertMetadata.fromJson(o.toJson());
      checkAlertMetadata(od);
    });
  });

  unittest.group('obj-schema-AppMakerSqlSetupNotification', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppMakerSqlSetupNotification();
      var od = api.AppMakerSqlSetupNotification.fromJson(o.toJson());
      checkAppMakerSqlSetupNotification(od);
    });
  });

  unittest.group('obj-schema-Attachment', () {
    unittest.test('to-json--from-json', () {
      var o = buildAttachment();
      var od = api.Attachment.fromJson(o.toJson());
      checkAttachment(od);
    });
  });

  unittest.group('obj-schema-BadWhitelist', () {
    unittest.test('to-json--from-json', () {
      var o = buildBadWhitelist();
      var od = api.BadWhitelist.fromJson(o.toJson());
      checkBadWhitelist(od);
    });
  });

  unittest.group('obj-schema-BatchDeleteAlertsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchDeleteAlertsRequest();
      var od = api.BatchDeleteAlertsRequest.fromJson(o.toJson());
      checkBatchDeleteAlertsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchDeleteAlertsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchDeleteAlertsResponse();
      var od = api.BatchDeleteAlertsResponse.fromJson(o.toJson());
      checkBatchDeleteAlertsResponse(od);
    });
  });

  unittest.group('obj-schema-BatchUndeleteAlertsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchUndeleteAlertsRequest();
      var od = api.BatchUndeleteAlertsRequest.fromJson(o.toJson());
      checkBatchUndeleteAlertsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUndeleteAlertsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchUndeleteAlertsResponse();
      var od = api.BatchUndeleteAlertsResponse.fromJson(o.toJson());
      checkBatchUndeleteAlertsResponse(od);
    });
  });

  unittest.group('obj-schema-CloudPubsubTopic', () {
    unittest.test('to-json--from-json', () {
      var o = buildCloudPubsubTopic();
      var od = api.CloudPubsubTopic.fromJson(o.toJson());
      checkCloudPubsubTopic(od);
    });
  });

  unittest.group('obj-schema-Csv', () {
    unittest.test('to-json--from-json', () {
      var o = buildCsv();
      var od = api.Csv.fromJson(o.toJson());
      checkCsv(od);
    });
  });

  unittest.group('obj-schema-CsvRow', () {
    unittest.test('to-json--from-json', () {
      var o = buildCsvRow();
      var od = api.CsvRow.fromJson(o.toJson());
      checkCsvRow(od);
    });
  });

  unittest.group('obj-schema-DeviceCompromised', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceCompromised();
      var od = api.DeviceCompromised.fromJson(o.toJson());
      checkDeviceCompromised(od);
    });
  });

  unittest.group('obj-schema-DeviceCompromisedSecurityDetail', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceCompromisedSecurityDetail();
      var od = api.DeviceCompromisedSecurityDetail.fromJson(o.toJson());
      checkDeviceCompromisedSecurityDetail(od);
    });
  });

  unittest.group('obj-schema-DlpRuleViolation', () {
    unittest.test('to-json--from-json', () {
      var o = buildDlpRuleViolation();
      var od = api.DlpRuleViolation.fromJson(o.toJson());
      checkDlpRuleViolation(od);
    });
  });

  unittest.group('obj-schema-DomainId', () {
    unittest.test('to-json--from-json', () {
      var o = buildDomainId();
      var od = api.DomainId.fromJson(o.toJson());
      checkDomainId(od);
    });
  });

  unittest.group('obj-schema-DomainWideTakeoutInitiated', () {
    unittest.test('to-json--from-json', () {
      var o = buildDomainWideTakeoutInitiated();
      var od = api.DomainWideTakeoutInitiated.fromJson(o.toJson());
      checkDomainWideTakeoutInitiated(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-GmailMessageInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGmailMessageInfo();
      var od = api.GmailMessageInfo.fromJson(o.toJson());
      checkGmailMessageInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleOperations', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleOperations();
      var od = api.GoogleOperations.fromJson(o.toJson());
      checkGoogleOperations(od);
    });
  });

  unittest.group('obj-schema-ListAlertFeedbackResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListAlertFeedbackResponse();
      var od = api.ListAlertFeedbackResponse.fromJson(o.toJson());
      checkListAlertFeedbackResponse(od);
    });
  });

  unittest.group('obj-schema-ListAlertsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListAlertsResponse();
      var od = api.ListAlertsResponse.fromJson(o.toJson());
      checkListAlertsResponse(od);
    });
  });

  unittest.group('obj-schema-LoginDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildLoginDetails();
      var od = api.LoginDetails.fromJson(o.toJson());
      checkLoginDetails(od);
    });
  });

  unittest.group('obj-schema-MailPhishing', () {
    unittest.test('to-json--from-json', () {
      var o = buildMailPhishing();
      var od = api.MailPhishing.fromJson(o.toJson());
      checkMailPhishing(od);
    });
  });

  unittest.group('obj-schema-MaliciousEntity', () {
    unittest.test('to-json--from-json', () {
      var o = buildMaliciousEntity();
      var od = api.MaliciousEntity.fromJson(o.toJson());
      checkMaliciousEntity(od);
    });
  });

  unittest.group('obj-schema-MatchInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildMatchInfo();
      var od = api.MatchInfo.fromJson(o.toJson());
      checkMatchInfo(od);
    });
  });

  unittest.group('obj-schema-Notification', () {
    unittest.test('to-json--from-json', () {
      var o = buildNotification();
      var od = api.Notification.fromJson(o.toJson());
      checkNotification(od);
    });
  });

  unittest.group('obj-schema-PhishingSpike', () {
    unittest.test('to-json--from-json', () {
      var o = buildPhishingSpike();
      var od = api.PhishingSpike.fromJson(o.toJson());
      checkPhishingSpike(od);
    });
  });

  unittest.group('obj-schema-PredefinedDetectorInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildPredefinedDetectorInfo();
      var od = api.PredefinedDetectorInfo.fromJson(o.toJson());
      checkPredefinedDetectorInfo(od);
    });
  });

  unittest.group('obj-schema-RequestInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildRequestInfo();
      var od = api.RequestInfo.fromJson(o.toJson());
      checkRequestInfo(od);
    });
  });

  unittest.group('obj-schema-ResourceInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceInfo();
      var od = api.ResourceInfo.fromJson(o.toJson());
      checkResourceInfo(od);
    });
  });

  unittest.group('obj-schema-RuleInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildRuleInfo();
      var od = api.RuleInfo.fromJson(o.toJson());
      checkRuleInfo(od);
    });
  });

  unittest.group('obj-schema-RuleViolationInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildRuleViolationInfo();
      var od = api.RuleViolationInfo.fromJson(o.toJson());
      checkRuleViolationInfo(od);
    });
  });

  unittest.group('obj-schema-Settings', () {
    unittest.test('to-json--from-json', () {
      var o = buildSettings();
      var od = api.Settings.fromJson(o.toJson());
      checkSettings(od);
    });
  });

  unittest.group('obj-schema-StateSponsoredAttack', () {
    unittest.test('to-json--from-json', () {
      var o = buildStateSponsoredAttack();
      var od = api.StateSponsoredAttack.fromJson(o.toJson());
      checkStateSponsoredAttack(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-SuspiciousActivity', () {
    unittest.test('to-json--from-json', () {
      var o = buildSuspiciousActivity();
      var od = api.SuspiciousActivity.fromJson(o.toJson());
      checkSuspiciousActivity(od);
    });
  });

  unittest.group('obj-schema-SuspiciousActivitySecurityDetail', () {
    unittest.test('to-json--from-json', () {
      var o = buildSuspiciousActivitySecurityDetail();
      var od = api.SuspiciousActivitySecurityDetail.fromJson(o.toJson());
      checkSuspiciousActivitySecurityDetail(od);
    });
  });

  unittest.group('obj-schema-UndeleteAlertRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUndeleteAlertRequest();
      var od = api.UndeleteAlertRequest.fromJson(o.toJson());
      checkUndeleteAlertRequest(od);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () {
      var o = buildUser();
      var od = api.User.fromJson(o.toJson());
      checkUser(od);
    });
  });

  unittest.group('obj-schema-UserDefinedDetectorInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserDefinedDetectorInfo();
      var od = api.UserDefinedDetectorInfo.fromJson(o.toJson());
      checkUserDefinedDetectorInfo(od);
    });
  });

  unittest.group('resource-AlertsResourceApi', () {
    unittest.test('method--batchDelete', () {
      var mock = HttpServerMock();
      api.AlertsResourceApi res = api.AlertcenterApi(mock).alerts;
      var arg_request = buildBatchDeleteAlertsRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchDeleteAlertsRequest.fromJson(json);
        checkBatchDeleteAlertsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("v1beta1/alerts:batchDelete"));
        pathOffset += 26;

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
        var resp = convert.json.encode(buildBatchDeleteAlertsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchDelete(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchDeleteAlertsResponse(response);
      })));
    });

    unittest.test('method--batchUndelete', () {
      var mock = HttpServerMock();
      api.AlertsResourceApi res = api.AlertcenterApi(mock).alerts;
      var arg_request = buildBatchUndeleteAlertsRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchUndeleteAlertsRequest.fromJson(json);
        checkBatchUndeleteAlertsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("v1beta1/alerts:batchUndelete"));
        pathOffset += 28;

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
        var resp = convert.json.encode(buildBatchUndeleteAlertsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUndelete(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchUndeleteAlertsResponse(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.AlertsResourceApi res = api.AlertcenterApi(mock).alerts;
      var arg_alertId = 'foo';
      var arg_customerId = 'foo';
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
            unittest.equals("v1beta1/alerts/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_alertId'));

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
            queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_alertId, customerId: arg_customerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.AlertsResourceApi res = api.AlertcenterApi(mock).alerts;
      var arg_alertId = 'foo';
      var arg_customerId = 'foo';
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
            unittest.equals("v1beta1/alerts/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_alertId'));

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
            queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAlert());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_alertId, customerId: arg_customerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAlert(response);
      })));
    });

    unittest.test('method--getMetadata', () {
      var mock = HttpServerMock();
      api.AlertsResourceApi res = api.AlertcenterApi(mock).alerts;
      var arg_alertId = 'foo';
      var arg_customerId = 'foo';
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
            unittest.equals("v1beta1/alerts/"));
        pathOffset += 15;
        index = path.indexOf('/metadata', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_alertId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/metadata"));
        pathOffset += 9;

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
            queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAlertMetadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getMetadata(arg_alertId,
              customerId: arg_customerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAlertMetadata(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.AlertsResourceApi res = api.AlertcenterApi(mock).alerts;
      var arg_pageSize = 42;
      var arg_orderBy = 'foo';
      var arg_customerId = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1beta1/alerts"));
        pathOffset += 14;

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
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListAlertsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageSize: arg_pageSize,
              orderBy: arg_orderBy,
              customerId: arg_customerId,
              pageToken: arg_pageToken,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAlertsResponse(response);
      })));
    });

    unittest.test('method--undelete', () {
      var mock = HttpServerMock();
      api.AlertsResourceApi res = api.AlertcenterApi(mock).alerts;
      var arg_request = buildUndeleteAlertRequest();
      var arg_alertId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UndeleteAlertRequest.fromJson(json);
        checkUndeleteAlertRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1beta1/alerts/"));
        pathOffset += 15;
        index = path.indexOf(':undelete', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_alertId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals(":undelete"));
        pathOffset += 9;

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
        var resp = convert.json.encode(buildAlert());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .undelete(arg_request, arg_alertId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAlert(response);
      })));
    });
  });

  unittest.group('resource-AlertsFeedbackResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.AlertsFeedbackResourceApi res =
          api.AlertcenterApi(mock).alerts.feedback;
      var arg_request = buildAlertFeedback();
      var arg_alertId = 'foo';
      var arg_customerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AlertFeedback.fromJson(json);
        checkAlertFeedback(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1beta1/alerts/"));
        pathOffset += 15;
        index = path.indexOf('/feedback', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_alertId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/feedback"));
        pathOffset += 9;

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
            queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAlertFeedback());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_alertId,
              customerId: arg_customerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAlertFeedback(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.AlertsFeedbackResourceApi res =
          api.AlertcenterApi(mock).alerts.feedback;
      var arg_alertId = 'foo';
      var arg_filter = 'foo';
      var arg_customerId = 'foo';
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
            unittest.equals("v1beta1/alerts/"));
        pathOffset += 15;
        index = path.indexOf('/feedback', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_alertId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/feedback"));
        pathOffset += 9;

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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListAlertFeedbackResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_alertId,
              filter: arg_filter,
              customerId: arg_customerId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAlertFeedbackResponse(response);
      })));
    });
  });

  unittest.group('resource-V1beta1ResourceApi', () {
    unittest.test('method--getSettings', () {
      var mock = HttpServerMock();
      api.V1beta1ResourceApi res = api.AlertcenterApi(mock).v1beta1;
      var arg_customerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1beta1/settings"));
        pathOffset += 16;

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
            queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getSettings(customerId: arg_customerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSettings(response);
      })));
    });

    unittest.test('method--updateSettings', () {
      var mock = HttpServerMock();
      api.V1beta1ResourceApi res = api.AlertcenterApi(mock).v1beta1;
      var arg_request = buildSettings();
      var arg_customerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Settings.fromJson(json);
        checkSettings(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1beta1/settings"));
        pathOffset += 16;

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
            queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateSettings(arg_request,
              customerId: arg_customerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSettings(response);
      })));
    });
  });
}
