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

core.int buildCounterAccountWarning = 0;
buildAccountWarning() {
  var o = new api.AccountWarning();
  buildCounterAccountWarning++;
  if (buildCounterAccountWarning < 3) {
    o.email = "foo";
    o.loginDetails = buildLoginDetails();
  }
  buildCounterAccountWarning--;
  return o;
}

checkAccountWarning(api.AccountWarning o) {
  buildCounterAccountWarning++;
  if (buildCounterAccountWarning < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    checkLoginDetails(o.loginDetails);
  }
  buildCounterAccountWarning--;
}

buildUnnamed6066() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6066(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed6067() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6067(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterActivityRule = 0;
buildActivityRule() {
  var o = new api.ActivityRule();
  buildCounterActivityRule++;
  if (buildCounterActivityRule < 3) {
    o.actionNames = buildUnnamed6066();
    o.createTime = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.name = "foo";
    o.query = "foo";
    o.supersededAlerts = buildUnnamed6067();
    o.supersedingAlert = "foo";
    o.threshold = "foo";
    o.triggerSource = "foo";
    o.updateTime = "foo";
    o.windowSize = "foo";
  }
  buildCounterActivityRule--;
  return o;
}

checkActivityRule(api.ActivityRule o) {
  buildCounterActivityRule++;
  if (buildCounterActivityRule < 3) {
    checkUnnamed6066(o.actionNames);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.query, unittest.equals('foo'));
    checkUnnamed6067(o.supersededAlerts);
    unittest.expect(o.supersedingAlert, unittest.equals('foo'));
    unittest.expect(o.threshold, unittest.equals('foo'));
    unittest.expect(o.triggerSource, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.windowSize, unittest.equals('foo'));
  }
  buildCounterActivityRule--;
}

buildUnnamed6068() {
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

checkUnnamed6068(core.Map<core.String, core.Object> o) {
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

core.int buildCounterAlert = 0;
buildAlert() {
  var o = new api.Alert();
  buildCounterAlert++;
  if (buildCounterAlert < 3) {
    o.alertId = "foo";
    o.createTime = "foo";
    o.customerId = "foo";
    o.data = buildUnnamed6068();
    o.deleted = true;
    o.endTime = "foo";
    o.etag = "foo";
    o.metadata = buildAlertMetadata();
    o.securityInvestigationToolLink = "foo";
    o.source = "foo";
    o.startTime = "foo";
    o.type = "foo";
    o.updateTime = "foo";
  }
  buildCounterAlert--;
  return o;
}

checkAlert(api.Alert o) {
  buildCounterAlert++;
  if (buildCounterAlert < 3) {
    unittest.expect(o.alertId, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.customerId, unittest.equals('foo'));
    checkUnnamed6068(o.data);
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
buildAlertFeedback() {
  var o = new api.AlertFeedback();
  buildCounterAlertFeedback++;
  if (buildCounterAlertFeedback < 3) {
    o.alertId = "foo";
    o.createTime = "foo";
    o.customerId = "foo";
    o.email = "foo";
    o.feedbackId = "foo";
    o.type = "foo";
  }
  buildCounterAlertFeedback--;
  return o;
}

checkAlertFeedback(api.AlertFeedback o) {
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
buildAlertMetadata() {
  var o = new api.AlertMetadata();
  buildCounterAlertMetadata++;
  if (buildCounterAlertMetadata < 3) {
    o.alertId = "foo";
    o.assignee = "foo";
    o.customerId = "foo";
    o.etag = "foo";
    o.severity = "foo";
    o.status = "foo";
    o.updateTime = "foo";
  }
  buildCounterAlertMetadata--;
  return o;
}

checkAlertMetadata(api.AlertMetadata o) {
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

buildUnnamed6069() {
  var o = new core.List<api.RequestInfo>();
  o.add(buildRequestInfo());
  o.add(buildRequestInfo());
  return o;
}

checkUnnamed6069(core.List<api.RequestInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRequestInfo(o[0]);
  checkRequestInfo(o[1]);
}

core.int buildCounterAppMakerSqlSetupNotification = 0;
buildAppMakerSqlSetupNotification() {
  var o = new api.AppMakerSqlSetupNotification();
  buildCounterAppMakerSqlSetupNotification++;
  if (buildCounterAppMakerSqlSetupNotification < 3) {
    o.requestInfo = buildUnnamed6069();
  }
  buildCounterAppMakerSqlSetupNotification--;
  return o;
}

checkAppMakerSqlSetupNotification(api.AppMakerSqlSetupNotification o) {
  buildCounterAppMakerSqlSetupNotification++;
  if (buildCounterAppMakerSqlSetupNotification < 3) {
    checkUnnamed6069(o.requestInfo);
  }
  buildCounterAppMakerSqlSetupNotification--;
}

core.int buildCounterAttachment = 0;
buildAttachment() {
  var o = new api.Attachment();
  buildCounterAttachment++;
  if (buildCounterAttachment < 3) {
    o.csv = buildCsv();
  }
  buildCounterAttachment--;
  return o;
}

checkAttachment(api.Attachment o) {
  buildCounterAttachment++;
  if (buildCounterAttachment < 3) {
    checkCsv(o.csv);
  }
  buildCounterAttachment--;
}

buildUnnamed6070() {
  var o = new core.List<api.GmailMessageInfo>();
  o.add(buildGmailMessageInfo());
  o.add(buildGmailMessageInfo());
  return o;
}

checkUnnamed6070(core.List<api.GmailMessageInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGmailMessageInfo(o[0]);
  checkGmailMessageInfo(o[1]);
}

core.int buildCounterBadWhitelist = 0;
buildBadWhitelist() {
  var o = new api.BadWhitelist();
  buildCounterBadWhitelist++;
  if (buildCounterBadWhitelist < 3) {
    o.domainId = buildDomainId();
    o.maliciousEntity = buildMaliciousEntity();
    o.messages = buildUnnamed6070();
    o.sourceIp = "foo";
  }
  buildCounterBadWhitelist--;
  return o;
}

checkBadWhitelist(api.BadWhitelist o) {
  buildCounterBadWhitelist++;
  if (buildCounterBadWhitelist < 3) {
    checkDomainId(o.domainId);
    checkMaliciousEntity(o.maliciousEntity);
    checkUnnamed6070(o.messages);
    unittest.expect(o.sourceIp, unittest.equals('foo'));
  }
  buildCounterBadWhitelist--;
}

buildUnnamed6071() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6071(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchDeleteAlertsRequest = 0;
buildBatchDeleteAlertsRequest() {
  var o = new api.BatchDeleteAlertsRequest();
  buildCounterBatchDeleteAlertsRequest++;
  if (buildCounterBatchDeleteAlertsRequest < 3) {
    o.alertId = buildUnnamed6071();
    o.customerId = "foo";
  }
  buildCounterBatchDeleteAlertsRequest--;
  return o;
}

checkBatchDeleteAlertsRequest(api.BatchDeleteAlertsRequest o) {
  buildCounterBatchDeleteAlertsRequest++;
  if (buildCounterBatchDeleteAlertsRequest < 3) {
    checkUnnamed6071(o.alertId);
    unittest.expect(o.customerId, unittest.equals('foo'));
  }
  buildCounterBatchDeleteAlertsRequest--;
}

buildUnnamed6072() {
  var o = new core.Map<core.String, api.Status>();
  o["x"] = buildStatus();
  o["y"] = buildStatus();
  return o;
}

checkUnnamed6072(core.Map<core.String, api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o["x"]);
  checkStatus(o["y"]);
}

buildUnnamed6073() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6073(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchDeleteAlertsResponse = 0;
buildBatchDeleteAlertsResponse() {
  var o = new api.BatchDeleteAlertsResponse();
  buildCounterBatchDeleteAlertsResponse++;
  if (buildCounterBatchDeleteAlertsResponse < 3) {
    o.failedAlertStatus = buildUnnamed6072();
    o.successAlertIds = buildUnnamed6073();
  }
  buildCounterBatchDeleteAlertsResponse--;
  return o;
}

checkBatchDeleteAlertsResponse(api.BatchDeleteAlertsResponse o) {
  buildCounterBatchDeleteAlertsResponse++;
  if (buildCounterBatchDeleteAlertsResponse < 3) {
    checkUnnamed6072(o.failedAlertStatus);
    checkUnnamed6073(o.successAlertIds);
  }
  buildCounterBatchDeleteAlertsResponse--;
}

buildUnnamed6074() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6074(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchUndeleteAlertsRequest = 0;
buildBatchUndeleteAlertsRequest() {
  var o = new api.BatchUndeleteAlertsRequest();
  buildCounterBatchUndeleteAlertsRequest++;
  if (buildCounterBatchUndeleteAlertsRequest < 3) {
    o.alertId = buildUnnamed6074();
    o.customerId = "foo";
  }
  buildCounterBatchUndeleteAlertsRequest--;
  return o;
}

checkBatchUndeleteAlertsRequest(api.BatchUndeleteAlertsRequest o) {
  buildCounterBatchUndeleteAlertsRequest++;
  if (buildCounterBatchUndeleteAlertsRequest < 3) {
    checkUnnamed6074(o.alertId);
    unittest.expect(o.customerId, unittest.equals('foo'));
  }
  buildCounterBatchUndeleteAlertsRequest--;
}

buildUnnamed6075() {
  var o = new core.Map<core.String, api.Status>();
  o["x"] = buildStatus();
  o["y"] = buildStatus();
  return o;
}

checkUnnamed6075(core.Map<core.String, api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o["x"]);
  checkStatus(o["y"]);
}

buildUnnamed6076() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6076(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchUndeleteAlertsResponse = 0;
buildBatchUndeleteAlertsResponse() {
  var o = new api.BatchUndeleteAlertsResponse();
  buildCounterBatchUndeleteAlertsResponse++;
  if (buildCounterBatchUndeleteAlertsResponse < 3) {
    o.failedAlertStatus = buildUnnamed6075();
    o.successAlertIds = buildUnnamed6076();
  }
  buildCounterBatchUndeleteAlertsResponse--;
  return o;
}

checkBatchUndeleteAlertsResponse(api.BatchUndeleteAlertsResponse o) {
  buildCounterBatchUndeleteAlertsResponse++;
  if (buildCounterBatchUndeleteAlertsResponse < 3) {
    checkUnnamed6075(o.failedAlertStatus);
    checkUnnamed6076(o.successAlertIds);
  }
  buildCounterBatchUndeleteAlertsResponse--;
}

core.int buildCounterCloudPubsubTopic = 0;
buildCloudPubsubTopic() {
  var o = new api.CloudPubsubTopic();
  buildCounterCloudPubsubTopic++;
  if (buildCounterCloudPubsubTopic < 3) {
    o.payloadFormat = "foo";
    o.topicName = "foo";
  }
  buildCounterCloudPubsubTopic--;
  return o;
}

checkCloudPubsubTopic(api.CloudPubsubTopic o) {
  buildCounterCloudPubsubTopic++;
  if (buildCounterCloudPubsubTopic < 3) {
    unittest.expect(o.payloadFormat, unittest.equals('foo'));
    unittest.expect(o.topicName, unittest.equals('foo'));
  }
  buildCounterCloudPubsubTopic--;
}

buildUnnamed6077() {
  var o = new core.List<api.CsvRow>();
  o.add(buildCsvRow());
  o.add(buildCsvRow());
  return o;
}

checkUnnamed6077(core.List<api.CsvRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCsvRow(o[0]);
  checkCsvRow(o[1]);
}

buildUnnamed6078() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6078(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCsv = 0;
buildCsv() {
  var o = new api.Csv();
  buildCounterCsv++;
  if (buildCounterCsv < 3) {
    o.dataRows = buildUnnamed6077();
    o.headers = buildUnnamed6078();
  }
  buildCounterCsv--;
  return o;
}

checkCsv(api.Csv o) {
  buildCounterCsv++;
  if (buildCounterCsv < 3) {
    checkUnnamed6077(o.dataRows);
    checkUnnamed6078(o.headers);
  }
  buildCounterCsv--;
}

buildUnnamed6079() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6079(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCsvRow = 0;
buildCsvRow() {
  var o = new api.CsvRow();
  buildCounterCsvRow++;
  if (buildCounterCsvRow < 3) {
    o.entries = buildUnnamed6079();
  }
  buildCounterCsvRow--;
  return o;
}

checkCsvRow(api.CsvRow o) {
  buildCounterCsvRow++;
  if (buildCounterCsvRow < 3) {
    checkUnnamed6079(o.entries);
  }
  buildCounterCsvRow--;
}

buildUnnamed6080() {
  var o = new core.List<api.DeviceCompromisedSecurityDetail>();
  o.add(buildDeviceCompromisedSecurityDetail());
  o.add(buildDeviceCompromisedSecurityDetail());
  return o;
}

checkUnnamed6080(core.List<api.DeviceCompromisedSecurityDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceCompromisedSecurityDetail(o[0]);
  checkDeviceCompromisedSecurityDetail(o[1]);
}

core.int buildCounterDeviceCompromised = 0;
buildDeviceCompromised() {
  var o = new api.DeviceCompromised();
  buildCounterDeviceCompromised++;
  if (buildCounterDeviceCompromised < 3) {
    o.email = "foo";
    o.events = buildUnnamed6080();
  }
  buildCounterDeviceCompromised--;
  return o;
}

checkDeviceCompromised(api.DeviceCompromised o) {
  buildCounterDeviceCompromised++;
  if (buildCounterDeviceCompromised < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    checkUnnamed6080(o.events);
  }
  buildCounterDeviceCompromised--;
}

core.int buildCounterDeviceCompromisedSecurityDetail = 0;
buildDeviceCompromisedSecurityDetail() {
  var o = new api.DeviceCompromisedSecurityDetail();
  buildCounterDeviceCompromisedSecurityDetail++;
  if (buildCounterDeviceCompromisedSecurityDetail < 3) {
    o.deviceCompromisedState = "foo";
    o.deviceId = "foo";
    o.deviceModel = "foo";
    o.deviceType = "foo";
    o.iosVendorId = "foo";
    o.resourceId = "foo";
    o.serialNumber = "foo";
  }
  buildCounterDeviceCompromisedSecurityDetail--;
  return o;
}

checkDeviceCompromisedSecurityDetail(api.DeviceCompromisedSecurityDetail o) {
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
buildDlpRuleViolation() {
  var o = new api.DlpRuleViolation();
  buildCounterDlpRuleViolation++;
  if (buildCounterDlpRuleViolation < 3) {
    o.ruleViolationInfo = buildRuleViolationInfo();
  }
  buildCounterDlpRuleViolation--;
  return o;
}

checkDlpRuleViolation(api.DlpRuleViolation o) {
  buildCounterDlpRuleViolation++;
  if (buildCounterDlpRuleViolation < 3) {
    checkRuleViolationInfo(o.ruleViolationInfo);
  }
  buildCounterDlpRuleViolation--;
}

core.int buildCounterDomainId = 0;
buildDomainId() {
  var o = new api.DomainId();
  buildCounterDomainId++;
  if (buildCounterDomainId < 3) {
    o.customerPrimaryDomain = "foo";
  }
  buildCounterDomainId--;
  return o;
}

checkDomainId(api.DomainId o) {
  buildCounterDomainId++;
  if (buildCounterDomainId < 3) {
    unittest.expect(o.customerPrimaryDomain, unittest.equals('foo'));
  }
  buildCounterDomainId--;
}

core.int buildCounterDomainWideTakeoutInitiated = 0;
buildDomainWideTakeoutInitiated() {
  var o = new api.DomainWideTakeoutInitiated();
  buildCounterDomainWideTakeoutInitiated++;
  if (buildCounterDomainWideTakeoutInitiated < 3) {
    o.email = "foo";
    o.takeoutRequestId = "foo";
  }
  buildCounterDomainWideTakeoutInitiated--;
  return o;
}

checkDomainWideTakeoutInitiated(api.DomainWideTakeoutInitiated o) {
  buildCounterDomainWideTakeoutInitiated++;
  if (buildCounterDomainWideTakeoutInitiated < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.takeoutRequestId, unittest.equals('foo'));
  }
  buildCounterDomainWideTakeoutInitiated--;
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

buildUnnamed6081() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6081(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGmailMessageInfo = 0;
buildGmailMessageInfo() {
  var o = new api.GmailMessageInfo();
  buildCounterGmailMessageInfo++;
  if (buildCounterGmailMessageInfo < 3) {
    o.attachmentsSha256Hash = buildUnnamed6081();
    o.date = "foo";
    o.md5HashMessageBody = "foo";
    o.md5HashSubject = "foo";
    o.messageBodySnippet = "foo";
    o.messageId = "foo";
    o.recipient = "foo";
    o.subjectText = "foo";
  }
  buildCounterGmailMessageInfo--;
  return o;
}

checkGmailMessageInfo(api.GmailMessageInfo o) {
  buildCounterGmailMessageInfo++;
  if (buildCounterGmailMessageInfo < 3) {
    checkUnnamed6081(o.attachmentsSha256Hash);
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

buildUnnamed6082() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6082(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleOperations = 0;
buildGoogleOperations() {
  var o = new api.GoogleOperations();
  buildCounterGoogleOperations++;
  if (buildCounterGoogleOperations < 3) {
    o.affectedUserEmails = buildUnnamed6082();
    o.attachmentData = buildAttachment();
    o.description = "foo";
    o.title = "foo";
  }
  buildCounterGoogleOperations--;
  return o;
}

checkGoogleOperations(api.GoogleOperations o) {
  buildCounterGoogleOperations++;
  if (buildCounterGoogleOperations < 3) {
    checkUnnamed6082(o.affectedUserEmails);
    checkAttachment(o.attachmentData);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleOperations--;
}

buildUnnamed6083() {
  var o = new core.List<api.AlertFeedback>();
  o.add(buildAlertFeedback());
  o.add(buildAlertFeedback());
  return o;
}

checkUnnamed6083(core.List<api.AlertFeedback> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAlertFeedback(o[0]);
  checkAlertFeedback(o[1]);
}

core.int buildCounterListAlertFeedbackResponse = 0;
buildListAlertFeedbackResponse() {
  var o = new api.ListAlertFeedbackResponse();
  buildCounterListAlertFeedbackResponse++;
  if (buildCounterListAlertFeedbackResponse < 3) {
    o.feedback = buildUnnamed6083();
  }
  buildCounterListAlertFeedbackResponse--;
  return o;
}

checkListAlertFeedbackResponse(api.ListAlertFeedbackResponse o) {
  buildCounterListAlertFeedbackResponse++;
  if (buildCounterListAlertFeedbackResponse < 3) {
    checkUnnamed6083(o.feedback);
  }
  buildCounterListAlertFeedbackResponse--;
}

buildUnnamed6084() {
  var o = new core.List<api.Alert>();
  o.add(buildAlert());
  o.add(buildAlert());
  return o;
}

checkUnnamed6084(core.List<api.Alert> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAlert(o[0]);
  checkAlert(o[1]);
}

core.int buildCounterListAlertsResponse = 0;
buildListAlertsResponse() {
  var o = new api.ListAlertsResponse();
  buildCounterListAlertsResponse++;
  if (buildCounterListAlertsResponse < 3) {
    o.alerts = buildUnnamed6084();
    o.nextPageToken = "foo";
  }
  buildCounterListAlertsResponse--;
  return o;
}

checkListAlertsResponse(api.ListAlertsResponse o) {
  buildCounterListAlertsResponse++;
  if (buildCounterListAlertsResponse < 3) {
    checkUnnamed6084(o.alerts);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAlertsResponse--;
}

core.int buildCounterLoginDetails = 0;
buildLoginDetails() {
  var o = new api.LoginDetails();
  buildCounterLoginDetails++;
  if (buildCounterLoginDetails < 3) {
    o.ipAddress = "foo";
    o.loginTime = "foo";
  }
  buildCounterLoginDetails--;
  return o;
}

checkLoginDetails(api.LoginDetails o) {
  buildCounterLoginDetails++;
  if (buildCounterLoginDetails < 3) {
    unittest.expect(o.ipAddress, unittest.equals('foo'));
    unittest.expect(o.loginTime, unittest.equals('foo'));
  }
  buildCounterLoginDetails--;
}

buildUnnamed6085() {
  var o = new core.List<api.GmailMessageInfo>();
  o.add(buildGmailMessageInfo());
  o.add(buildGmailMessageInfo());
  return o;
}

checkUnnamed6085(core.List<api.GmailMessageInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGmailMessageInfo(o[0]);
  checkGmailMessageInfo(o[1]);
}

core.int buildCounterMailPhishing = 0;
buildMailPhishing() {
  var o = new api.MailPhishing();
  buildCounterMailPhishing++;
  if (buildCounterMailPhishing < 3) {
    o.domainId = buildDomainId();
    o.isInternal = true;
    o.maliciousEntity = buildMaliciousEntity();
    o.messages = buildUnnamed6085();
    o.systemActionType = "foo";
  }
  buildCounterMailPhishing--;
  return o;
}

checkMailPhishing(api.MailPhishing o) {
  buildCounterMailPhishing++;
  if (buildCounterMailPhishing < 3) {
    checkDomainId(o.domainId);
    unittest.expect(o.isInternal, unittest.isTrue);
    checkMaliciousEntity(o.maliciousEntity);
    checkUnnamed6085(o.messages);
    unittest.expect(o.systemActionType, unittest.equals('foo'));
  }
  buildCounterMailPhishing--;
}

core.int buildCounterMaliciousEntity = 0;
buildMaliciousEntity() {
  var o = new api.MaliciousEntity();
  buildCounterMaliciousEntity++;
  if (buildCounterMaliciousEntity < 3) {
    o.displayName = "foo";
    o.entity = buildUser();
    o.fromHeader = "foo";
  }
  buildCounterMaliciousEntity--;
  return o;
}

checkMaliciousEntity(api.MaliciousEntity o) {
  buildCounterMaliciousEntity++;
  if (buildCounterMaliciousEntity < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUser(o.entity);
    unittest.expect(o.fromHeader, unittest.equals('foo'));
  }
  buildCounterMaliciousEntity--;
}

core.int buildCounterMatchInfo = 0;
buildMatchInfo() {
  var o = new api.MatchInfo();
  buildCounterMatchInfo++;
  if (buildCounterMatchInfo < 3) {
    o.predefinedDetector = buildPredefinedDetectorInfo();
    o.userDefinedDetector = buildUserDefinedDetectorInfo();
  }
  buildCounterMatchInfo--;
  return o;
}

checkMatchInfo(api.MatchInfo o) {
  buildCounterMatchInfo++;
  if (buildCounterMatchInfo < 3) {
    checkPredefinedDetectorInfo(o.predefinedDetector);
    checkUserDefinedDetectorInfo(o.userDefinedDetector);
  }
  buildCounterMatchInfo--;
}

core.int buildCounterNotification = 0;
buildNotification() {
  var o = new api.Notification();
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    o.cloudPubsubTopic = buildCloudPubsubTopic();
  }
  buildCounterNotification--;
  return o;
}

checkNotification(api.Notification o) {
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    checkCloudPubsubTopic(o.cloudPubsubTopic);
  }
  buildCounterNotification--;
}

buildUnnamed6086() {
  var o = new core.List<api.GmailMessageInfo>();
  o.add(buildGmailMessageInfo());
  o.add(buildGmailMessageInfo());
  return o;
}

checkUnnamed6086(core.List<api.GmailMessageInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGmailMessageInfo(o[0]);
  checkGmailMessageInfo(o[1]);
}

core.int buildCounterPhishingSpike = 0;
buildPhishingSpike() {
  var o = new api.PhishingSpike();
  buildCounterPhishingSpike++;
  if (buildCounterPhishingSpike < 3) {
    o.domainId = buildDomainId();
    o.isInternal = true;
    o.maliciousEntity = buildMaliciousEntity();
    o.messages = buildUnnamed6086();
  }
  buildCounterPhishingSpike--;
  return o;
}

checkPhishingSpike(api.PhishingSpike o) {
  buildCounterPhishingSpike++;
  if (buildCounterPhishingSpike < 3) {
    checkDomainId(o.domainId);
    unittest.expect(o.isInternal, unittest.isTrue);
    checkMaliciousEntity(o.maliciousEntity);
    checkUnnamed6086(o.messages);
  }
  buildCounterPhishingSpike--;
}

core.int buildCounterPredefinedDetectorInfo = 0;
buildPredefinedDetectorInfo() {
  var o = new api.PredefinedDetectorInfo();
  buildCounterPredefinedDetectorInfo++;
  if (buildCounterPredefinedDetectorInfo < 3) {
    o.detectorName = "foo";
  }
  buildCounterPredefinedDetectorInfo--;
  return o;
}

checkPredefinedDetectorInfo(api.PredefinedDetectorInfo o) {
  buildCounterPredefinedDetectorInfo++;
  if (buildCounterPredefinedDetectorInfo < 3) {
    unittest.expect(o.detectorName, unittest.equals('foo'));
  }
  buildCounterPredefinedDetectorInfo--;
}

buildUnnamed6087() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6087(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRequestInfo = 0;
buildRequestInfo() {
  var o = new api.RequestInfo();
  buildCounterRequestInfo++;
  if (buildCounterRequestInfo < 3) {
    o.appDeveloperEmail = buildUnnamed6087();
    o.appKey = "foo";
    o.numberOfRequests = "foo";
  }
  buildCounterRequestInfo--;
  return o;
}

checkRequestInfo(api.RequestInfo o) {
  buildCounterRequestInfo++;
  if (buildCounterRequestInfo < 3) {
    checkUnnamed6087(o.appDeveloperEmail);
    unittest.expect(o.appKey, unittest.equals('foo'));
    unittest.expect(o.numberOfRequests, unittest.equals('foo'));
  }
  buildCounterRequestInfo--;
}

core.int buildCounterResourceInfo = 0;
buildResourceInfo() {
  var o = new api.ResourceInfo();
  buildCounterResourceInfo++;
  if (buildCounterResourceInfo < 3) {
    o.documentId = "foo";
    o.resourceTitle = "foo";
  }
  buildCounterResourceInfo--;
  return o;
}

checkResourceInfo(api.ResourceInfo o) {
  buildCounterResourceInfo++;
  if (buildCounterResourceInfo < 3) {
    unittest.expect(o.documentId, unittest.equals('foo'));
    unittest.expect(o.resourceTitle, unittest.equals('foo'));
  }
  buildCounterResourceInfo--;
}

core.int buildCounterRuleInfo = 0;
buildRuleInfo() {
  var o = new api.RuleInfo();
  buildCounterRuleInfo++;
  if (buildCounterRuleInfo < 3) {
    o.displayName = "foo";
    o.resourceName = "foo";
  }
  buildCounterRuleInfo--;
  return o;
}

checkRuleInfo(api.RuleInfo o) {
  buildCounterRuleInfo++;
  if (buildCounterRuleInfo < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.resourceName, unittest.equals('foo'));
  }
  buildCounterRuleInfo--;
}

buildUnnamed6088() {
  var o = new core.List<api.MatchInfo>();
  o.add(buildMatchInfo());
  o.add(buildMatchInfo());
  return o;
}

checkUnnamed6088(core.List<api.MatchInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatchInfo(o[0]);
  checkMatchInfo(o[1]);
}

buildUnnamed6089() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6089(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed6090() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6090(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed6091() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6091(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRuleViolationInfo = 0;
buildRuleViolationInfo() {
  var o = new api.RuleViolationInfo();
  buildCounterRuleViolationInfo++;
  if (buildCounterRuleViolationInfo < 3) {
    o.dataSource = "foo";
    o.matchInfo = buildUnnamed6088();
    o.recipients = buildUnnamed6089();
    o.resourceInfo = buildResourceInfo();
    o.ruleInfo = buildRuleInfo();
    o.suppressedActionTypes = buildUnnamed6090();
    o.trigger = "foo";
    o.triggeredActionTypes = buildUnnamed6091();
    o.triggeringUserEmail = "foo";
  }
  buildCounterRuleViolationInfo--;
  return o;
}

checkRuleViolationInfo(api.RuleViolationInfo o) {
  buildCounterRuleViolationInfo++;
  if (buildCounterRuleViolationInfo < 3) {
    unittest.expect(o.dataSource, unittest.equals('foo'));
    checkUnnamed6088(o.matchInfo);
    checkUnnamed6089(o.recipients);
    checkResourceInfo(o.resourceInfo);
    checkRuleInfo(o.ruleInfo);
    checkUnnamed6090(o.suppressedActionTypes);
    unittest.expect(o.trigger, unittest.equals('foo'));
    checkUnnamed6091(o.triggeredActionTypes);
    unittest.expect(o.triggeringUserEmail, unittest.equals('foo'));
  }
  buildCounterRuleViolationInfo--;
}

buildUnnamed6092() {
  var o = new core.List<api.Notification>();
  o.add(buildNotification());
  o.add(buildNotification());
  return o;
}

checkUnnamed6092(core.List<api.Notification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotification(o[0]);
  checkNotification(o[1]);
}

core.int buildCounterSettings = 0;
buildSettings() {
  var o = new api.Settings();
  buildCounterSettings++;
  if (buildCounterSettings < 3) {
    o.notifications = buildUnnamed6092();
  }
  buildCounterSettings--;
  return o;
}

checkSettings(api.Settings o) {
  buildCounterSettings++;
  if (buildCounterSettings < 3) {
    checkUnnamed6092(o.notifications);
  }
  buildCounterSettings--;
}

core.int buildCounterStateSponsoredAttack = 0;
buildStateSponsoredAttack() {
  var o = new api.StateSponsoredAttack();
  buildCounterStateSponsoredAttack++;
  if (buildCounterStateSponsoredAttack < 3) {
    o.email = "foo";
  }
  buildCounterStateSponsoredAttack--;
  return o;
}

checkStateSponsoredAttack(api.StateSponsoredAttack o) {
  buildCounterStateSponsoredAttack++;
  if (buildCounterStateSponsoredAttack < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
  }
  buildCounterStateSponsoredAttack--;
}

buildUnnamed6093() {
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

checkUnnamed6093(core.Map<core.String, core.Object> o) {
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

buildUnnamed6094() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed6093());
  o.add(buildUnnamed6093());
  return o;
}

checkUnnamed6094(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6093(o[0]);
  checkUnnamed6093(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6094();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed6094(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed6095() {
  var o = new core.List<api.SuspiciousActivitySecurityDetail>();
  o.add(buildSuspiciousActivitySecurityDetail());
  o.add(buildSuspiciousActivitySecurityDetail());
  return o;
}

checkUnnamed6095(core.List<api.SuspiciousActivitySecurityDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuspiciousActivitySecurityDetail(o[0]);
  checkSuspiciousActivitySecurityDetail(o[1]);
}

core.int buildCounterSuspiciousActivity = 0;
buildSuspiciousActivity() {
  var o = new api.SuspiciousActivity();
  buildCounterSuspiciousActivity++;
  if (buildCounterSuspiciousActivity < 3) {
    o.email = "foo";
    o.events = buildUnnamed6095();
  }
  buildCounterSuspiciousActivity--;
  return o;
}

checkSuspiciousActivity(api.SuspiciousActivity o) {
  buildCounterSuspiciousActivity++;
  if (buildCounterSuspiciousActivity < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    checkUnnamed6095(o.events);
  }
  buildCounterSuspiciousActivity--;
}

core.int buildCounterSuspiciousActivitySecurityDetail = 0;
buildSuspiciousActivitySecurityDetail() {
  var o = new api.SuspiciousActivitySecurityDetail();
  buildCounterSuspiciousActivitySecurityDetail++;
  if (buildCounterSuspiciousActivitySecurityDetail < 3) {
    o.deviceId = "foo";
    o.deviceModel = "foo";
    o.deviceProperty = "foo";
    o.deviceType = "foo";
    o.iosVendorId = "foo";
    o.newValue = "foo";
    o.oldValue = "foo";
    o.resourceId = "foo";
    o.serialNumber = "foo";
  }
  buildCounterSuspiciousActivitySecurityDetail--;
  return o;
}

checkSuspiciousActivitySecurityDetail(api.SuspiciousActivitySecurityDetail o) {
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
buildUndeleteAlertRequest() {
  var o = new api.UndeleteAlertRequest();
  buildCounterUndeleteAlertRequest++;
  if (buildCounterUndeleteAlertRequest < 3) {
    o.customerId = "foo";
  }
  buildCounterUndeleteAlertRequest--;
  return o;
}

checkUndeleteAlertRequest(api.UndeleteAlertRequest o) {
  buildCounterUndeleteAlertRequest++;
  if (buildCounterUndeleteAlertRequest < 3) {
    unittest.expect(o.customerId, unittest.equals('foo'));
  }
  buildCounterUndeleteAlertRequest--;
}

core.int buildCounterUser = 0;
buildUser() {
  var o = new api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.displayName = "foo";
    o.emailAddress = "foo";
  }
  buildCounterUser--;
  return o;
}

checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.emailAddress, unittest.equals('foo'));
  }
  buildCounterUser--;
}

core.int buildCounterUserDefinedDetectorInfo = 0;
buildUserDefinedDetectorInfo() {
  var o = new api.UserDefinedDetectorInfo();
  buildCounterUserDefinedDetectorInfo++;
  if (buildCounterUserDefinedDetectorInfo < 3) {
    o.displayName = "foo";
    o.resourceName = "foo";
  }
  buildCounterUserDefinedDetectorInfo--;
  return o;
}

checkUserDefinedDetectorInfo(api.UserDefinedDetectorInfo o) {
  buildCounterUserDefinedDetectorInfo++;
  if (buildCounterUserDefinedDetectorInfo < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.resourceName, unittest.equals('foo'));
  }
  buildCounterUserDefinedDetectorInfo--;
}

main() {
  unittest.group("obj-schema-AccountWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountWarning();
      var od = new api.AccountWarning.fromJson(o.toJson());
      checkAccountWarning(od);
    });
  });

  unittest.group("obj-schema-ActivityRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityRule();
      var od = new api.ActivityRule.fromJson(o.toJson());
      checkActivityRule(od);
    });
  });

  unittest.group("obj-schema-Alert", () {
    unittest.test("to-json--from-json", () {
      var o = buildAlert();
      var od = new api.Alert.fromJson(o.toJson());
      checkAlert(od);
    });
  });

  unittest.group("obj-schema-AlertFeedback", () {
    unittest.test("to-json--from-json", () {
      var o = buildAlertFeedback();
      var od = new api.AlertFeedback.fromJson(o.toJson());
      checkAlertFeedback(od);
    });
  });

  unittest.group("obj-schema-AlertMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildAlertMetadata();
      var od = new api.AlertMetadata.fromJson(o.toJson());
      checkAlertMetadata(od);
    });
  });

  unittest.group("obj-schema-AppMakerSqlSetupNotification", () {
    unittest.test("to-json--from-json", () {
      var o = buildAppMakerSqlSetupNotification();
      var od = new api.AppMakerSqlSetupNotification.fromJson(o.toJson());
      checkAppMakerSqlSetupNotification(od);
    });
  });

  unittest.group("obj-schema-Attachment", () {
    unittest.test("to-json--from-json", () {
      var o = buildAttachment();
      var od = new api.Attachment.fromJson(o.toJson());
      checkAttachment(od);
    });
  });

  unittest.group("obj-schema-BadWhitelist", () {
    unittest.test("to-json--from-json", () {
      var o = buildBadWhitelist();
      var od = new api.BadWhitelist.fromJson(o.toJson());
      checkBadWhitelist(od);
    });
  });

  unittest.group("obj-schema-BatchDeleteAlertsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchDeleteAlertsRequest();
      var od = new api.BatchDeleteAlertsRequest.fromJson(o.toJson());
      checkBatchDeleteAlertsRequest(od);
    });
  });

  unittest.group("obj-schema-BatchDeleteAlertsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchDeleteAlertsResponse();
      var od = new api.BatchDeleteAlertsResponse.fromJson(o.toJson());
      checkBatchDeleteAlertsResponse(od);
    });
  });

  unittest.group("obj-schema-BatchUndeleteAlertsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchUndeleteAlertsRequest();
      var od = new api.BatchUndeleteAlertsRequest.fromJson(o.toJson());
      checkBatchUndeleteAlertsRequest(od);
    });
  });

  unittest.group("obj-schema-BatchUndeleteAlertsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchUndeleteAlertsResponse();
      var od = new api.BatchUndeleteAlertsResponse.fromJson(o.toJson());
      checkBatchUndeleteAlertsResponse(od);
    });
  });

  unittest.group("obj-schema-CloudPubsubTopic", () {
    unittest.test("to-json--from-json", () {
      var o = buildCloudPubsubTopic();
      var od = new api.CloudPubsubTopic.fromJson(o.toJson());
      checkCloudPubsubTopic(od);
    });
  });

  unittest.group("obj-schema-Csv", () {
    unittest.test("to-json--from-json", () {
      var o = buildCsv();
      var od = new api.Csv.fromJson(o.toJson());
      checkCsv(od);
    });
  });

  unittest.group("obj-schema-CsvRow", () {
    unittest.test("to-json--from-json", () {
      var o = buildCsvRow();
      var od = new api.CsvRow.fromJson(o.toJson());
      checkCsvRow(od);
    });
  });

  unittest.group("obj-schema-DeviceCompromised", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeviceCompromised();
      var od = new api.DeviceCompromised.fromJson(o.toJson());
      checkDeviceCompromised(od);
    });
  });

  unittest.group("obj-schema-DeviceCompromisedSecurityDetail", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeviceCompromisedSecurityDetail();
      var od = new api.DeviceCompromisedSecurityDetail.fromJson(o.toJson());
      checkDeviceCompromisedSecurityDetail(od);
    });
  });

  unittest.group("obj-schema-DlpRuleViolation", () {
    unittest.test("to-json--from-json", () {
      var o = buildDlpRuleViolation();
      var od = new api.DlpRuleViolation.fromJson(o.toJson());
      checkDlpRuleViolation(od);
    });
  });

  unittest.group("obj-schema-DomainId", () {
    unittest.test("to-json--from-json", () {
      var o = buildDomainId();
      var od = new api.DomainId.fromJson(o.toJson());
      checkDomainId(od);
    });
  });

  unittest.group("obj-schema-DomainWideTakeoutInitiated", () {
    unittest.test("to-json--from-json", () {
      var o = buildDomainWideTakeoutInitiated();
      var od = new api.DomainWideTakeoutInitiated.fromJson(o.toJson());
      checkDomainWideTakeoutInitiated(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-GmailMessageInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGmailMessageInfo();
      var od = new api.GmailMessageInfo.fromJson(o.toJson());
      checkGmailMessageInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleOperations", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleOperations();
      var od = new api.GoogleOperations.fromJson(o.toJson());
      checkGoogleOperations(od);
    });
  });

  unittest.group("obj-schema-ListAlertFeedbackResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAlertFeedbackResponse();
      var od = new api.ListAlertFeedbackResponse.fromJson(o.toJson());
      checkListAlertFeedbackResponse(od);
    });
  });

  unittest.group("obj-schema-ListAlertsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAlertsResponse();
      var od = new api.ListAlertsResponse.fromJson(o.toJson());
      checkListAlertsResponse(od);
    });
  });

  unittest.group("obj-schema-LoginDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildLoginDetails();
      var od = new api.LoginDetails.fromJson(o.toJson());
      checkLoginDetails(od);
    });
  });

  unittest.group("obj-schema-MailPhishing", () {
    unittest.test("to-json--from-json", () {
      var o = buildMailPhishing();
      var od = new api.MailPhishing.fromJson(o.toJson());
      checkMailPhishing(od);
    });
  });

  unittest.group("obj-schema-MaliciousEntity", () {
    unittest.test("to-json--from-json", () {
      var o = buildMaliciousEntity();
      var od = new api.MaliciousEntity.fromJson(o.toJson());
      checkMaliciousEntity(od);
    });
  });

  unittest.group("obj-schema-MatchInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildMatchInfo();
      var od = new api.MatchInfo.fromJson(o.toJson());
      checkMatchInfo(od);
    });
  });

  unittest.group("obj-schema-Notification", () {
    unittest.test("to-json--from-json", () {
      var o = buildNotification();
      var od = new api.Notification.fromJson(o.toJson());
      checkNotification(od);
    });
  });

  unittest.group("obj-schema-PhishingSpike", () {
    unittest.test("to-json--from-json", () {
      var o = buildPhishingSpike();
      var od = new api.PhishingSpike.fromJson(o.toJson());
      checkPhishingSpike(od);
    });
  });

  unittest.group("obj-schema-PredefinedDetectorInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildPredefinedDetectorInfo();
      var od = new api.PredefinedDetectorInfo.fromJson(o.toJson());
      checkPredefinedDetectorInfo(od);
    });
  });

  unittest.group("obj-schema-RequestInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildRequestInfo();
      var od = new api.RequestInfo.fromJson(o.toJson());
      checkRequestInfo(od);
    });
  });

  unittest.group("obj-schema-ResourceInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceInfo();
      var od = new api.ResourceInfo.fromJson(o.toJson());
      checkResourceInfo(od);
    });
  });

  unittest.group("obj-schema-RuleInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildRuleInfo();
      var od = new api.RuleInfo.fromJson(o.toJson());
      checkRuleInfo(od);
    });
  });

  unittest.group("obj-schema-RuleViolationInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildRuleViolationInfo();
      var od = new api.RuleViolationInfo.fromJson(o.toJson());
      checkRuleViolationInfo(od);
    });
  });

  unittest.group("obj-schema-Settings", () {
    unittest.test("to-json--from-json", () {
      var o = buildSettings();
      var od = new api.Settings.fromJson(o.toJson());
      checkSettings(od);
    });
  });

  unittest.group("obj-schema-StateSponsoredAttack", () {
    unittest.test("to-json--from-json", () {
      var o = buildStateSponsoredAttack();
      var od = new api.StateSponsoredAttack.fromJson(o.toJson());
      checkStateSponsoredAttack(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-SuspiciousActivity", () {
    unittest.test("to-json--from-json", () {
      var o = buildSuspiciousActivity();
      var od = new api.SuspiciousActivity.fromJson(o.toJson());
      checkSuspiciousActivity(od);
    });
  });

  unittest.group("obj-schema-SuspiciousActivitySecurityDetail", () {
    unittest.test("to-json--from-json", () {
      var o = buildSuspiciousActivitySecurityDetail();
      var od = new api.SuspiciousActivitySecurityDetail.fromJson(o.toJson());
      checkSuspiciousActivitySecurityDetail(od);
    });
  });

  unittest.group("obj-schema-UndeleteAlertRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUndeleteAlertRequest();
      var od = new api.UndeleteAlertRequest.fromJson(o.toJson());
      checkUndeleteAlertRequest(od);
    });
  });

  unittest.group("obj-schema-User", () {
    unittest.test("to-json--from-json", () {
      var o = buildUser();
      var od = new api.User.fromJson(o.toJson());
      checkUser(od);
    });
  });

  unittest.group("obj-schema-UserDefinedDetectorInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserDefinedDetectorInfo();
      var od = new api.UserDefinedDetectorInfo.fromJson(o.toJson());
      checkUserDefinedDetectorInfo(od);
    });
  });

  unittest.group("resource-AlertsResourceApi", () {
    unittest.test("method--batchDelete", () {
      var mock = new HttpServerMock();
      api.AlertsResourceApi res = new api.AlertcenterApi(mock).alerts;
      var arg_request = buildBatchDeleteAlertsRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchDeleteAlertsRequest.fromJson(json);
        checkBatchDeleteAlertsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("v1beta1/alerts:batchDelete"));
        pathOffset += 26;

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
        var resp = convert.json.encode(buildBatchDeleteAlertsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchDelete(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchDeleteAlertsResponse(response);
      })));
    });

    unittest.test("method--batchUndelete", () {
      var mock = new HttpServerMock();
      api.AlertsResourceApi res = new api.AlertcenterApi(mock).alerts;
      var arg_request = buildBatchUndeleteAlertsRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchUndeleteAlertsRequest.fromJson(json);
        checkBatchUndeleteAlertsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("v1beta1/alerts:batchUndelete"));
        pathOffset += 28;

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
        var resp = convert.json.encode(buildBatchUndeleteAlertsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUndelete(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchUndeleteAlertsResponse(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.AlertsResourceApi res = new api.AlertcenterApi(mock).alerts;
      var arg_alertId = "foo";
      var arg_customerId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1beta1/alerts/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_alertId"));

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
            queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_alertId, customerId: arg_customerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AlertsResourceApi res = new api.AlertcenterApi(mock).alerts;
      var arg_alertId = "foo";
      var arg_customerId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1beta1/alerts/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_alertId"));

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
            queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAlert());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_alertId, customerId: arg_customerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAlert(response);
      })));
    });

    unittest.test("method--getMetadata", () {
      var mock = new HttpServerMock();
      api.AlertsResourceApi res = new api.AlertcenterApi(mock).alerts;
      var arg_alertId = "foo";
      var arg_customerId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1beta1/alerts/"));
        pathOffset += 15;
        index = path.indexOf("/metadata", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_alertId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/metadata"));
        pathOffset += 9;

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
            queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAlertMetadata());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getMetadata(arg_alertId,
              customerId: arg_customerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAlertMetadata(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AlertsResourceApi res = new api.AlertcenterApi(mock).alerts;
      var arg_pageSize = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_customerId = "foo";
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1beta1/alerts"));
        pathOffset += 14;

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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListAlertsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageSize: arg_pageSize,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              customerId: arg_customerId,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAlertsResponse(response);
      })));
    });

    unittest.test("method--undelete", () {
      var mock = new HttpServerMock();
      api.AlertsResourceApi res = new api.AlertcenterApi(mock).alerts;
      var arg_request = buildUndeleteAlertRequest();
      var arg_alertId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UndeleteAlertRequest.fromJson(json);
        checkUndeleteAlertRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1beta1/alerts/"));
        pathOffset += 15;
        index = path.indexOf(":undelete", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_alertId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals(":undelete"));
        pathOffset += 9;

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
        var resp = convert.json.encode(buildAlert());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .undelete(arg_request, arg_alertId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAlert(response);
      })));
    });
  });

  unittest.group("resource-AlertsFeedbackResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.AlertsFeedbackResourceApi res =
          new api.AlertcenterApi(mock).alerts.feedback;
      var arg_request = buildAlertFeedback();
      var arg_alertId = "foo";
      var arg_customerId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AlertFeedback.fromJson(json);
        checkAlertFeedback(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1beta1/alerts/"));
        pathOffset += 15;
        index = path.indexOf("/feedback", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_alertId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/feedback"));
        pathOffset += 9;

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
            queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAlertFeedback());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_alertId,
              customerId: arg_customerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAlertFeedback(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AlertsFeedbackResourceApi res =
          new api.AlertcenterApi(mock).alerts.feedback;
      var arg_alertId = "foo";
      var arg_customerId = "foo";
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1beta1/alerts/"));
        pathOffset += 15;
        index = path.indexOf("/feedback", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_alertId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/feedback"));
        pathOffset += 9;

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
            queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListAlertFeedbackResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_alertId,
              customerId: arg_customerId,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAlertFeedbackResponse(response);
      })));
    });
  });

  unittest.group("resource-V1beta1ResourceApi", () {
    unittest.test("method--getSettings", () {
      var mock = new HttpServerMock();
      api.V1beta1ResourceApi res = new api.AlertcenterApi(mock).v1beta1;
      var arg_customerId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1beta1/settings"));
        pathOffset += 16;

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
            queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getSettings(customerId: arg_customerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSettings(response);
      })));
    });

    unittest.test("method--updateSettings", () {
      var mock = new HttpServerMock();
      api.V1beta1ResourceApi res = new api.AlertcenterApi(mock).v1beta1;
      var arg_request = buildSettings();
      var arg_customerId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Settings.fromJson(json);
        checkSettings(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1beta1/settings"));
        pathOffset += 16;

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
            queryMap["customerId"].first, unittest.equals(arg_customerId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSettings());
        return new async.Future.value(stringResponse(200, h, resp));
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
