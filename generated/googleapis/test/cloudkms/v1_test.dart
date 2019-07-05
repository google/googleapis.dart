library googleapis.cloudkms.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/cloudkms/v1.dart' as api;

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

core.int buildCounterAsymmetricDecryptRequest = 0;
buildAsymmetricDecryptRequest() {
  var o = new api.AsymmetricDecryptRequest();
  buildCounterAsymmetricDecryptRequest++;
  if (buildCounterAsymmetricDecryptRequest < 3) {
    o.ciphertext = "foo";
  }
  buildCounterAsymmetricDecryptRequest--;
  return o;
}

checkAsymmetricDecryptRequest(api.AsymmetricDecryptRequest o) {
  buildCounterAsymmetricDecryptRequest++;
  if (buildCounterAsymmetricDecryptRequest < 3) {
    unittest.expect(o.ciphertext, unittest.equals('foo'));
  }
  buildCounterAsymmetricDecryptRequest--;
}

core.int buildCounterAsymmetricDecryptResponse = 0;
buildAsymmetricDecryptResponse() {
  var o = new api.AsymmetricDecryptResponse();
  buildCounterAsymmetricDecryptResponse++;
  if (buildCounterAsymmetricDecryptResponse < 3) {
    o.plaintext = "foo";
  }
  buildCounterAsymmetricDecryptResponse--;
  return o;
}

checkAsymmetricDecryptResponse(api.AsymmetricDecryptResponse o) {
  buildCounterAsymmetricDecryptResponse++;
  if (buildCounterAsymmetricDecryptResponse < 3) {
    unittest.expect(o.plaintext, unittest.equals('foo'));
  }
  buildCounterAsymmetricDecryptResponse--;
}

core.int buildCounterAsymmetricSignRequest = 0;
buildAsymmetricSignRequest() {
  var o = new api.AsymmetricSignRequest();
  buildCounterAsymmetricSignRequest++;
  if (buildCounterAsymmetricSignRequest < 3) {
    o.digest = buildDigest();
  }
  buildCounterAsymmetricSignRequest--;
  return o;
}

checkAsymmetricSignRequest(api.AsymmetricSignRequest o) {
  buildCounterAsymmetricSignRequest++;
  if (buildCounterAsymmetricSignRequest < 3) {
    checkDigest(o.digest);
  }
  buildCounterAsymmetricSignRequest--;
}

core.int buildCounterAsymmetricSignResponse = 0;
buildAsymmetricSignResponse() {
  var o = new api.AsymmetricSignResponse();
  buildCounterAsymmetricSignResponse++;
  if (buildCounterAsymmetricSignResponse < 3) {
    o.signature = "foo";
  }
  buildCounterAsymmetricSignResponse--;
  return o;
}

checkAsymmetricSignResponse(api.AsymmetricSignResponse o) {
  buildCounterAsymmetricSignResponse++;
  if (buildCounterAsymmetricSignResponse < 3) {
    unittest.expect(o.signature, unittest.equals('foo'));
  }
  buildCounterAsymmetricSignResponse--;
}

buildUnnamed4585() {
  var o = new core.List<api.AuditLogConfig>();
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

checkUnnamed4585(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
buildAuditConfig() {
  var o = new api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed4585();
    o.service = "foo";
  }
  buildCounterAuditConfig--;
  return o;
}

checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed4585(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

buildUnnamed4586() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4586(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
buildAuditLogConfig() {
  var o = new api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed4586();
    o.logType = "foo";
  }
  buildCounterAuditLogConfig--;
  return o;
}

checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed4586(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

buildUnnamed4587() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4587(core.List<core.String> o) {
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
    o.members = buildUnnamed4587();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed4587(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

buildUnnamed4588() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4588(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterCryptoKey = 0;
buildCryptoKey() {
  var o = new api.CryptoKey();
  buildCounterCryptoKey++;
  if (buildCounterCryptoKey < 3) {
    o.createTime = "foo";
    o.labels = buildUnnamed4588();
    o.name = "foo";
    o.nextRotationTime = "foo";
    o.primary = buildCryptoKeyVersion();
    o.purpose = "foo";
    o.rotationPeriod = "foo";
    o.versionTemplate = buildCryptoKeyVersionTemplate();
  }
  buildCounterCryptoKey--;
  return o;
}

checkCryptoKey(api.CryptoKey o) {
  buildCounterCryptoKey++;
  if (buildCounterCryptoKey < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed4588(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.nextRotationTime, unittest.equals('foo'));
    checkCryptoKeyVersion(o.primary);
    unittest.expect(o.purpose, unittest.equals('foo'));
    unittest.expect(o.rotationPeriod, unittest.equals('foo'));
    checkCryptoKeyVersionTemplate(o.versionTemplate);
  }
  buildCounterCryptoKey--;
}

core.int buildCounterCryptoKeyVersion = 0;
buildCryptoKeyVersion() {
  var o = new api.CryptoKeyVersion();
  buildCounterCryptoKeyVersion++;
  if (buildCounterCryptoKeyVersion < 3) {
    o.algorithm = "foo";
    o.attestation = buildKeyOperationAttestation();
    o.createTime = "foo";
    o.destroyEventTime = "foo";
    o.destroyTime = "foo";
    o.generateTime = "foo";
    o.importFailureReason = "foo";
    o.importJob = "foo";
    o.importTime = "foo";
    o.name = "foo";
    o.protectionLevel = "foo";
    o.state = "foo";
  }
  buildCounterCryptoKeyVersion--;
  return o;
}

checkCryptoKeyVersion(api.CryptoKeyVersion o) {
  buildCounterCryptoKeyVersion++;
  if (buildCounterCryptoKeyVersion < 3) {
    unittest.expect(o.algorithm, unittest.equals('foo'));
    checkKeyOperationAttestation(o.attestation);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.destroyEventTime, unittest.equals('foo'));
    unittest.expect(o.destroyTime, unittest.equals('foo'));
    unittest.expect(o.generateTime, unittest.equals('foo'));
    unittest.expect(o.importFailureReason, unittest.equals('foo'));
    unittest.expect(o.importJob, unittest.equals('foo'));
    unittest.expect(o.importTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.protectionLevel, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterCryptoKeyVersion--;
}

core.int buildCounterCryptoKeyVersionTemplate = 0;
buildCryptoKeyVersionTemplate() {
  var o = new api.CryptoKeyVersionTemplate();
  buildCounterCryptoKeyVersionTemplate++;
  if (buildCounterCryptoKeyVersionTemplate < 3) {
    o.algorithm = "foo";
    o.protectionLevel = "foo";
  }
  buildCounterCryptoKeyVersionTemplate--;
  return o;
}

checkCryptoKeyVersionTemplate(api.CryptoKeyVersionTemplate o) {
  buildCounterCryptoKeyVersionTemplate++;
  if (buildCounterCryptoKeyVersionTemplate < 3) {
    unittest.expect(o.algorithm, unittest.equals('foo'));
    unittest.expect(o.protectionLevel, unittest.equals('foo'));
  }
  buildCounterCryptoKeyVersionTemplate--;
}

core.int buildCounterDecryptRequest = 0;
buildDecryptRequest() {
  var o = new api.DecryptRequest();
  buildCounterDecryptRequest++;
  if (buildCounterDecryptRequest < 3) {
    o.additionalAuthenticatedData = "foo";
    o.ciphertext = "foo";
  }
  buildCounterDecryptRequest--;
  return o;
}

checkDecryptRequest(api.DecryptRequest o) {
  buildCounterDecryptRequest++;
  if (buildCounterDecryptRequest < 3) {
    unittest.expect(o.additionalAuthenticatedData, unittest.equals('foo'));
    unittest.expect(o.ciphertext, unittest.equals('foo'));
  }
  buildCounterDecryptRequest--;
}

core.int buildCounterDecryptResponse = 0;
buildDecryptResponse() {
  var o = new api.DecryptResponse();
  buildCounterDecryptResponse++;
  if (buildCounterDecryptResponse < 3) {
    o.plaintext = "foo";
  }
  buildCounterDecryptResponse--;
  return o;
}

checkDecryptResponse(api.DecryptResponse o) {
  buildCounterDecryptResponse++;
  if (buildCounterDecryptResponse < 3) {
    unittest.expect(o.plaintext, unittest.equals('foo'));
  }
  buildCounterDecryptResponse--;
}

core.int buildCounterDestroyCryptoKeyVersionRequest = 0;
buildDestroyCryptoKeyVersionRequest() {
  var o = new api.DestroyCryptoKeyVersionRequest();
  buildCounterDestroyCryptoKeyVersionRequest++;
  if (buildCounterDestroyCryptoKeyVersionRequest < 3) {}
  buildCounterDestroyCryptoKeyVersionRequest--;
  return o;
}

checkDestroyCryptoKeyVersionRequest(api.DestroyCryptoKeyVersionRequest o) {
  buildCounterDestroyCryptoKeyVersionRequest++;
  if (buildCounterDestroyCryptoKeyVersionRequest < 3) {}
  buildCounterDestroyCryptoKeyVersionRequest--;
}

core.int buildCounterDigest = 0;
buildDigest() {
  var o = new api.Digest();
  buildCounterDigest++;
  if (buildCounterDigest < 3) {
    o.sha256 = "foo";
    o.sha384 = "foo";
    o.sha512 = "foo";
  }
  buildCounterDigest--;
  return o;
}

checkDigest(api.Digest o) {
  buildCounterDigest++;
  if (buildCounterDigest < 3) {
    unittest.expect(o.sha256, unittest.equals('foo'));
    unittest.expect(o.sha384, unittest.equals('foo'));
    unittest.expect(o.sha512, unittest.equals('foo'));
  }
  buildCounterDigest--;
}

core.int buildCounterEncryptRequest = 0;
buildEncryptRequest() {
  var o = new api.EncryptRequest();
  buildCounterEncryptRequest++;
  if (buildCounterEncryptRequest < 3) {
    o.additionalAuthenticatedData = "foo";
    o.plaintext = "foo";
  }
  buildCounterEncryptRequest--;
  return o;
}

checkEncryptRequest(api.EncryptRequest o) {
  buildCounterEncryptRequest++;
  if (buildCounterEncryptRequest < 3) {
    unittest.expect(o.additionalAuthenticatedData, unittest.equals('foo'));
    unittest.expect(o.plaintext, unittest.equals('foo'));
  }
  buildCounterEncryptRequest--;
}

core.int buildCounterEncryptResponse = 0;
buildEncryptResponse() {
  var o = new api.EncryptResponse();
  buildCounterEncryptResponse++;
  if (buildCounterEncryptResponse < 3) {
    o.ciphertext = "foo";
    o.name = "foo";
  }
  buildCounterEncryptResponse--;
  return o;
}

checkEncryptResponse(api.EncryptResponse o) {
  buildCounterEncryptResponse++;
  if (buildCounterEncryptResponse < 3) {
    unittest.expect(o.ciphertext, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterEncryptResponse--;
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

core.int buildCounterImportCryptoKeyVersionRequest = 0;
buildImportCryptoKeyVersionRequest() {
  var o = new api.ImportCryptoKeyVersionRequest();
  buildCounterImportCryptoKeyVersionRequest++;
  if (buildCounterImportCryptoKeyVersionRequest < 3) {
    o.algorithm = "foo";
    o.importJob = "foo";
    o.rsaAesWrappedKey = "foo";
  }
  buildCounterImportCryptoKeyVersionRequest--;
  return o;
}

checkImportCryptoKeyVersionRequest(api.ImportCryptoKeyVersionRequest o) {
  buildCounterImportCryptoKeyVersionRequest++;
  if (buildCounterImportCryptoKeyVersionRequest < 3) {
    unittest.expect(o.algorithm, unittest.equals('foo'));
    unittest.expect(o.importJob, unittest.equals('foo'));
    unittest.expect(o.rsaAesWrappedKey, unittest.equals('foo'));
  }
  buildCounterImportCryptoKeyVersionRequest--;
}

core.int buildCounterImportJob = 0;
buildImportJob() {
  var o = new api.ImportJob();
  buildCounterImportJob++;
  if (buildCounterImportJob < 3) {
    o.attestation = buildKeyOperationAttestation();
    o.createTime = "foo";
    o.expireEventTime = "foo";
    o.expireTime = "foo";
    o.generateTime = "foo";
    o.importMethod = "foo";
    o.name = "foo";
    o.protectionLevel = "foo";
    o.publicKey = buildWrappingPublicKey();
    o.state = "foo";
  }
  buildCounterImportJob--;
  return o;
}

checkImportJob(api.ImportJob o) {
  buildCounterImportJob++;
  if (buildCounterImportJob < 3) {
    checkKeyOperationAttestation(o.attestation);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.expireEventTime, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
    unittest.expect(o.generateTime, unittest.equals('foo'));
    unittest.expect(o.importMethod, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.protectionLevel, unittest.equals('foo'));
    checkWrappingPublicKey(o.publicKey);
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterImportJob--;
}

core.int buildCounterKeyOperationAttestation = 0;
buildKeyOperationAttestation() {
  var o = new api.KeyOperationAttestation();
  buildCounterKeyOperationAttestation++;
  if (buildCounterKeyOperationAttestation < 3) {
    o.content = "foo";
    o.format = "foo";
  }
  buildCounterKeyOperationAttestation--;
  return o;
}

checkKeyOperationAttestation(api.KeyOperationAttestation o) {
  buildCounterKeyOperationAttestation++;
  if (buildCounterKeyOperationAttestation < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.format, unittest.equals('foo'));
  }
  buildCounterKeyOperationAttestation--;
}

core.int buildCounterKeyRing = 0;
buildKeyRing() {
  var o = new api.KeyRing();
  buildCounterKeyRing++;
  if (buildCounterKeyRing < 3) {
    o.createTime = "foo";
    o.name = "foo";
  }
  buildCounterKeyRing--;
  return o;
}

checkKeyRing(api.KeyRing o) {
  buildCounterKeyRing++;
  if (buildCounterKeyRing < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterKeyRing--;
}

buildUnnamed4589() {
  var o = new core.List<api.CryptoKeyVersion>();
  o.add(buildCryptoKeyVersion());
  o.add(buildCryptoKeyVersion());
  return o;
}

checkUnnamed4589(core.List<api.CryptoKeyVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCryptoKeyVersion(o[0]);
  checkCryptoKeyVersion(o[1]);
}

core.int buildCounterListCryptoKeyVersionsResponse = 0;
buildListCryptoKeyVersionsResponse() {
  var o = new api.ListCryptoKeyVersionsResponse();
  buildCounterListCryptoKeyVersionsResponse++;
  if (buildCounterListCryptoKeyVersionsResponse < 3) {
    o.cryptoKeyVersions = buildUnnamed4589();
    o.nextPageToken = "foo";
    o.totalSize = 42;
  }
  buildCounterListCryptoKeyVersionsResponse--;
  return o;
}

checkListCryptoKeyVersionsResponse(api.ListCryptoKeyVersionsResponse o) {
  buildCounterListCryptoKeyVersionsResponse++;
  if (buildCounterListCryptoKeyVersionsResponse < 3) {
    checkUnnamed4589(o.cryptoKeyVersions);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListCryptoKeyVersionsResponse--;
}

buildUnnamed4590() {
  var o = new core.List<api.CryptoKey>();
  o.add(buildCryptoKey());
  o.add(buildCryptoKey());
  return o;
}

checkUnnamed4590(core.List<api.CryptoKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCryptoKey(o[0]);
  checkCryptoKey(o[1]);
}

core.int buildCounterListCryptoKeysResponse = 0;
buildListCryptoKeysResponse() {
  var o = new api.ListCryptoKeysResponse();
  buildCounterListCryptoKeysResponse++;
  if (buildCounterListCryptoKeysResponse < 3) {
    o.cryptoKeys = buildUnnamed4590();
    o.nextPageToken = "foo";
    o.totalSize = 42;
  }
  buildCounterListCryptoKeysResponse--;
  return o;
}

checkListCryptoKeysResponse(api.ListCryptoKeysResponse o) {
  buildCounterListCryptoKeysResponse++;
  if (buildCounterListCryptoKeysResponse < 3) {
    checkUnnamed4590(o.cryptoKeys);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListCryptoKeysResponse--;
}

buildUnnamed4591() {
  var o = new core.List<api.ImportJob>();
  o.add(buildImportJob());
  o.add(buildImportJob());
  return o;
}

checkUnnamed4591(core.List<api.ImportJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportJob(o[0]);
  checkImportJob(o[1]);
}

core.int buildCounterListImportJobsResponse = 0;
buildListImportJobsResponse() {
  var o = new api.ListImportJobsResponse();
  buildCounterListImportJobsResponse++;
  if (buildCounterListImportJobsResponse < 3) {
    o.importJobs = buildUnnamed4591();
    o.nextPageToken = "foo";
    o.totalSize = 42;
  }
  buildCounterListImportJobsResponse--;
  return o;
}

checkListImportJobsResponse(api.ListImportJobsResponse o) {
  buildCounterListImportJobsResponse++;
  if (buildCounterListImportJobsResponse < 3) {
    checkUnnamed4591(o.importJobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListImportJobsResponse--;
}

buildUnnamed4592() {
  var o = new core.List<api.KeyRing>();
  o.add(buildKeyRing());
  o.add(buildKeyRing());
  return o;
}

checkUnnamed4592(core.List<api.KeyRing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyRing(o[0]);
  checkKeyRing(o[1]);
}

core.int buildCounterListKeyRingsResponse = 0;
buildListKeyRingsResponse() {
  var o = new api.ListKeyRingsResponse();
  buildCounterListKeyRingsResponse++;
  if (buildCounterListKeyRingsResponse < 3) {
    o.keyRings = buildUnnamed4592();
    o.nextPageToken = "foo";
    o.totalSize = 42;
  }
  buildCounterListKeyRingsResponse--;
  return o;
}

checkListKeyRingsResponse(api.ListKeyRingsResponse o) {
  buildCounterListKeyRingsResponse++;
  if (buildCounterListKeyRingsResponse < 3) {
    checkUnnamed4592(o.keyRings);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListKeyRingsResponse--;
}

buildUnnamed4593() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed4593(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
buildListLocationsResponse() {
  var o = new api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed4593();
    o.nextPageToken = "foo";
  }
  buildCounterListLocationsResponse--;
  return o;
}

checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed4593(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

buildUnnamed4594() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4594(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed4595() {
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

checkUnnamed4595(core.Map<core.String, core.Object> o) {
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

core.int buildCounterLocation = 0;
buildLocation() {
  var o = new api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = "foo";
    o.labels = buildUnnamed4594();
    o.locationId = "foo";
    o.metadata = buildUnnamed4595();
    o.name = "foo";
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed4594(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed4595(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterLocationMetadata = 0;
buildLocationMetadata() {
  var o = new api.LocationMetadata();
  buildCounterLocationMetadata++;
  if (buildCounterLocationMetadata < 3) {
    o.hsmAvailable = true;
  }
  buildCounterLocationMetadata--;
  return o;
}

checkLocationMetadata(api.LocationMetadata o) {
  buildCounterLocationMetadata++;
  if (buildCounterLocationMetadata < 3) {
    unittest.expect(o.hsmAvailable, unittest.isTrue);
  }
  buildCounterLocationMetadata--;
}

buildUnnamed4596() {
  var o = new core.List<api.AuditConfig>();
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

checkUnnamed4596(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

buildUnnamed4597() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed4597(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed4596();
    o.bindings = buildUnnamed4597();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed4596(o.auditConfigs);
    checkUnnamed4597(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterPublicKey = 0;
buildPublicKey() {
  var o = new api.PublicKey();
  buildCounterPublicKey++;
  if (buildCounterPublicKey < 3) {
    o.algorithm = "foo";
    o.pem = "foo";
  }
  buildCounterPublicKey--;
  return o;
}

checkPublicKey(api.PublicKey o) {
  buildCounterPublicKey++;
  if (buildCounterPublicKey < 3) {
    unittest.expect(o.algorithm, unittest.equals('foo'));
    unittest.expect(o.pem, unittest.equals('foo'));
  }
  buildCounterPublicKey--;
}

core.int buildCounterRestoreCryptoKeyVersionRequest = 0;
buildRestoreCryptoKeyVersionRequest() {
  var o = new api.RestoreCryptoKeyVersionRequest();
  buildCounterRestoreCryptoKeyVersionRequest++;
  if (buildCounterRestoreCryptoKeyVersionRequest < 3) {}
  buildCounterRestoreCryptoKeyVersionRequest--;
  return o;
}

checkRestoreCryptoKeyVersionRequest(api.RestoreCryptoKeyVersionRequest o) {
  buildCounterRestoreCryptoKeyVersionRequest++;
  if (buildCounterRestoreCryptoKeyVersionRequest < 3) {}
  buildCounterRestoreCryptoKeyVersionRequest--;
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

buildUnnamed4598() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4598(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed4598();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed4598(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed4599() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4599(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed4599();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed4599(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterUpdateCryptoKeyPrimaryVersionRequest = 0;
buildUpdateCryptoKeyPrimaryVersionRequest() {
  var o = new api.UpdateCryptoKeyPrimaryVersionRequest();
  buildCounterUpdateCryptoKeyPrimaryVersionRequest++;
  if (buildCounterUpdateCryptoKeyPrimaryVersionRequest < 3) {
    o.cryptoKeyVersionId = "foo";
  }
  buildCounterUpdateCryptoKeyPrimaryVersionRequest--;
  return o;
}

checkUpdateCryptoKeyPrimaryVersionRequest(
    api.UpdateCryptoKeyPrimaryVersionRequest o) {
  buildCounterUpdateCryptoKeyPrimaryVersionRequest++;
  if (buildCounterUpdateCryptoKeyPrimaryVersionRequest < 3) {
    unittest.expect(o.cryptoKeyVersionId, unittest.equals('foo'));
  }
  buildCounterUpdateCryptoKeyPrimaryVersionRequest--;
}

core.int buildCounterWrappingPublicKey = 0;
buildWrappingPublicKey() {
  var o = new api.WrappingPublicKey();
  buildCounterWrappingPublicKey++;
  if (buildCounterWrappingPublicKey < 3) {
    o.pem = "foo";
  }
  buildCounterWrappingPublicKey--;
  return o;
}

checkWrappingPublicKey(api.WrappingPublicKey o) {
  buildCounterWrappingPublicKey++;
  if (buildCounterWrappingPublicKey < 3) {
    unittest.expect(o.pem, unittest.equals('foo'));
  }
  buildCounterWrappingPublicKey--;
}

main() {
  unittest.group("obj-schema-AsymmetricDecryptRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsymmetricDecryptRequest();
      var od = new api.AsymmetricDecryptRequest.fromJson(o.toJson());
      checkAsymmetricDecryptRequest(od);
    });
  });

  unittest.group("obj-schema-AsymmetricDecryptResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsymmetricDecryptResponse();
      var od = new api.AsymmetricDecryptResponse.fromJson(o.toJson());
      checkAsymmetricDecryptResponse(od);
    });
  });

  unittest.group("obj-schema-AsymmetricSignRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsymmetricSignRequest();
      var od = new api.AsymmetricSignRequest.fromJson(o.toJson());
      checkAsymmetricSignRequest(od);
    });
  });

  unittest.group("obj-schema-AsymmetricSignResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsymmetricSignResponse();
      var od = new api.AsymmetricSignResponse.fromJson(o.toJson());
      checkAsymmetricSignResponse(od);
    });
  });

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

  unittest.group("obj-schema-CryptoKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildCryptoKey();
      var od = new api.CryptoKey.fromJson(o.toJson());
      checkCryptoKey(od);
    });
  });

  unittest.group("obj-schema-CryptoKeyVersion", () {
    unittest.test("to-json--from-json", () {
      var o = buildCryptoKeyVersion();
      var od = new api.CryptoKeyVersion.fromJson(o.toJson());
      checkCryptoKeyVersion(od);
    });
  });

  unittest.group("obj-schema-CryptoKeyVersionTemplate", () {
    unittest.test("to-json--from-json", () {
      var o = buildCryptoKeyVersionTemplate();
      var od = new api.CryptoKeyVersionTemplate.fromJson(o.toJson());
      checkCryptoKeyVersionTemplate(od);
    });
  });

  unittest.group("obj-schema-DecryptRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDecryptRequest();
      var od = new api.DecryptRequest.fromJson(o.toJson());
      checkDecryptRequest(od);
    });
  });

  unittest.group("obj-schema-DecryptResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDecryptResponse();
      var od = new api.DecryptResponse.fromJson(o.toJson());
      checkDecryptResponse(od);
    });
  });

  unittest.group("obj-schema-DestroyCryptoKeyVersionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDestroyCryptoKeyVersionRequest();
      var od = new api.DestroyCryptoKeyVersionRequest.fromJson(o.toJson());
      checkDestroyCryptoKeyVersionRequest(od);
    });
  });

  unittest.group("obj-schema-Digest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDigest();
      var od = new api.Digest.fromJson(o.toJson());
      checkDigest(od);
    });
  });

  unittest.group("obj-schema-EncryptRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildEncryptRequest();
      var od = new api.EncryptRequest.fromJson(o.toJson());
      checkEncryptRequest(od);
    });
  });

  unittest.group("obj-schema-EncryptResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildEncryptResponse();
      var od = new api.EncryptResponse.fromJson(o.toJson());
      checkEncryptResponse(od);
    });
  });

  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = new api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group("obj-schema-ImportCryptoKeyVersionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportCryptoKeyVersionRequest();
      var od = new api.ImportCryptoKeyVersionRequest.fromJson(o.toJson());
      checkImportCryptoKeyVersionRequest(od);
    });
  });

  unittest.group("obj-schema-ImportJob", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportJob();
      var od = new api.ImportJob.fromJson(o.toJson());
      checkImportJob(od);
    });
  });

  unittest.group("obj-schema-KeyOperationAttestation", () {
    unittest.test("to-json--from-json", () {
      var o = buildKeyOperationAttestation();
      var od = new api.KeyOperationAttestation.fromJson(o.toJson());
      checkKeyOperationAttestation(od);
    });
  });

  unittest.group("obj-schema-KeyRing", () {
    unittest.test("to-json--from-json", () {
      var o = buildKeyRing();
      var od = new api.KeyRing.fromJson(o.toJson());
      checkKeyRing(od);
    });
  });

  unittest.group("obj-schema-ListCryptoKeyVersionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCryptoKeyVersionsResponse();
      var od = new api.ListCryptoKeyVersionsResponse.fromJson(o.toJson());
      checkListCryptoKeyVersionsResponse(od);
    });
  });

  unittest.group("obj-schema-ListCryptoKeysResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCryptoKeysResponse();
      var od = new api.ListCryptoKeysResponse.fromJson(o.toJson());
      checkListCryptoKeysResponse(od);
    });
  });

  unittest.group("obj-schema-ListImportJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListImportJobsResponse();
      var od = new api.ListImportJobsResponse.fromJson(o.toJson());
      checkListImportJobsResponse(od);
    });
  });

  unittest.group("obj-schema-ListKeyRingsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListKeyRingsResponse();
      var od = new api.ListKeyRingsResponse.fromJson(o.toJson());
      checkListKeyRingsResponse(od);
    });
  });

  unittest.group("obj-schema-ListLocationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLocationsResponse();
      var od = new api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od);
    });
  });

  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group("obj-schema-LocationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocationMetadata();
      var od = new api.LocationMetadata.fromJson(o.toJson());
      checkLocationMetadata(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-PublicKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildPublicKey();
      var od = new api.PublicKey.fromJson(o.toJson());
      checkPublicKey(od);
    });
  });

  unittest.group("obj-schema-RestoreCryptoKeyVersionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRestoreCryptoKeyVersionRequest();
      var od = new api.RestoreCryptoKeyVersionRequest.fromJson(o.toJson());
      checkRestoreCryptoKeyVersionRequest(od);
    });
  });

  unittest.group("obj-schema-SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetIamPolicyRequest();
      var od = new api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
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

  unittest.group("obj-schema-UpdateCryptoKeyPrimaryVersionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateCryptoKeyPrimaryVersionRequest();
      var od =
          new api.UpdateCryptoKeyPrimaryVersionRequest.fromJson(o.toJson());
      checkUpdateCryptoKeyPrimaryVersionRequest(od);
    });
  });

  unittest.group("obj-schema-WrappingPublicKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildWrappingPublicKey();
      var od = new api.WrappingPublicKey.fromJson(o.toJson());
      checkWrappingPublicKey(od);
    });
  });

  unittest.group("resource-ProjectsLocationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.CloudkmsApi(mock).projects.locations;
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
          new api.CloudkmsApi(mock).projects.locations;
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

  unittest.group("resource-ProjectsLocationsKeyRingsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsResourceApi res =
          new api.CloudkmsApi(mock).projects.locations.keyRings;
      var arg_request = buildKeyRing();
      var arg_parent = "foo";
      var arg_keyRingId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.KeyRing.fromJson(json);
        checkKeyRing(obj);

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
            queryMap["keyRingId"].first, unittest.equals(arg_keyRingId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildKeyRing());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              keyRingId: arg_keyRingId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkKeyRing(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsResourceApi res =
          new api.CloudkmsApi(mock).projects.locations.keyRings;
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
        var resp = convert.json.encode(buildKeyRing());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkKeyRing(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsResourceApi res =
          new api.CloudkmsApi(mock).projects.locations.keyRings;
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
      api.ProjectsLocationsKeyRingsResourceApi res =
          new api.CloudkmsApi(mock).projects.locations.keyRings;
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
        var resp = convert.json.encode(buildListKeyRingsResponse());
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
        checkListKeyRingsResponse(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsResourceApi res =
          new api.CloudkmsApi(mock).projects.locations.keyRings;
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
      api.ProjectsLocationsKeyRingsResourceApi res =
          new api.CloudkmsApi(mock).projects.locations.keyRings;
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

  unittest.group("resource-ProjectsLocationsKeyRingsCryptoKeysResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res =
          new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_request = buildCryptoKey();
      var arg_parent = "foo";
      var arg_cryptoKeyId = "foo";
      var arg_skipInitialVersionCreation = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CryptoKey.fromJson(json);
        checkCryptoKey(obj);

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
            queryMap["cryptoKeyId"].first, unittest.equals(arg_cryptoKeyId));
        unittest.expect(queryMap["skipInitialVersionCreation"].first,
            unittest.equals("$arg_skipInitialVersionCreation"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCryptoKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              cryptoKeyId: arg_cryptoKeyId,
              skipInitialVersionCreation: arg_skipInitialVersionCreation,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCryptoKey(response);
      })));
    });

    unittest.test("method--decrypt", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res =
          new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_request = buildDecryptRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DecryptRequest.fromJson(json);
        checkDecryptRequest(obj);

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
        var resp = convert.json.encode(buildDecryptResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .decrypt(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDecryptResponse(response);
      })));
    });

    unittest.test("method--encrypt", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res =
          new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_request = buildEncryptRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.EncryptRequest.fromJson(json);
        checkEncryptRequest(obj);

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
        var resp = convert.json.encode(buildEncryptResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .encrypt(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEncryptResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res =
          new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
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
        var resp = convert.json.encode(buildCryptoKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCryptoKey(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res =
          new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
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
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res =
          new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_orderBy = "foo";
      var arg_versionView = "foo";
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
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["versionView"].first, unittest.equals(arg_versionView));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListCryptoKeysResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              orderBy: arg_orderBy,
              versionView: arg_versionView,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCryptoKeysResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res =
          new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_request = buildCryptoKey();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CryptoKey.fromJson(json);
        checkCryptoKey(obj);

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
        var resp = convert.json.encode(buildCryptoKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCryptoKey(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res =
          new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
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
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res =
          new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
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

    unittest.test("method--updatePrimaryVersion", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysResourceApi res =
          new api.CloudkmsApi(mock).projects.locations.keyRings.cryptoKeys;
      var arg_request = buildUpdateCryptoKeyPrimaryVersionRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateCryptoKeyPrimaryVersionRequest.fromJson(json);
        checkUpdateCryptoKeyPrimaryVersionRequest(obj);

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
        var resp = convert.json.encode(buildCryptoKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updatePrimaryVersion(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCryptoKey(response);
      })));
    });
  });

  unittest.group(
      "resource-ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi",
      () {
    unittest.test("method--asymmetricDecrypt", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res =
          new api.CloudkmsApi(mock)
              .projects
              .locations
              .keyRings
              .cryptoKeys
              .cryptoKeyVersions;
      var arg_request = buildAsymmetricDecryptRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AsymmetricDecryptRequest.fromJson(json);
        checkAsymmetricDecryptRequest(obj);

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
        var resp = convert.json.encode(buildAsymmetricDecryptResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .asymmetricDecrypt(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAsymmetricDecryptResponse(response);
      })));
    });

    unittest.test("method--asymmetricSign", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res =
          new api.CloudkmsApi(mock)
              .projects
              .locations
              .keyRings
              .cryptoKeys
              .cryptoKeyVersions;
      var arg_request = buildAsymmetricSignRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AsymmetricSignRequest.fromJson(json);
        checkAsymmetricSignRequest(obj);

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
        var resp = convert.json.encode(buildAsymmetricSignResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .asymmetricSign(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAsymmetricSignResponse(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res =
          new api.CloudkmsApi(mock)
              .projects
              .locations
              .keyRings
              .cryptoKeys
              .cryptoKeyVersions;
      var arg_request = buildCryptoKeyVersion();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CryptoKeyVersion.fromJson(json);
        checkCryptoKeyVersion(obj);

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
        var resp = convert.json.encode(buildCryptoKeyVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCryptoKeyVersion(response);
      })));
    });

    unittest.test("method--destroy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res =
          new api.CloudkmsApi(mock)
              .projects
              .locations
              .keyRings
              .cryptoKeys
              .cryptoKeyVersions;
      var arg_request = buildDestroyCryptoKeyVersionRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DestroyCryptoKeyVersionRequest.fromJson(json);
        checkDestroyCryptoKeyVersionRequest(obj);

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
        var resp = convert.json.encode(buildCryptoKeyVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .destroy(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCryptoKeyVersion(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res =
          new api.CloudkmsApi(mock)
              .projects
              .locations
              .keyRings
              .cryptoKeys
              .cryptoKeyVersions;
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
        var resp = convert.json.encode(buildCryptoKeyVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCryptoKeyVersion(response);
      })));
    });

    unittest.test("method--getPublicKey", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res =
          new api.CloudkmsApi(mock)
              .projects
              .locations
              .keyRings
              .cryptoKeys
              .cryptoKeyVersions;
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
        var resp = convert.json.encode(buildPublicKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getPublicKey(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPublicKey(response);
      })));
    });

    unittest.test("method--import", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res =
          new api.CloudkmsApi(mock)
              .projects
              .locations
              .keyRings
              .cryptoKeys
              .cryptoKeyVersions;
      var arg_request = buildImportCryptoKeyVersionRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ImportCryptoKeyVersionRequest.fromJson(json);
        checkImportCryptoKeyVersionRequest(obj);

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
        var resp = convert.json.encode(buildCryptoKeyVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .import(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCryptoKeyVersion(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res =
          new api.CloudkmsApi(mock)
              .projects
              .locations
              .keyRings
              .cryptoKeys
              .cryptoKeyVersions;
      var arg_parent = "foo";
      var arg_orderBy = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
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
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListCryptoKeyVersionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              orderBy: arg_orderBy,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListCryptoKeyVersionsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res =
          new api.CloudkmsApi(mock)
              .projects
              .locations
              .keyRings
              .cryptoKeys
              .cryptoKeyVersions;
      var arg_request = buildCryptoKeyVersion();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CryptoKeyVersion.fromJson(json);
        checkCryptoKeyVersion(obj);

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
        var resp = convert.json.encode(buildCryptoKeyVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCryptoKeyVersion(response);
      })));
    });

    unittest.test("method--restore", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi res =
          new api.CloudkmsApi(mock)
              .projects
              .locations
              .keyRings
              .cryptoKeys
              .cryptoKeyVersions;
      var arg_request = buildRestoreCryptoKeyVersionRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RestoreCryptoKeyVersionRequest.fromJson(json);
        checkRestoreCryptoKeyVersionRequest(obj);

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
        var resp = convert.json.encode(buildCryptoKeyVersion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .restore(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCryptoKeyVersion(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsKeyRingsImportJobsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsImportJobsResourceApi res =
          new api.CloudkmsApi(mock).projects.locations.keyRings.importJobs;
      var arg_request = buildImportJob();
      var arg_parent = "foo";
      var arg_importJobId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ImportJob.fromJson(json);
        checkImportJob(obj);

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
            queryMap["importJobId"].first, unittest.equals(arg_importJobId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildImportJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              importJobId: arg_importJobId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkImportJob(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsImportJobsResourceApi res =
          new api.CloudkmsApi(mock).projects.locations.keyRings.importJobs;
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
        var resp = convert.json.encode(buildImportJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkImportJob(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsImportJobsResourceApi res =
          new api.CloudkmsApi(mock).projects.locations.keyRings.importJobs;
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
      api.ProjectsLocationsKeyRingsImportJobsResourceApi res =
          new api.CloudkmsApi(mock).projects.locations.keyRings.importJobs;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_orderBy = "foo";
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
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListImportJobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListImportJobsResponse(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsKeyRingsImportJobsResourceApi res =
          new api.CloudkmsApi(mock).projects.locations.keyRings.importJobs;
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
      api.ProjectsLocationsKeyRingsImportJobsResourceApi res =
          new api.CloudkmsApi(mock).projects.locations.keyRings.importJobs;
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
}
