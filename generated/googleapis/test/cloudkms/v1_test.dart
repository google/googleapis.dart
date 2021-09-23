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

import 'package:googleapis/cloudkms/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAsymmetricDecryptRequest = 0;
api.AsymmetricDecryptRequest buildAsymmetricDecryptRequest() {
  final o = api.AsymmetricDecryptRequest();
  buildCounterAsymmetricDecryptRequest++;
  if (buildCounterAsymmetricDecryptRequest < 3) {
    o.ciphertext = 'foo';
    o.ciphertextCrc32c = 'foo';
  }
  buildCounterAsymmetricDecryptRequest--;
  return o;
}

void checkAsymmetricDecryptRequest(api.AsymmetricDecryptRequest o) {
  buildCounterAsymmetricDecryptRequest++;
  if (buildCounterAsymmetricDecryptRequest < 3) {
    unittest.expect(
      o.ciphertext!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ciphertextCrc32c!,
      unittest.equals('foo'),
    );
  }
  buildCounterAsymmetricDecryptRequest--;
}

core.int buildCounterAsymmetricDecryptResponse = 0;
api.AsymmetricDecryptResponse buildAsymmetricDecryptResponse() {
  final o = api.AsymmetricDecryptResponse();
  buildCounterAsymmetricDecryptResponse++;
  if (buildCounterAsymmetricDecryptResponse < 3) {
    o.plaintext = 'foo';
    o.plaintextCrc32c = 'foo';
    o.protectionLevel = 'foo';
    o.verifiedCiphertextCrc32c = true;
  }
  buildCounterAsymmetricDecryptResponse--;
  return o;
}

void checkAsymmetricDecryptResponse(api.AsymmetricDecryptResponse o) {
  buildCounterAsymmetricDecryptResponse++;
  if (buildCounterAsymmetricDecryptResponse < 3) {
    unittest.expect(
      o.plaintext!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.plaintextCrc32c!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protectionLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(o.verifiedCiphertextCrc32c!, unittest.isTrue);
  }
  buildCounterAsymmetricDecryptResponse--;
}

core.int buildCounterAsymmetricSignRequest = 0;
api.AsymmetricSignRequest buildAsymmetricSignRequest() {
  final o = api.AsymmetricSignRequest();
  buildCounterAsymmetricSignRequest++;
  if (buildCounterAsymmetricSignRequest < 3) {
    o.digest = buildDigest();
    o.digestCrc32c = 'foo';
  }
  buildCounterAsymmetricSignRequest--;
  return o;
}

void checkAsymmetricSignRequest(api.AsymmetricSignRequest o) {
  buildCounterAsymmetricSignRequest++;
  if (buildCounterAsymmetricSignRequest < 3) {
    checkDigest(o.digest!);
    unittest.expect(
      o.digestCrc32c!,
      unittest.equals('foo'),
    );
  }
  buildCounterAsymmetricSignRequest--;
}

core.int buildCounterAsymmetricSignResponse = 0;
api.AsymmetricSignResponse buildAsymmetricSignResponse() {
  final o = api.AsymmetricSignResponse();
  buildCounterAsymmetricSignResponse++;
  if (buildCounterAsymmetricSignResponse < 3) {
    o.name = 'foo';
    o.protectionLevel = 'foo';
    o.signature = 'foo';
    o.signatureCrc32c = 'foo';
    o.verifiedDigestCrc32c = true;
  }
  buildCounterAsymmetricSignResponse--;
  return o;
}

void checkAsymmetricSignResponse(api.AsymmetricSignResponse o) {
  buildCounterAsymmetricSignResponse++;
  if (buildCounterAsymmetricSignResponse < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protectionLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signature!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signatureCrc32c!,
      unittest.equals('foo'),
    );
    unittest.expect(o.verifiedDigestCrc32c!, unittest.isTrue);
  }
  buildCounterAsymmetricSignResponse--;
}

core.List<api.AuditLogConfig> buildUnnamed0() => [
      buildAuditLogConfig(),
      buildAuditLogConfig(),
    ];

void checkUnnamed0(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed0();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed0(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
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

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed1();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed1(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
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

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed2();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed2(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
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

core.int buildCounterCertificateChains = 0;
api.CertificateChains buildCertificateChains() {
  final o = api.CertificateChains();
  buildCounterCertificateChains++;
  if (buildCounterCertificateChains < 3) {
    o.caviumCerts = buildUnnamed3();
    o.googleCardCerts = buildUnnamed4();
    o.googlePartitionCerts = buildUnnamed5();
  }
  buildCounterCertificateChains--;
  return o;
}

void checkCertificateChains(api.CertificateChains o) {
  buildCounterCertificateChains++;
  if (buildCounterCertificateChains < 3) {
    checkUnnamed3(o.caviumCerts!);
    checkUnnamed4(o.googleCardCerts!);
    checkUnnamed5(o.googlePartitionCerts!);
  }
  buildCounterCertificateChains--;
}

core.Map<core.String, core.String> buildUnnamed6() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed6(core.Map<core.String, core.String> o) {
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

core.int buildCounterCryptoKey = 0;
api.CryptoKey buildCryptoKey() {
  final o = api.CryptoKey();
  buildCounterCryptoKey++;
  if (buildCounterCryptoKey < 3) {
    o.createTime = 'foo';
    o.destroyScheduledDuration = 'foo';
    o.importOnly = true;
    o.labels = buildUnnamed6();
    o.name = 'foo';
    o.nextRotationTime = 'foo';
    o.primary = buildCryptoKeyVersion();
    o.purpose = 'foo';
    o.rotationPeriod = 'foo';
    o.versionTemplate = buildCryptoKeyVersionTemplate();
  }
  buildCounterCryptoKey--;
  return o;
}

void checkCryptoKey(api.CryptoKey o) {
  buildCounterCryptoKey++;
  if (buildCounterCryptoKey < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destroyScheduledDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(o.importOnly!, unittest.isTrue);
    checkUnnamed6(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextRotationTime!,
      unittest.equals('foo'),
    );
    checkCryptoKeyVersion(o.primary!);
    unittest.expect(
      o.purpose!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rotationPeriod!,
      unittest.equals('foo'),
    );
    checkCryptoKeyVersionTemplate(o.versionTemplate!);
  }
  buildCounterCryptoKey--;
}

core.int buildCounterCryptoKeyVersion = 0;
api.CryptoKeyVersion buildCryptoKeyVersion() {
  final o = api.CryptoKeyVersion();
  buildCounterCryptoKeyVersion++;
  if (buildCounterCryptoKeyVersion < 3) {
    o.algorithm = 'foo';
    o.attestation = buildKeyOperationAttestation();
    o.createTime = 'foo';
    o.destroyEventTime = 'foo';
    o.destroyTime = 'foo';
    o.externalProtectionLevelOptions = buildExternalProtectionLevelOptions();
    o.generateTime = 'foo';
    o.importFailureReason = 'foo';
    o.importJob = 'foo';
    o.importTime = 'foo';
    o.name = 'foo';
    o.protectionLevel = 'foo';
    o.reimportEligible = true;
    o.state = 'foo';
  }
  buildCounterCryptoKeyVersion--;
  return o;
}

void checkCryptoKeyVersion(api.CryptoKeyVersion o) {
  buildCounterCryptoKeyVersion++;
  if (buildCounterCryptoKeyVersion < 3) {
    unittest.expect(
      o.algorithm!,
      unittest.equals('foo'),
    );
    checkKeyOperationAttestation(o.attestation!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destroyEventTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destroyTime!,
      unittest.equals('foo'),
    );
    checkExternalProtectionLevelOptions(o.externalProtectionLevelOptions!);
    unittest.expect(
      o.generateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.importFailureReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.importJob!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.importTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protectionLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(o.reimportEligible!, unittest.isTrue);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterCryptoKeyVersion--;
}

core.int buildCounterCryptoKeyVersionTemplate = 0;
api.CryptoKeyVersionTemplate buildCryptoKeyVersionTemplate() {
  final o = api.CryptoKeyVersionTemplate();
  buildCounterCryptoKeyVersionTemplate++;
  if (buildCounterCryptoKeyVersionTemplate < 3) {
    o.algorithm = 'foo';
    o.protectionLevel = 'foo';
  }
  buildCounterCryptoKeyVersionTemplate--;
  return o;
}

void checkCryptoKeyVersionTemplate(api.CryptoKeyVersionTemplate o) {
  buildCounterCryptoKeyVersionTemplate++;
  if (buildCounterCryptoKeyVersionTemplate < 3) {
    unittest.expect(
      o.algorithm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protectionLevel!,
      unittest.equals('foo'),
    );
  }
  buildCounterCryptoKeyVersionTemplate--;
}

core.int buildCounterDecryptRequest = 0;
api.DecryptRequest buildDecryptRequest() {
  final o = api.DecryptRequest();
  buildCounterDecryptRequest++;
  if (buildCounterDecryptRequest < 3) {
    o.additionalAuthenticatedData = 'foo';
    o.additionalAuthenticatedDataCrc32c = 'foo';
    o.ciphertext = 'foo';
    o.ciphertextCrc32c = 'foo';
  }
  buildCounterDecryptRequest--;
  return o;
}

void checkDecryptRequest(api.DecryptRequest o) {
  buildCounterDecryptRequest++;
  if (buildCounterDecryptRequest < 3) {
    unittest.expect(
      o.additionalAuthenticatedData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.additionalAuthenticatedDataCrc32c!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ciphertext!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ciphertextCrc32c!,
      unittest.equals('foo'),
    );
  }
  buildCounterDecryptRequest--;
}

core.int buildCounterDecryptResponse = 0;
api.DecryptResponse buildDecryptResponse() {
  final o = api.DecryptResponse();
  buildCounterDecryptResponse++;
  if (buildCounterDecryptResponse < 3) {
    o.plaintext = 'foo';
    o.plaintextCrc32c = 'foo';
    o.protectionLevel = 'foo';
    o.usedPrimary = true;
  }
  buildCounterDecryptResponse--;
  return o;
}

void checkDecryptResponse(api.DecryptResponse o) {
  buildCounterDecryptResponse++;
  if (buildCounterDecryptResponse < 3) {
    unittest.expect(
      o.plaintext!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.plaintextCrc32c!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protectionLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(o.usedPrimary!, unittest.isTrue);
  }
  buildCounterDecryptResponse--;
}

core.int buildCounterDestroyCryptoKeyVersionRequest = 0;
api.DestroyCryptoKeyVersionRequest buildDestroyCryptoKeyVersionRequest() {
  final o = api.DestroyCryptoKeyVersionRequest();
  buildCounterDestroyCryptoKeyVersionRequest++;
  if (buildCounterDestroyCryptoKeyVersionRequest < 3) {}
  buildCounterDestroyCryptoKeyVersionRequest--;
  return o;
}

void checkDestroyCryptoKeyVersionRequest(api.DestroyCryptoKeyVersionRequest o) {
  buildCounterDestroyCryptoKeyVersionRequest++;
  if (buildCounterDestroyCryptoKeyVersionRequest < 3) {}
  buildCounterDestroyCryptoKeyVersionRequest--;
}

core.int buildCounterDigest = 0;
api.Digest buildDigest() {
  final o = api.Digest();
  buildCounterDigest++;
  if (buildCounterDigest < 3) {
    o.sha256 = 'foo';
    o.sha384 = 'foo';
    o.sha512 = 'foo';
  }
  buildCounterDigest--;
  return o;
}

void checkDigest(api.Digest o) {
  buildCounterDigest++;
  if (buildCounterDigest < 3) {
    unittest.expect(
      o.sha256!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sha384!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sha512!,
      unittest.equals('foo'),
    );
  }
  buildCounterDigest--;
}

core.int buildCounterEncryptRequest = 0;
api.EncryptRequest buildEncryptRequest() {
  final o = api.EncryptRequest();
  buildCounterEncryptRequest++;
  if (buildCounterEncryptRequest < 3) {
    o.additionalAuthenticatedData = 'foo';
    o.additionalAuthenticatedDataCrc32c = 'foo';
    o.plaintext = 'foo';
    o.plaintextCrc32c = 'foo';
  }
  buildCounterEncryptRequest--;
  return o;
}

void checkEncryptRequest(api.EncryptRequest o) {
  buildCounterEncryptRequest++;
  if (buildCounterEncryptRequest < 3) {
    unittest.expect(
      o.additionalAuthenticatedData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.additionalAuthenticatedDataCrc32c!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.plaintext!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.plaintextCrc32c!,
      unittest.equals('foo'),
    );
  }
  buildCounterEncryptRequest--;
}

core.int buildCounterEncryptResponse = 0;
api.EncryptResponse buildEncryptResponse() {
  final o = api.EncryptResponse();
  buildCounterEncryptResponse++;
  if (buildCounterEncryptResponse < 3) {
    o.ciphertext = 'foo';
    o.ciphertextCrc32c = 'foo';
    o.name = 'foo';
    o.protectionLevel = 'foo';
    o.verifiedAdditionalAuthenticatedDataCrc32c = true;
    o.verifiedPlaintextCrc32c = true;
  }
  buildCounterEncryptResponse--;
  return o;
}

void checkEncryptResponse(api.EncryptResponse o) {
  buildCounterEncryptResponse++;
  if (buildCounterEncryptResponse < 3) {
    unittest.expect(
      o.ciphertext!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ciphertextCrc32c!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protectionLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
        o.verifiedAdditionalAuthenticatedDataCrc32c!, unittest.isTrue);
    unittest.expect(o.verifiedPlaintextCrc32c!, unittest.isTrue);
  }
  buildCounterEncryptResponse--;
}

core.int buildCounterExpr = 0;
api.Expr buildExpr() {
  final o = api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterExpr--;
  return o;
}

void checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterExpr--;
}

core.int buildCounterExternalProtectionLevelOptions = 0;
api.ExternalProtectionLevelOptions buildExternalProtectionLevelOptions() {
  final o = api.ExternalProtectionLevelOptions();
  buildCounterExternalProtectionLevelOptions++;
  if (buildCounterExternalProtectionLevelOptions < 3) {
    o.externalKeyUri = 'foo';
  }
  buildCounterExternalProtectionLevelOptions--;
  return o;
}

void checkExternalProtectionLevelOptions(api.ExternalProtectionLevelOptions o) {
  buildCounterExternalProtectionLevelOptions++;
  if (buildCounterExternalProtectionLevelOptions < 3) {
    unittest.expect(
      o.externalKeyUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterExternalProtectionLevelOptions--;
}

core.int buildCounterGenerateRandomBytesRequest = 0;
api.GenerateRandomBytesRequest buildGenerateRandomBytesRequest() {
  final o = api.GenerateRandomBytesRequest();
  buildCounterGenerateRandomBytesRequest++;
  if (buildCounterGenerateRandomBytesRequest < 3) {
    o.lengthBytes = 42;
    o.protectionLevel = 'foo';
  }
  buildCounterGenerateRandomBytesRequest--;
  return o;
}

void checkGenerateRandomBytesRequest(api.GenerateRandomBytesRequest o) {
  buildCounterGenerateRandomBytesRequest++;
  if (buildCounterGenerateRandomBytesRequest < 3) {
    unittest.expect(
      o.lengthBytes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.protectionLevel!,
      unittest.equals('foo'),
    );
  }
  buildCounterGenerateRandomBytesRequest--;
}

core.int buildCounterGenerateRandomBytesResponse = 0;
api.GenerateRandomBytesResponse buildGenerateRandomBytesResponse() {
  final o = api.GenerateRandomBytesResponse();
  buildCounterGenerateRandomBytesResponse++;
  if (buildCounterGenerateRandomBytesResponse < 3) {
    o.data = 'foo';
    o.dataCrc32c = 'foo';
  }
  buildCounterGenerateRandomBytesResponse--;
  return o;
}

void checkGenerateRandomBytesResponse(api.GenerateRandomBytesResponse o) {
  buildCounterGenerateRandomBytesResponse++;
  if (buildCounterGenerateRandomBytesResponse < 3) {
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataCrc32c!,
      unittest.equals('foo'),
    );
  }
  buildCounterGenerateRandomBytesResponse--;
}

core.int buildCounterImportCryptoKeyVersionRequest = 0;
api.ImportCryptoKeyVersionRequest buildImportCryptoKeyVersionRequest() {
  final o = api.ImportCryptoKeyVersionRequest();
  buildCounterImportCryptoKeyVersionRequest++;
  if (buildCounterImportCryptoKeyVersionRequest < 3) {
    o.algorithm = 'foo';
    o.cryptoKeyVersion = 'foo';
    o.importJob = 'foo';
    o.rsaAesWrappedKey = 'foo';
  }
  buildCounterImportCryptoKeyVersionRequest--;
  return o;
}

void checkImportCryptoKeyVersionRequest(api.ImportCryptoKeyVersionRequest o) {
  buildCounterImportCryptoKeyVersionRequest++;
  if (buildCounterImportCryptoKeyVersionRequest < 3) {
    unittest.expect(
      o.algorithm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cryptoKeyVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.importJob!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rsaAesWrappedKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterImportCryptoKeyVersionRequest--;
}

core.int buildCounterImportJob = 0;
api.ImportJob buildImportJob() {
  final o = api.ImportJob();
  buildCounterImportJob++;
  if (buildCounterImportJob < 3) {
    o.attestation = buildKeyOperationAttestation();
    o.createTime = 'foo';
    o.expireEventTime = 'foo';
    o.expireTime = 'foo';
    o.generateTime = 'foo';
    o.importMethod = 'foo';
    o.name = 'foo';
    o.protectionLevel = 'foo';
    o.publicKey = buildWrappingPublicKey();
    o.state = 'foo';
  }
  buildCounterImportJob--;
  return o;
}

void checkImportJob(api.ImportJob o) {
  buildCounterImportJob++;
  if (buildCounterImportJob < 3) {
    checkKeyOperationAttestation(o.attestation!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireEventTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.generateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.importMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protectionLevel!,
      unittest.equals('foo'),
    );
    checkWrappingPublicKey(o.publicKey!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterImportJob--;
}

core.int buildCounterKeyOperationAttestation = 0;
api.KeyOperationAttestation buildKeyOperationAttestation() {
  final o = api.KeyOperationAttestation();
  buildCounterKeyOperationAttestation++;
  if (buildCounterKeyOperationAttestation < 3) {
    o.certChains = buildCertificateChains();
    o.content = 'foo';
    o.format = 'foo';
  }
  buildCounterKeyOperationAttestation--;
  return o;
}

void checkKeyOperationAttestation(api.KeyOperationAttestation o) {
  buildCounterKeyOperationAttestation++;
  if (buildCounterKeyOperationAttestation < 3) {
    checkCertificateChains(o.certChains!);
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
  }
  buildCounterKeyOperationAttestation--;
}

core.int buildCounterKeyRing = 0;
api.KeyRing buildKeyRing() {
  final o = api.KeyRing();
  buildCounterKeyRing++;
  if (buildCounterKeyRing < 3) {
    o.createTime = 'foo';
    o.name = 'foo';
  }
  buildCounterKeyRing--;
  return o;
}

void checkKeyRing(api.KeyRing o) {
  buildCounterKeyRing++;
  if (buildCounterKeyRing < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterKeyRing--;
}

core.List<api.CryptoKeyVersion> buildUnnamed7() => [
      buildCryptoKeyVersion(),
      buildCryptoKeyVersion(),
    ];

void checkUnnamed7(core.List<api.CryptoKeyVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCryptoKeyVersion(o[0]);
  checkCryptoKeyVersion(o[1]);
}

core.int buildCounterListCryptoKeyVersionsResponse = 0;
api.ListCryptoKeyVersionsResponse buildListCryptoKeyVersionsResponse() {
  final o = api.ListCryptoKeyVersionsResponse();
  buildCounterListCryptoKeyVersionsResponse++;
  if (buildCounterListCryptoKeyVersionsResponse < 3) {
    o.cryptoKeyVersions = buildUnnamed7();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterListCryptoKeyVersionsResponse--;
  return o;
}

void checkListCryptoKeyVersionsResponse(api.ListCryptoKeyVersionsResponse o) {
  buildCounterListCryptoKeyVersionsResponse++;
  if (buildCounterListCryptoKeyVersionsResponse < 3) {
    checkUnnamed7(o.cryptoKeyVersions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterListCryptoKeyVersionsResponse--;
}

core.List<api.CryptoKey> buildUnnamed8() => [
      buildCryptoKey(),
      buildCryptoKey(),
    ];

void checkUnnamed8(core.List<api.CryptoKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCryptoKey(o[0]);
  checkCryptoKey(o[1]);
}

core.int buildCounterListCryptoKeysResponse = 0;
api.ListCryptoKeysResponse buildListCryptoKeysResponse() {
  final o = api.ListCryptoKeysResponse();
  buildCounterListCryptoKeysResponse++;
  if (buildCounterListCryptoKeysResponse < 3) {
    o.cryptoKeys = buildUnnamed8();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterListCryptoKeysResponse--;
  return o;
}

void checkListCryptoKeysResponse(api.ListCryptoKeysResponse o) {
  buildCounterListCryptoKeysResponse++;
  if (buildCounterListCryptoKeysResponse < 3) {
    checkUnnamed8(o.cryptoKeys!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterListCryptoKeysResponse--;
}

core.List<api.ImportJob> buildUnnamed9() => [
      buildImportJob(),
      buildImportJob(),
    ];

void checkUnnamed9(core.List<api.ImportJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportJob(o[0]);
  checkImportJob(o[1]);
}

core.int buildCounterListImportJobsResponse = 0;
api.ListImportJobsResponse buildListImportJobsResponse() {
  final o = api.ListImportJobsResponse();
  buildCounterListImportJobsResponse++;
  if (buildCounterListImportJobsResponse < 3) {
    o.importJobs = buildUnnamed9();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterListImportJobsResponse--;
  return o;
}

void checkListImportJobsResponse(api.ListImportJobsResponse o) {
  buildCounterListImportJobsResponse++;
  if (buildCounterListImportJobsResponse < 3) {
    checkUnnamed9(o.importJobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterListImportJobsResponse--;
}

core.List<api.KeyRing> buildUnnamed10() => [
      buildKeyRing(),
      buildKeyRing(),
    ];

void checkUnnamed10(core.List<api.KeyRing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyRing(o[0]);
  checkKeyRing(o[1]);
}

core.int buildCounterListKeyRingsResponse = 0;
api.ListKeyRingsResponse buildListKeyRingsResponse() {
  final o = api.ListKeyRingsResponse();
  buildCounterListKeyRingsResponse++;
  if (buildCounterListKeyRingsResponse < 3) {
    o.keyRings = buildUnnamed10();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterListKeyRingsResponse--;
  return o;
}

void checkListKeyRingsResponse(api.ListKeyRingsResponse o) {
  buildCounterListKeyRingsResponse++;
  if (buildCounterListKeyRingsResponse < 3) {
    checkUnnamed10(o.keyRings!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterListKeyRingsResponse--;
}

core.List<api.Location> buildUnnamed11() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed11(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed11();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed11(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed12() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed12(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed13() => {
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

void checkUnnamed13(core.Map<core.String, core.Object> o) {
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
    o.labels = buildUnnamed12();
    o.locationId = 'foo';
    o.metadata = buildUnnamed13();
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
    checkUnnamed12(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterLocationMetadata = 0;
api.LocationMetadata buildLocationMetadata() {
  final o = api.LocationMetadata();
  buildCounterLocationMetadata++;
  if (buildCounterLocationMetadata < 3) {
    o.ekmAvailable = true;
    o.hsmAvailable = true;
  }
  buildCounterLocationMetadata--;
  return o;
}

void checkLocationMetadata(api.LocationMetadata o) {
  buildCounterLocationMetadata++;
  if (buildCounterLocationMetadata < 3) {
    unittest.expect(o.ekmAvailable!, unittest.isTrue);
    unittest.expect(o.hsmAvailable!, unittest.isTrue);
  }
  buildCounterLocationMetadata--;
}

core.int buildCounterMacSignRequest = 0;
api.MacSignRequest buildMacSignRequest() {
  final o = api.MacSignRequest();
  buildCounterMacSignRequest++;
  if (buildCounterMacSignRequest < 3) {
    o.data = 'foo';
    o.dataCrc32c = 'foo';
  }
  buildCounterMacSignRequest--;
  return o;
}

void checkMacSignRequest(api.MacSignRequest o) {
  buildCounterMacSignRequest++;
  if (buildCounterMacSignRequest < 3) {
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataCrc32c!,
      unittest.equals('foo'),
    );
  }
  buildCounterMacSignRequest--;
}

core.int buildCounterMacSignResponse = 0;
api.MacSignResponse buildMacSignResponse() {
  final o = api.MacSignResponse();
  buildCounterMacSignResponse++;
  if (buildCounterMacSignResponse < 3) {
    o.mac = 'foo';
    o.macCrc32c = 'foo';
    o.name = 'foo';
    o.protectionLevel = 'foo';
    o.verifiedDataCrc32c = true;
  }
  buildCounterMacSignResponse--;
  return o;
}

void checkMacSignResponse(api.MacSignResponse o) {
  buildCounterMacSignResponse++;
  if (buildCounterMacSignResponse < 3) {
    unittest.expect(
      o.mac!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.macCrc32c!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protectionLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(o.verifiedDataCrc32c!, unittest.isTrue);
  }
  buildCounterMacSignResponse--;
}

core.int buildCounterMacVerifyRequest = 0;
api.MacVerifyRequest buildMacVerifyRequest() {
  final o = api.MacVerifyRequest();
  buildCounterMacVerifyRequest++;
  if (buildCounterMacVerifyRequest < 3) {
    o.data = 'foo';
    o.dataCrc32c = 'foo';
    o.mac = 'foo';
    o.macCrc32c = 'foo';
  }
  buildCounterMacVerifyRequest--;
  return o;
}

void checkMacVerifyRequest(api.MacVerifyRequest o) {
  buildCounterMacVerifyRequest++;
  if (buildCounterMacVerifyRequest < 3) {
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataCrc32c!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mac!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.macCrc32c!,
      unittest.equals('foo'),
    );
  }
  buildCounterMacVerifyRequest--;
}

core.int buildCounterMacVerifyResponse = 0;
api.MacVerifyResponse buildMacVerifyResponse() {
  final o = api.MacVerifyResponse();
  buildCounterMacVerifyResponse++;
  if (buildCounterMacVerifyResponse < 3) {
    o.name = 'foo';
    o.protectionLevel = 'foo';
    o.success = true;
    o.verifiedDataCrc32c = true;
    o.verifiedMacCrc32c = true;
    o.verifiedSuccessIntegrity = true;
  }
  buildCounterMacVerifyResponse--;
  return o;
}

void checkMacVerifyResponse(api.MacVerifyResponse o) {
  buildCounterMacVerifyResponse++;
  if (buildCounterMacVerifyResponse < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protectionLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(o.success!, unittest.isTrue);
    unittest.expect(o.verifiedDataCrc32c!, unittest.isTrue);
    unittest.expect(o.verifiedMacCrc32c!, unittest.isTrue);
    unittest.expect(o.verifiedSuccessIntegrity!, unittest.isTrue);
  }
  buildCounterMacVerifyResponse--;
}

core.List<api.AuditConfig> buildUnnamed14() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed14(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed15() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed15(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed14();
    o.bindings = buildUnnamed15();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed14(o.auditConfigs!);
    checkUnnamed15(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterPolicy--;
}

core.int buildCounterPublicKey = 0;
api.PublicKey buildPublicKey() {
  final o = api.PublicKey();
  buildCounterPublicKey++;
  if (buildCounterPublicKey < 3) {
    o.algorithm = 'foo';
    o.name = 'foo';
    o.pem = 'foo';
    o.pemCrc32c = 'foo';
    o.protectionLevel = 'foo';
  }
  buildCounterPublicKey--;
  return o;
}

void checkPublicKey(api.PublicKey o) {
  buildCounterPublicKey++;
  if (buildCounterPublicKey < 3) {
    unittest.expect(
      o.algorithm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pem!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pemCrc32c!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protectionLevel!,
      unittest.equals('foo'),
    );
  }
  buildCounterPublicKey--;
}

core.int buildCounterRestoreCryptoKeyVersionRequest = 0;
api.RestoreCryptoKeyVersionRequest buildRestoreCryptoKeyVersionRequest() {
  final o = api.RestoreCryptoKeyVersionRequest();
  buildCounterRestoreCryptoKeyVersionRequest++;
  if (buildCounterRestoreCryptoKeyVersionRequest < 3) {}
  buildCounterRestoreCryptoKeyVersionRequest--;
  return o;
}

void checkRestoreCryptoKeyVersionRequest(api.RestoreCryptoKeyVersionRequest o) {
  buildCounterRestoreCryptoKeyVersionRequest++;
  if (buildCounterRestoreCryptoKeyVersionRequest < 3) {}
  buildCounterRestoreCryptoKeyVersionRequest--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = 'foo';
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetIamPolicyRequest--;
}

core.List<core.String> buildUnnamed16() => [
      'foo',
      'foo',
    ];

void checkUnnamed16(core.List<core.String> o) {
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

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed16();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed16(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
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

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed17();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed17(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterUpdateCryptoKeyPrimaryVersionRequest = 0;
api.UpdateCryptoKeyPrimaryVersionRequest
    buildUpdateCryptoKeyPrimaryVersionRequest() {
  final o = api.UpdateCryptoKeyPrimaryVersionRequest();
  buildCounterUpdateCryptoKeyPrimaryVersionRequest++;
  if (buildCounterUpdateCryptoKeyPrimaryVersionRequest < 3) {
    o.cryptoKeyVersionId = 'foo';
  }
  buildCounterUpdateCryptoKeyPrimaryVersionRequest--;
  return o;
}

void checkUpdateCryptoKeyPrimaryVersionRequest(
    api.UpdateCryptoKeyPrimaryVersionRequest o) {
  buildCounterUpdateCryptoKeyPrimaryVersionRequest++;
  if (buildCounterUpdateCryptoKeyPrimaryVersionRequest < 3) {
    unittest.expect(
      o.cryptoKeyVersionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateCryptoKeyPrimaryVersionRequest--;
}

core.int buildCounterWrappingPublicKey = 0;
api.WrappingPublicKey buildWrappingPublicKey() {
  final o = api.WrappingPublicKey();
  buildCounterWrappingPublicKey++;
  if (buildCounterWrappingPublicKey < 3) {
    o.pem = 'foo';
  }
  buildCounterWrappingPublicKey--;
  return o;
}

void checkWrappingPublicKey(api.WrappingPublicKey o) {
  buildCounterWrappingPublicKey++;
  if (buildCounterWrappingPublicKey < 3) {
    unittest.expect(
      o.pem!,
      unittest.equals('foo'),
    );
  }
  buildCounterWrappingPublicKey--;
}

void main() {
  unittest.group('obj-schema-AsymmetricDecryptRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAsymmetricDecryptRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AsymmetricDecryptRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAsymmetricDecryptRequest(od);
    });
  });

  unittest.group('obj-schema-AsymmetricDecryptResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAsymmetricDecryptResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AsymmetricDecryptResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAsymmetricDecryptResponse(od);
    });
  });

  unittest.group('obj-schema-AsymmetricSignRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAsymmetricSignRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AsymmetricSignRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAsymmetricSignRequest(od);
    });
  });

  unittest.group('obj-schema-AsymmetricSignResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAsymmetricSignResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AsymmetricSignResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAsymmetricSignResponse(od);
    });
  });

  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditLogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Binding.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-CertificateChains', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCertificateChains();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CertificateChains.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateChains(od);
    });
  });

  unittest.group('obj-schema-CryptoKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCryptoKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CryptoKey.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCryptoKey(od);
    });
  });

  unittest.group('obj-schema-CryptoKeyVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCryptoKeyVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CryptoKeyVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCryptoKeyVersion(od);
    });
  });

  unittest.group('obj-schema-CryptoKeyVersionTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCryptoKeyVersionTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CryptoKeyVersionTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCryptoKeyVersionTemplate(od);
    });
  });

  unittest.group('obj-schema-DecryptRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDecryptRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DecryptRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDecryptRequest(od);
    });
  });

  unittest.group('obj-schema-DecryptResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDecryptResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DecryptResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDecryptResponse(od);
    });
  });

  unittest.group('obj-schema-DestroyCryptoKeyVersionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDestroyCryptoKeyVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DestroyCryptoKeyVersionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDestroyCryptoKeyVersionRequest(od);
    });
  });

  unittest.group('obj-schema-Digest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDigest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Digest.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDigest(od);
    });
  });

  unittest.group('obj-schema-EncryptRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryptRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncryptRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEncryptRequest(od);
    });
  });

  unittest.group('obj-schema-EncryptResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryptResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncryptResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEncryptResponse(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Expr.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-ExternalProtectionLevelOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternalProtectionLevelOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternalProtectionLevelOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExternalProtectionLevelOptions(od);
    });
  });

  unittest.group('obj-schema-GenerateRandomBytesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateRandomBytesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateRandomBytesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateRandomBytesRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateRandomBytesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateRandomBytesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateRandomBytesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateRandomBytesResponse(od);
    });
  });

  unittest.group('obj-schema-ImportCryptoKeyVersionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportCryptoKeyVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportCryptoKeyVersionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportCryptoKeyVersionRequest(od);
    });
  });

  unittest.group('obj-schema-ImportJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ImportJob.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImportJob(od);
    });
  });

  unittest.group('obj-schema-KeyOperationAttestation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeyOperationAttestation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KeyOperationAttestation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKeyOperationAttestation(od);
    });
  });

  unittest.group('obj-schema-KeyRing', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeyRing();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.KeyRing.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkKeyRing(od);
    });
  });

  unittest.group('obj-schema-ListCryptoKeyVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCryptoKeyVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCryptoKeyVersionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCryptoKeyVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListCryptoKeysResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCryptoKeysResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCryptoKeysResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCryptoKeysResponse(od);
    });
  });

  unittest.group('obj-schema-ListImportJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListImportJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListImportJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListImportJobsResponse(od);
    });
  });

  unittest.group('obj-schema-ListKeyRingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListKeyRingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListKeyRingsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListKeyRingsResponse(od);
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

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-LocationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocationMetadata(od);
    });
  });

  unittest.group('obj-schema-MacSignRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMacSignRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MacSignRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMacSignRequest(od);
    });
  });

  unittest.group('obj-schema-MacSignResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMacSignResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MacSignResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMacSignResponse(od);
    });
  });

  unittest.group('obj-schema-MacVerifyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMacVerifyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MacVerifyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMacVerifyRequest(od);
    });
  });

  unittest.group('obj-schema-MacVerifyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMacVerifyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MacVerifyResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMacVerifyResponse(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-PublicKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublicKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PublicKey.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPublicKey(od);
    });
  });

  unittest.group('obj-schema-RestoreCryptoKeyVersionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestoreCryptoKeyVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestoreCryptoKeyVersionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRestoreCryptoKeyVersionRequest(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-UpdateCryptoKeyPrimaryVersionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateCryptoKeyPrimaryVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateCryptoKeyPrimaryVersionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateCryptoKeyPrimaryVersionRequest(od);
    });
  });

  unittest.group('obj-schema-WrappingPublicKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWrappingPublicKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WrappingPublicKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWrappingPublicKey(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--generateRandomBytes', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations;
      final arg_request = buildGenerateRandomBytesRequest();
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GenerateRandomBytesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGenerateRandomBytesRequest(obj);

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
        final resp = convert.json.encode(buildGenerateRandomBytesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generateRandomBytes(arg_request, arg_location,
          $fields: arg_$fields);
      checkGenerateRandomBytesResponse(
          response as api.GenerateRandomBytesResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations;
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
      final res = api.CloudKMSApi(mock).projects.locations;
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

  unittest.group('resource-ProjectsLocationsKeyRingsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations.keyRings;
      final arg_request = buildKeyRing();
      final arg_parent = 'foo';
      final arg_keyRingId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.KeyRing.fromJson(json as core.Map<core.String, core.dynamic>);
        checkKeyRing(obj);

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
          queryMap['keyRingId']!.first,
          unittest.equals(arg_keyRingId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildKeyRing());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          keyRingId: arg_keyRingId, $fields: arg_$fields);
      checkKeyRing(response as api.KeyRing);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations.keyRings;
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
        final resp = convert.json.encode(buildKeyRing());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkKeyRing(response as api.KeyRing);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations.keyRings;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations.keyRings;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListKeyRingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListKeyRingsResponse(response as api.ListKeyRingsResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations.keyRings;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations.keyRings;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsKeyRingsCryptoKeysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations.keyRings.cryptoKeys;
      final arg_request = buildCryptoKey();
      final arg_parent = 'foo';
      final arg_cryptoKeyId = 'foo';
      final arg_skipInitialVersionCreation = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.CryptoKey.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCryptoKey(obj);

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
          queryMap['cryptoKeyId']!.first,
          unittest.equals(arg_cryptoKeyId),
        );
        unittest.expect(
          queryMap['skipInitialVersionCreation']!.first,
          unittest.equals('$arg_skipInitialVersionCreation'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCryptoKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          cryptoKeyId: arg_cryptoKeyId,
          skipInitialVersionCreation: arg_skipInitialVersionCreation,
          $fields: arg_$fields);
      checkCryptoKey(response as api.CryptoKey);
    });

    unittest.test('method--decrypt', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations.keyRings.cryptoKeys;
      final arg_request = buildDecryptRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DecryptRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDecryptRequest(obj);

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
        final resp = convert.json.encode(buildDecryptResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.decrypt(arg_request, arg_name, $fields: arg_$fields);
      checkDecryptResponse(response as api.DecryptResponse);
    });

    unittest.test('method--encrypt', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations.keyRings.cryptoKeys;
      final arg_request = buildEncryptRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EncryptRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEncryptRequest(obj);

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
        final resp = convert.json.encode(buildEncryptResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.encrypt(arg_request, arg_name, $fields: arg_$fields);
      checkEncryptResponse(response as api.EncryptResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations.keyRings.cryptoKeys;
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
        final resp = convert.json.encode(buildCryptoKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCryptoKey(response as api.CryptoKey);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations.keyRings.cryptoKeys;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations.keyRings.cryptoKeys;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_versionView = 'foo';
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
          queryMap['versionView']!.first,
          unittest.equals(arg_versionView),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListCryptoKeysResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          versionView: arg_versionView,
          $fields: arg_$fields);
      checkListCryptoKeysResponse(response as api.ListCryptoKeysResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations.keyRings.cryptoKeys;
      final arg_request = buildCryptoKey();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.CryptoKey.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCryptoKey(obj);

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
        final resp = convert.json.encode(buildCryptoKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkCryptoKey(response as api.CryptoKey);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations.keyRings.cryptoKeys;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations.keyRings.cryptoKeys;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });

    unittest.test('method--updatePrimaryVersion', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations.keyRings.cryptoKeys;
      final arg_request = buildUpdateCryptoKeyPrimaryVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateCryptoKeyPrimaryVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateCryptoKeyPrimaryVersionRequest(obj);

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
        final resp = convert.json.encode(buildCryptoKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updatePrimaryVersion(arg_request, arg_name,
          $fields: arg_$fields);
      checkCryptoKey(response as api.CryptoKey);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResource',
      () {
    unittest.test('method--asymmetricDecrypt', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock)
          .projects
          .locations
          .keyRings
          .cryptoKeys
          .cryptoKeyVersions;
      final arg_request = buildAsymmetricDecryptRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AsymmetricDecryptRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAsymmetricDecryptRequest(obj);

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
        final resp = convert.json.encode(buildAsymmetricDecryptResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.asymmetricDecrypt(arg_request, arg_name,
          $fields: arg_$fields);
      checkAsymmetricDecryptResponse(response as api.AsymmetricDecryptResponse);
    });

    unittest.test('method--asymmetricSign', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock)
          .projects
          .locations
          .keyRings
          .cryptoKeys
          .cryptoKeyVersions;
      final arg_request = buildAsymmetricSignRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AsymmetricSignRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAsymmetricSignRequest(obj);

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
        final resp = convert.json.encode(buildAsymmetricSignResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.asymmetricSign(arg_request, arg_name, $fields: arg_$fields);
      checkAsymmetricSignResponse(response as api.AsymmetricSignResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock)
          .projects
          .locations
          .keyRings
          .cryptoKeys
          .cryptoKeyVersions;
      final arg_request = buildCryptoKeyVersion();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CryptoKeyVersion.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCryptoKeyVersion(obj);

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
        final resp = convert.json.encode(buildCryptoKeyVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkCryptoKeyVersion(response as api.CryptoKeyVersion);
    });

    unittest.test('method--destroy', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock)
          .projects
          .locations
          .keyRings
          .cryptoKeys
          .cryptoKeyVersions;
      final arg_request = buildDestroyCryptoKeyVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DestroyCryptoKeyVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDestroyCryptoKeyVersionRequest(obj);

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
        final resp = convert.json.encode(buildCryptoKeyVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.destroy(arg_request, arg_name, $fields: arg_$fields);
      checkCryptoKeyVersion(response as api.CryptoKeyVersion);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock)
          .projects
          .locations
          .keyRings
          .cryptoKeys
          .cryptoKeyVersions;
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
        final resp = convert.json.encode(buildCryptoKeyVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCryptoKeyVersion(response as api.CryptoKeyVersion);
    });

    unittest.test('method--getPublicKey', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock)
          .projects
          .locations
          .keyRings
          .cryptoKeys
          .cryptoKeyVersions;
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
        final resp = convert.json.encode(buildPublicKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getPublicKey(arg_name, $fields: arg_$fields);
      checkPublicKey(response as api.PublicKey);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock)
          .projects
          .locations
          .keyRings
          .cryptoKeys
          .cryptoKeyVersions;
      final arg_request = buildImportCryptoKeyVersionRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ImportCryptoKeyVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkImportCryptoKeyVersionRequest(obj);

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
        final resp = convert.json.encode(buildCryptoKeyVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_parent, $fields: arg_$fields);
      checkCryptoKeyVersion(response as api.CryptoKeyVersion);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock)
          .projects
          .locations
          .keyRings
          .cryptoKeys
          .cryptoKeyVersions;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListCryptoKeyVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListCryptoKeyVersionsResponse(
          response as api.ListCryptoKeyVersionsResponse);
    });

    unittest.test('method--macSign', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock)
          .projects
          .locations
          .keyRings
          .cryptoKeys
          .cryptoKeyVersions;
      final arg_request = buildMacSignRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.MacSignRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMacSignRequest(obj);

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
        final resp = convert.json.encode(buildMacSignResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.macSign(arg_request, arg_name, $fields: arg_$fields);
      checkMacSignResponse(response as api.MacSignResponse);
    });

    unittest.test('method--macVerify', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock)
          .projects
          .locations
          .keyRings
          .cryptoKeys
          .cryptoKeyVersions;
      final arg_request = buildMacVerifyRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.MacVerifyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMacVerifyRequest(obj);

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
        final resp = convert.json.encode(buildMacVerifyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.macVerify(arg_request, arg_name, $fields: arg_$fields);
      checkMacVerifyResponse(response as api.MacVerifyResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock)
          .projects
          .locations
          .keyRings
          .cryptoKeys
          .cryptoKeyVersions;
      final arg_request = buildCryptoKeyVersion();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CryptoKeyVersion.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCryptoKeyVersion(obj);

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
        final resp = convert.json.encode(buildCryptoKeyVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkCryptoKeyVersion(response as api.CryptoKeyVersion);
    });

    unittest.test('method--restore', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock)
          .projects
          .locations
          .keyRings
          .cryptoKeys
          .cryptoKeyVersions;
      final arg_request = buildRestoreCryptoKeyVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RestoreCryptoKeyVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRestoreCryptoKeyVersionRequest(obj);

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
        final resp = convert.json.encode(buildCryptoKeyVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.restore(arg_request, arg_name, $fields: arg_$fields);
      checkCryptoKeyVersion(response as api.CryptoKeyVersion);
    });
  });

  unittest.group('resource-ProjectsLocationsKeyRingsImportJobsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations.keyRings.importJobs;
      final arg_request = buildImportJob();
      final arg_parent = 'foo';
      final arg_importJobId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.ImportJob.fromJson(json as core.Map<core.String, core.dynamic>);
        checkImportJob(obj);

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
          queryMap['importJobId']!.first,
          unittest.equals(arg_importJobId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildImportJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          importJobId: arg_importJobId, $fields: arg_$fields);
      checkImportJob(response as api.ImportJob);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations.keyRings.importJobs;
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
        final resp = convert.json.encode(buildImportJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkImportJob(response as api.ImportJob);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations.keyRings.importJobs;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations.keyRings.importJobs;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListImportJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListImportJobsResponse(response as api.ListImportJobsResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations.keyRings.importJobs;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.CloudKMSApi(mock).projects.locations.keyRings.importJobs;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });
}
