library googleapis.healthcare.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/healthcare/v1.dart' as api;

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

buildUnnamed1642() {
  var o = new core.List<api.AuditLogConfig>();
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

checkUnnamed1642(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
buildAuditConfig() {
  var o = new api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed1642();
    o.service = "foo";
  }
  buildCounterAuditConfig--;
  return o;
}

checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed1642(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

buildUnnamed1643() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1643(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
buildAuditLogConfig() {
  var o = new api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed1643();
    o.logType = "foo";
  }
  buildCounterAuditLogConfig--;
  return o;
}

checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed1643(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

buildUnnamed1644() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1644(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
buildBinding() {
  var o = new api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed1644();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed1644(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCancelOperationRequest = 0;
buildCancelOperationRequest() {
  var o = new api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.int buildCounterCharacterMaskConfig = 0;
buildCharacterMaskConfig() {
  var o = new api.CharacterMaskConfig();
  buildCounterCharacterMaskConfig++;
  if (buildCounterCharacterMaskConfig < 3) {
    o.maskingCharacter = "foo";
  }
  buildCounterCharacterMaskConfig--;
  return o;
}

checkCharacterMaskConfig(api.CharacterMaskConfig o) {
  buildCounterCharacterMaskConfig++;
  if (buildCounterCharacterMaskConfig < 3) {
    unittest.expect(o.maskingCharacter, unittest.equals('foo'));
  }
  buildCounterCharacterMaskConfig--;
}

core.int buildCounterCreateMessageRequest = 0;
buildCreateMessageRequest() {
  var o = new api.CreateMessageRequest();
  buildCounterCreateMessageRequest++;
  if (buildCounterCreateMessageRequest < 3) {
    o.message = buildMessage();
  }
  buildCounterCreateMessageRequest--;
  return o;
}

checkCreateMessageRequest(api.CreateMessageRequest o) {
  buildCounterCreateMessageRequest++;
  if (buildCounterCreateMessageRequest < 3) {
    checkMessage(o.message);
  }
  buildCounterCreateMessageRequest--;
}

core.int buildCounterCryptoHashConfig = 0;
buildCryptoHashConfig() {
  var o = new api.CryptoHashConfig();
  buildCounterCryptoHashConfig++;
  if (buildCounterCryptoHashConfig < 3) {
    o.cryptoKey = "foo";
  }
  buildCounterCryptoHashConfig--;
  return o;
}

checkCryptoHashConfig(api.CryptoHashConfig o) {
  buildCounterCryptoHashConfig++;
  if (buildCounterCryptoHashConfig < 3) {
    unittest.expect(o.cryptoKey, unittest.equals('foo'));
  }
  buildCounterCryptoHashConfig--;
}

core.int buildCounterDataset = 0;
buildDataset() {
  var o = new api.Dataset();
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    o.name = "foo";
    o.timeZone = "foo";
  }
  buildCounterDataset--;
  return o;
}

checkDataset(api.Dataset o) {
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterDataset--;
}

core.int buildCounterDateShiftConfig = 0;
buildDateShiftConfig() {
  var o = new api.DateShiftConfig();
  buildCounterDateShiftConfig++;
  if (buildCounterDateShiftConfig < 3) {
    o.cryptoKey = "foo";
  }
  buildCounterDateShiftConfig--;
  return o;
}

checkDateShiftConfig(api.DateShiftConfig o) {
  buildCounterDateShiftConfig++;
  if (buildCounterDateShiftConfig < 3) {
    unittest.expect(o.cryptoKey, unittest.equals('foo'));
  }
  buildCounterDateShiftConfig--;
}

core.int buildCounterDeidentifyConfig = 0;
buildDeidentifyConfig() {
  var o = new api.DeidentifyConfig();
  buildCounterDeidentifyConfig++;
  if (buildCounterDeidentifyConfig < 3) {
    o.dicom = buildDicomConfig();
    o.fhir = buildFhirConfig();
    o.image = buildImageConfig();
    o.text = buildTextConfig();
  }
  buildCounterDeidentifyConfig--;
  return o;
}

checkDeidentifyConfig(api.DeidentifyConfig o) {
  buildCounterDeidentifyConfig++;
  if (buildCounterDeidentifyConfig < 3) {
    checkDicomConfig(o.dicom);
    checkFhirConfig(o.fhir);
    checkImageConfig(o.image);
    checkTextConfig(o.text);
  }
  buildCounterDeidentifyConfig--;
}

core.int buildCounterDeidentifyDatasetRequest = 0;
buildDeidentifyDatasetRequest() {
  var o = new api.DeidentifyDatasetRequest();
  buildCounterDeidentifyDatasetRequest++;
  if (buildCounterDeidentifyDatasetRequest < 3) {
    o.config = buildDeidentifyConfig();
    o.destinationDataset = "foo";
  }
  buildCounterDeidentifyDatasetRequest--;
  return o;
}

checkDeidentifyDatasetRequest(api.DeidentifyDatasetRequest o) {
  buildCounterDeidentifyDatasetRequest++;
  if (buildCounterDeidentifyDatasetRequest < 3) {
    checkDeidentifyConfig(o.config);
    unittest.expect(o.destinationDataset, unittest.equals('foo'));
  }
  buildCounterDeidentifyDatasetRequest--;
}

core.int buildCounterDeidentifyDicomStoreRequest = 0;
buildDeidentifyDicomStoreRequest() {
  var o = new api.DeidentifyDicomStoreRequest();
  buildCounterDeidentifyDicomStoreRequest++;
  if (buildCounterDeidentifyDicomStoreRequest < 3) {
    o.config = buildDeidentifyConfig();
    o.destinationStore = "foo";
    o.filterConfig = buildDicomFilterConfig();
  }
  buildCounterDeidentifyDicomStoreRequest--;
  return o;
}

checkDeidentifyDicomStoreRequest(api.DeidentifyDicomStoreRequest o) {
  buildCounterDeidentifyDicomStoreRequest++;
  if (buildCounterDeidentifyDicomStoreRequest < 3) {
    checkDeidentifyConfig(o.config);
    unittest.expect(o.destinationStore, unittest.equals('foo'));
    checkDicomFilterConfig(o.filterConfig);
  }
  buildCounterDeidentifyDicomStoreRequest--;
}

core.int buildCounterDeidentifyFhirStoreRequest = 0;
buildDeidentifyFhirStoreRequest() {
  var o = new api.DeidentifyFhirStoreRequest();
  buildCounterDeidentifyFhirStoreRequest++;
  if (buildCounterDeidentifyFhirStoreRequest < 3) {
    o.config = buildDeidentifyConfig();
    o.destinationStore = "foo";
    o.resourceFilter = buildFhirFilter();
  }
  buildCounterDeidentifyFhirStoreRequest--;
  return o;
}

checkDeidentifyFhirStoreRequest(api.DeidentifyFhirStoreRequest o) {
  buildCounterDeidentifyFhirStoreRequest++;
  if (buildCounterDeidentifyFhirStoreRequest < 3) {
    checkDeidentifyConfig(o.config);
    unittest.expect(o.destinationStore, unittest.equals('foo'));
    checkFhirFilter(o.resourceFilter);
  }
  buildCounterDeidentifyFhirStoreRequest--;
}

core.int buildCounterDeidentifySummary = 0;
buildDeidentifySummary() {
  var o = new api.DeidentifySummary();
  buildCounterDeidentifySummary++;
  if (buildCounterDeidentifySummary < 3) {}
  buildCounterDeidentifySummary--;
  return o;
}

checkDeidentifySummary(api.DeidentifySummary o) {
  buildCounterDeidentifySummary++;
  if (buildCounterDeidentifySummary < 3) {}
  buildCounterDeidentifySummary--;
}

core.int buildCounterDicomConfig = 0;
buildDicomConfig() {
  var o = new api.DicomConfig();
  buildCounterDicomConfig++;
  if (buildCounterDicomConfig < 3) {
    o.filterProfile = "foo";
    o.keepList = buildTagFilterList();
    o.removeList = buildTagFilterList();
    o.skipIdRedaction = true;
  }
  buildCounterDicomConfig--;
  return o;
}

checkDicomConfig(api.DicomConfig o) {
  buildCounterDicomConfig++;
  if (buildCounterDicomConfig < 3) {
    unittest.expect(o.filterProfile, unittest.equals('foo'));
    checkTagFilterList(o.keepList);
    checkTagFilterList(o.removeList);
    unittest.expect(o.skipIdRedaction, unittest.isTrue);
  }
  buildCounterDicomConfig--;
}

core.int buildCounterDicomFilterConfig = 0;
buildDicomFilterConfig() {
  var o = new api.DicomFilterConfig();
  buildCounterDicomFilterConfig++;
  if (buildCounterDicomFilterConfig < 3) {
    o.resourcePathsGcsUri = "foo";
  }
  buildCounterDicomFilterConfig--;
  return o;
}

checkDicomFilterConfig(api.DicomFilterConfig o) {
  buildCounterDicomFilterConfig++;
  if (buildCounterDicomFilterConfig < 3) {
    unittest.expect(o.resourcePathsGcsUri, unittest.equals('foo'));
  }
  buildCounterDicomFilterConfig--;
}

buildUnnamed1645() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1645(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterDicomStore = 0;
buildDicomStore() {
  var o = new api.DicomStore();
  buildCounterDicomStore++;
  if (buildCounterDicomStore < 3) {
    o.labels = buildUnnamed1645();
    o.name = "foo";
    o.notificationConfig = buildNotificationConfig();
  }
  buildCounterDicomStore--;
  return o;
}

checkDicomStore(api.DicomStore o) {
  buildCounterDicomStore++;
  if (buildCounterDicomStore < 3) {
    checkUnnamed1645(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkNotificationConfig(o.notificationConfig);
  }
  buildCounterDicomStore--;
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

core.int buildCounterExportDicomDataRequest = 0;
buildExportDicomDataRequest() {
  var o = new api.ExportDicomDataRequest();
  buildCounterExportDicomDataRequest++;
  if (buildCounterExportDicomDataRequest < 3) {
    o.bigqueryDestination =
        buildGoogleCloudHealthcareV1DicomBigQueryDestination();
    o.gcsDestination = buildGoogleCloudHealthcareV1DicomGcsDestination();
  }
  buildCounterExportDicomDataRequest--;
  return o;
}

checkExportDicomDataRequest(api.ExportDicomDataRequest o) {
  buildCounterExportDicomDataRequest++;
  if (buildCounterExportDicomDataRequest < 3) {
    checkGoogleCloudHealthcareV1DicomBigQueryDestination(o.bigqueryDestination);
    checkGoogleCloudHealthcareV1DicomGcsDestination(o.gcsDestination);
  }
  buildCounterExportDicomDataRequest--;
}

core.int buildCounterExportDicomDataResponse = 0;
buildExportDicomDataResponse() {
  var o = new api.ExportDicomDataResponse();
  buildCounterExportDicomDataResponse++;
  if (buildCounterExportDicomDataResponse < 3) {}
  buildCounterExportDicomDataResponse--;
  return o;
}

checkExportDicomDataResponse(api.ExportDicomDataResponse o) {
  buildCounterExportDicomDataResponse++;
  if (buildCounterExportDicomDataResponse < 3) {}
  buildCounterExportDicomDataResponse--;
}

core.int buildCounterExportResourcesRequest = 0;
buildExportResourcesRequest() {
  var o = new api.ExportResourcesRequest();
  buildCounterExportResourcesRequest++;
  if (buildCounterExportResourcesRequest < 3) {
    o.bigqueryDestination =
        buildGoogleCloudHealthcareV1FhirBigQueryDestination();
    o.gcsDestination = buildGoogleCloudHealthcareV1FhirGcsDestination();
  }
  buildCounterExportResourcesRequest--;
  return o;
}

checkExportResourcesRequest(api.ExportResourcesRequest o) {
  buildCounterExportResourcesRequest++;
  if (buildCounterExportResourcesRequest < 3) {
    checkGoogleCloudHealthcareV1FhirBigQueryDestination(o.bigqueryDestination);
    checkGoogleCloudHealthcareV1FhirGcsDestination(o.gcsDestination);
  }
  buildCounterExportResourcesRequest--;
}

core.int buildCounterExportResourcesResponse = 0;
buildExportResourcesResponse() {
  var o = new api.ExportResourcesResponse();
  buildCounterExportResourcesResponse++;
  if (buildCounterExportResourcesResponse < 3) {}
  buildCounterExportResourcesResponse--;
  return o;
}

checkExportResourcesResponse(api.ExportResourcesResponse o) {
  buildCounterExportResourcesResponse++;
  if (buildCounterExportResourcesResponse < 3) {}
  buildCounterExportResourcesResponse--;
}

core.int buildCounterExpr = 0;
buildExpr() {
  var o = new api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = "foo";
    o.expression = "foo";
    o.location = "foo";
    o.title = "foo";
  }
  buildCounterExpr--;
  return o;
}

checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

buildUnnamed1646() {
  var o = new core.List<api.FieldMetadata>();
  o.add(buildFieldMetadata());
  o.add(buildFieldMetadata());
  return o;
}

checkUnnamed1646(core.List<api.FieldMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldMetadata(o[0]);
  checkFieldMetadata(o[1]);
}

core.int buildCounterFhirConfig = 0;
buildFhirConfig() {
  var o = new api.FhirConfig();
  buildCounterFhirConfig++;
  if (buildCounterFhirConfig < 3) {
    o.fieldMetadataList = buildUnnamed1646();
  }
  buildCounterFhirConfig--;
  return o;
}

checkFhirConfig(api.FhirConfig o) {
  buildCounterFhirConfig++;
  if (buildCounterFhirConfig < 3) {
    checkUnnamed1646(o.fieldMetadataList);
  }
  buildCounterFhirConfig--;
}

core.int buildCounterFhirFilter = 0;
buildFhirFilter() {
  var o = new api.FhirFilter();
  buildCounterFhirFilter++;
  if (buildCounterFhirFilter < 3) {
    o.resources = buildResources();
  }
  buildCounterFhirFilter--;
  return o;
}

checkFhirFilter(api.FhirFilter o) {
  buildCounterFhirFilter++;
  if (buildCounterFhirFilter < 3) {
    checkResources(o.resources);
  }
  buildCounterFhirFilter--;
}

buildUnnamed1647() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1647(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed1648() {
  var o = new core.List<api.StreamConfig>();
  o.add(buildStreamConfig());
  o.add(buildStreamConfig());
  return o;
}

checkUnnamed1648(core.List<api.StreamConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamConfig(o[0]);
  checkStreamConfig(o[1]);
}

core.int buildCounterFhirStore = 0;
buildFhirStore() {
  var o = new api.FhirStore();
  buildCounterFhirStore++;
  if (buildCounterFhirStore < 3) {
    o.disableReferentialIntegrity = true;
    o.disableResourceVersioning = true;
    o.enableUpdateCreate = true;
    o.labels = buildUnnamed1647();
    o.name = "foo";
    o.notificationConfig = buildNotificationConfig();
    o.streamConfigs = buildUnnamed1648();
    o.version = "foo";
  }
  buildCounterFhirStore--;
  return o;
}

checkFhirStore(api.FhirStore o) {
  buildCounterFhirStore++;
  if (buildCounterFhirStore < 3) {
    unittest.expect(o.disableReferentialIntegrity, unittest.isTrue);
    unittest.expect(o.disableResourceVersioning, unittest.isTrue);
    unittest.expect(o.enableUpdateCreate, unittest.isTrue);
    checkUnnamed1647(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkNotificationConfig(o.notificationConfig);
    checkUnnamed1648(o.streamConfigs);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterFhirStore--;
}

buildUnnamed1649() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1649(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFieldMetadata = 0;
buildFieldMetadata() {
  var o = new api.FieldMetadata();
  buildCounterFieldMetadata++;
  if (buildCounterFieldMetadata < 3) {
    o.action = "foo";
    o.paths = buildUnnamed1649();
  }
  buildCounterFieldMetadata--;
  return o;
}

checkFieldMetadata(api.FieldMetadata o) {
  buildCounterFieldMetadata++;
  if (buildCounterFieldMetadata < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUnnamed1649(o.paths);
  }
  buildCounterFieldMetadata--;
}

core.int
    buildCounterGoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary =
    0;
buildGoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary() {
  var o =
      new api.GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary();
  buildCounterGoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary++;
  if (buildCounterGoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary <
      3) {}
  buildCounterGoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary--;
  return o;
}

checkGoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary(
    api.GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary o) {
  buildCounterGoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary++;
  if (buildCounterGoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary <
      3) {}
  buildCounterGoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary--;
}

core.int
    buildCounterGoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary = 0;
buildGoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary() {
  var o = new api.GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary();
  buildCounterGoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary++;
  if (buildCounterGoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary <
      3) {}
  buildCounterGoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary--;
  return o;
}

checkGoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary(
    api.GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary o) {
  buildCounterGoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary++;
  if (buildCounterGoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary <
      3) {}
  buildCounterGoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary--;
}

core.int buildCounterGoogleCloudHealthcareV1DicomBigQueryDestination = 0;
buildGoogleCloudHealthcareV1DicomBigQueryDestination() {
  var o = new api.GoogleCloudHealthcareV1DicomBigQueryDestination();
  buildCounterGoogleCloudHealthcareV1DicomBigQueryDestination++;
  if (buildCounterGoogleCloudHealthcareV1DicomBigQueryDestination < 3) {
    o.force = true;
    o.tableUri = "foo";
  }
  buildCounterGoogleCloudHealthcareV1DicomBigQueryDestination--;
  return o;
}

checkGoogleCloudHealthcareV1DicomBigQueryDestination(
    api.GoogleCloudHealthcareV1DicomBigQueryDestination o) {
  buildCounterGoogleCloudHealthcareV1DicomBigQueryDestination++;
  if (buildCounterGoogleCloudHealthcareV1DicomBigQueryDestination < 3) {
    unittest.expect(o.force, unittest.isTrue);
    unittest.expect(o.tableUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudHealthcareV1DicomBigQueryDestination--;
}

core.int buildCounterGoogleCloudHealthcareV1DicomGcsDestination = 0;
buildGoogleCloudHealthcareV1DicomGcsDestination() {
  var o = new api.GoogleCloudHealthcareV1DicomGcsDestination();
  buildCounterGoogleCloudHealthcareV1DicomGcsDestination++;
  if (buildCounterGoogleCloudHealthcareV1DicomGcsDestination < 3) {
    o.mimeType = "foo";
    o.uriPrefix = "foo";
  }
  buildCounterGoogleCloudHealthcareV1DicomGcsDestination--;
  return o;
}

checkGoogleCloudHealthcareV1DicomGcsDestination(
    api.GoogleCloudHealthcareV1DicomGcsDestination o) {
  buildCounterGoogleCloudHealthcareV1DicomGcsDestination++;
  if (buildCounterGoogleCloudHealthcareV1DicomGcsDestination < 3) {
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.uriPrefix, unittest.equals('foo'));
  }
  buildCounterGoogleCloudHealthcareV1DicomGcsDestination--;
}

core.int buildCounterGoogleCloudHealthcareV1DicomGcsSource = 0;
buildGoogleCloudHealthcareV1DicomGcsSource() {
  var o = new api.GoogleCloudHealthcareV1DicomGcsSource();
  buildCounterGoogleCloudHealthcareV1DicomGcsSource++;
  if (buildCounterGoogleCloudHealthcareV1DicomGcsSource < 3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudHealthcareV1DicomGcsSource--;
  return o;
}

checkGoogleCloudHealthcareV1DicomGcsSource(
    api.GoogleCloudHealthcareV1DicomGcsSource o) {
  buildCounterGoogleCloudHealthcareV1DicomGcsSource++;
  if (buildCounterGoogleCloudHealthcareV1DicomGcsSource < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudHealthcareV1DicomGcsSource--;
}

core.int buildCounterGoogleCloudHealthcareV1FhirBigQueryDestination = 0;
buildGoogleCloudHealthcareV1FhirBigQueryDestination() {
  var o = new api.GoogleCloudHealthcareV1FhirBigQueryDestination();
  buildCounterGoogleCloudHealthcareV1FhirBigQueryDestination++;
  if (buildCounterGoogleCloudHealthcareV1FhirBigQueryDestination < 3) {
    o.datasetUri = "foo";
    o.force = true;
    o.schemaConfig = buildSchemaConfig();
  }
  buildCounterGoogleCloudHealthcareV1FhirBigQueryDestination--;
  return o;
}

checkGoogleCloudHealthcareV1FhirBigQueryDestination(
    api.GoogleCloudHealthcareV1FhirBigQueryDestination o) {
  buildCounterGoogleCloudHealthcareV1FhirBigQueryDestination++;
  if (buildCounterGoogleCloudHealthcareV1FhirBigQueryDestination < 3) {
    unittest.expect(o.datasetUri, unittest.equals('foo'));
    unittest.expect(o.force, unittest.isTrue);
    checkSchemaConfig(o.schemaConfig);
  }
  buildCounterGoogleCloudHealthcareV1FhirBigQueryDestination--;
}

core.int buildCounterGoogleCloudHealthcareV1FhirGcsDestination = 0;
buildGoogleCloudHealthcareV1FhirGcsDestination() {
  var o = new api.GoogleCloudHealthcareV1FhirGcsDestination();
  buildCounterGoogleCloudHealthcareV1FhirGcsDestination++;
  if (buildCounterGoogleCloudHealthcareV1FhirGcsDestination < 3) {
    o.uriPrefix = "foo";
  }
  buildCounterGoogleCloudHealthcareV1FhirGcsDestination--;
  return o;
}

checkGoogleCloudHealthcareV1FhirGcsDestination(
    api.GoogleCloudHealthcareV1FhirGcsDestination o) {
  buildCounterGoogleCloudHealthcareV1FhirGcsDestination++;
  if (buildCounterGoogleCloudHealthcareV1FhirGcsDestination < 3) {
    unittest.expect(o.uriPrefix, unittest.equals('foo'));
  }
  buildCounterGoogleCloudHealthcareV1FhirGcsDestination--;
}

core.int buildCounterGoogleCloudHealthcareV1FhirGcsSource = 0;
buildGoogleCloudHealthcareV1FhirGcsSource() {
  var o = new api.GoogleCloudHealthcareV1FhirGcsSource();
  buildCounterGoogleCloudHealthcareV1FhirGcsSource++;
  if (buildCounterGoogleCloudHealthcareV1FhirGcsSource < 3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudHealthcareV1FhirGcsSource--;
  return o;
}

checkGoogleCloudHealthcareV1FhirGcsSource(
    api.GoogleCloudHealthcareV1FhirGcsSource o) {
  buildCounterGoogleCloudHealthcareV1FhirGcsSource++;
  if (buildCounterGoogleCloudHealthcareV1FhirGcsSource < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudHealthcareV1FhirGcsSource--;
}

core.int buildCounterHl7V2NotificationConfig = 0;
buildHl7V2NotificationConfig() {
  var o = new api.Hl7V2NotificationConfig();
  buildCounterHl7V2NotificationConfig++;
  if (buildCounterHl7V2NotificationConfig < 3) {
    o.filter = "foo";
    o.pubsubTopic = "foo";
  }
  buildCounterHl7V2NotificationConfig--;
  return o;
}

checkHl7V2NotificationConfig(api.Hl7V2NotificationConfig o) {
  buildCounterHl7V2NotificationConfig++;
  if (buildCounterHl7V2NotificationConfig < 3) {
    unittest.expect(o.filter, unittest.equals('foo'));
    unittest.expect(o.pubsubTopic, unittest.equals('foo'));
  }
  buildCounterHl7V2NotificationConfig--;
}

buildUnnamed1650() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1650(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed1651() {
  var o = new core.List<api.Hl7V2NotificationConfig>();
  o.add(buildHl7V2NotificationConfig());
  o.add(buildHl7V2NotificationConfig());
  return o;
}

checkUnnamed1651(core.List<api.Hl7V2NotificationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHl7V2NotificationConfig(o[0]);
  checkHl7V2NotificationConfig(o[1]);
}

core.int buildCounterHl7V2Store = 0;
buildHl7V2Store() {
  var o = new api.Hl7V2Store();
  buildCounterHl7V2Store++;
  if (buildCounterHl7V2Store < 3) {
    o.labels = buildUnnamed1650();
    o.name = "foo";
    o.notificationConfigs = buildUnnamed1651();
    o.parserConfig = buildParserConfig();
    o.rejectDuplicateMessage = true;
  }
  buildCounterHl7V2Store--;
  return o;
}

checkHl7V2Store(api.Hl7V2Store o) {
  buildCounterHl7V2Store++;
  if (buildCounterHl7V2Store < 3) {
    checkUnnamed1650(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1651(o.notificationConfigs);
    checkParserConfig(o.parserConfig);
    unittest.expect(o.rejectDuplicateMessage, unittest.isTrue);
  }
  buildCounterHl7V2Store--;
}

buildUnnamed1652() {
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

checkUnnamed1652(core.Map<core.String, core.Object> o) {
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

buildUnnamed1653() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed1652());
  o.add(buildUnnamed1652());
  return o;
}

checkUnnamed1653(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1652(o[0]);
  checkUnnamed1652(o[1]);
}

core.int buildCounterHttpBody = 0;
buildHttpBody() {
  var o = new api.HttpBody();
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    o.contentType = "foo";
    o.data = "foo";
    o.extensions = buildUnnamed1653();
  }
  buildCounterHttpBody--;
  return o;
}

checkHttpBody(api.HttpBody o) {
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.data, unittest.equals('foo'));
    checkUnnamed1653(o.extensions);
  }
  buildCounterHttpBody--;
}

core.int buildCounterImageConfig = 0;
buildImageConfig() {
  var o = new api.ImageConfig();
  buildCounterImageConfig++;
  if (buildCounterImageConfig < 3) {
    o.textRedactionMode = "foo";
  }
  buildCounterImageConfig--;
  return o;
}

checkImageConfig(api.ImageConfig o) {
  buildCounterImageConfig++;
  if (buildCounterImageConfig < 3) {
    unittest.expect(o.textRedactionMode, unittest.equals('foo'));
  }
  buildCounterImageConfig--;
}

core.int buildCounterImportDicomDataRequest = 0;
buildImportDicomDataRequest() {
  var o = new api.ImportDicomDataRequest();
  buildCounterImportDicomDataRequest++;
  if (buildCounterImportDicomDataRequest < 3) {
    o.gcsSource = buildGoogleCloudHealthcareV1DicomGcsSource();
  }
  buildCounterImportDicomDataRequest--;
  return o;
}

checkImportDicomDataRequest(api.ImportDicomDataRequest o) {
  buildCounterImportDicomDataRequest++;
  if (buildCounterImportDicomDataRequest < 3) {
    checkGoogleCloudHealthcareV1DicomGcsSource(o.gcsSource);
  }
  buildCounterImportDicomDataRequest--;
}

core.int buildCounterImportDicomDataResponse = 0;
buildImportDicomDataResponse() {
  var o = new api.ImportDicomDataResponse();
  buildCounterImportDicomDataResponse++;
  if (buildCounterImportDicomDataResponse < 3) {}
  buildCounterImportDicomDataResponse--;
  return o;
}

checkImportDicomDataResponse(api.ImportDicomDataResponse o) {
  buildCounterImportDicomDataResponse++;
  if (buildCounterImportDicomDataResponse < 3) {}
  buildCounterImportDicomDataResponse--;
}

core.int buildCounterImportResourcesRequest = 0;
buildImportResourcesRequest() {
  var o = new api.ImportResourcesRequest();
  buildCounterImportResourcesRequest++;
  if (buildCounterImportResourcesRequest < 3) {
    o.contentStructure = "foo";
    o.gcsSource = buildGoogleCloudHealthcareV1FhirGcsSource();
  }
  buildCounterImportResourcesRequest--;
  return o;
}

checkImportResourcesRequest(api.ImportResourcesRequest o) {
  buildCounterImportResourcesRequest++;
  if (buildCounterImportResourcesRequest < 3) {
    unittest.expect(o.contentStructure, unittest.equals('foo'));
    checkGoogleCloudHealthcareV1FhirGcsSource(o.gcsSource);
  }
  buildCounterImportResourcesRequest--;
}

core.int buildCounterImportResourcesResponse = 0;
buildImportResourcesResponse() {
  var o = new api.ImportResourcesResponse();
  buildCounterImportResourcesResponse++;
  if (buildCounterImportResourcesResponse < 3) {}
  buildCounterImportResourcesResponse--;
  return o;
}

checkImportResourcesResponse(api.ImportResourcesResponse o) {
  buildCounterImportResourcesResponse++;
  if (buildCounterImportResourcesResponse < 3) {}
  buildCounterImportResourcesResponse--;
}

buildUnnamed1654() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1654(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInfoTypeTransformation = 0;
buildInfoTypeTransformation() {
  var o = new api.InfoTypeTransformation();
  buildCounterInfoTypeTransformation++;
  if (buildCounterInfoTypeTransformation < 3) {
    o.characterMaskConfig = buildCharacterMaskConfig();
    o.cryptoHashConfig = buildCryptoHashConfig();
    o.dateShiftConfig = buildDateShiftConfig();
    o.infoTypes = buildUnnamed1654();
    o.redactConfig = buildRedactConfig();
    o.replaceWithInfoTypeConfig = buildReplaceWithInfoTypeConfig();
  }
  buildCounterInfoTypeTransformation--;
  return o;
}

checkInfoTypeTransformation(api.InfoTypeTransformation o) {
  buildCounterInfoTypeTransformation++;
  if (buildCounterInfoTypeTransformation < 3) {
    checkCharacterMaskConfig(o.characterMaskConfig);
    checkCryptoHashConfig(o.cryptoHashConfig);
    checkDateShiftConfig(o.dateShiftConfig);
    checkUnnamed1654(o.infoTypes);
    checkRedactConfig(o.redactConfig);
    checkReplaceWithInfoTypeConfig(o.replaceWithInfoTypeConfig);
  }
  buildCounterInfoTypeTransformation--;
}

core.int buildCounterIngestMessageRequest = 0;
buildIngestMessageRequest() {
  var o = new api.IngestMessageRequest();
  buildCounterIngestMessageRequest++;
  if (buildCounterIngestMessageRequest < 3) {
    o.message = buildMessage();
  }
  buildCounterIngestMessageRequest--;
  return o;
}

checkIngestMessageRequest(api.IngestMessageRequest o) {
  buildCounterIngestMessageRequest++;
  if (buildCounterIngestMessageRequest < 3) {
    checkMessage(o.message);
  }
  buildCounterIngestMessageRequest--;
}

core.int buildCounterIngestMessageResponse = 0;
buildIngestMessageResponse() {
  var o = new api.IngestMessageResponse();
  buildCounterIngestMessageResponse++;
  if (buildCounterIngestMessageResponse < 3) {
    o.hl7Ack = "foo";
    o.message = buildMessage();
  }
  buildCounterIngestMessageResponse--;
  return o;
}

checkIngestMessageResponse(api.IngestMessageResponse o) {
  buildCounterIngestMessageResponse++;
  if (buildCounterIngestMessageResponse < 3) {
    unittest.expect(o.hl7Ack, unittest.equals('foo'));
    checkMessage(o.message);
  }
  buildCounterIngestMessageResponse--;
}

buildUnnamed1655() {
  var o = new core.List<api.Dataset>();
  o.add(buildDataset());
  o.add(buildDataset());
  return o;
}

checkUnnamed1655(core.List<api.Dataset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataset(o[0]);
  checkDataset(o[1]);
}

core.int buildCounterListDatasetsResponse = 0;
buildListDatasetsResponse() {
  var o = new api.ListDatasetsResponse();
  buildCounterListDatasetsResponse++;
  if (buildCounterListDatasetsResponse < 3) {
    o.datasets = buildUnnamed1655();
    o.nextPageToken = "foo";
  }
  buildCounterListDatasetsResponse--;
  return o;
}

checkListDatasetsResponse(api.ListDatasetsResponse o) {
  buildCounterListDatasetsResponse++;
  if (buildCounterListDatasetsResponse < 3) {
    checkUnnamed1655(o.datasets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDatasetsResponse--;
}

buildUnnamed1656() {
  var o = new core.List<api.DicomStore>();
  o.add(buildDicomStore());
  o.add(buildDicomStore());
  return o;
}

checkUnnamed1656(core.List<api.DicomStore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDicomStore(o[0]);
  checkDicomStore(o[1]);
}

core.int buildCounterListDicomStoresResponse = 0;
buildListDicomStoresResponse() {
  var o = new api.ListDicomStoresResponse();
  buildCounterListDicomStoresResponse++;
  if (buildCounterListDicomStoresResponse < 3) {
    o.dicomStores = buildUnnamed1656();
    o.nextPageToken = "foo";
  }
  buildCounterListDicomStoresResponse--;
  return o;
}

checkListDicomStoresResponse(api.ListDicomStoresResponse o) {
  buildCounterListDicomStoresResponse++;
  if (buildCounterListDicomStoresResponse < 3) {
    checkUnnamed1656(o.dicomStores);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDicomStoresResponse--;
}

buildUnnamed1657() {
  var o = new core.List<api.FhirStore>();
  o.add(buildFhirStore());
  o.add(buildFhirStore());
  return o;
}

checkUnnamed1657(core.List<api.FhirStore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFhirStore(o[0]);
  checkFhirStore(o[1]);
}

core.int buildCounterListFhirStoresResponse = 0;
buildListFhirStoresResponse() {
  var o = new api.ListFhirStoresResponse();
  buildCounterListFhirStoresResponse++;
  if (buildCounterListFhirStoresResponse < 3) {
    o.fhirStores = buildUnnamed1657();
    o.nextPageToken = "foo";
  }
  buildCounterListFhirStoresResponse--;
  return o;
}

checkListFhirStoresResponse(api.ListFhirStoresResponse o) {
  buildCounterListFhirStoresResponse++;
  if (buildCounterListFhirStoresResponse < 3) {
    checkUnnamed1657(o.fhirStores);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListFhirStoresResponse--;
}

buildUnnamed1658() {
  var o = new core.List<api.Hl7V2Store>();
  o.add(buildHl7V2Store());
  o.add(buildHl7V2Store());
  return o;
}

checkUnnamed1658(core.List<api.Hl7V2Store> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHl7V2Store(o[0]);
  checkHl7V2Store(o[1]);
}

core.int buildCounterListHl7V2StoresResponse = 0;
buildListHl7V2StoresResponse() {
  var o = new api.ListHl7V2StoresResponse();
  buildCounterListHl7V2StoresResponse++;
  if (buildCounterListHl7V2StoresResponse < 3) {
    o.hl7V2Stores = buildUnnamed1658();
    o.nextPageToken = "foo";
  }
  buildCounterListHl7V2StoresResponse--;
  return o;
}

checkListHl7V2StoresResponse(api.ListHl7V2StoresResponse o) {
  buildCounterListHl7V2StoresResponse++;
  if (buildCounterListHl7V2StoresResponse < 3) {
    checkUnnamed1658(o.hl7V2Stores);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListHl7V2StoresResponse--;
}

buildUnnamed1659() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed1659(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
buildListLocationsResponse() {
  var o = new api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed1659();
    o.nextPageToken = "foo";
  }
  buildCounterListLocationsResponse--;
  return o;
}

checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed1659(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

buildUnnamed1660() {
  var o = new core.List<api.Message>();
  o.add(buildMessage());
  o.add(buildMessage());
  return o;
}

checkUnnamed1660(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.int buildCounterListMessagesResponse = 0;
buildListMessagesResponse() {
  var o = new api.ListMessagesResponse();
  buildCounterListMessagesResponse++;
  if (buildCounterListMessagesResponse < 3) {
    o.hl7V2Messages = buildUnnamed1660();
    o.nextPageToken = "foo";
  }
  buildCounterListMessagesResponse--;
  return o;
}

checkListMessagesResponse(api.ListMessagesResponse o) {
  buildCounterListMessagesResponse++;
  if (buildCounterListMessagesResponse < 3) {
    checkUnnamed1660(o.hl7V2Messages);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListMessagesResponse--;
}

buildUnnamed1661() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed1661(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
buildListOperationsResponse() {
  var o = new api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed1661();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1661(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed1662() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1662(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed1663() {
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

checkUnnamed1663(core.Map<core.String, core.Object> o) {
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

core.int buildCounterLocation = 0;
buildLocation() {
  var o = new api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = "foo";
    o.labels = buildUnnamed1662();
    o.locationId = "foo";
    o.metadata = buildUnnamed1663();
    o.name = "foo";
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed1662(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed1663(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

buildUnnamed1664() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1664(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed1665() {
  var o = new core.List<api.PatientId>();
  o.add(buildPatientId());
  o.add(buildPatientId());
  return o;
}

checkUnnamed1665(core.List<api.PatientId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPatientId(o[0]);
  checkPatientId(o[1]);
}

core.int buildCounterMessage = 0;
buildMessage() {
  var o = new api.Message();
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    o.createTime = "foo";
    o.data = "foo";
    o.labels = buildUnnamed1664();
    o.messageType = "foo";
    o.name = "foo";
    o.parsedData = buildParsedData();
    o.patientIds = buildUnnamed1665();
    o.sendFacility = "foo";
    o.sendTime = "foo";
  }
  buildCounterMessage--;
  return o;
}

checkMessage(api.Message o) {
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.data, unittest.equals('foo'));
    checkUnnamed1664(o.labels);
    unittest.expect(o.messageType, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkParsedData(o.parsedData);
    checkUnnamed1665(o.patientIds);
    unittest.expect(o.sendFacility, unittest.equals('foo'));
    unittest.expect(o.sendTime, unittest.equals('foo'));
  }
  buildCounterMessage--;
}

core.int buildCounterNotificationConfig = 0;
buildNotificationConfig() {
  var o = new api.NotificationConfig();
  buildCounterNotificationConfig++;
  if (buildCounterNotificationConfig < 3) {
    o.pubsubTopic = "foo";
  }
  buildCounterNotificationConfig--;
  return o;
}

checkNotificationConfig(api.NotificationConfig o) {
  buildCounterNotificationConfig++;
  if (buildCounterNotificationConfig < 3) {
    unittest.expect(o.pubsubTopic, unittest.equals('foo'));
  }
  buildCounterNotificationConfig--;
}

buildUnnamed1666() {
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

checkUnnamed1666(core.Map<core.String, core.Object> o) {
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

buildUnnamed1667() {
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

checkUnnamed1667(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed1666();
    o.name = "foo";
    o.response = buildUnnamed1667();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed1666(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1667(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationMetadata = 0;
buildOperationMetadata() {
  var o = new api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.apiMethodName = "foo";
    o.cancelRequested = true;
    o.counter = buildProgressCounter();
    o.createTime = "foo";
    o.endTime = "foo";
    o.logsUrl = "foo";
  }
  buildCounterOperationMetadata--;
  return o;
}

checkOperationMetadata(api.OperationMetadata o) {
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    unittest.expect(o.apiMethodName, unittest.equals('foo'));
    unittest.expect(o.cancelRequested, unittest.isTrue);
    checkProgressCounter(o.counter);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.logsUrl, unittest.equals('foo'));
  }
  buildCounterOperationMetadata--;
}

buildUnnamed1668() {
  var o = new core.List<api.Segment>();
  o.add(buildSegment());
  o.add(buildSegment());
  return o;
}

checkUnnamed1668(core.List<api.Segment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSegment(o[0]);
  checkSegment(o[1]);
}

core.int buildCounterParsedData = 0;
buildParsedData() {
  var o = new api.ParsedData();
  buildCounterParsedData++;
  if (buildCounterParsedData < 3) {
    o.segments = buildUnnamed1668();
  }
  buildCounterParsedData--;
  return o;
}

checkParsedData(api.ParsedData o) {
  buildCounterParsedData++;
  if (buildCounterParsedData < 3) {
    checkUnnamed1668(o.segments);
  }
  buildCounterParsedData--;
}

core.int buildCounterParserConfig = 0;
buildParserConfig() {
  var o = new api.ParserConfig();
  buildCounterParserConfig++;
  if (buildCounterParserConfig < 3) {
    o.allowNullHeader = true;
    o.segmentTerminator = "foo";
  }
  buildCounterParserConfig--;
  return o;
}

checkParserConfig(api.ParserConfig o) {
  buildCounterParserConfig++;
  if (buildCounterParserConfig < 3) {
    unittest.expect(o.allowNullHeader, unittest.isTrue);
    unittest.expect(o.segmentTerminator, unittest.equals('foo'));
  }
  buildCounterParserConfig--;
}

core.int buildCounterPatientId = 0;
buildPatientId() {
  var o = new api.PatientId();
  buildCounterPatientId++;
  if (buildCounterPatientId < 3) {
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterPatientId--;
  return o;
}

checkPatientId(api.PatientId o) {
  buildCounterPatientId++;
  if (buildCounterPatientId < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterPatientId--;
}

buildUnnamed1669() {
  var o = new core.List<api.AuditConfig>();
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

checkUnnamed1669(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

buildUnnamed1670() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed1670(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed1669();
    o.bindings = buildUnnamed1670();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed1669(o.auditConfigs);
    checkUnnamed1670(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterProgressCounter = 0;
buildProgressCounter() {
  var o = new api.ProgressCounter();
  buildCounterProgressCounter++;
  if (buildCounterProgressCounter < 3) {
    o.failure = "foo";
    o.pending = "foo";
    o.success = "foo";
  }
  buildCounterProgressCounter--;
  return o;
}

checkProgressCounter(api.ProgressCounter o) {
  buildCounterProgressCounter++;
  if (buildCounterProgressCounter < 3) {
    unittest.expect(o.failure, unittest.equals('foo'));
    unittest.expect(o.pending, unittest.equals('foo'));
    unittest.expect(o.success, unittest.equals('foo'));
  }
  buildCounterProgressCounter--;
}

core.int buildCounterRedactConfig = 0;
buildRedactConfig() {
  var o = new api.RedactConfig();
  buildCounterRedactConfig++;
  if (buildCounterRedactConfig < 3) {}
  buildCounterRedactConfig--;
  return o;
}

checkRedactConfig(api.RedactConfig o) {
  buildCounterRedactConfig++;
  if (buildCounterRedactConfig < 3) {}
  buildCounterRedactConfig--;
}

core.int buildCounterReplaceWithInfoTypeConfig = 0;
buildReplaceWithInfoTypeConfig() {
  var o = new api.ReplaceWithInfoTypeConfig();
  buildCounterReplaceWithInfoTypeConfig++;
  if (buildCounterReplaceWithInfoTypeConfig < 3) {}
  buildCounterReplaceWithInfoTypeConfig--;
  return o;
}

checkReplaceWithInfoTypeConfig(api.ReplaceWithInfoTypeConfig o) {
  buildCounterReplaceWithInfoTypeConfig++;
  if (buildCounterReplaceWithInfoTypeConfig < 3) {}
  buildCounterReplaceWithInfoTypeConfig--;
}

buildUnnamed1671() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1671(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterResources = 0;
buildResources() {
  var o = new api.Resources();
  buildCounterResources++;
  if (buildCounterResources < 3) {
    o.resources = buildUnnamed1671();
  }
  buildCounterResources--;
  return o;
}

checkResources(api.Resources o) {
  buildCounterResources++;
  if (buildCounterResources < 3) {
    checkUnnamed1671(o.resources);
  }
  buildCounterResources--;
}

core.int buildCounterSchemaConfig = 0;
buildSchemaConfig() {
  var o = new api.SchemaConfig();
  buildCounterSchemaConfig++;
  if (buildCounterSchemaConfig < 3) {
    o.recursiveStructureDepth = "foo";
    o.schemaType = "foo";
  }
  buildCounterSchemaConfig--;
  return o;
}

checkSchemaConfig(api.SchemaConfig o) {
  buildCounterSchemaConfig++;
  if (buildCounterSchemaConfig < 3) {
    unittest.expect(o.recursiveStructureDepth, unittest.equals('foo'));
    unittest.expect(o.schemaType, unittest.equals('foo'));
  }
  buildCounterSchemaConfig--;
}

core.int buildCounterSearchResourcesRequest = 0;
buildSearchResourcesRequest() {
  var o = new api.SearchResourcesRequest();
  buildCounterSearchResourcesRequest++;
  if (buildCounterSearchResourcesRequest < 3) {
    o.resourceType = "foo";
  }
  buildCounterSearchResourcesRequest--;
  return o;
}

checkSearchResourcesRequest(api.SearchResourcesRequest o) {
  buildCounterSearchResourcesRequest++;
  if (buildCounterSearchResourcesRequest < 3) {
    unittest.expect(o.resourceType, unittest.equals('foo'));
  }
  buildCounterSearchResourcesRequest--;
}

buildUnnamed1672() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1672(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterSegment = 0;
buildSegment() {
  var o = new api.Segment();
  buildCounterSegment++;
  if (buildCounterSegment < 3) {
    o.fields = buildUnnamed1672();
    o.segmentId = "foo";
    o.setId = "foo";
  }
  buildCounterSegment--;
  return o;
}

checkSegment(api.Segment o) {
  buildCounterSegment++;
  if (buildCounterSegment < 3) {
    checkUnnamed1672(o.fields);
    unittest.expect(o.segmentId, unittest.equals('foo'));
    unittest.expect(o.setId, unittest.equals('foo'));
  }
  buildCounterSegment--;
}

core.int buildCounterSetIamPolicyRequest = 0;
buildSetIamPolicyRequest() {
  var o = new api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = "foo";
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

buildUnnamed1673() {
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

checkUnnamed1673(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o["x"]) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted9["bool"], unittest.equals(true));
  unittest.expect(casted9["string"], unittest.equals('foo'));
  var casted10 = (o["y"]) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted10["bool"], unittest.equals(true));
  unittest.expect(casted10["string"], unittest.equals('foo'));
}

buildUnnamed1674() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed1673());
  o.add(buildUnnamed1673());
  return o;
}

checkUnnamed1674(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1673(o[0]);
  checkUnnamed1673(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed1674();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed1674(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed1675() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1675(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStreamConfig = 0;
buildStreamConfig() {
  var o = new api.StreamConfig();
  buildCounterStreamConfig++;
  if (buildCounterStreamConfig < 3) {
    o.bigqueryDestination =
        buildGoogleCloudHealthcareV1FhirBigQueryDestination();
    o.resourceTypes = buildUnnamed1675();
  }
  buildCounterStreamConfig--;
  return o;
}

checkStreamConfig(api.StreamConfig o) {
  buildCounterStreamConfig++;
  if (buildCounterStreamConfig < 3) {
    checkGoogleCloudHealthcareV1FhirBigQueryDestination(o.bigqueryDestination);
    checkUnnamed1675(o.resourceTypes);
  }
  buildCounterStreamConfig--;
}

buildUnnamed1676() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1676(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTagFilterList = 0;
buildTagFilterList() {
  var o = new api.TagFilterList();
  buildCounterTagFilterList++;
  if (buildCounterTagFilterList < 3) {
    o.tags = buildUnnamed1676();
  }
  buildCounterTagFilterList--;
  return o;
}

checkTagFilterList(api.TagFilterList o) {
  buildCounterTagFilterList++;
  if (buildCounterTagFilterList < 3) {
    checkUnnamed1676(o.tags);
  }
  buildCounterTagFilterList--;
}

buildUnnamed1677() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1677(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed1677();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed1677(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed1678() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1678(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed1678();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed1678(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

buildUnnamed1679() {
  var o = new core.List<api.InfoTypeTransformation>();
  o.add(buildInfoTypeTransformation());
  o.add(buildInfoTypeTransformation());
  return o;
}

checkUnnamed1679(core.List<api.InfoTypeTransformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInfoTypeTransformation(o[0]);
  checkInfoTypeTransformation(o[1]);
}

core.int buildCounterTextConfig = 0;
buildTextConfig() {
  var o = new api.TextConfig();
  buildCounterTextConfig++;
  if (buildCounterTextConfig < 3) {
    o.transformations = buildUnnamed1679();
  }
  buildCounterTextConfig--;
  return o;
}

checkTextConfig(api.TextConfig o) {
  buildCounterTextConfig++;
  if (buildCounterTextConfig < 3) {
    checkUnnamed1679(o.transformations);
  }
  buildCounterTextConfig--;
}

main() {
  unittest.group("obj-schema-AuditConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditConfig();
      var od = new api.AuditConfig.fromJson(o.toJson());
      checkAuditConfig(od);
    });
  });

  unittest.group("obj-schema-AuditLogConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditLogConfig();
      var od = new api.AuditLogConfig.fromJson(o.toJson());
      checkAuditLogConfig(od);
    });
  });

  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group("obj-schema-CancelOperationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCancelOperationRequest();
      var od = new api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od);
    });
  });

  unittest.group("obj-schema-CharacterMaskConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildCharacterMaskConfig();
      var od = new api.CharacterMaskConfig.fromJson(o.toJson());
      checkCharacterMaskConfig(od);
    });
  });

  unittest.group("obj-schema-CreateMessageRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateMessageRequest();
      var od = new api.CreateMessageRequest.fromJson(o.toJson());
      checkCreateMessageRequest(od);
    });
  });

  unittest.group("obj-schema-CryptoHashConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildCryptoHashConfig();
      var od = new api.CryptoHashConfig.fromJson(o.toJson());
      checkCryptoHashConfig(od);
    });
  });

  unittest.group("obj-schema-Dataset", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataset();
      var od = new api.Dataset.fromJson(o.toJson());
      checkDataset(od);
    });
  });

  unittest.group("obj-schema-DateShiftConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildDateShiftConfig();
      var od = new api.DateShiftConfig.fromJson(o.toJson());
      checkDateShiftConfig(od);
    });
  });

  unittest.group("obj-schema-DeidentifyConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeidentifyConfig();
      var od = new api.DeidentifyConfig.fromJson(o.toJson());
      checkDeidentifyConfig(od);
    });
  });

  unittest.group("obj-schema-DeidentifyDatasetRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeidentifyDatasetRequest();
      var od = new api.DeidentifyDatasetRequest.fromJson(o.toJson());
      checkDeidentifyDatasetRequest(od);
    });
  });

  unittest.group("obj-schema-DeidentifyDicomStoreRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeidentifyDicomStoreRequest();
      var od = new api.DeidentifyDicomStoreRequest.fromJson(o.toJson());
      checkDeidentifyDicomStoreRequest(od);
    });
  });

  unittest.group("obj-schema-DeidentifyFhirStoreRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeidentifyFhirStoreRequest();
      var od = new api.DeidentifyFhirStoreRequest.fromJson(o.toJson());
      checkDeidentifyFhirStoreRequest(od);
    });
  });

  unittest.group("obj-schema-DeidentifySummary", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeidentifySummary();
      var od = new api.DeidentifySummary.fromJson(o.toJson());
      checkDeidentifySummary(od);
    });
  });

  unittest.group("obj-schema-DicomConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildDicomConfig();
      var od = new api.DicomConfig.fromJson(o.toJson());
      checkDicomConfig(od);
    });
  });

  unittest.group("obj-schema-DicomFilterConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildDicomFilterConfig();
      var od = new api.DicomFilterConfig.fromJson(o.toJson());
      checkDicomFilterConfig(od);
    });
  });

  unittest.group("obj-schema-DicomStore", () {
    unittest.test("to-json--from-json", () {
      var o = buildDicomStore();
      var od = new api.DicomStore.fromJson(o.toJson());
      checkDicomStore(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-ExportDicomDataRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildExportDicomDataRequest();
      var od = new api.ExportDicomDataRequest.fromJson(o.toJson());
      checkExportDicomDataRequest(od);
    });
  });

  unittest.group("obj-schema-ExportDicomDataResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildExportDicomDataResponse();
      var od = new api.ExportDicomDataResponse.fromJson(o.toJson());
      checkExportDicomDataResponse(od);
    });
  });

  unittest.group("obj-schema-ExportResourcesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildExportResourcesRequest();
      var od = new api.ExportResourcesRequest.fromJson(o.toJson());
      checkExportResourcesRequest(od);
    });
  });

  unittest.group("obj-schema-ExportResourcesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildExportResourcesResponse();
      var od = new api.ExportResourcesResponse.fromJson(o.toJson());
      checkExportResourcesResponse(od);
    });
  });

  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = new api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group("obj-schema-FhirConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildFhirConfig();
      var od = new api.FhirConfig.fromJson(o.toJson());
      checkFhirConfig(od);
    });
  });

  unittest.group("obj-schema-FhirFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildFhirFilter();
      var od = new api.FhirFilter.fromJson(o.toJson());
      checkFhirFilter(od);
    });
  });

  unittest.group("obj-schema-FhirStore", () {
    unittest.test("to-json--from-json", () {
      var o = buildFhirStore();
      var od = new api.FhirStore.fromJson(o.toJson());
      checkFhirStore(od);
    });
  });

  unittest.group("obj-schema-FieldMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildFieldMetadata();
      var od = new api.FieldMetadata.fromJson(o.toJson());
      checkFieldMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary();
      var od = new api
              .GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary.fromJson(
          o.toJson());
      checkGoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary();
      var od = new api
              .GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary.fromJson(
          o.toJson());
      checkGoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudHealthcareV1DicomBigQueryDestination",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudHealthcareV1DicomBigQueryDestination();
      var od = new api.GoogleCloudHealthcareV1DicomBigQueryDestination.fromJson(
          o.toJson());
      checkGoogleCloudHealthcareV1DicomBigQueryDestination(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudHealthcareV1DicomGcsDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudHealthcareV1DicomGcsDestination();
      var od = new api.GoogleCloudHealthcareV1DicomGcsDestination.fromJson(
          o.toJson());
      checkGoogleCloudHealthcareV1DicomGcsDestination(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudHealthcareV1DicomGcsSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudHealthcareV1DicomGcsSource();
      var od =
          new api.GoogleCloudHealthcareV1DicomGcsSource.fromJson(o.toJson());
      checkGoogleCloudHealthcareV1DicomGcsSource(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudHealthcareV1FhirBigQueryDestination",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudHealthcareV1FhirBigQueryDestination();
      var od = new api.GoogleCloudHealthcareV1FhirBigQueryDestination.fromJson(
          o.toJson());
      checkGoogleCloudHealthcareV1FhirBigQueryDestination(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudHealthcareV1FhirGcsDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudHealthcareV1FhirGcsDestination();
      var od = new api.GoogleCloudHealthcareV1FhirGcsDestination.fromJson(
          o.toJson());
      checkGoogleCloudHealthcareV1FhirGcsDestination(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudHealthcareV1FhirGcsSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudHealthcareV1FhirGcsSource();
      var od =
          new api.GoogleCloudHealthcareV1FhirGcsSource.fromJson(o.toJson());
      checkGoogleCloudHealthcareV1FhirGcsSource(od);
    });
  });

  unittest.group("obj-schema-Hl7V2NotificationConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildHl7V2NotificationConfig();
      var od = new api.Hl7V2NotificationConfig.fromJson(o.toJson());
      checkHl7V2NotificationConfig(od);
    });
  });

  unittest.group("obj-schema-Hl7V2Store", () {
    unittest.test("to-json--from-json", () {
      var o = buildHl7V2Store();
      var od = new api.Hl7V2Store.fromJson(o.toJson());
      checkHl7V2Store(od);
    });
  });

  unittest.group("obj-schema-HttpBody", () {
    unittest.test("to-json--from-json", () {
      var o = buildHttpBody();
      var od = new api.HttpBody.fromJson(o.toJson());
      checkHttpBody(od);
    });
  });

  unittest.group("obj-schema-ImageConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildImageConfig();
      var od = new api.ImageConfig.fromJson(o.toJson());
      checkImageConfig(od);
    });
  });

  unittest.group("obj-schema-ImportDicomDataRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportDicomDataRequest();
      var od = new api.ImportDicomDataRequest.fromJson(o.toJson());
      checkImportDicomDataRequest(od);
    });
  });

  unittest.group("obj-schema-ImportDicomDataResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportDicomDataResponse();
      var od = new api.ImportDicomDataResponse.fromJson(o.toJson());
      checkImportDicomDataResponse(od);
    });
  });

  unittest.group("obj-schema-ImportResourcesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportResourcesRequest();
      var od = new api.ImportResourcesRequest.fromJson(o.toJson());
      checkImportResourcesRequest(od);
    });
  });

  unittest.group("obj-schema-ImportResourcesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportResourcesResponse();
      var od = new api.ImportResourcesResponse.fromJson(o.toJson());
      checkImportResourcesResponse(od);
    });
  });

  unittest.group("obj-schema-InfoTypeTransformation", () {
    unittest.test("to-json--from-json", () {
      var o = buildInfoTypeTransformation();
      var od = new api.InfoTypeTransformation.fromJson(o.toJson());
      checkInfoTypeTransformation(od);
    });
  });

  unittest.group("obj-schema-IngestMessageRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildIngestMessageRequest();
      var od = new api.IngestMessageRequest.fromJson(o.toJson());
      checkIngestMessageRequest(od);
    });
  });

  unittest.group("obj-schema-IngestMessageResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildIngestMessageResponse();
      var od = new api.IngestMessageResponse.fromJson(o.toJson());
      checkIngestMessageResponse(od);
    });
  });

  unittest.group("obj-schema-ListDatasetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDatasetsResponse();
      var od = new api.ListDatasetsResponse.fromJson(o.toJson());
      checkListDatasetsResponse(od);
    });
  });

  unittest.group("obj-schema-ListDicomStoresResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDicomStoresResponse();
      var od = new api.ListDicomStoresResponse.fromJson(o.toJson());
      checkListDicomStoresResponse(od);
    });
  });

  unittest.group("obj-schema-ListFhirStoresResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListFhirStoresResponse();
      var od = new api.ListFhirStoresResponse.fromJson(o.toJson());
      checkListFhirStoresResponse(od);
    });
  });

  unittest.group("obj-schema-ListHl7V2StoresResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListHl7V2StoresResponse();
      var od = new api.ListHl7V2StoresResponse.fromJson(o.toJson());
      checkListHl7V2StoresResponse(od);
    });
  });

  unittest.group("obj-schema-ListLocationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLocationsResponse();
      var od = new api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListMessagesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListMessagesResponse();
      var od = new api.ListMessagesResponse.fromJson(o.toJson());
      checkListMessagesResponse(od);
    });
  });

  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group("obj-schema-Message", () {
    unittest.test("to-json--from-json", () {
      var o = buildMessage();
      var od = new api.Message.fromJson(o.toJson());
      checkMessage(od);
    });
  });

  unittest.group("obj-schema-NotificationConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildNotificationConfig();
      var od = new api.NotificationConfig.fromJson(o.toJson());
      checkNotificationConfig(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-OperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadata();
      var od = new api.OperationMetadata.fromJson(o.toJson());
      checkOperationMetadata(od);
    });
  });

  unittest.group("obj-schema-ParsedData", () {
    unittest.test("to-json--from-json", () {
      var o = buildParsedData();
      var od = new api.ParsedData.fromJson(o.toJson());
      checkParsedData(od);
    });
  });

  unittest.group("obj-schema-ParserConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildParserConfig();
      var od = new api.ParserConfig.fromJson(o.toJson());
      checkParserConfig(od);
    });
  });

  unittest.group("obj-schema-PatientId", () {
    unittest.test("to-json--from-json", () {
      var o = buildPatientId();
      var od = new api.PatientId.fromJson(o.toJson());
      checkPatientId(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-ProgressCounter", () {
    unittest.test("to-json--from-json", () {
      var o = buildProgressCounter();
      var od = new api.ProgressCounter.fromJson(o.toJson());
      checkProgressCounter(od);
    });
  });

  unittest.group("obj-schema-RedactConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildRedactConfig();
      var od = new api.RedactConfig.fromJson(o.toJson());
      checkRedactConfig(od);
    });
  });

  unittest.group("obj-schema-ReplaceWithInfoTypeConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplaceWithInfoTypeConfig();
      var od = new api.ReplaceWithInfoTypeConfig.fromJson(o.toJson());
      checkReplaceWithInfoTypeConfig(od);
    });
  });

  unittest.group("obj-schema-Resources", () {
    unittest.test("to-json--from-json", () {
      var o = buildResources();
      var od = new api.Resources.fromJson(o.toJson());
      checkResources(od);
    });
  });

  unittest.group("obj-schema-SchemaConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildSchemaConfig();
      var od = new api.SchemaConfig.fromJson(o.toJson());
      checkSchemaConfig(od);
    });
  });

  unittest.group("obj-schema-SearchResourcesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchResourcesRequest();
      var od = new api.SearchResourcesRequest.fromJson(o.toJson());
      checkSearchResourcesRequest(od);
    });
  });

  unittest.group("obj-schema-Segment", () {
    unittest.test("to-json--from-json", () {
      var o = buildSegment();
      var od = new api.Segment.fromJson(o.toJson());
      checkSegment(od);
    });
  });

  unittest.group("obj-schema-SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetIamPolicyRequest();
      var od = new api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-StreamConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildStreamConfig();
      var od = new api.StreamConfig.fromJson(o.toJson());
      checkStreamConfig(od);
    });
  });

  unittest.group("obj-schema-TagFilterList", () {
    unittest.test("to-json--from-json", () {
      var o = buildTagFilterList();
      var od = new api.TagFilterList.fromJson(o.toJson());
      checkTagFilterList(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsRequest();
      var od = new api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsResponse();
      var od = new api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group("obj-schema-TextConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildTextConfig();
      var od = new api.TextConfig.fromJson(o.toJson());
      checkTextConfig(od);
    });
  });

  unittest.group("resource-ProjectsLocationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.HealthcareApi(mock).projects.locations;
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
          new api.HealthcareApi(mock).projects.locations;
      var arg_name = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_pageToken = "foo";
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListLocationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageSize: arg_pageSize,
              filter: arg_filter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsDatasetsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets;
      var arg_request = buildDataset();
      var arg_parent = "foo";
      var arg_datasetId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Dataset.fromJson(json);
        checkDataset(obj);

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
            queryMap["datasetId"].first, unittest.equals(arg_datasetId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              datasetId: arg_datasetId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--deidentify", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets;
      var arg_request = buildDeidentifyDatasetRequest();
      var arg_sourceDataset = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DeidentifyDatasetRequest.fromJson(json);
        checkDeidentifyDatasetRequest(obj);

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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deidentify(arg_request, arg_sourceDataset, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets;
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
      api.ProjectsLocationsDatasetsResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets;
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
        var resp = convert.json.encode(buildDataset());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataset(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets;
      var arg_resource = "foo";
      var arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListDatasetsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDatasetsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets;
      var arg_request = buildDataset();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Dataset.fromJson(json);
        checkDataset(obj);

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDataset());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDataset(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsDatasetsDicomStoresResourceApi",
      () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.dicomStores;
      var arg_request = buildDicomStore();
      var arg_parent = "foo";
      var arg_dicomStoreId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DicomStore.fromJson(json);
        checkDicomStore(obj);

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
            queryMap["dicomStoreId"].first, unittest.equals(arg_dicomStoreId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDicomStore());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              dicomStoreId: arg_dicomStoreId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDicomStore(response);
      })));
    });

    unittest.test("method--deidentify", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.dicomStores;
      var arg_request = buildDeidentifyDicomStoreRequest();
      var arg_sourceStore = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DeidentifyDicomStoreRequest.fromJson(json);
        checkDeidentifyDicomStoreRequest(obj);

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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deidentify(arg_request, arg_sourceStore, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.dicomStores;
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

    unittest.test("method--export", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.dicomStores;
      var arg_request = buildExportDicomDataRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ExportDicomDataRequest.fromJson(json);
        checkExportDicomDataRequest(obj);

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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .export(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.dicomStores;
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
        var resp = convert.json.encode(buildDicomStore());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDicomStore(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.dicomStores;
      var arg_resource = "foo";
      var arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--import", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.dicomStores;
      var arg_request = buildImportDicomDataRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ImportDicomDataRequest.fromJson(json);
        checkImportDicomDataRequest(obj);

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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .import(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.dicomStores;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_pageToken = "foo";
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListDicomStoresResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              filter: arg_filter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDicomStoresResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.dicomStores;
      var arg_request = buildDicomStore();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DicomStore.fromJson(json);
        checkDicomStore(obj);

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDicomStore());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDicomStore(response);
      })));
    });

    unittest.test("method--searchForInstances", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.dicomStores;
      var arg_parent = "foo";
      var arg_dicomWebPath = "foo";
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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchForInstances(arg_parent, arg_dicomWebPath,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--searchForSeries", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.dicomStores;
      var arg_parent = "foo";
      var arg_dicomWebPath = "foo";
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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchForSeries(arg_parent, arg_dicomWebPath, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--searchForStudies", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.dicomStores;
      var arg_parent = "foo";
      var arg_dicomWebPath = "foo";
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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchForStudies(arg_parent, arg_dicomWebPath, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.dicomStores;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--storeInstances", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.dicomStores;
      var arg_request = buildHttpBody();
      var arg_parent = "foo";
      var arg_dicomWebPath = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.HttpBody.fromJson(json);
        checkHttpBody(obj);

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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .storeInstances(arg_request, arg_parent, arg_dicomWebPath,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.dicomStores;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group(
      "resource-ProjectsLocationsDatasetsDicomStoresStudiesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresStudiesResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .dicomStores
              .studies;
      var arg_parent = "foo";
      var arg_dicomWebPath = "foo";
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_parent, arg_dicomWebPath, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--retrieveMetadata", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresStudiesResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .dicomStores
              .studies;
      var arg_parent = "foo";
      var arg_dicomWebPath = "foo";
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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .retrieveMetadata(arg_parent, arg_dicomWebPath, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--retrieveStudy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresStudiesResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .dicomStores
              .studies;
      var arg_parent = "foo";
      var arg_dicomWebPath = "foo";
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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .retrieveStudy(arg_parent, arg_dicomWebPath, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--searchForInstances", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresStudiesResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .dicomStores
              .studies;
      var arg_parent = "foo";
      var arg_dicomWebPath = "foo";
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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchForInstances(arg_parent, arg_dicomWebPath,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--searchForSeries", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresStudiesResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .dicomStores
              .studies;
      var arg_parent = "foo";
      var arg_dicomWebPath = "foo";
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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchForSeries(arg_parent, arg_dicomWebPath, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--storeInstances", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresStudiesResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .dicomStores
              .studies;
      var arg_request = buildHttpBody();
      var arg_parent = "foo";
      var arg_dicomWebPath = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.HttpBody.fromJson(json);
        checkHttpBody(obj);

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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .storeInstances(arg_request, arg_parent, arg_dicomWebPath,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });
  });

  unittest.group(
      "resource-ProjectsLocationsDatasetsDicomStoresStudiesSeriesResourceApi",
      () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresStudiesSeriesResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .dicomStores
              .studies
              .series;
      var arg_parent = "foo";
      var arg_dicomWebPath = "foo";
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_parent, arg_dicomWebPath, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--retrieveMetadata", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresStudiesSeriesResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .dicomStores
              .studies
              .series;
      var arg_parent = "foo";
      var arg_dicomWebPath = "foo";
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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .retrieveMetadata(arg_parent, arg_dicomWebPath, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--retrieveSeries", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresStudiesSeriesResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .dicomStores
              .studies
              .series;
      var arg_parent = "foo";
      var arg_dicomWebPath = "foo";
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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .retrieveSeries(arg_parent, arg_dicomWebPath, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--searchForInstances", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresStudiesSeriesResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .dicomStores
              .studies
              .series;
      var arg_parent = "foo";
      var arg_dicomWebPath = "foo";
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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchForInstances(arg_parent, arg_dicomWebPath,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });
  });

  unittest.group(
      "resource-ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesResourceApi",
      () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesResourceApi
          res = new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .dicomStores
              .studies
              .series
              .instances;
      var arg_parent = "foo";
      var arg_dicomWebPath = "foo";
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
          .delete(arg_parent, arg_dicomWebPath, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--retrieveInstance", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesResourceApi
          res = new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .dicomStores
              .studies
              .series
              .instances;
      var arg_parent = "foo";
      var arg_dicomWebPath = "foo";
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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .retrieveInstance(arg_parent, arg_dicomWebPath, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--retrieveMetadata", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesResourceApi
          res = new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .dicomStores
              .studies
              .series
              .instances;
      var arg_parent = "foo";
      var arg_dicomWebPath = "foo";
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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .retrieveMetadata(arg_parent, arg_dicomWebPath, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--retrieveRendered", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesResourceApi
          res = new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .dicomStores
              .studies
              .series
              .instances;
      var arg_parent = "foo";
      var arg_dicomWebPath = "foo";
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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .retrieveRendered(arg_parent, arg_dicomWebPath, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });
  });

  unittest.group(
      "resource-ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesResourceApi",
      () {
    unittest.test("method--retrieveFrames", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesResourceApi
          res = new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .dicomStores
              .studies
              .series
              .instances
              .frames;
      var arg_parent = "foo";
      var arg_dicomWebPath = "foo";
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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .retrieveFrames(arg_parent, arg_dicomWebPath, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--retrieveRendered", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesResourceApi
          res = new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .dicomStores
              .studies
              .series
              .instances
              .frames;
      var arg_parent = "foo";
      var arg_dicomWebPath = "foo";
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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .retrieveRendered(arg_parent, arg_dicomWebPath, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsDatasetsFhirStoresResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.fhirStores;
      var arg_request = buildFhirStore();
      var arg_parent = "foo";
      var arg_fhirStoreId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.FhirStore.fromJson(json);
        checkFhirStore(obj);

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
            queryMap["fhirStoreId"].first, unittest.equals(arg_fhirStoreId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildFhirStore());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              fhirStoreId: arg_fhirStoreId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFhirStore(response);
      })));
    });

    unittest.test("method--deidentify", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.fhirStores;
      var arg_request = buildDeidentifyFhirStoreRequest();
      var arg_sourceStore = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DeidentifyFhirStoreRequest.fromJson(json);
        checkDeidentifyFhirStoreRequest(obj);

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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deidentify(arg_request, arg_sourceStore, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.fhirStores;
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

    unittest.test("method--export", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.fhirStores;
      var arg_request = buildExportResourcesRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ExportResourcesRequest.fromJson(json);
        checkExportResourcesRequest(obj);

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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .export(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.fhirStores;
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
        var resp = convert.json.encode(buildFhirStore());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFhirStore(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.fhirStores;
      var arg_resource = "foo";
      var arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--import", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.fhirStores;
      var arg_request = buildImportResourcesRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ImportResourcesRequest.fromJson(json);
        checkImportResourcesRequest(obj);

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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .import(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.fhirStores;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_filter = "foo";
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListFhirStoresResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              filter: arg_filter,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListFhirStoresResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.fhirStores;
      var arg_request = buildFhirStore();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.FhirStore.fromJson(json);
        checkFhirStore(obj);

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildFhirStore());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFhirStore(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.fhirStores;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.fhirStores;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsDatasetsFhirStoresFhirResourceApi",
      () {
    unittest.test("method--Patient_everything", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresFhirResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .fhirStores
              .fhir;
      var arg_name = "foo";
      var arg_end = "foo";
      var arg_P_pageToken = "foo";
      var arg_P_type = "foo";
      var arg_P_since = "foo";
      var arg_start = "foo";
      var arg_P_count = 42;
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
        unittest.expect(queryMap["end"].first, unittest.equals(arg_end));
        unittest.expect(
            queryMap["_page_token"].first, unittest.equals(arg_P_pageToken));
        unittest.expect(queryMap["_type"].first, unittest.equals(arg_P_type));
        unittest.expect(queryMap["_since"].first, unittest.equals(arg_P_since));
        unittest.expect(queryMap["start"].first, unittest.equals(arg_start));
        unittest.expect(core.int.parse(queryMap["_count"].first),
            unittest.equals(arg_P_count));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.Patient_everything(arg_name,
              end: arg_end,
              P_pageToken: arg_P_pageToken,
              P_type: arg_P_type,
              P_since: arg_P_since,
              start: arg_start,
              P_count: arg_P_count,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--Resource_purge", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresFhirResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .fhirStores
              .fhir;
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
      res.Resource_purge(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--capabilities", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresFhirResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .fhirStores
              .fhir;
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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .capabilities(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresFhirResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .fhirStores
              .fhir;
      var arg_request = buildHttpBody();
      var arg_parent = "foo";
      var arg_type = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.HttpBody.fromJson(json);
        checkHttpBody(obj);

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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, arg_type, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresFhirResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .fhirStores
              .fhir;
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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--executeBundle", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresFhirResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .fhirStores
              .fhir;
      var arg_request = buildHttpBody();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.HttpBody.fromJson(json);
        checkHttpBody(obj);

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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .executeBundle(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--history", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresFhirResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .fhirStores
              .fhir;
      var arg_name = "foo";
      var arg_P_pageToken = "foo";
      var arg_P_since = "foo";
      var arg_P_count = 42;
      var arg_P_at = "foo";
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
            queryMap["_page_token"].first, unittest.equals(arg_P_pageToken));
        unittest.expect(queryMap["_since"].first, unittest.equals(arg_P_since));
        unittest.expect(core.int.parse(queryMap["_count"].first),
            unittest.equals(arg_P_count));
        unittest.expect(queryMap["_at"].first, unittest.equals(arg_P_at));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .history(arg_name,
              P_pageToken: arg_P_pageToken,
              P_since: arg_P_since,
              P_count: arg_P_count,
              P_at: arg_P_at,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresFhirResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .fhirStores
              .fhir;
      var arg_request = buildHttpBody();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.HttpBody.fromJson(json);
        checkHttpBody(obj);

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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--read", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresFhirResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .fhirStores
              .fhir;
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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .read(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresFhirResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .fhirStores
              .fhir;
      var arg_request = buildSearchResourcesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SearchResourcesRequest.fromJson(json);
        checkSearchResourcesRequest(obj);

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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresFhirResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .fhirStores
              .fhir;
      var arg_request = buildHttpBody();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.HttpBody.fromJson(json);
        checkHttpBody(obj);

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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--vread", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresFhirResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .fhirStores
              .fhir;
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
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .vread(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsDatasetsHl7V2StoresResourceApi",
      () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsHl7V2StoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
      var arg_request = buildHl7V2Store();
      var arg_parent = "foo";
      var arg_hl7V2StoreId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Hl7V2Store.fromJson(json);
        checkHl7V2Store(obj);

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
            queryMap["hl7V2StoreId"].first, unittest.equals(arg_hl7V2StoreId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildHl7V2Store());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              hl7V2StoreId: arg_hl7V2StoreId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHl7V2Store(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsHl7V2StoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
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
      api.ProjectsLocationsDatasetsHl7V2StoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
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
        var resp = convert.json.encode(buildHl7V2Store());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHl7V2Store(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsHl7V2StoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
      var arg_resource = "foo";
      var arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsHl7V2StoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListHl7V2StoresResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListHl7V2StoresResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsHl7V2StoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
      var arg_request = buildHl7V2Store();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Hl7V2Store.fromJson(json);
        checkHl7V2Store(obj);

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildHl7V2Store());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHl7V2Store(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsHl7V2StoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsHl7V2StoresResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.hl7V2Stores;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group(
      "resource-ProjectsLocationsDatasetsHl7V2StoresMessagesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsHl7V2StoresMessagesResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .hl7V2Stores
              .messages;
      var arg_request = buildCreateMessageRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateMessageRequest.fromJson(json);
        checkCreateMessageRequest(obj);

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
        var resp = convert.json.encode(buildMessage());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMessage(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsHl7V2StoresMessagesResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .hl7V2Stores
              .messages;
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
      api.ProjectsLocationsDatasetsHl7V2StoresMessagesResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .hl7V2Stores
              .messages;
      var arg_name = "foo";
      var arg_view = "foo";
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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildMessage());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMessage(response);
      })));
    });

    unittest.test("method--ingest", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsHl7V2StoresMessagesResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .hl7V2Stores
              .messages;
      var arg_request = buildIngestMessageRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.IngestMessageRequest.fromJson(json);
        checkIngestMessageRequest(obj);

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
        var resp = convert.json.encode(buildIngestMessageResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .ingest(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIngestMessageResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsHl7V2StoresMessagesResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .hl7V2Stores
              .messages;
      var arg_parent = "foo";
      var arg_view = "foo";
      var arg_filter = "foo";
      var arg_orderBy = "foo";
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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListMessagesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              view: arg_view,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListMessagesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsHl7V2StoresMessagesResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .hl7V2Stores
              .messages;
      var arg_request = buildMessage();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Message.fromJson(json);
        checkMessage(obj);

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildMessage());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMessage(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsDatasetsOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsOperationsResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CancelOperationRequest.fromJson(json);
        checkCancelOperationRequest(obj);

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
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsOperationsResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.operations;
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsOperationsResourceApi res =
          new api.HealthcareApi(mock).projects.locations.datasets.operations;
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });
}
