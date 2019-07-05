library googleapis_beta.healthcare.v1beta1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/healthcare/v1beta1.dart' as api;

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

buildUnnamed4840() {
  var o = new core.List<api.AuditLogConfig>();
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

checkUnnamed4840(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
buildAuditConfig() {
  var o = new api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed4840();
    o.service = "foo";
  }
  buildCounterAuditConfig--;
  return o;
}

checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed4840(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

buildUnnamed4841() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4841(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
buildAuditLogConfig() {
  var o = new api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed4841();
    o.logType = "foo";
  }
  buildCounterAuditLogConfig--;
  return o;
}

checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed4841(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

buildUnnamed4842() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4842(core.List<core.String> o) {
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
    o.members = buildUnnamed4842();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed4842(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
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

core.int buildCounterDeidentifyErrorDetails = 0;
buildDeidentifyErrorDetails() {
  var o = new api.DeidentifyErrorDetails();
  buildCounterDeidentifyErrorDetails++;
  if (buildCounterDeidentifyErrorDetails < 3) {
    o.failureResourceCount = "foo";
    o.failureStoreCount = "foo";
    o.successResourceCount = "foo";
    o.successStoreCount = "foo";
  }
  buildCounterDeidentifyErrorDetails--;
  return o;
}

checkDeidentifyErrorDetails(api.DeidentifyErrorDetails o) {
  buildCounterDeidentifyErrorDetails++;
  if (buildCounterDeidentifyErrorDetails < 3) {
    unittest.expect(o.failureResourceCount, unittest.equals('foo'));
    unittest.expect(o.failureStoreCount, unittest.equals('foo'));
    unittest.expect(o.successResourceCount, unittest.equals('foo'));
    unittest.expect(o.successStoreCount, unittest.equals('foo'));
  }
  buildCounterDeidentifyErrorDetails--;
}

core.int buildCounterDeidentifySummary = 0;
buildDeidentifySummary() {
  var o = new api.DeidentifySummary();
  buildCounterDeidentifySummary++;
  if (buildCounterDeidentifySummary < 3) {
    o.successResourceCount = "foo";
    o.successStoreCount = "foo";
  }
  buildCounterDeidentifySummary--;
  return o;
}

checkDeidentifySummary(api.DeidentifySummary o) {
  buildCounterDeidentifySummary++;
  if (buildCounterDeidentifySummary < 3) {
    unittest.expect(o.successResourceCount, unittest.equals('foo'));
    unittest.expect(o.successStoreCount, unittest.equals('foo'));
  }
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
  }
  buildCounterDicomConfig--;
}

buildUnnamed4843() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4843(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterDicomStore = 0;
buildDicomStore() {
  var o = new api.DicomStore();
  buildCounterDicomStore++;
  if (buildCounterDicomStore < 3) {
    o.labels = buildUnnamed4843();
    o.name = "foo";
    o.notificationConfig = buildNotificationConfig();
  }
  buildCounterDicomStore--;
  return o;
}

checkDicomStore(api.DicomStore o) {
  buildCounterDicomStore++;
  if (buildCounterDicomStore < 3) {
    checkUnnamed4843(o.labels);
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

core.int buildCounterErrorDetail = 0;
buildErrorDetail() {
  var o = new api.ErrorDetail();
  buildCounterErrorDetail++;
  if (buildCounterErrorDetail < 3) {
    o.error = buildStatus();
    o.resource = "foo";
  }
  buildCounterErrorDetail--;
  return o;
}

checkErrorDetail(api.ErrorDetail o) {
  buildCounterErrorDetail++;
  if (buildCounterErrorDetail < 3) {
    checkStatus(o.error);
    unittest.expect(o.resource, unittest.equals('foo'));
  }
  buildCounterErrorDetail--;
}

core.int buildCounterExportDicomDataRequest = 0;
buildExportDicomDataRequest() {
  var o = new api.ExportDicomDataRequest();
  buildCounterExportDicomDataRequest++;
  if (buildCounterExportDicomDataRequest < 3) {
    o.bigqueryDestination =
        buildGoogleCloudHealthcareV1beta1DicomBigQueryDestination();
    o.gcsDestination = buildGoogleCloudHealthcareV1beta1DicomGcsDestination();
  }
  buildCounterExportDicomDataRequest--;
  return o;
}

checkExportDicomDataRequest(api.ExportDicomDataRequest o) {
  buildCounterExportDicomDataRequest++;
  if (buildCounterExportDicomDataRequest < 3) {
    checkGoogleCloudHealthcareV1beta1DicomBigQueryDestination(
        o.bigqueryDestination);
    checkGoogleCloudHealthcareV1beta1DicomGcsDestination(o.gcsDestination);
  }
  buildCounterExportDicomDataRequest--;
}

core.int buildCounterExportResourcesRequest = 0;
buildExportResourcesRequest() {
  var o = new api.ExportResourcesRequest();
  buildCounterExportResourcesRequest++;
  if (buildCounterExportResourcesRequest < 3) {
    o.bigqueryDestination =
        buildGoogleCloudHealthcareV1beta1FhirBigQueryDestination();
    o.gcsDestination =
        buildGoogleCloudHealthcareV1beta1FhirRestGcsDestination();
  }
  buildCounterExportResourcesRequest--;
  return o;
}

checkExportResourcesRequest(api.ExportResourcesRequest o) {
  buildCounterExportResourcesRequest++;
  if (buildCounterExportResourcesRequest < 3) {
    checkGoogleCloudHealthcareV1beta1FhirBigQueryDestination(
        o.bigqueryDestination);
    checkGoogleCloudHealthcareV1beta1FhirRestGcsDestination(o.gcsDestination);
  }
  buildCounterExportResourcesRequest--;
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

buildUnnamed4844() {
  var o = new core.List<api.FieldMetadata>();
  o.add(buildFieldMetadata());
  o.add(buildFieldMetadata());
  return o;
}

checkUnnamed4844(core.List<api.FieldMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldMetadata(o[0]);
  checkFieldMetadata(o[1]);
}

core.int buildCounterFhirConfig = 0;
buildFhirConfig() {
  var o = new api.FhirConfig();
  buildCounterFhirConfig++;
  if (buildCounterFhirConfig < 3) {
    o.fieldMetadataList = buildUnnamed4844();
  }
  buildCounterFhirConfig--;
  return o;
}

checkFhirConfig(api.FhirConfig o) {
  buildCounterFhirConfig++;
  if (buildCounterFhirConfig < 3) {
    checkUnnamed4844(o.fieldMetadataList);
  }
  buildCounterFhirConfig--;
}

buildUnnamed4845() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4845(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterFhirStore = 0;
buildFhirStore() {
  var o = new api.FhirStore();
  buildCounterFhirStore++;
  if (buildCounterFhirStore < 3) {
    o.disableReferentialIntegrity = true;
    o.disableResourceVersioning = true;
    o.enableHistoryImport = true;
    o.enableUpdateCreate = true;
    o.labels = buildUnnamed4845();
    o.name = "foo";
    o.notificationConfig = buildNotificationConfig();
  }
  buildCounterFhirStore--;
  return o;
}

checkFhirStore(api.FhirStore o) {
  buildCounterFhirStore++;
  if (buildCounterFhirStore < 3) {
    unittest.expect(o.disableReferentialIntegrity, unittest.isTrue);
    unittest.expect(o.disableResourceVersioning, unittest.isTrue);
    unittest.expect(o.enableHistoryImport, unittest.isTrue);
    unittest.expect(o.enableUpdateCreate, unittest.isTrue);
    checkUnnamed4845(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkNotificationConfig(o.notificationConfig);
  }
  buildCounterFhirStore--;
}

buildUnnamed4846() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4846(core.List<core.String> o) {
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
    o.paths = buildUnnamed4846();
  }
  buildCounterFieldMetadata--;
  return o;
}

checkFieldMetadata(api.FieldMetadata o) {
  buildCounterFieldMetadata++;
  if (buildCounterFieldMetadata < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUnnamed4846(o.paths);
  }
  buildCounterFieldMetadata--;
}

core.int buildCounterGoogleCloudHealthcareV1beta1DicomBigQueryDestination = 0;
buildGoogleCloudHealthcareV1beta1DicomBigQueryDestination() {
  var o = new api.GoogleCloudHealthcareV1beta1DicomBigQueryDestination();
  buildCounterGoogleCloudHealthcareV1beta1DicomBigQueryDestination++;
  if (buildCounterGoogleCloudHealthcareV1beta1DicomBigQueryDestination < 3) {
    o.force = true;
    o.tableUri = "foo";
  }
  buildCounterGoogleCloudHealthcareV1beta1DicomBigQueryDestination--;
  return o;
}

checkGoogleCloudHealthcareV1beta1DicomBigQueryDestination(
    api.GoogleCloudHealthcareV1beta1DicomBigQueryDestination o) {
  buildCounterGoogleCloudHealthcareV1beta1DicomBigQueryDestination++;
  if (buildCounterGoogleCloudHealthcareV1beta1DicomBigQueryDestination < 3) {
    unittest.expect(o.force, unittest.isTrue);
    unittest.expect(o.tableUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudHealthcareV1beta1DicomBigQueryDestination--;
}

core.int buildCounterGoogleCloudHealthcareV1beta1DicomGcsDestination = 0;
buildGoogleCloudHealthcareV1beta1DicomGcsDestination() {
  var o = new api.GoogleCloudHealthcareV1beta1DicomGcsDestination();
  buildCounterGoogleCloudHealthcareV1beta1DicomGcsDestination++;
  if (buildCounterGoogleCloudHealthcareV1beta1DicomGcsDestination < 3) {
    o.mimeType = "foo";
    o.uriPrefix = "foo";
  }
  buildCounterGoogleCloudHealthcareV1beta1DicomGcsDestination--;
  return o;
}

checkGoogleCloudHealthcareV1beta1DicomGcsDestination(
    api.GoogleCloudHealthcareV1beta1DicomGcsDestination o) {
  buildCounterGoogleCloudHealthcareV1beta1DicomGcsDestination++;
  if (buildCounterGoogleCloudHealthcareV1beta1DicomGcsDestination < 3) {
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.uriPrefix, unittest.equals('foo'));
  }
  buildCounterGoogleCloudHealthcareV1beta1DicomGcsDestination--;
}

core.int buildCounterGoogleCloudHealthcareV1beta1DicomGcsSource = 0;
buildGoogleCloudHealthcareV1beta1DicomGcsSource() {
  var o = new api.GoogleCloudHealthcareV1beta1DicomGcsSource();
  buildCounterGoogleCloudHealthcareV1beta1DicomGcsSource++;
  if (buildCounterGoogleCloudHealthcareV1beta1DicomGcsSource < 3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudHealthcareV1beta1DicomGcsSource--;
  return o;
}

checkGoogleCloudHealthcareV1beta1DicomGcsSource(
    api.GoogleCloudHealthcareV1beta1DicomGcsSource o) {
  buildCounterGoogleCloudHealthcareV1beta1DicomGcsSource++;
  if (buildCounterGoogleCloudHealthcareV1beta1DicomGcsSource < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudHealthcareV1beta1DicomGcsSource--;
}

core.int buildCounterGoogleCloudHealthcareV1beta1FhirBigQueryDestination = 0;
buildGoogleCloudHealthcareV1beta1FhirBigQueryDestination() {
  var o = new api.GoogleCloudHealthcareV1beta1FhirBigQueryDestination();
  buildCounterGoogleCloudHealthcareV1beta1FhirBigQueryDestination++;
  if (buildCounterGoogleCloudHealthcareV1beta1FhirBigQueryDestination < 3) {
    o.datasetUri = "foo";
    o.schemaConfig = buildSchemaConfig();
  }
  buildCounterGoogleCloudHealthcareV1beta1FhirBigQueryDestination--;
  return o;
}

checkGoogleCloudHealthcareV1beta1FhirBigQueryDestination(
    api.GoogleCloudHealthcareV1beta1FhirBigQueryDestination o) {
  buildCounterGoogleCloudHealthcareV1beta1FhirBigQueryDestination++;
  if (buildCounterGoogleCloudHealthcareV1beta1FhirBigQueryDestination < 3) {
    unittest.expect(o.datasetUri, unittest.equals('foo'));
    checkSchemaConfig(o.schemaConfig);
  }
  buildCounterGoogleCloudHealthcareV1beta1FhirBigQueryDestination--;
}

core.int
    buildCounterGoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse = 0;
buildGoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse() {
  var o = new api.GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse();
  buildCounterGoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse++;
  if (buildCounterGoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse <
      3) {
    o.fhirStore = "foo";
    o.resourceCount = "foo";
  }
  buildCounterGoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse--;
  return o;
}

checkGoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse(
    api.GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse o) {
  buildCounterGoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse++;
  if (buildCounterGoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse <
      3) {
    unittest.expect(o.fhirStore, unittest.equals('foo'));
    unittest.expect(o.resourceCount, unittest.equals('foo'));
  }
  buildCounterGoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse--;
}

core.int buildCounterGoogleCloudHealthcareV1beta1FhirRestGcsDestination = 0;
buildGoogleCloudHealthcareV1beta1FhirRestGcsDestination() {
  var o = new api.GoogleCloudHealthcareV1beta1FhirRestGcsDestination();
  buildCounterGoogleCloudHealthcareV1beta1FhirRestGcsDestination++;
  if (buildCounterGoogleCloudHealthcareV1beta1FhirRestGcsDestination < 3) {
    o.uriPrefix = "foo";
  }
  buildCounterGoogleCloudHealthcareV1beta1FhirRestGcsDestination--;
  return o;
}

checkGoogleCloudHealthcareV1beta1FhirRestGcsDestination(
    api.GoogleCloudHealthcareV1beta1FhirRestGcsDestination o) {
  buildCounterGoogleCloudHealthcareV1beta1FhirRestGcsDestination++;
  if (buildCounterGoogleCloudHealthcareV1beta1FhirRestGcsDestination < 3) {
    unittest.expect(o.uriPrefix, unittest.equals('foo'));
  }
  buildCounterGoogleCloudHealthcareV1beta1FhirRestGcsDestination--;
}

core.int buildCounterGoogleCloudHealthcareV1beta1FhirRestGcsSource = 0;
buildGoogleCloudHealthcareV1beta1FhirRestGcsSource() {
  var o = new api.GoogleCloudHealthcareV1beta1FhirRestGcsSource();
  buildCounterGoogleCloudHealthcareV1beta1FhirRestGcsSource++;
  if (buildCounterGoogleCloudHealthcareV1beta1FhirRestGcsSource < 3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudHealthcareV1beta1FhirRestGcsSource--;
  return o;
}

checkGoogleCloudHealthcareV1beta1FhirRestGcsSource(
    api.GoogleCloudHealthcareV1beta1FhirRestGcsSource o) {
  buildCounterGoogleCloudHealthcareV1beta1FhirRestGcsSource++;
  if (buildCounterGoogleCloudHealthcareV1beta1FhirRestGcsSource < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudHealthcareV1beta1FhirRestGcsSource--;
}

core.int
    buildCounterGoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails =
    0;
buildGoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails() {
  var o =
      new api.GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails();
  buildCounterGoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails++;
  if (buildCounterGoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails <
      3) {
    o.errorCount = "foo";
    o.fhirStore = "foo";
    o.inputSize = "foo";
    o.successCount = "foo";
  }
  buildCounterGoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails--;
  return o;
}

checkGoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails(
    api.GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails o) {
  buildCounterGoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails++;
  if (buildCounterGoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails <
      3) {
    unittest.expect(o.errorCount, unittest.equals('foo'));
    unittest.expect(o.fhirStore, unittest.equals('foo'));
    unittest.expect(o.inputSize, unittest.equals('foo'));
    unittest.expect(o.successCount, unittest.equals('foo'));
  }
  buildCounterGoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails--;
}

core.int
    buildCounterGoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse = 0;
buildGoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse() {
  var o = new api.GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse();
  buildCounterGoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse++;
  if (buildCounterGoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse <
      3) {
    o.fhirStore = "foo";
    o.inputSize = "foo";
  }
  buildCounterGoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse--;
  return o;
}

checkGoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse(
    api.GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse o) {
  buildCounterGoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse++;
  if (buildCounterGoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse <
      3) {
    unittest.expect(o.fhirStore, unittest.equals('foo'));
    unittest.expect(o.inputSize, unittest.equals('foo'));
  }
  buildCounterGoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse--;
}

buildUnnamed4847() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4847(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterHl7V2Store = 0;
buildHl7V2Store() {
  var o = new api.Hl7V2Store();
  buildCounterHl7V2Store++;
  if (buildCounterHl7V2Store < 3) {
    o.labels = buildUnnamed4847();
    o.name = "foo";
    o.notificationConfig = buildNotificationConfig();
    o.parserConfig = buildParserConfig();
  }
  buildCounterHl7V2Store--;
  return o;
}

checkHl7V2Store(api.Hl7V2Store o) {
  buildCounterHl7V2Store++;
  if (buildCounterHl7V2Store < 3) {
    checkUnnamed4847(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkNotificationConfig(o.notificationConfig);
    checkParserConfig(o.parserConfig);
  }
  buildCounterHl7V2Store--;
}

buildUnnamed4848() {
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

checkUnnamed4848(core.Map<core.String, core.Object> o) {
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

buildUnnamed4849() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed4848());
  o.add(buildUnnamed4848());
  return o;
}

checkUnnamed4849(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4848(o[0]);
  checkUnnamed4848(o[1]);
}

core.int buildCounterHttpBody = 0;
buildHttpBody() {
  var o = new api.HttpBody();
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    o.contentType = "foo";
    o.data = "foo";
    o.extensions = buildUnnamed4849();
  }
  buildCounterHttpBody--;
  return o;
}

checkHttpBody(api.HttpBody o) {
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.data, unittest.equals('foo'));
    checkUnnamed4849(o.extensions);
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

buildUnnamed4850() {
  var o = new core.List<api.ErrorDetail>();
  o.add(buildErrorDetail());
  o.add(buildErrorDetail());
  return o;
}

checkUnnamed4850(core.List<api.ErrorDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorDetail(o[0]);
  checkErrorDetail(o[1]);
}

core.int buildCounterImportDicomDataErrorDetails = 0;
buildImportDicomDataErrorDetails() {
  var o = new api.ImportDicomDataErrorDetails();
  buildCounterImportDicomDataErrorDetails++;
  if (buildCounterImportDicomDataErrorDetails < 3) {
    o.sampleErrors = buildUnnamed4850();
  }
  buildCounterImportDicomDataErrorDetails--;
  return o;
}

checkImportDicomDataErrorDetails(api.ImportDicomDataErrorDetails o) {
  buildCounterImportDicomDataErrorDetails++;
  if (buildCounterImportDicomDataErrorDetails < 3) {
    checkUnnamed4850(o.sampleErrors);
  }
  buildCounterImportDicomDataErrorDetails--;
}

core.int buildCounterImportDicomDataRequest = 0;
buildImportDicomDataRequest() {
  var o = new api.ImportDicomDataRequest();
  buildCounterImportDicomDataRequest++;
  if (buildCounterImportDicomDataRequest < 3) {
    o.gcsSource = buildGoogleCloudHealthcareV1beta1DicomGcsSource();
  }
  buildCounterImportDicomDataRequest--;
  return o;
}

checkImportDicomDataRequest(api.ImportDicomDataRequest o) {
  buildCounterImportDicomDataRequest++;
  if (buildCounterImportDicomDataRequest < 3) {
    checkGoogleCloudHealthcareV1beta1DicomGcsSource(o.gcsSource);
  }
  buildCounterImportDicomDataRequest--;
}

core.int buildCounterImportResourcesRequest = 0;
buildImportResourcesRequest() {
  var o = new api.ImportResourcesRequest();
  buildCounterImportResourcesRequest++;
  if (buildCounterImportResourcesRequest < 3) {
    o.contentStructure = "foo";
    o.gcsSource = buildGoogleCloudHealthcareV1beta1FhirRestGcsSource();
  }
  buildCounterImportResourcesRequest--;
  return o;
}

checkImportResourcesRequest(api.ImportResourcesRequest o) {
  buildCounterImportResourcesRequest++;
  if (buildCounterImportResourcesRequest < 3) {
    unittest.expect(o.contentStructure, unittest.equals('foo'));
    checkGoogleCloudHealthcareV1beta1FhirRestGcsSource(o.gcsSource);
  }
  buildCounterImportResourcesRequest--;
}

buildUnnamed4851() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4851(core.List<core.String> o) {
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
    o.infoTypes = buildUnnamed4851();
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
    checkUnnamed4851(o.infoTypes);
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

buildUnnamed4852() {
  var o = new core.List<api.Dataset>();
  o.add(buildDataset());
  o.add(buildDataset());
  return o;
}

checkUnnamed4852(core.List<api.Dataset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataset(o[0]);
  checkDataset(o[1]);
}

core.int buildCounterListDatasetsResponse = 0;
buildListDatasetsResponse() {
  var o = new api.ListDatasetsResponse();
  buildCounterListDatasetsResponse++;
  if (buildCounterListDatasetsResponse < 3) {
    o.datasets = buildUnnamed4852();
    o.nextPageToken = "foo";
  }
  buildCounterListDatasetsResponse--;
  return o;
}

checkListDatasetsResponse(api.ListDatasetsResponse o) {
  buildCounterListDatasetsResponse++;
  if (buildCounterListDatasetsResponse < 3) {
    checkUnnamed4852(o.datasets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDatasetsResponse--;
}

buildUnnamed4853() {
  var o = new core.List<api.DicomStore>();
  o.add(buildDicomStore());
  o.add(buildDicomStore());
  return o;
}

checkUnnamed4853(core.List<api.DicomStore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDicomStore(o[0]);
  checkDicomStore(o[1]);
}

core.int buildCounterListDicomStoresResponse = 0;
buildListDicomStoresResponse() {
  var o = new api.ListDicomStoresResponse();
  buildCounterListDicomStoresResponse++;
  if (buildCounterListDicomStoresResponse < 3) {
    o.dicomStores = buildUnnamed4853();
    o.nextPageToken = "foo";
  }
  buildCounterListDicomStoresResponse--;
  return o;
}

checkListDicomStoresResponse(api.ListDicomStoresResponse o) {
  buildCounterListDicomStoresResponse++;
  if (buildCounterListDicomStoresResponse < 3) {
    checkUnnamed4853(o.dicomStores);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDicomStoresResponse--;
}

buildUnnamed4854() {
  var o = new core.List<api.FhirStore>();
  o.add(buildFhirStore());
  o.add(buildFhirStore());
  return o;
}

checkUnnamed4854(core.List<api.FhirStore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFhirStore(o[0]);
  checkFhirStore(o[1]);
}

core.int buildCounterListFhirStoresResponse = 0;
buildListFhirStoresResponse() {
  var o = new api.ListFhirStoresResponse();
  buildCounterListFhirStoresResponse++;
  if (buildCounterListFhirStoresResponse < 3) {
    o.fhirStores = buildUnnamed4854();
    o.nextPageToken = "foo";
  }
  buildCounterListFhirStoresResponse--;
  return o;
}

checkListFhirStoresResponse(api.ListFhirStoresResponse o) {
  buildCounterListFhirStoresResponse++;
  if (buildCounterListFhirStoresResponse < 3) {
    checkUnnamed4854(o.fhirStores);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListFhirStoresResponse--;
}

buildUnnamed4855() {
  var o = new core.List<api.Hl7V2Store>();
  o.add(buildHl7V2Store());
  o.add(buildHl7V2Store());
  return o;
}

checkUnnamed4855(core.List<api.Hl7V2Store> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHl7V2Store(o[0]);
  checkHl7V2Store(o[1]);
}

core.int buildCounterListHl7V2StoresResponse = 0;
buildListHl7V2StoresResponse() {
  var o = new api.ListHl7V2StoresResponse();
  buildCounterListHl7V2StoresResponse++;
  if (buildCounterListHl7V2StoresResponse < 3) {
    o.hl7V2Stores = buildUnnamed4855();
    o.nextPageToken = "foo";
  }
  buildCounterListHl7V2StoresResponse--;
  return o;
}

checkListHl7V2StoresResponse(api.ListHl7V2StoresResponse o) {
  buildCounterListHl7V2StoresResponse++;
  if (buildCounterListHl7V2StoresResponse < 3) {
    checkUnnamed4855(o.hl7V2Stores);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListHl7V2StoresResponse--;
}

buildUnnamed4856() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed4856(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
buildListLocationsResponse() {
  var o = new api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed4856();
    o.nextPageToken = "foo";
  }
  buildCounterListLocationsResponse--;
  return o;
}

checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed4856(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

buildUnnamed4857() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4857(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListMessagesResponse = 0;
buildListMessagesResponse() {
  var o = new api.ListMessagesResponse();
  buildCounterListMessagesResponse++;
  if (buildCounterListMessagesResponse < 3) {
    o.messages = buildUnnamed4857();
    o.nextPageToken = "foo";
  }
  buildCounterListMessagesResponse--;
  return o;
}

checkListMessagesResponse(api.ListMessagesResponse o) {
  buildCounterListMessagesResponse++;
  if (buildCounterListMessagesResponse < 3) {
    checkUnnamed4857(o.messages);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListMessagesResponse--;
}

buildUnnamed4858() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed4858(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed4858();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4858(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed4859() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4859(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed4860() {
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

checkUnnamed4860(core.Map<core.String, core.Object> o) {
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
    o.labels = buildUnnamed4859();
    o.locationId = "foo";
    o.metadata = buildUnnamed4860();
    o.name = "foo";
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed4859(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed4860(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

buildUnnamed4861() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4861(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed4862() {
  var o = new core.List<api.PatientId>();
  o.add(buildPatientId());
  o.add(buildPatientId());
  return o;
}

checkUnnamed4862(core.List<api.PatientId> o) {
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
    o.labels = buildUnnamed4861();
    o.messageType = "foo";
    o.name = "foo";
    o.parsedData = buildParsedData();
    o.patientIds = buildUnnamed4862();
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
    checkUnnamed4861(o.labels);
    unittest.expect(o.messageType, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkParsedData(o.parsedData);
    checkUnnamed4862(o.patientIds);
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

buildUnnamed4863() {
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

checkUnnamed4863(core.Map<core.String, core.Object> o) {
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

buildUnnamed4864() {
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

checkUnnamed4864(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed4863();
    o.name = "foo";
    o.response = buildUnnamed4864();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed4863(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4864(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationMetadata = 0;
buildOperationMetadata() {
  var o = new api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.apiMethodName = "foo";
    o.counter = buildProgressCounter();
    o.createTime = "foo";
    o.endTime = "foo";
  }
  buildCounterOperationMetadata--;
  return o;
}

checkOperationMetadata(api.OperationMetadata o) {
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    unittest.expect(o.apiMethodName, unittest.equals('foo'));
    checkProgressCounter(o.counter);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
  }
  buildCounterOperationMetadata--;
}

buildUnnamed4865() {
  var o = new core.List<api.Segment>();
  o.add(buildSegment());
  o.add(buildSegment());
  return o;
}

checkUnnamed4865(core.List<api.Segment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSegment(o[0]);
  checkSegment(o[1]);
}

core.int buildCounterParsedData = 0;
buildParsedData() {
  var o = new api.ParsedData();
  buildCounterParsedData++;
  if (buildCounterParsedData < 3) {
    o.segments = buildUnnamed4865();
  }
  buildCounterParsedData--;
  return o;
}

checkParsedData(api.ParsedData o) {
  buildCounterParsedData++;
  if (buildCounterParsedData < 3) {
    checkUnnamed4865(o.segments);
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

buildUnnamed4866() {
  var o = new core.List<api.AuditConfig>();
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

checkUnnamed4866(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

buildUnnamed4867() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed4867(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed4866();
    o.bindings = buildUnnamed4867();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed4866(o.auditConfigs);
    checkUnnamed4867(o.bindings);
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

buildUnnamed4868() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4868(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterSegment = 0;
buildSegment() {
  var o = new api.Segment();
  buildCounterSegment++;
  if (buildCounterSegment < 3) {
    o.fields = buildUnnamed4868();
    o.segmentId = "foo";
    o.setId = "foo";
  }
  buildCounterSegment--;
  return o;
}

checkSegment(api.Segment o) {
  buildCounterSegment++;
  if (buildCounterSegment < 3) {
    checkUnnamed4868(o.fields);
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

buildUnnamed4869() {
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

checkUnnamed4869(core.Map<core.String, core.Object> o) {
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

buildUnnamed4870() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed4869());
  o.add(buildUnnamed4869());
  return o;
}

checkUnnamed4870(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4869(o[0]);
  checkUnnamed4869(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4870();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed4870(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed4871() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4871(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTagFilterList = 0;
buildTagFilterList() {
  var o = new api.TagFilterList();
  buildCounterTagFilterList++;
  if (buildCounterTagFilterList < 3) {
    o.tags = buildUnnamed4871();
  }
  buildCounterTagFilterList--;
  return o;
}

checkTagFilterList(api.TagFilterList o) {
  buildCounterTagFilterList++;
  if (buildCounterTagFilterList < 3) {
    checkUnnamed4871(o.tags);
  }
  buildCounterTagFilterList--;
}

buildUnnamed4872() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4872(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed4872();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed4872(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed4873() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4873(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed4873();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed4873(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

buildUnnamed4874() {
  var o = new core.List<api.InfoTypeTransformation>();
  o.add(buildInfoTypeTransformation());
  o.add(buildInfoTypeTransformation());
  return o;
}

checkUnnamed4874(core.List<api.InfoTypeTransformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInfoTypeTransformation(o[0]);
  checkInfoTypeTransformation(o[1]);
}

core.int buildCounterTextConfig = 0;
buildTextConfig() {
  var o = new api.TextConfig();
  buildCounterTextConfig++;
  if (buildCounterTextConfig < 3) {
    o.transformations = buildUnnamed4874();
  }
  buildCounterTextConfig--;
  return o;
}

checkTextConfig(api.TextConfig o) {
  buildCounterTextConfig++;
  if (buildCounterTextConfig < 3) {
    checkUnnamed4874(o.transformations);
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

  unittest.group("obj-schema-DeidentifyErrorDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeidentifyErrorDetails();
      var od = new api.DeidentifyErrorDetails.fromJson(o.toJson());
      checkDeidentifyErrorDetails(od);
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

  unittest.group("obj-schema-ErrorDetail", () {
    unittest.test("to-json--from-json", () {
      var o = buildErrorDetail();
      var od = new api.ErrorDetail.fromJson(o.toJson());
      checkErrorDetail(od);
    });
  });

  unittest.group("obj-schema-ExportDicomDataRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildExportDicomDataRequest();
      var od = new api.ExportDicomDataRequest.fromJson(o.toJson());
      checkExportDicomDataRequest(od);
    });
  });

  unittest.group("obj-schema-ExportResourcesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildExportResourcesRequest();
      var od = new api.ExportResourcesRequest.fromJson(o.toJson());
      checkExportResourcesRequest(od);
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
      "obj-schema-GoogleCloudHealthcareV1beta1DicomBigQueryDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudHealthcareV1beta1DicomBigQueryDestination();
      var od =
          new api.GoogleCloudHealthcareV1beta1DicomBigQueryDestination.fromJson(
              o.toJson());
      checkGoogleCloudHealthcareV1beta1DicomBigQueryDestination(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudHealthcareV1beta1DicomGcsDestination",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudHealthcareV1beta1DicomGcsDestination();
      var od = new api.GoogleCloudHealthcareV1beta1DicomGcsDestination.fromJson(
          o.toJson());
      checkGoogleCloudHealthcareV1beta1DicomGcsDestination(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudHealthcareV1beta1DicomGcsSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudHealthcareV1beta1DicomGcsSource();
      var od = new api.GoogleCloudHealthcareV1beta1DicomGcsSource.fromJson(
          o.toJson());
      checkGoogleCloudHealthcareV1beta1DicomGcsSource(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudHealthcareV1beta1FhirBigQueryDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudHealthcareV1beta1FhirBigQueryDestination();
      var od =
          new api.GoogleCloudHealthcareV1beta1FhirBigQueryDestination.fromJson(
              o.toJson());
      checkGoogleCloudHealthcareV1beta1FhirBigQueryDestination(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse();
      var od = new api
              .GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse.fromJson(
          o.toJson());
      checkGoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudHealthcareV1beta1FhirRestGcsDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudHealthcareV1beta1FhirRestGcsDestination();
      var od =
          new api.GoogleCloudHealthcareV1beta1FhirRestGcsDestination.fromJson(
              o.toJson());
      checkGoogleCloudHealthcareV1beta1FhirRestGcsDestination(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudHealthcareV1beta1FhirRestGcsSource",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudHealthcareV1beta1FhirRestGcsSource();
      var od = new api.GoogleCloudHealthcareV1beta1FhirRestGcsSource.fromJson(
          o.toJson());
      checkGoogleCloudHealthcareV1beta1FhirRestGcsSource(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails();
      var od = new api
              .GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails.fromJson(
          o.toJson());
      checkGoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse();
      var od = new api
              .GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse.fromJson(
          o.toJson());
      checkGoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse(od);
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

  unittest.group("obj-schema-ImportDicomDataErrorDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportDicomDataErrorDetails();
      var od = new api.ImportDicomDataErrorDetails.fromJson(o.toJson());
      checkImportDicomDataErrorDetails(od);
    });
  });

  unittest.group("obj-schema-ImportDicomDataRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportDicomDataRequest();
      var od = new api.ImportDicomDataRequest.fromJson(o.toJson());
      checkImportDicomDataRequest(od);
    });
  });

  unittest.group("obj-schema-ImportResourcesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportResourcesRequest();
      var od = new api.ImportResourcesRequest.fromJson(o.toJson());
      checkImportResourcesRequest(od);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListDatasetsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListDicomStoresResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListFhirStoresResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageToken: arg_pageToken,
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
    unittest.test("method--Observation_lastn", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresFhirResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .fhirStores
              .fhir;
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
      res.Observation_lastn(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

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
      var arg_start = "foo";
      var arg_end = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["start"].first, unittest.equals(arg_start));
        unittest.expect(queryMap["end"].first, unittest.equals(arg_end));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.Patient_everything(arg_name,
              start: arg_start, end: arg_end, $fields: arg_$fields)
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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

    unittest.test("method--conditionalDelete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsDatasetsFhirStoresFhirResourceApi res =
          new api.HealthcareApi(mock)
              .projects
              .locations
              .datasets
              .fhirStores
              .fhir;
      var arg_parent = "foo";
      var arg_type = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
          .conditionalDelete(arg_parent, arg_type, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--conditionalPatch", () {
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
          .conditionalPatch(arg_request, arg_parent, arg_type,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkHttpBody(response);
      })));
    });

    unittest.test("method--conditionalUpdate", () {
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
          .conditionalUpdate(arg_request, arg_parent, arg_type,
              $fields: arg_$fields)
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
      var arg_page = "foo";
      var arg_at = "foo";
      var arg_count = 42;
      var arg_since = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["page"].first, unittest.equals(arg_page));
        unittest.expect(queryMap["at"].first, unittest.equals(arg_at));
        unittest.expect(core.int.parse(queryMap["count"].first),
            unittest.equals(arg_count));
        unittest.expect(queryMap["since"].first, unittest.equals(arg_since));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .history(arg_name,
              page: arg_page,
              at: arg_at,
              count: arg_count,
              since: arg_since,
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListHl7V2StoresResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_orderBy = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
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
              filter: arg_filter,
              pageToken: arg_pageToken,
              orderBy: arg_orderBy,
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
