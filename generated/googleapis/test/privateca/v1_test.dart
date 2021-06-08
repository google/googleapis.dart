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

import 'package:googleapis/privateca/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed1701() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1701(core.List<core.String> o) {
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

core.int buildCounterAccessUrls = 0;
api.AccessUrls buildAccessUrls() {
  var o = api.AccessUrls();
  buildCounterAccessUrls++;
  if (buildCounterAccessUrls < 3) {
    o.caCertificateAccessUrl = 'foo';
    o.crlAccessUrls = buildUnnamed1701();
  }
  buildCounterAccessUrls--;
  return o;
}

void checkAccessUrls(api.AccessUrls o) {
  buildCounterAccessUrls++;
  if (buildCounterAccessUrls < 3) {
    unittest.expect(
      o.caCertificateAccessUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed1701(o.crlAccessUrls!);
  }
  buildCounterAccessUrls--;
}

core.int buildCounterActivateCertificateAuthorityRequest = 0;
api.ActivateCertificateAuthorityRequest
    buildActivateCertificateAuthorityRequest() {
  var o = api.ActivateCertificateAuthorityRequest();
  buildCounterActivateCertificateAuthorityRequest++;
  if (buildCounterActivateCertificateAuthorityRequest < 3) {
    o.pemCaCertificate = 'foo';
    o.requestId = 'foo';
    o.subordinateConfig = buildSubordinateConfig();
  }
  buildCounterActivateCertificateAuthorityRequest--;
  return o;
}

void checkActivateCertificateAuthorityRequest(
    api.ActivateCertificateAuthorityRequest o) {
  buildCounterActivateCertificateAuthorityRequest++;
  if (buildCounterActivateCertificateAuthorityRequest < 3) {
    unittest.expect(
      o.pemCaCertificate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    checkSubordinateConfig(o.subordinateConfig! as api.SubordinateConfig);
  }
  buildCounterActivateCertificateAuthorityRequest--;
}

core.int buildCounterAllowedKeyType = 0;
api.AllowedKeyType buildAllowedKeyType() {
  var o = api.AllowedKeyType();
  buildCounterAllowedKeyType++;
  if (buildCounterAllowedKeyType < 3) {
    o.ellipticCurve = buildEcKeyType();
    o.rsa = buildRsaKeyType();
  }
  buildCounterAllowedKeyType--;
  return o;
}

void checkAllowedKeyType(api.AllowedKeyType o) {
  buildCounterAllowedKeyType++;
  if (buildCounterAllowedKeyType < 3) {
    checkEcKeyType(o.ellipticCurve! as api.EcKeyType);
    checkRsaKeyType(o.rsa! as api.RsaKeyType);
  }
  buildCounterAllowedKeyType--;
}

core.List<api.AuditLogConfig> buildUnnamed1702() {
  var o = <api.AuditLogConfig>[];
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

void checkUnnamed1702(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0] as api.AuditLogConfig);
  checkAuditLogConfig(o[1] as api.AuditLogConfig);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  var o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed1702();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed1702(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed1703() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1703(core.List<core.String> o) {
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
  var o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed1703();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed1703(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.List<core.String> buildUnnamed1704() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1704(core.List<core.String> o) {
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
  var o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed1704();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition! as api.Expr);
    checkUnnamed1704(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.int buildCounterCaOptions = 0;
api.CaOptions buildCaOptions() {
  var o = api.CaOptions();
  buildCounterCaOptions++;
  if (buildCounterCaOptions < 3) {
    o.isCa = true;
    o.maxIssuerPathLength = 42;
  }
  buildCounterCaOptions--;
  return o;
}

void checkCaOptions(api.CaOptions o) {
  buildCounterCaOptions++;
  if (buildCounterCaOptions < 3) {
    unittest.expect(o.isCa!, unittest.isTrue);
    unittest.expect(
      o.maxIssuerPathLength!,
      unittest.equals(42),
    );
  }
  buildCounterCaOptions--;
}

core.Map<core.String, core.String> buildUnnamed1705() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1705(core.Map<core.String, core.String> o) {
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

core.int buildCounterCaPool = 0;
api.CaPool buildCaPool() {
  var o = api.CaPool();
  buildCounterCaPool++;
  if (buildCounterCaPool < 3) {
    o.issuancePolicy = buildIssuancePolicy();
    o.labels = buildUnnamed1705();
    o.name = 'foo';
    o.publishingOptions = buildPublishingOptions();
    o.tier = 'foo';
  }
  buildCounterCaPool--;
  return o;
}

void checkCaPool(api.CaPool o) {
  buildCounterCaPool++;
  if (buildCounterCaPool < 3) {
    checkIssuancePolicy(o.issuancePolicy! as api.IssuancePolicy);
    checkUnnamed1705(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkPublishingOptions(o.publishingOptions! as api.PublishingOptions);
    unittest.expect(
      o.tier!,
      unittest.equals('foo'),
    );
  }
  buildCounterCaPool--;
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

core.List<core.String> buildUnnamed1706() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1706(core.List<core.String> o) {
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

core.int buildCounterCertChain = 0;
api.CertChain buildCertChain() {
  var o = api.CertChain();
  buildCounterCertChain++;
  if (buildCounterCertChain < 3) {
    o.certificates = buildUnnamed1706();
  }
  buildCounterCertChain--;
  return o;
}

void checkCertChain(api.CertChain o) {
  buildCounterCertChain++;
  if (buildCounterCertChain < 3) {
    checkUnnamed1706(o.certificates!);
  }
  buildCounterCertChain--;
}

core.Map<core.String, core.String> buildUnnamed1707() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1707(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed1708() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1708(core.List<core.String> o) {
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

core.int buildCounterCertificate = 0;
api.Certificate buildCertificate() {
  var o = api.Certificate();
  buildCounterCertificate++;
  if (buildCounterCertificate < 3) {
    o.certificateDescription = buildCertificateDescription();
    o.certificateTemplate = 'foo';
    o.config = buildCertificateConfig();
    o.createTime = 'foo';
    o.issuerCertificateAuthority = 'foo';
    o.labels = buildUnnamed1707();
    o.lifetime = 'foo';
    o.name = 'foo';
    o.pemCertificate = 'foo';
    o.pemCertificateChain = buildUnnamed1708();
    o.pemCsr = 'foo';
    o.revocationDetails = buildRevocationDetails();
    o.subjectMode = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterCertificate--;
  return o;
}

void checkCertificate(api.Certificate o) {
  buildCounterCertificate++;
  if (buildCounterCertificate < 3) {
    checkCertificateDescription(
        o.certificateDescription! as api.CertificateDescription);
    unittest.expect(
      o.certificateTemplate!,
      unittest.equals('foo'),
    );
    checkCertificateConfig(o.config! as api.CertificateConfig);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.issuerCertificateAuthority!,
      unittest.equals('foo'),
    );
    checkUnnamed1707(o.labels!);
    unittest.expect(
      o.lifetime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pemCertificate!,
      unittest.equals('foo'),
    );
    checkUnnamed1708(o.pemCertificateChain!);
    unittest.expect(
      o.pemCsr!,
      unittest.equals('foo'),
    );
    checkRevocationDetails(o.revocationDetails! as api.RevocationDetails);
    unittest.expect(
      o.subjectMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCertificate--;
}

core.List<api.CertificateDescription> buildUnnamed1709() {
  var o = <api.CertificateDescription>[];
  o.add(buildCertificateDescription());
  o.add(buildCertificateDescription());
  return o;
}

void checkUnnamed1709(core.List<api.CertificateDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertificateDescription(o[0] as api.CertificateDescription);
  checkCertificateDescription(o[1] as api.CertificateDescription);
}

core.Map<core.String, core.String> buildUnnamed1710() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1710(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed1711() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1711(core.List<core.String> o) {
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

core.int buildCounterCertificateAuthority = 0;
api.CertificateAuthority buildCertificateAuthority() {
  var o = api.CertificateAuthority();
  buildCounterCertificateAuthority++;
  if (buildCounterCertificateAuthority < 3) {
    o.accessUrls = buildAccessUrls();
    o.caCertificateDescriptions = buildUnnamed1709();
    o.config = buildCertificateConfig();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.expireTime = 'foo';
    o.gcsBucket = 'foo';
    o.keySpec = buildKeyVersionSpec();
    o.labels = buildUnnamed1710();
    o.lifetime = 'foo';
    o.name = 'foo';
    o.pemCaCertificates = buildUnnamed1711();
    o.state = 'foo';
    o.subordinateConfig = buildSubordinateConfig();
    o.tier = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterCertificateAuthority--;
  return o;
}

void checkCertificateAuthority(api.CertificateAuthority o) {
  buildCounterCertificateAuthority++;
  if (buildCounterCertificateAuthority < 3) {
    checkAccessUrls(o.accessUrls! as api.AccessUrls);
    checkUnnamed1709(o.caCertificateDescriptions!);
    checkCertificateConfig(o.config! as api.CertificateConfig);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gcsBucket!,
      unittest.equals('foo'),
    );
    checkKeyVersionSpec(o.keySpec! as api.KeyVersionSpec);
    checkUnnamed1710(o.labels!);
    unittest.expect(
      o.lifetime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed1711(o.pemCaCertificates!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkSubordinateConfig(o.subordinateConfig! as api.SubordinateConfig);
    unittest.expect(
      o.tier!,
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
  buildCounterCertificateAuthority--;
}

core.int buildCounterCertificateConfig = 0;
api.CertificateConfig buildCertificateConfig() {
  var o = api.CertificateConfig();
  buildCounterCertificateConfig++;
  if (buildCounterCertificateConfig < 3) {
    o.publicKey = buildPublicKey();
    o.subjectConfig = buildSubjectConfig();
    o.x509Config = buildX509Parameters();
  }
  buildCounterCertificateConfig--;
  return o;
}

void checkCertificateConfig(api.CertificateConfig o) {
  buildCounterCertificateConfig++;
  if (buildCounterCertificateConfig < 3) {
    checkPublicKey(o.publicKey! as api.PublicKey);
    checkSubjectConfig(o.subjectConfig! as api.SubjectConfig);
    checkX509Parameters(o.x509Config! as api.X509Parameters);
  }
  buildCounterCertificateConfig--;
}

core.List<core.String> buildUnnamed1712() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1712(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed1713() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1713(core.List<core.String> o) {
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

core.int buildCounterCertificateDescription = 0;
api.CertificateDescription buildCertificateDescription() {
  var o = api.CertificateDescription();
  buildCounterCertificateDescription++;
  if (buildCounterCertificateDescription < 3) {
    o.aiaIssuingCertificateUrls = buildUnnamed1712();
    o.authorityKeyId = buildKeyId();
    o.certFingerprint = buildCertificateFingerprint();
    o.crlDistributionPoints = buildUnnamed1713();
    o.publicKey = buildPublicKey();
    o.subjectDescription = buildSubjectDescription();
    o.subjectKeyId = buildKeyId();
    o.x509Description = buildX509Parameters();
  }
  buildCounterCertificateDescription--;
  return o;
}

void checkCertificateDescription(api.CertificateDescription o) {
  buildCounterCertificateDescription++;
  if (buildCounterCertificateDescription < 3) {
    checkUnnamed1712(o.aiaIssuingCertificateUrls!);
    checkKeyId(o.authorityKeyId! as api.KeyId);
    checkCertificateFingerprint(
        o.certFingerprint! as api.CertificateFingerprint);
    checkUnnamed1713(o.crlDistributionPoints!);
    checkPublicKey(o.publicKey! as api.PublicKey);
    checkSubjectDescription(o.subjectDescription! as api.SubjectDescription);
    checkKeyId(o.subjectKeyId! as api.KeyId);
    checkX509Parameters(o.x509Description! as api.X509Parameters);
  }
  buildCounterCertificateDescription--;
}

core.List<api.ObjectId> buildUnnamed1714() {
  var o = <api.ObjectId>[];
  o.add(buildObjectId());
  o.add(buildObjectId());
  return o;
}

void checkUnnamed1714(core.List<api.ObjectId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectId(o[0] as api.ObjectId);
  checkObjectId(o[1] as api.ObjectId);
}

core.List<core.String> buildUnnamed1715() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1715(core.List<core.String> o) {
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

core.int buildCounterCertificateExtensionConstraints = 0;
api.CertificateExtensionConstraints buildCertificateExtensionConstraints() {
  var o = api.CertificateExtensionConstraints();
  buildCounterCertificateExtensionConstraints++;
  if (buildCounterCertificateExtensionConstraints < 3) {
    o.additionalExtensions = buildUnnamed1714();
    o.knownExtensions = buildUnnamed1715();
  }
  buildCounterCertificateExtensionConstraints--;
  return o;
}

void checkCertificateExtensionConstraints(
    api.CertificateExtensionConstraints o) {
  buildCounterCertificateExtensionConstraints++;
  if (buildCounterCertificateExtensionConstraints < 3) {
    checkUnnamed1714(o.additionalExtensions!);
    checkUnnamed1715(o.knownExtensions!);
  }
  buildCounterCertificateExtensionConstraints--;
}

core.int buildCounterCertificateFingerprint = 0;
api.CertificateFingerprint buildCertificateFingerprint() {
  var o = api.CertificateFingerprint();
  buildCounterCertificateFingerprint++;
  if (buildCounterCertificateFingerprint < 3) {
    o.sha256Hash = 'foo';
  }
  buildCounterCertificateFingerprint--;
  return o;
}

void checkCertificateFingerprint(api.CertificateFingerprint o) {
  buildCounterCertificateFingerprint++;
  if (buildCounterCertificateFingerprint < 3) {
    unittest.expect(
      o.sha256Hash!,
      unittest.equals('foo'),
    );
  }
  buildCounterCertificateFingerprint--;
}

core.int buildCounterCertificateIdentityConstraints = 0;
api.CertificateIdentityConstraints buildCertificateIdentityConstraints() {
  var o = api.CertificateIdentityConstraints();
  buildCounterCertificateIdentityConstraints++;
  if (buildCounterCertificateIdentityConstraints < 3) {
    o.allowSubjectAltNamesPassthrough = true;
    o.allowSubjectPassthrough = true;
    o.celExpression = buildExpr();
  }
  buildCounterCertificateIdentityConstraints--;
  return o;
}

void checkCertificateIdentityConstraints(api.CertificateIdentityConstraints o) {
  buildCounterCertificateIdentityConstraints++;
  if (buildCounterCertificateIdentityConstraints < 3) {
    unittest.expect(o.allowSubjectAltNamesPassthrough!, unittest.isTrue);
    unittest.expect(o.allowSubjectPassthrough!, unittest.isTrue);
    checkExpr(o.celExpression! as api.Expr);
  }
  buildCounterCertificateIdentityConstraints--;
}

core.Map<core.String, core.String> buildUnnamed1716() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1716(core.Map<core.String, core.String> o) {
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

core.List<api.RevokedCertificate> buildUnnamed1717() {
  var o = <api.RevokedCertificate>[];
  o.add(buildRevokedCertificate());
  o.add(buildRevokedCertificate());
  return o;
}

void checkUnnamed1717(core.List<api.RevokedCertificate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRevokedCertificate(o[0] as api.RevokedCertificate);
  checkRevokedCertificate(o[1] as api.RevokedCertificate);
}

core.int buildCounterCertificateRevocationList = 0;
api.CertificateRevocationList buildCertificateRevocationList() {
  var o = api.CertificateRevocationList();
  buildCounterCertificateRevocationList++;
  if (buildCounterCertificateRevocationList < 3) {
    o.accessUrl = 'foo';
    o.createTime = 'foo';
    o.labels = buildUnnamed1716();
    o.name = 'foo';
    o.pemCrl = 'foo';
    o.revisionId = 'foo';
    o.revokedCertificates = buildUnnamed1717();
    o.sequenceNumber = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterCertificateRevocationList--;
  return o;
}

void checkCertificateRevocationList(api.CertificateRevocationList o) {
  buildCounterCertificateRevocationList++;
  if (buildCounterCertificateRevocationList < 3) {
    unittest.expect(
      o.accessUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed1716(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pemCrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
    checkUnnamed1717(o.revokedCertificates!);
    unittest.expect(
      o.sequenceNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCertificateRevocationList--;
}

core.Map<core.String, core.String> buildUnnamed1718() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1718(core.Map<core.String, core.String> o) {
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

core.int buildCounterCertificateTemplate = 0;
api.CertificateTemplate buildCertificateTemplate() {
  var o = api.CertificateTemplate();
  buildCounterCertificateTemplate++;
  if (buildCounterCertificateTemplate < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.identityConstraints = buildCertificateIdentityConstraints();
    o.labels = buildUnnamed1718();
    o.name = 'foo';
    o.passthroughExtensions = buildCertificateExtensionConstraints();
    o.predefinedValues = buildX509Parameters();
    o.updateTime = 'foo';
  }
  buildCounterCertificateTemplate--;
  return o;
}

void checkCertificateTemplate(api.CertificateTemplate o) {
  buildCounterCertificateTemplate++;
  if (buildCounterCertificateTemplate < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkCertificateIdentityConstraints(
        o.identityConstraints! as api.CertificateIdentityConstraints);
    checkUnnamed1718(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkCertificateExtensionConstraints(
        o.passthroughExtensions! as api.CertificateExtensionConstraints);
    checkX509Parameters(o.predefinedValues! as api.X509Parameters);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCertificateTemplate--;
}

core.int buildCounterDisableCertificateAuthorityRequest = 0;
api.DisableCertificateAuthorityRequest
    buildDisableCertificateAuthorityRequest() {
  var o = api.DisableCertificateAuthorityRequest();
  buildCounterDisableCertificateAuthorityRequest++;
  if (buildCounterDisableCertificateAuthorityRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterDisableCertificateAuthorityRequest--;
  return o;
}

void checkDisableCertificateAuthorityRequest(
    api.DisableCertificateAuthorityRequest o) {
  buildCounterDisableCertificateAuthorityRequest++;
  if (buildCounterDisableCertificateAuthorityRequest < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDisableCertificateAuthorityRequest--;
}

core.int buildCounterEcKeyType = 0;
api.EcKeyType buildEcKeyType() {
  var o = api.EcKeyType();
  buildCounterEcKeyType++;
  if (buildCounterEcKeyType < 3) {
    o.signatureAlgorithm = 'foo';
  }
  buildCounterEcKeyType--;
  return o;
}

void checkEcKeyType(api.EcKeyType o) {
  buildCounterEcKeyType++;
  if (buildCounterEcKeyType < 3) {
    unittest.expect(
      o.signatureAlgorithm!,
      unittest.equals('foo'),
    );
  }
  buildCounterEcKeyType--;
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

core.int buildCounterEnableCertificateAuthorityRequest = 0;
api.EnableCertificateAuthorityRequest buildEnableCertificateAuthorityRequest() {
  var o = api.EnableCertificateAuthorityRequest();
  buildCounterEnableCertificateAuthorityRequest++;
  if (buildCounterEnableCertificateAuthorityRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterEnableCertificateAuthorityRequest--;
  return o;
}

void checkEnableCertificateAuthorityRequest(
    api.EnableCertificateAuthorityRequest o) {
  buildCounterEnableCertificateAuthorityRequest++;
  if (buildCounterEnableCertificateAuthorityRequest < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnableCertificateAuthorityRequest--;
}

core.int buildCounterExpr = 0;
api.Expr buildExpr() {
  var o = api.Expr();
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

core.int buildCounterExtendedKeyUsageOptions = 0;
api.ExtendedKeyUsageOptions buildExtendedKeyUsageOptions() {
  var o = api.ExtendedKeyUsageOptions();
  buildCounterExtendedKeyUsageOptions++;
  if (buildCounterExtendedKeyUsageOptions < 3) {
    o.clientAuth = true;
    o.codeSigning = true;
    o.emailProtection = true;
    o.ocspSigning = true;
    o.serverAuth = true;
    o.timeStamping = true;
  }
  buildCounterExtendedKeyUsageOptions--;
  return o;
}

void checkExtendedKeyUsageOptions(api.ExtendedKeyUsageOptions o) {
  buildCounterExtendedKeyUsageOptions++;
  if (buildCounterExtendedKeyUsageOptions < 3) {
    unittest.expect(o.clientAuth!, unittest.isTrue);
    unittest.expect(o.codeSigning!, unittest.isTrue);
    unittest.expect(o.emailProtection!, unittest.isTrue);
    unittest.expect(o.ocspSigning!, unittest.isTrue);
    unittest.expect(o.serverAuth!, unittest.isTrue);
    unittest.expect(o.timeStamping!, unittest.isTrue);
  }
  buildCounterExtendedKeyUsageOptions--;
}

core.int buildCounterFetchCaCertsRequest = 0;
api.FetchCaCertsRequest buildFetchCaCertsRequest() {
  var o = api.FetchCaCertsRequest();
  buildCounterFetchCaCertsRequest++;
  if (buildCounterFetchCaCertsRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterFetchCaCertsRequest--;
  return o;
}

void checkFetchCaCertsRequest(api.FetchCaCertsRequest o) {
  buildCounterFetchCaCertsRequest++;
  if (buildCounterFetchCaCertsRequest < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterFetchCaCertsRequest--;
}

core.List<api.CertChain> buildUnnamed1719() {
  var o = <api.CertChain>[];
  o.add(buildCertChain());
  o.add(buildCertChain());
  return o;
}

void checkUnnamed1719(core.List<api.CertChain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertChain(o[0] as api.CertChain);
  checkCertChain(o[1] as api.CertChain);
}

core.int buildCounterFetchCaCertsResponse = 0;
api.FetchCaCertsResponse buildFetchCaCertsResponse() {
  var o = api.FetchCaCertsResponse();
  buildCounterFetchCaCertsResponse++;
  if (buildCounterFetchCaCertsResponse < 3) {
    o.caCerts = buildUnnamed1719();
  }
  buildCounterFetchCaCertsResponse--;
  return o;
}

void checkFetchCaCertsResponse(api.FetchCaCertsResponse o) {
  buildCounterFetchCaCertsResponse++;
  if (buildCounterFetchCaCertsResponse < 3) {
    checkUnnamed1719(o.caCerts!);
  }
  buildCounterFetchCaCertsResponse--;
}

core.int buildCounterFetchCertificateAuthorityCsrResponse = 0;
api.FetchCertificateAuthorityCsrResponse
    buildFetchCertificateAuthorityCsrResponse() {
  var o = api.FetchCertificateAuthorityCsrResponse();
  buildCounterFetchCertificateAuthorityCsrResponse++;
  if (buildCounterFetchCertificateAuthorityCsrResponse < 3) {
    o.pemCsr = 'foo';
  }
  buildCounterFetchCertificateAuthorityCsrResponse--;
  return o;
}

void checkFetchCertificateAuthorityCsrResponse(
    api.FetchCertificateAuthorityCsrResponse o) {
  buildCounterFetchCertificateAuthorityCsrResponse++;
  if (buildCounterFetchCertificateAuthorityCsrResponse < 3) {
    unittest.expect(
      o.pemCsr!,
      unittest.equals('foo'),
    );
  }
  buildCounterFetchCertificateAuthorityCsrResponse--;
}

core.int buildCounterIssuanceModes = 0;
api.IssuanceModes buildIssuanceModes() {
  var o = api.IssuanceModes();
  buildCounterIssuanceModes++;
  if (buildCounterIssuanceModes < 3) {
    o.allowConfigBasedIssuance = true;
    o.allowCsrBasedIssuance = true;
  }
  buildCounterIssuanceModes--;
  return o;
}

void checkIssuanceModes(api.IssuanceModes o) {
  buildCounterIssuanceModes++;
  if (buildCounterIssuanceModes < 3) {
    unittest.expect(o.allowConfigBasedIssuance!, unittest.isTrue);
    unittest.expect(o.allowCsrBasedIssuance!, unittest.isTrue);
  }
  buildCounterIssuanceModes--;
}

core.List<api.AllowedKeyType> buildUnnamed1720() {
  var o = <api.AllowedKeyType>[];
  o.add(buildAllowedKeyType());
  o.add(buildAllowedKeyType());
  return o;
}

void checkUnnamed1720(core.List<api.AllowedKeyType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAllowedKeyType(o[0] as api.AllowedKeyType);
  checkAllowedKeyType(o[1] as api.AllowedKeyType);
}

core.int buildCounterIssuancePolicy = 0;
api.IssuancePolicy buildIssuancePolicy() {
  var o = api.IssuancePolicy();
  buildCounterIssuancePolicy++;
  if (buildCounterIssuancePolicy < 3) {
    o.allowedIssuanceModes = buildIssuanceModes();
    o.allowedKeyTypes = buildUnnamed1720();
    o.baselineValues = buildX509Parameters();
    o.identityConstraints = buildCertificateIdentityConstraints();
    o.maximumLifetime = 'foo';
    o.passthroughExtensions = buildCertificateExtensionConstraints();
  }
  buildCounterIssuancePolicy--;
  return o;
}

void checkIssuancePolicy(api.IssuancePolicy o) {
  buildCounterIssuancePolicy++;
  if (buildCounterIssuancePolicy < 3) {
    checkIssuanceModes(o.allowedIssuanceModes! as api.IssuanceModes);
    checkUnnamed1720(o.allowedKeyTypes!);
    checkX509Parameters(o.baselineValues! as api.X509Parameters);
    checkCertificateIdentityConstraints(
        o.identityConstraints! as api.CertificateIdentityConstraints);
    unittest.expect(
      o.maximumLifetime!,
      unittest.equals('foo'),
    );
    checkCertificateExtensionConstraints(
        o.passthroughExtensions! as api.CertificateExtensionConstraints);
  }
  buildCounterIssuancePolicy--;
}

core.int buildCounterKeyId = 0;
api.KeyId buildKeyId() {
  var o = api.KeyId();
  buildCounterKeyId++;
  if (buildCounterKeyId < 3) {
    o.keyId = 'foo';
  }
  buildCounterKeyId--;
  return o;
}

void checkKeyId(api.KeyId o) {
  buildCounterKeyId++;
  if (buildCounterKeyId < 3) {
    unittest.expect(
      o.keyId!,
      unittest.equals('foo'),
    );
  }
  buildCounterKeyId--;
}

core.List<api.ObjectId> buildUnnamed1721() {
  var o = <api.ObjectId>[];
  o.add(buildObjectId());
  o.add(buildObjectId());
  return o;
}

void checkUnnamed1721(core.List<api.ObjectId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectId(o[0] as api.ObjectId);
  checkObjectId(o[1] as api.ObjectId);
}

core.int buildCounterKeyUsage = 0;
api.KeyUsage buildKeyUsage() {
  var o = api.KeyUsage();
  buildCounterKeyUsage++;
  if (buildCounterKeyUsage < 3) {
    o.baseKeyUsage = buildKeyUsageOptions();
    o.extendedKeyUsage = buildExtendedKeyUsageOptions();
    o.unknownExtendedKeyUsages = buildUnnamed1721();
  }
  buildCounterKeyUsage--;
  return o;
}

void checkKeyUsage(api.KeyUsage o) {
  buildCounterKeyUsage++;
  if (buildCounterKeyUsage < 3) {
    checkKeyUsageOptions(o.baseKeyUsage! as api.KeyUsageOptions);
    checkExtendedKeyUsageOptions(
        o.extendedKeyUsage! as api.ExtendedKeyUsageOptions);
    checkUnnamed1721(o.unknownExtendedKeyUsages!);
  }
  buildCounterKeyUsage--;
}

core.int buildCounterKeyUsageOptions = 0;
api.KeyUsageOptions buildKeyUsageOptions() {
  var o = api.KeyUsageOptions();
  buildCounterKeyUsageOptions++;
  if (buildCounterKeyUsageOptions < 3) {
    o.certSign = true;
    o.contentCommitment = true;
    o.crlSign = true;
    o.dataEncipherment = true;
    o.decipherOnly = true;
    o.digitalSignature = true;
    o.encipherOnly = true;
    o.keyAgreement = true;
    o.keyEncipherment = true;
  }
  buildCounterKeyUsageOptions--;
  return o;
}

void checkKeyUsageOptions(api.KeyUsageOptions o) {
  buildCounterKeyUsageOptions++;
  if (buildCounterKeyUsageOptions < 3) {
    unittest.expect(o.certSign!, unittest.isTrue);
    unittest.expect(o.contentCommitment!, unittest.isTrue);
    unittest.expect(o.crlSign!, unittest.isTrue);
    unittest.expect(o.dataEncipherment!, unittest.isTrue);
    unittest.expect(o.decipherOnly!, unittest.isTrue);
    unittest.expect(o.digitalSignature!, unittest.isTrue);
    unittest.expect(o.encipherOnly!, unittest.isTrue);
    unittest.expect(o.keyAgreement!, unittest.isTrue);
    unittest.expect(o.keyEncipherment!, unittest.isTrue);
  }
  buildCounterKeyUsageOptions--;
}

core.int buildCounterKeyVersionSpec = 0;
api.KeyVersionSpec buildKeyVersionSpec() {
  var o = api.KeyVersionSpec();
  buildCounterKeyVersionSpec++;
  if (buildCounterKeyVersionSpec < 3) {
    o.algorithm = 'foo';
    o.cloudKmsKeyVersion = 'foo';
  }
  buildCounterKeyVersionSpec--;
  return o;
}

void checkKeyVersionSpec(api.KeyVersionSpec o) {
  buildCounterKeyVersionSpec++;
  if (buildCounterKeyVersionSpec < 3) {
    unittest.expect(
      o.algorithm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cloudKmsKeyVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterKeyVersionSpec--;
}

core.List<api.CaPool> buildUnnamed1722() {
  var o = <api.CaPool>[];
  o.add(buildCaPool());
  o.add(buildCaPool());
  return o;
}

void checkUnnamed1722(core.List<api.CaPool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCaPool(o[0] as api.CaPool);
  checkCaPool(o[1] as api.CaPool);
}

core.List<core.String> buildUnnamed1723() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1723(core.List<core.String> o) {
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

core.int buildCounterListCaPoolsResponse = 0;
api.ListCaPoolsResponse buildListCaPoolsResponse() {
  var o = api.ListCaPoolsResponse();
  buildCounterListCaPoolsResponse++;
  if (buildCounterListCaPoolsResponse < 3) {
    o.caPools = buildUnnamed1722();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed1723();
  }
  buildCounterListCaPoolsResponse--;
  return o;
}

void checkListCaPoolsResponse(api.ListCaPoolsResponse o) {
  buildCounterListCaPoolsResponse++;
  if (buildCounterListCaPoolsResponse < 3) {
    checkUnnamed1722(o.caPools!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed1723(o.unreachable!);
  }
  buildCounterListCaPoolsResponse--;
}

core.List<api.CertificateAuthority> buildUnnamed1724() {
  var o = <api.CertificateAuthority>[];
  o.add(buildCertificateAuthority());
  o.add(buildCertificateAuthority());
  return o;
}

void checkUnnamed1724(core.List<api.CertificateAuthority> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertificateAuthority(o[0] as api.CertificateAuthority);
  checkCertificateAuthority(o[1] as api.CertificateAuthority);
}

core.List<core.String> buildUnnamed1725() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1725(core.List<core.String> o) {
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

core.int buildCounterListCertificateAuthoritiesResponse = 0;
api.ListCertificateAuthoritiesResponse
    buildListCertificateAuthoritiesResponse() {
  var o = api.ListCertificateAuthoritiesResponse();
  buildCounterListCertificateAuthoritiesResponse++;
  if (buildCounterListCertificateAuthoritiesResponse < 3) {
    o.certificateAuthorities = buildUnnamed1724();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed1725();
  }
  buildCounterListCertificateAuthoritiesResponse--;
  return o;
}

void checkListCertificateAuthoritiesResponse(
    api.ListCertificateAuthoritiesResponse o) {
  buildCounterListCertificateAuthoritiesResponse++;
  if (buildCounterListCertificateAuthoritiesResponse < 3) {
    checkUnnamed1724(o.certificateAuthorities!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed1725(o.unreachable!);
  }
  buildCounterListCertificateAuthoritiesResponse--;
}

core.List<api.CertificateRevocationList> buildUnnamed1726() {
  var o = <api.CertificateRevocationList>[];
  o.add(buildCertificateRevocationList());
  o.add(buildCertificateRevocationList());
  return o;
}

void checkUnnamed1726(core.List<api.CertificateRevocationList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertificateRevocationList(o[0] as api.CertificateRevocationList);
  checkCertificateRevocationList(o[1] as api.CertificateRevocationList);
}

core.List<core.String> buildUnnamed1727() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1727(core.List<core.String> o) {
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

core.int buildCounterListCertificateRevocationListsResponse = 0;
api.ListCertificateRevocationListsResponse
    buildListCertificateRevocationListsResponse() {
  var o = api.ListCertificateRevocationListsResponse();
  buildCounterListCertificateRevocationListsResponse++;
  if (buildCounterListCertificateRevocationListsResponse < 3) {
    o.certificateRevocationLists = buildUnnamed1726();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed1727();
  }
  buildCounterListCertificateRevocationListsResponse--;
  return o;
}

void checkListCertificateRevocationListsResponse(
    api.ListCertificateRevocationListsResponse o) {
  buildCounterListCertificateRevocationListsResponse++;
  if (buildCounterListCertificateRevocationListsResponse < 3) {
    checkUnnamed1726(o.certificateRevocationLists!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed1727(o.unreachable!);
  }
  buildCounterListCertificateRevocationListsResponse--;
}

core.List<api.CertificateTemplate> buildUnnamed1728() {
  var o = <api.CertificateTemplate>[];
  o.add(buildCertificateTemplate());
  o.add(buildCertificateTemplate());
  return o;
}

void checkUnnamed1728(core.List<api.CertificateTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertificateTemplate(o[0] as api.CertificateTemplate);
  checkCertificateTemplate(o[1] as api.CertificateTemplate);
}

core.List<core.String> buildUnnamed1729() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1729(core.List<core.String> o) {
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

core.int buildCounterListCertificateTemplatesResponse = 0;
api.ListCertificateTemplatesResponse buildListCertificateTemplatesResponse() {
  var o = api.ListCertificateTemplatesResponse();
  buildCounterListCertificateTemplatesResponse++;
  if (buildCounterListCertificateTemplatesResponse < 3) {
    o.certificateTemplates = buildUnnamed1728();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed1729();
  }
  buildCounterListCertificateTemplatesResponse--;
  return o;
}

void checkListCertificateTemplatesResponse(
    api.ListCertificateTemplatesResponse o) {
  buildCounterListCertificateTemplatesResponse++;
  if (buildCounterListCertificateTemplatesResponse < 3) {
    checkUnnamed1728(o.certificateTemplates!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed1729(o.unreachable!);
  }
  buildCounterListCertificateTemplatesResponse--;
}

core.List<api.Certificate> buildUnnamed1730() {
  var o = <api.Certificate>[];
  o.add(buildCertificate());
  o.add(buildCertificate());
  return o;
}

void checkUnnamed1730(core.List<api.Certificate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertificate(o[0] as api.Certificate);
  checkCertificate(o[1] as api.Certificate);
}

core.List<core.String> buildUnnamed1731() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1731(core.List<core.String> o) {
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

core.int buildCounterListCertificatesResponse = 0;
api.ListCertificatesResponse buildListCertificatesResponse() {
  var o = api.ListCertificatesResponse();
  buildCounterListCertificatesResponse++;
  if (buildCounterListCertificatesResponse < 3) {
    o.certificates = buildUnnamed1730();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed1731();
  }
  buildCounterListCertificatesResponse--;
  return o;
}

void checkListCertificatesResponse(api.ListCertificatesResponse o) {
  buildCounterListCertificatesResponse++;
  if (buildCounterListCertificatesResponse < 3) {
    checkUnnamed1730(o.certificates!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed1731(o.unreachable!);
  }
  buildCounterListCertificatesResponse--;
}

core.List<api.Location> buildUnnamed1732() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed1732(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0] as api.Location);
  checkLocation(o[1] as api.Location);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  var o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed1732();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed1732(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed1733() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed1733(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0] as api.Operation);
  checkOperation(o[1] as api.Operation);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  var o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed1733();
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
    checkUnnamed1733(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed1734() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1734(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed1735() {
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

void checkUnnamed1735(core.Map<core.String, core.Object> o) {
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
  var o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed1734();
    o.locationId = 'foo';
    o.metadata = buildUnnamed1735();
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
    checkUnnamed1734(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed1735(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.List<core.int> buildUnnamed1736() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed1736(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterObjectId = 0;
api.ObjectId buildObjectId() {
  var o = api.ObjectId();
  buildCounterObjectId++;
  if (buildCounterObjectId < 3) {
    o.objectIdPath = buildUnnamed1736();
  }
  buildCounterObjectId--;
  return o;
}

void checkObjectId(api.ObjectId o) {
  buildCounterObjectId++;
  if (buildCounterObjectId < 3) {
    checkUnnamed1736(o.objectIdPath!);
  }
  buildCounterObjectId--;
}

core.Map<core.String, core.Object> buildUnnamed1737() {
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

void checkUnnamed1737(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed1738() {
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

void checkUnnamed1738(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed1737();
    o.name = 'foo';
    o.response = buildUnnamed1738();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error! as api.Status);
    checkUnnamed1737(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed1738(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationMetadata = 0;
api.OperationMetadata buildOperationMetadata() {
  var o = api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.apiVersion = 'foo';
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.requestedCancellation = true;
    o.statusMessage = 'foo';
    o.target = 'foo';
    o.verb = 'foo';
  }
  buildCounterOperationMetadata--;
  return o;
}

void checkOperationMetadata(api.OperationMetadata o) {
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.requestedCancellation!, unittest.isTrue);
    unittest.expect(
      o.statusMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.target!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verb!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationMetadata--;
}

core.List<api.AuditConfig> buildUnnamed1739() {
  var o = <api.AuditConfig>[];
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

void checkUnnamed1739(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0] as api.AuditConfig);
  checkAuditConfig(o[1] as api.AuditConfig);
}

core.List<api.Binding> buildUnnamed1740() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed1740(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0] as api.Binding);
  checkBinding(o[1] as api.Binding);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed1739();
    o.bindings = buildUnnamed1740();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed1739(o.auditConfigs!);
    checkUnnamed1740(o.bindings!);
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
  var o = api.PublicKey();
  buildCounterPublicKey++;
  if (buildCounterPublicKey < 3) {
    o.format = 'foo';
    o.key = 'foo';
  }
  buildCounterPublicKey--;
  return o;
}

void checkPublicKey(api.PublicKey o) {
  buildCounterPublicKey++;
  if (buildCounterPublicKey < 3) {
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
  }
  buildCounterPublicKey--;
}

core.int buildCounterPublishingOptions = 0;
api.PublishingOptions buildPublishingOptions() {
  var o = api.PublishingOptions();
  buildCounterPublishingOptions++;
  if (buildCounterPublishingOptions < 3) {
    o.publishCaCert = true;
    o.publishCrl = true;
  }
  buildCounterPublishingOptions--;
  return o;
}

void checkPublishingOptions(api.PublishingOptions o) {
  buildCounterPublishingOptions++;
  if (buildCounterPublishingOptions < 3) {
    unittest.expect(o.publishCaCert!, unittest.isTrue);
    unittest.expect(o.publishCrl!, unittest.isTrue);
  }
  buildCounterPublishingOptions--;
}

core.int buildCounterReconciliationOperationMetadata = 0;
api.ReconciliationOperationMetadata buildReconciliationOperationMetadata() {
  var o = api.ReconciliationOperationMetadata();
  buildCounterReconciliationOperationMetadata++;
  if (buildCounterReconciliationOperationMetadata < 3) {
    o.deleteResource = true;
    o.exclusiveAction = 'foo';
  }
  buildCounterReconciliationOperationMetadata--;
  return o;
}

void checkReconciliationOperationMetadata(
    api.ReconciliationOperationMetadata o) {
  buildCounterReconciliationOperationMetadata++;
  if (buildCounterReconciliationOperationMetadata < 3) {
    unittest.expect(o.deleteResource!, unittest.isTrue);
    unittest.expect(
      o.exclusiveAction!,
      unittest.equals('foo'),
    );
  }
  buildCounterReconciliationOperationMetadata--;
}

core.int buildCounterRevocationDetails = 0;
api.RevocationDetails buildRevocationDetails() {
  var o = api.RevocationDetails();
  buildCounterRevocationDetails++;
  if (buildCounterRevocationDetails < 3) {
    o.revocationState = 'foo';
    o.revocationTime = 'foo';
  }
  buildCounterRevocationDetails--;
  return o;
}

void checkRevocationDetails(api.RevocationDetails o) {
  buildCounterRevocationDetails++;
  if (buildCounterRevocationDetails < 3) {
    unittest.expect(
      o.revocationState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revocationTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterRevocationDetails--;
}

core.int buildCounterRevokeCertificateRequest = 0;
api.RevokeCertificateRequest buildRevokeCertificateRequest() {
  var o = api.RevokeCertificateRequest();
  buildCounterRevokeCertificateRequest++;
  if (buildCounterRevokeCertificateRequest < 3) {
    o.reason = 'foo';
    o.requestId = 'foo';
  }
  buildCounterRevokeCertificateRequest--;
  return o;
}

void checkRevokeCertificateRequest(api.RevokeCertificateRequest o) {
  buildCounterRevokeCertificateRequest++;
  if (buildCounterRevokeCertificateRequest < 3) {
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRevokeCertificateRequest--;
}

core.int buildCounterRevokedCertificate = 0;
api.RevokedCertificate buildRevokedCertificate() {
  var o = api.RevokedCertificate();
  buildCounterRevokedCertificate++;
  if (buildCounterRevokedCertificate < 3) {
    o.certificate = 'foo';
    o.hexSerialNumber = 'foo';
    o.revocationReason = 'foo';
  }
  buildCounterRevokedCertificate--;
  return o;
}

void checkRevokedCertificate(api.RevokedCertificate o) {
  buildCounterRevokedCertificate++;
  if (buildCounterRevokedCertificate < 3) {
    unittest.expect(
      o.certificate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hexSerialNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revocationReason!,
      unittest.equals('foo'),
    );
  }
  buildCounterRevokedCertificate--;
}

core.int buildCounterRsaKeyType = 0;
api.RsaKeyType buildRsaKeyType() {
  var o = api.RsaKeyType();
  buildCounterRsaKeyType++;
  if (buildCounterRsaKeyType < 3) {
    o.maxModulusSize = 'foo';
    o.minModulusSize = 'foo';
  }
  buildCounterRsaKeyType--;
  return o;
}

void checkRsaKeyType(api.RsaKeyType o) {
  buildCounterRsaKeyType++;
  if (buildCounterRsaKeyType < 3) {
    unittest.expect(
      o.maxModulusSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minModulusSize!,
      unittest.equals('foo'),
    );
  }
  buildCounterRsaKeyType--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  var o = api.SetIamPolicyRequest();
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
    checkPolicy(o.policy! as api.Policy);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetIamPolicyRequest--;
}

core.Map<core.String, core.Object> buildUnnamed1741() {
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

void checkUnnamed1741(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object>> buildUnnamed1742() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed1741());
  o.add(buildUnnamed1741());
  return o;
}

void checkUnnamed1742(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1741(o[0]);
  checkUnnamed1741(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed1742();
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
    checkUnnamed1742(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterSubject = 0;
api.Subject buildSubject() {
  var o = api.Subject();
  buildCounterSubject++;
  if (buildCounterSubject < 3) {
    o.commonName = 'foo';
    o.countryCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.organizationalUnit = 'foo';
    o.postalCode = 'foo';
    o.province = 'foo';
    o.streetAddress = 'foo';
  }
  buildCounterSubject--;
  return o;
}

void checkSubject(api.Subject o) {
  buildCounterSubject++;
  if (buildCounterSubject < 3) {
    unittest.expect(
      o.commonName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locality!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.organization!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.organizationalUnit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.province!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.streetAddress!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubject--;
}

core.List<api.X509Extension> buildUnnamed1743() {
  var o = <api.X509Extension>[];
  o.add(buildX509Extension());
  o.add(buildX509Extension());
  return o;
}

void checkUnnamed1743(core.List<api.X509Extension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkX509Extension(o[0] as api.X509Extension);
  checkX509Extension(o[1] as api.X509Extension);
}

core.List<core.String> buildUnnamed1744() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1744(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed1745() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1745(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed1746() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1746(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed1747() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1747(core.List<core.String> o) {
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

core.int buildCounterSubjectAltNames = 0;
api.SubjectAltNames buildSubjectAltNames() {
  var o = api.SubjectAltNames();
  buildCounterSubjectAltNames++;
  if (buildCounterSubjectAltNames < 3) {
    o.customSans = buildUnnamed1743();
    o.dnsNames = buildUnnamed1744();
    o.emailAddresses = buildUnnamed1745();
    o.ipAddresses = buildUnnamed1746();
    o.uris = buildUnnamed1747();
  }
  buildCounterSubjectAltNames--;
  return o;
}

void checkSubjectAltNames(api.SubjectAltNames o) {
  buildCounterSubjectAltNames++;
  if (buildCounterSubjectAltNames < 3) {
    checkUnnamed1743(o.customSans!);
    checkUnnamed1744(o.dnsNames!);
    checkUnnamed1745(o.emailAddresses!);
    checkUnnamed1746(o.ipAddresses!);
    checkUnnamed1747(o.uris!);
  }
  buildCounterSubjectAltNames--;
}

core.int buildCounterSubjectConfig = 0;
api.SubjectConfig buildSubjectConfig() {
  var o = api.SubjectConfig();
  buildCounterSubjectConfig++;
  if (buildCounterSubjectConfig < 3) {
    o.subject = buildSubject();
    o.subjectAltName = buildSubjectAltNames();
  }
  buildCounterSubjectConfig--;
  return o;
}

void checkSubjectConfig(api.SubjectConfig o) {
  buildCounterSubjectConfig++;
  if (buildCounterSubjectConfig < 3) {
    checkSubject(o.subject! as api.Subject);
    checkSubjectAltNames(o.subjectAltName! as api.SubjectAltNames);
  }
  buildCounterSubjectConfig--;
}

core.int buildCounterSubjectDescription = 0;
api.SubjectDescription buildSubjectDescription() {
  var o = api.SubjectDescription();
  buildCounterSubjectDescription++;
  if (buildCounterSubjectDescription < 3) {
    o.hexSerialNumber = 'foo';
    o.lifetime = 'foo';
    o.notAfterTime = 'foo';
    o.notBeforeTime = 'foo';
    o.subject = buildSubject();
    o.subjectAltName = buildSubjectAltNames();
  }
  buildCounterSubjectDescription--;
  return o;
}

void checkSubjectDescription(api.SubjectDescription o) {
  buildCounterSubjectDescription++;
  if (buildCounterSubjectDescription < 3) {
    unittest.expect(
      o.hexSerialNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lifetime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notAfterTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notBeforeTime!,
      unittest.equals('foo'),
    );
    checkSubject(o.subject! as api.Subject);
    checkSubjectAltNames(o.subjectAltName! as api.SubjectAltNames);
  }
  buildCounterSubjectDescription--;
}

core.int buildCounterSubordinateConfig = 0;
api.SubordinateConfig buildSubordinateConfig() {
  var o = api.SubordinateConfig();
  buildCounterSubordinateConfig++;
  if (buildCounterSubordinateConfig < 3) {
    o.certificateAuthority = 'foo';
    o.pemIssuerChain = buildSubordinateConfigChain();
  }
  buildCounterSubordinateConfig--;
  return o;
}

void checkSubordinateConfig(api.SubordinateConfig o) {
  buildCounterSubordinateConfig++;
  if (buildCounterSubordinateConfig < 3) {
    unittest.expect(
      o.certificateAuthority!,
      unittest.equals('foo'),
    );
    checkSubordinateConfigChain(
        o.pemIssuerChain! as api.SubordinateConfigChain);
  }
  buildCounterSubordinateConfig--;
}

core.List<core.String> buildUnnamed1748() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1748(core.List<core.String> o) {
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

core.int buildCounterSubordinateConfigChain = 0;
api.SubordinateConfigChain buildSubordinateConfigChain() {
  var o = api.SubordinateConfigChain();
  buildCounterSubordinateConfigChain++;
  if (buildCounterSubordinateConfigChain < 3) {
    o.pemCertificates = buildUnnamed1748();
  }
  buildCounterSubordinateConfigChain--;
  return o;
}

void checkSubordinateConfigChain(api.SubordinateConfigChain o) {
  buildCounterSubordinateConfigChain++;
  if (buildCounterSubordinateConfigChain < 3) {
    checkUnnamed1748(o.pemCertificates!);
  }
  buildCounterSubordinateConfigChain--;
}

core.List<core.String> buildUnnamed1749() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1749(core.List<core.String> o) {
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
  var o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed1749();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed1749(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed1750() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1750(core.List<core.String> o) {
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
  var o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed1750();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed1750(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterUndeleteCertificateAuthorityRequest = 0;
api.UndeleteCertificateAuthorityRequest
    buildUndeleteCertificateAuthorityRequest() {
  var o = api.UndeleteCertificateAuthorityRequest();
  buildCounterUndeleteCertificateAuthorityRequest++;
  if (buildCounterUndeleteCertificateAuthorityRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterUndeleteCertificateAuthorityRequest--;
  return o;
}

void checkUndeleteCertificateAuthorityRequest(
    api.UndeleteCertificateAuthorityRequest o) {
  buildCounterUndeleteCertificateAuthorityRequest++;
  if (buildCounterUndeleteCertificateAuthorityRequest < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUndeleteCertificateAuthorityRequest--;
}

core.int buildCounterX509Extension = 0;
api.X509Extension buildX509Extension() {
  var o = api.X509Extension();
  buildCounterX509Extension++;
  if (buildCounterX509Extension < 3) {
    o.critical = true;
    o.objectId = buildObjectId();
    o.value = 'foo';
  }
  buildCounterX509Extension--;
  return o;
}

void checkX509Extension(api.X509Extension o) {
  buildCounterX509Extension++;
  if (buildCounterX509Extension < 3) {
    unittest.expect(o.critical!, unittest.isTrue);
    checkObjectId(o.objectId! as api.ObjectId);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterX509Extension--;
}

core.List<api.X509Extension> buildUnnamed1751() {
  var o = <api.X509Extension>[];
  o.add(buildX509Extension());
  o.add(buildX509Extension());
  return o;
}

void checkUnnamed1751(core.List<api.X509Extension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkX509Extension(o[0] as api.X509Extension);
  checkX509Extension(o[1] as api.X509Extension);
}

core.List<core.String> buildUnnamed1752() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1752(core.List<core.String> o) {
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

core.List<api.ObjectId> buildUnnamed1753() {
  var o = <api.ObjectId>[];
  o.add(buildObjectId());
  o.add(buildObjectId());
  return o;
}

void checkUnnamed1753(core.List<api.ObjectId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectId(o[0] as api.ObjectId);
  checkObjectId(o[1] as api.ObjectId);
}

core.int buildCounterX509Parameters = 0;
api.X509Parameters buildX509Parameters() {
  var o = api.X509Parameters();
  buildCounterX509Parameters++;
  if (buildCounterX509Parameters < 3) {
    o.additionalExtensions = buildUnnamed1751();
    o.aiaOcspServers = buildUnnamed1752();
    o.caOptions = buildCaOptions();
    o.keyUsage = buildKeyUsage();
    o.policyIds = buildUnnamed1753();
  }
  buildCounterX509Parameters--;
  return o;
}

void checkX509Parameters(api.X509Parameters o) {
  buildCounterX509Parameters++;
  if (buildCounterX509Parameters < 3) {
    checkUnnamed1751(o.additionalExtensions!);
    checkUnnamed1752(o.aiaOcspServers!);
    checkCaOptions(o.caOptions! as api.CaOptions);
    checkKeyUsage(o.keyUsage! as api.KeyUsage);
    checkUnnamed1753(o.policyIds!);
  }
  buildCounterX509Parameters--;
}

void main() {
  unittest.group('obj-schema-AccessUrls', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAccessUrls();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.AccessUrls.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAccessUrls(od as api.AccessUrls);
    });
  });

  unittest.group('obj-schema-ActivateCertificateAuthorityRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildActivateCertificateAuthorityRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ActivateCertificateAuthorityRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivateCertificateAuthorityRequest(
          od as api.ActivateCertificateAuthorityRequest);
    });
  });

  unittest.group('obj-schema-AllowedKeyType', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAllowedKeyType();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AllowedKeyType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAllowedKeyType(od as api.AllowedKeyType);
    });
  });

  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAuditConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AuditConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditConfig(od as api.AuditConfig);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAuditLogConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AuditLogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditLogConfig(od as api.AuditLogConfig);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBinding();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Binding.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBinding(od as api.Binding);
    });
  });

  unittest.group('obj-schema-CaOptions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCaOptions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.CaOptions.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCaOptions(od as api.CaOptions);
    });
  });

  unittest.group('obj-schema-CaPool', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCaPool();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.CaPool.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCaPool(od as api.CaPool);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCancelOperationRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od as api.CancelOperationRequest);
    });
  });

  unittest.group('obj-schema-CertChain', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCertChain();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.CertChain.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCertChain(od as api.CertChain);
    });
  });

  unittest.group('obj-schema-Certificate', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCertificate();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Certificate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificate(od as api.Certificate);
    });
  });

  unittest.group('obj-schema-CertificateAuthority', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCertificateAuthority();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CertificateAuthority.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateAuthority(od as api.CertificateAuthority);
    });
  });

  unittest.group('obj-schema-CertificateConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCertificateConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CertificateConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateConfig(od as api.CertificateConfig);
    });
  });

  unittest.group('obj-schema-CertificateDescription', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCertificateDescription();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CertificateDescription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateDescription(od as api.CertificateDescription);
    });
  });

  unittest.group('obj-schema-CertificateExtensionConstraints', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCertificateExtensionConstraints();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CertificateExtensionConstraints.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateExtensionConstraints(
          od as api.CertificateExtensionConstraints);
    });
  });

  unittest.group('obj-schema-CertificateFingerprint', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCertificateFingerprint();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CertificateFingerprint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateFingerprint(od as api.CertificateFingerprint);
    });
  });

  unittest.group('obj-schema-CertificateIdentityConstraints', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCertificateIdentityConstraints();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CertificateIdentityConstraints.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateIdentityConstraints(
          od as api.CertificateIdentityConstraints);
    });
  });

  unittest.group('obj-schema-CertificateRevocationList', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCertificateRevocationList();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CertificateRevocationList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateRevocationList(od as api.CertificateRevocationList);
    });
  });

  unittest.group('obj-schema-CertificateTemplate', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCertificateTemplate();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CertificateTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateTemplate(od as api.CertificateTemplate);
    });
  });

  unittest.group('obj-schema-DisableCertificateAuthorityRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDisableCertificateAuthorityRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DisableCertificateAuthorityRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisableCertificateAuthorityRequest(
          od as api.DisableCertificateAuthorityRequest);
    });
  });

  unittest.group('obj-schema-EcKeyType', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEcKeyType();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.EcKeyType.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEcKeyType(od as api.EcKeyType);
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

  unittest.group('obj-schema-EnableCertificateAuthorityRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEnableCertificateAuthorityRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.EnableCertificateAuthorityRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnableCertificateAuthorityRequest(
          od as api.EnableCertificateAuthorityRequest);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      var o = buildExpr();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Expr.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExpr(od as api.Expr);
    });
  });

  unittest.group('obj-schema-ExtendedKeyUsageOptions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildExtendedKeyUsageOptions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ExtendedKeyUsageOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExtendedKeyUsageOptions(od as api.ExtendedKeyUsageOptions);
    });
  });

  unittest.group('obj-schema-FetchCaCertsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFetchCaCertsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FetchCaCertsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchCaCertsRequest(od as api.FetchCaCertsRequest);
    });
  });

  unittest.group('obj-schema-FetchCaCertsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFetchCaCertsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FetchCaCertsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchCaCertsResponse(od as api.FetchCaCertsResponse);
    });
  });

  unittest.group('obj-schema-FetchCertificateAuthorityCsrResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFetchCertificateAuthorityCsrResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FetchCertificateAuthorityCsrResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchCertificateAuthorityCsrResponse(
          od as api.FetchCertificateAuthorityCsrResponse);
    });
  });

  unittest.group('obj-schema-IssuanceModes', () {
    unittest.test('to-json--from-json', () async {
      var o = buildIssuanceModes();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.IssuanceModes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIssuanceModes(od as api.IssuanceModes);
    });
  });

  unittest.group('obj-schema-IssuancePolicy', () {
    unittest.test('to-json--from-json', () async {
      var o = buildIssuancePolicy();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.IssuancePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIssuancePolicy(od as api.IssuancePolicy);
    });
  });

  unittest.group('obj-schema-KeyId', () {
    unittest.test('to-json--from-json', () async {
      var o = buildKeyId();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.KeyId.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkKeyId(od as api.KeyId);
    });
  });

  unittest.group('obj-schema-KeyUsage', () {
    unittest.test('to-json--from-json', () async {
      var o = buildKeyUsage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.KeyUsage.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkKeyUsage(od as api.KeyUsage);
    });
  });

  unittest.group('obj-schema-KeyUsageOptions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildKeyUsageOptions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.KeyUsageOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKeyUsageOptions(od as api.KeyUsageOptions);
    });
  });

  unittest.group('obj-schema-KeyVersionSpec', () {
    unittest.test('to-json--from-json', () async {
      var o = buildKeyVersionSpec();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.KeyVersionSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKeyVersionSpec(od as api.KeyVersionSpec);
    });
  });

  unittest.group('obj-schema-ListCaPoolsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListCaPoolsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListCaPoolsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCaPoolsResponse(od as api.ListCaPoolsResponse);
    });
  });

  unittest.group('obj-schema-ListCertificateAuthoritiesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListCertificateAuthoritiesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListCertificateAuthoritiesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCertificateAuthoritiesResponse(
          od as api.ListCertificateAuthoritiesResponse);
    });
  });

  unittest.group('obj-schema-ListCertificateRevocationListsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListCertificateRevocationListsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListCertificateRevocationListsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCertificateRevocationListsResponse(
          od as api.ListCertificateRevocationListsResponse);
    });
  });

  unittest.group('obj-schema-ListCertificateTemplatesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListCertificateTemplatesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListCertificateTemplatesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCertificateTemplatesResponse(
          od as api.ListCertificateTemplatesResponse);
    });
  });

  unittest.group('obj-schema-ListCertificatesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListCertificatesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListCertificatesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCertificatesResponse(od as api.ListCertificatesResponse);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListLocationsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLocationsResponse(od as api.ListLocationsResponse);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListOperationsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od as api.ListOperationsResponse);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLocation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od as api.Location);
    });
  });

  unittest.group('obj-schema-ObjectId', () {
    unittest.test('to-json--from-json', () async {
      var o = buildObjectId();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.ObjectId.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkObjectId(od as api.ObjectId);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOperation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-OperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.OperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationMetadata(od as api.OperationMetadata);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPolicy();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od as api.Policy);
    });
  });

  unittest.group('obj-schema-PublicKey', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPublicKey();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.PublicKey.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPublicKey(od as api.PublicKey);
    });
  });

  unittest.group('obj-schema-PublishingOptions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPublishingOptions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PublishingOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPublishingOptions(od as api.PublishingOptions);
    });
  });

  unittest.group('obj-schema-ReconciliationOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildReconciliationOperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ReconciliationOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReconciliationOperationMetadata(
          od as api.ReconciliationOperationMetadata);
    });
  });

  unittest.group('obj-schema-RevocationDetails', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRevocationDetails();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RevocationDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevocationDetails(od as api.RevocationDetails);
    });
  });

  unittest.group('obj-schema-RevokeCertificateRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRevokeCertificateRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RevokeCertificateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevokeCertificateRequest(od as api.RevokeCertificateRequest);
    });
  });

  unittest.group('obj-schema-RevokedCertificate', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRevokedCertificate();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RevokedCertificate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevokedCertificate(od as api.RevokedCertificate);
    });
  });

  unittest.group('obj-schema-RsaKeyType', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRsaKeyType();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.RsaKeyType.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRsaKeyType(od as api.RsaKeyType);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSetIamPolicyRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetIamPolicyRequest(od as api.SetIamPolicyRequest);
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

  unittest.group('obj-schema-Subject', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSubject();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Subject.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSubject(od as api.Subject);
    });
  });

  unittest.group('obj-schema-SubjectAltNames', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSubjectAltNames();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SubjectAltNames.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubjectAltNames(od as api.SubjectAltNames);
    });
  });

  unittest.group('obj-schema-SubjectConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSubjectConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SubjectConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubjectConfig(od as api.SubjectConfig);
    });
  });

  unittest.group('obj-schema-SubjectDescription', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSubjectDescription();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SubjectDescription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubjectDescription(od as api.SubjectDescription);
    });
  });

  unittest.group('obj-schema-SubordinateConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSubordinateConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SubordinateConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubordinateConfig(od as api.SubordinateConfig);
    });
  });

  unittest.group('obj-schema-SubordinateConfigChain', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSubordinateConfigChain();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SubordinateConfigChain.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubordinateConfigChain(od as api.SubordinateConfigChain);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTestIamPermissionsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TestIamPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsRequest(od as api.TestIamPermissionsRequest);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTestIamPermissionsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TestIamPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsResponse(od as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('obj-schema-UndeleteCertificateAuthorityRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUndeleteCertificateAuthorityRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UndeleteCertificateAuthorityRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUndeleteCertificateAuthorityRequest(
          od as api.UndeleteCertificateAuthorityRequest);
    });
  });

  unittest.group('obj-schema-X509Extension', () {
    unittest.test('to-json--from-json', () async {
      var o = buildX509Extension();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.X509Extension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkX509Extension(od as api.X509Extension);
    });
  });

  unittest.group('obj-schema-X509Parameters', () {
    unittest.test('to-json--from-json', () async {
      var o = buildX509Parameters();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.X509Parameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkX509Parameters(od as api.X509Parameters);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock).projects.locations;
      var arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
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
        var resp = convert.json.encode(buildListLocationsResponse());
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

  unittest.group('resource-ProjectsLocationsCaPoolsResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res =
          api.CertificateAuthorityServiceApi(mock).projects.locations.caPools;
      var arg_request = buildCaPool();
      var arg_parent = 'foo';
      var arg_caPoolId = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.CaPool.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCaPool(obj as api.CaPool);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap["caPoolId"]!.first,
          unittest.equals(arg_caPoolId),
        );
        unittest.expect(
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          caPoolId: arg_caPoolId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res =
          api.CertificateAuthorityServiceApi(mock).projects.locations.caPools;
      var arg_name = 'foo';
      var arg_requestId = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--fetchCaCerts', () async {
      var mock = HttpServerMock();
      var res =
          api.CertificateAuthorityServiceApi(mock).projects.locations.caPools;
      var arg_request = buildFetchCaCertsRequest();
      var arg_caPool = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FetchCaCertsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFetchCaCertsRequest(obj as api.FetchCaCertsRequest);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildFetchCaCertsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.fetchCaCerts(arg_request, arg_caPool, $fields: arg_$fields);
      checkFetchCaCertsResponse(response as api.FetchCaCertsResponse);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res =
          api.CertificateAuthorityServiceApi(mock).projects.locations.caPools;
      var arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildCaPool());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCaPool(response as api.CaPool);
    });

    unittest.test('method--getIamPolicy', () async {
      var mock = HttpServerMock();
      var res =
          api.CertificateAuthorityServiceApi(mock).projects.locations.caPools;
      var arg_resource = 'foo';
      var arg_options_requestedPolicyVersion = 42;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          core.int.parse(queryMap["options.requestedPolicyVersion"]!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res =
          api.CertificateAuthorityServiceApi(mock).projects.locations.caPools;
      var arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildListCaPoolsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCaPoolsResponse(response as api.ListCaPoolsResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res =
          api.CertificateAuthorityServiceApi(mock).projects.locations.caPools;
      var arg_request = buildCaPool();
      var arg_name = 'foo';
      var arg_requestId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.CaPool.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCaPool(obj as api.CaPool);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      var mock = HttpServerMock();
      var res =
          api.CertificateAuthorityServiceApi(mock).projects.locations.caPools;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj as api.SetIamPolicyRequest);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      var mock = HttpServerMock();
      var res =
          api.CertificateAuthorityServiceApi(mock).projects.locations.caPools;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsCaPoolsCertificateAuthoritiesResource', () {
    unittest.test('method--activate', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .caPools
          .certificateAuthorities;
      var arg_request = buildActivateCertificateAuthorityRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ActivateCertificateAuthorityRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkActivateCertificateAuthorityRequest(
            obj as api.ActivateCertificateAuthorityRequest);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.activate(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .caPools
          .certificateAuthorities;
      var arg_request = buildCertificateAuthority();
      var arg_parent = 'foo';
      var arg_certificateAuthorityId = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CertificateAuthority.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCertificateAuthority(obj as api.CertificateAuthority);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap["certificateAuthorityId"]!.first,
          unittest.equals(arg_certificateAuthorityId),
        );
        unittest.expect(
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          certificateAuthorityId: arg_certificateAuthorityId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .caPools
          .certificateAuthorities;
      var arg_name = 'foo';
      var arg_ignoreActiveCertificates = true;
      var arg_requestId = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap["ignoreActiveCertificates"]!.first,
          unittest.equals("$arg_ignoreActiveCertificates"),
        );
        unittest.expect(
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          ignoreActiveCertificates: arg_ignoreActiveCertificates,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--disable', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .caPools
          .certificateAuthorities;
      var arg_request = buildDisableCertificateAuthorityRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DisableCertificateAuthorityRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDisableCertificateAuthorityRequest(
            obj as api.DisableCertificateAuthorityRequest);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.disable(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--enable', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .caPools
          .certificateAuthorities;
      var arg_request = buildEnableCertificateAuthorityRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.EnableCertificateAuthorityRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnableCertificateAuthorityRequest(
            obj as api.EnableCertificateAuthorityRequest);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.enable(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--fetch', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .caPools
          .certificateAuthorities;
      var arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp =
            convert.json.encode(buildFetchCertificateAuthorityCsrResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetch(arg_name, $fields: arg_$fields);
      checkFetchCertificateAuthorityCsrResponse(
          response as api.FetchCertificateAuthorityCsrResponse);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .caPools
          .certificateAuthorities;
      var arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildCertificateAuthority());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCertificateAuthority(response as api.CertificateAuthority);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .caPools
          .certificateAuthorities;
      var arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp =
            convert.json.encode(buildListCertificateAuthoritiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCertificateAuthoritiesResponse(
          response as api.ListCertificateAuthoritiesResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .caPools
          .certificateAuthorities;
      var arg_request = buildCertificateAuthority();
      var arg_name = 'foo';
      var arg_requestId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CertificateAuthority.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCertificateAuthority(obj as api.CertificateAuthority);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--undelete', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .caPools
          .certificateAuthorities;
      var arg_request = buildUndeleteCertificateAuthorityRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UndeleteCertificateAuthorityRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUndeleteCertificateAuthorityRequest(
            obj as api.UndeleteCertificateAuthorityRequest);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.undelete(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsCaPoolsCertificateAuthoritiesCertificateRevocationListsResource',
      () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .caPools
          .certificateAuthorities
          .certificateRevocationLists;
      var arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildCertificateRevocationList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCertificateRevocationList(response as api.CertificateRevocationList);
    });

    unittest.test('method--getIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .caPools
          .certificateAuthorities
          .certificateRevocationLists;
      var arg_resource = 'foo';
      var arg_options_requestedPolicyVersion = 42;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          core.int.parse(queryMap["options.requestedPolicyVersion"]!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .caPools
          .certificateAuthorities
          .certificateRevocationLists;
      var arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp =
            convert.json.encode(buildListCertificateRevocationListsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCertificateRevocationListsResponse(
          response as api.ListCertificateRevocationListsResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .caPools
          .certificateAuthorities
          .certificateRevocationLists;
      var arg_request = buildCertificateRevocationList();
      var arg_name = 'foo';
      var arg_requestId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CertificateRevocationList.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCertificateRevocationList(obj as api.CertificateRevocationList);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .caPools
          .certificateAuthorities
          .certificateRevocationLists;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj as api.SetIamPolicyRequest);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .caPools
          .certificateAuthorities
          .certificateRevocationLists;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsCaPoolsCertificatesResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .caPools
          .certificates;
      var arg_request = buildCertificate();
      var arg_parent = 'foo';
      var arg_certificateId = 'foo';
      var arg_issuingCertificateAuthorityId = 'foo';
      var arg_requestId = 'foo';
      var arg_validateOnly = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Certificate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCertificate(obj as api.Certificate);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap["certificateId"]!.first,
          unittest.equals(arg_certificateId),
        );
        unittest.expect(
          queryMap["issuingCertificateAuthorityId"]!.first,
          unittest.equals(arg_issuingCertificateAuthorityId),
        );
        unittest.expect(
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["validateOnly"]!.first,
          unittest.equals("$arg_validateOnly"),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCertificate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          certificateId: arg_certificateId,
          issuingCertificateAuthorityId: arg_issuingCertificateAuthorityId,
          requestId: arg_requestId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkCertificate(response as api.Certificate);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .caPools
          .certificates;
      var arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildCertificate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCertificate(response as api.Certificate);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .caPools
          .certificates;
      var arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildListCertificatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCertificatesResponse(response as api.ListCertificatesResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .caPools
          .certificates;
      var arg_request = buildCertificate();
      var arg_name = 'foo';
      var arg_requestId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Certificate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCertificate(obj as api.Certificate);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCertificate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkCertificate(response as api.Certificate);
    });

    unittest.test('method--revoke', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .caPools
          .certificates;
      var arg_request = buildRevokeCertificateRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RevokeCertificateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRevokeCertificateRequest(obj as api.RevokeCertificateRequest);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildCertificate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.revoke(arg_request, arg_name, $fields: arg_$fields);
      checkCertificate(response as api.Certificate);
    });
  });

  unittest.group('resource-ProjectsLocationsCertificateTemplatesResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateTemplates;
      var arg_request = buildCertificateTemplate();
      var arg_parent = 'foo';
      var arg_certificateTemplateId = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CertificateTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCertificateTemplate(obj as api.CertificateTemplate);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap["certificateTemplateId"]!.first,
          unittest.equals(arg_certificateTemplateId),
        );
        unittest.expect(
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          certificateTemplateId: arg_certificateTemplateId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateTemplates;
      var arg_name = 'foo';
      var arg_requestId = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateTemplates;
      var arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildCertificateTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCertificateTemplate(response as api.CertificateTemplate);
    });

    unittest.test('method--getIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateTemplates;
      var arg_resource = 'foo';
      var arg_options_requestedPolicyVersion = 42;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          core.int.parse(queryMap["options.requestedPolicyVersion"]!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateTemplates;
      var arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildListCertificateTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCertificateTemplatesResponse(
          response as api.ListCertificateTemplatesResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateTemplates;
      var arg_request = buildCertificateTemplate();
      var arg_name = 'foo';
      var arg_requestId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CertificateTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCertificateTemplate(obj as api.CertificateTemplate);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateTemplates;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj as api.SetIamPolicyRequest);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateTemplates;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj as api.CancelOperationRequest);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .operations;
      var arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .operations;
      var arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .operations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
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
        var resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });
}
