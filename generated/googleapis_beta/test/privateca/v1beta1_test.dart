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

import 'package:googleapis_beta/privateca/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccessUrls = 0;
api.AccessUrls buildAccessUrls() {
  var o = api.AccessUrls();
  buildCounterAccessUrls++;
  if (buildCounterAccessUrls < 3) {
    o.caCertificateAccessUrl = 'foo';
    o.crlAccessUrl = 'foo';
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
    unittest.expect(
      o.crlAccessUrl!,
      unittest.equals('foo'),
    );
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

core.List<api.ReusableConfigWrapper> buildUnnamed7907() {
  var o = <api.ReusableConfigWrapper>[];
  o.add(buildReusableConfigWrapper());
  o.add(buildReusableConfigWrapper());
  return o;
}

void checkUnnamed7907(core.List<api.ReusableConfigWrapper> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReusableConfigWrapper(o[0] as api.ReusableConfigWrapper);
  checkReusableConfigWrapper(o[1] as api.ReusableConfigWrapper);
}

core.int buildCounterAllowedConfigList = 0;
api.AllowedConfigList buildAllowedConfigList() {
  var o = api.AllowedConfigList();
  buildCounterAllowedConfigList++;
  if (buildCounterAllowedConfigList < 3) {
    o.allowedConfigValues = buildUnnamed7907();
  }
  buildCounterAllowedConfigList--;
  return o;
}

void checkAllowedConfigList(api.AllowedConfigList o) {
  buildCounterAllowedConfigList++;
  if (buildCounterAllowedConfigList < 3) {
    checkUnnamed7907(o.allowedConfigValues!);
  }
  buildCounterAllowedConfigList--;
}

core.List<core.String> buildUnnamed7908() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7908(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7909() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7909(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7910() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7910(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7911() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7911(core.List<core.String> o) {
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

core.int buildCounterAllowedSubjectAltNames = 0;
api.AllowedSubjectAltNames buildAllowedSubjectAltNames() {
  var o = api.AllowedSubjectAltNames();
  buildCounterAllowedSubjectAltNames++;
  if (buildCounterAllowedSubjectAltNames < 3) {
    o.allowCustomSans = true;
    o.allowGlobbingDnsWildcards = true;
    o.allowedDnsNames = buildUnnamed7908();
    o.allowedEmailAddresses = buildUnnamed7909();
    o.allowedIps = buildUnnamed7910();
    o.allowedUris = buildUnnamed7911();
  }
  buildCounterAllowedSubjectAltNames--;
  return o;
}

void checkAllowedSubjectAltNames(api.AllowedSubjectAltNames o) {
  buildCounterAllowedSubjectAltNames++;
  if (buildCounterAllowedSubjectAltNames < 3) {
    unittest.expect(o.allowCustomSans!, unittest.isTrue);
    unittest.expect(o.allowGlobbingDnsWildcards!, unittest.isTrue);
    checkUnnamed7908(o.allowedDnsNames!);
    checkUnnamed7909(o.allowedEmailAddresses!);
    checkUnnamed7910(o.allowedIps!);
    checkUnnamed7911(o.allowedUris!);
  }
  buildCounterAllowedSubjectAltNames--;
}

core.List<api.AuditLogConfig> buildUnnamed7912() {
  var o = <api.AuditLogConfig>[];
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

void checkUnnamed7912(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0] as api.AuditLogConfig);
  checkAuditLogConfig(o[1] as api.AuditLogConfig);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  var o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed7912();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed7912(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed7913() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7913(core.List<core.String> o) {
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
    o.exemptedMembers = buildUnnamed7913();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed7913(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.List<core.String> buildUnnamed7914() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7914(core.List<core.String> o) {
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
    o.members = buildUnnamed7914();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition! as api.Expr);
    checkUnnamed7914(o.members!);
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

core.Map<core.String, core.String> buildUnnamed7915() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7915(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed7916() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7916(core.List<core.String> o) {
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
    o.config = buildCertificateConfig();
    o.createTime = 'foo';
    o.labels = buildUnnamed7915();
    o.lifetime = 'foo';
    o.name = 'foo';
    o.pemCertificate = 'foo';
    o.pemCertificateChain = buildUnnamed7916();
    o.pemCsr = 'foo';
    o.revocationDetails = buildRevocationDetails();
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
    checkCertificateConfig(o.config! as api.CertificateConfig);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed7915(o.labels!);
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
    checkUnnamed7916(o.pemCertificateChain!);
    unittest.expect(
      o.pemCsr!,
      unittest.equals('foo'),
    );
    checkRevocationDetails(o.revocationDetails! as api.RevocationDetails);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCertificate--;
}

core.List<api.CertificateDescription> buildUnnamed7917() {
  var o = <api.CertificateDescription>[];
  o.add(buildCertificateDescription());
  o.add(buildCertificateDescription());
  return o;
}

void checkUnnamed7917(core.List<api.CertificateDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertificateDescription(o[0] as api.CertificateDescription);
  checkCertificateDescription(o[1] as api.CertificateDescription);
}

core.Map<core.String, core.String> buildUnnamed7918() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7918(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed7919() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7919(core.List<core.String> o) {
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
    o.caCertificateDescriptions = buildUnnamed7917();
    o.certificatePolicy = buildCertificateAuthorityPolicy();
    o.config = buildCertificateConfig();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.gcsBucket = 'foo';
    o.issuingOptions = buildIssuingOptions();
    o.keySpec = buildKeyVersionSpec();
    o.labels = buildUnnamed7918();
    o.lifetime = 'foo';
    o.name = 'foo';
    o.pemCaCertificates = buildUnnamed7919();
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
    checkUnnamed7917(o.caCertificateDescriptions!);
    checkCertificateAuthorityPolicy(
        o.certificatePolicy! as api.CertificateAuthorityPolicy);
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
      o.gcsBucket!,
      unittest.equals('foo'),
    );
    checkIssuingOptions(o.issuingOptions! as api.IssuingOptions);
    checkKeyVersionSpec(o.keySpec! as api.KeyVersionSpec);
    checkUnnamed7918(o.labels!);
    unittest.expect(
      o.lifetime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed7919(o.pemCaCertificates!);
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

core.List<core.String> buildUnnamed7920() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7920(core.List<core.String> o) {
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

core.List<api.Subject> buildUnnamed7921() {
  var o = <api.Subject>[];
  o.add(buildSubject());
  o.add(buildSubject());
  return o;
}

void checkUnnamed7921(core.List<api.Subject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubject(o[0] as api.Subject);
  checkSubject(o[1] as api.Subject);
}

core.int buildCounterCertificateAuthorityPolicy = 0;
api.CertificateAuthorityPolicy buildCertificateAuthorityPolicy() {
  var o = api.CertificateAuthorityPolicy();
  buildCounterCertificateAuthorityPolicy++;
  if (buildCounterCertificateAuthorityPolicy < 3) {
    o.allowedCommonNames = buildUnnamed7920();
    o.allowedConfigList = buildAllowedConfigList();
    o.allowedIssuanceModes = buildIssuanceModes();
    o.allowedLocationsAndOrganizations = buildUnnamed7921();
    o.allowedSans = buildAllowedSubjectAltNames();
    o.maximumLifetime = 'foo';
    o.overwriteConfigValues = buildReusableConfigWrapper();
  }
  buildCounterCertificateAuthorityPolicy--;
  return o;
}

void checkCertificateAuthorityPolicy(api.CertificateAuthorityPolicy o) {
  buildCounterCertificateAuthorityPolicy++;
  if (buildCounterCertificateAuthorityPolicy < 3) {
    checkUnnamed7920(o.allowedCommonNames!);
    checkAllowedConfigList(o.allowedConfigList! as api.AllowedConfigList);
    checkIssuanceModes(o.allowedIssuanceModes! as api.IssuanceModes);
    checkUnnamed7921(o.allowedLocationsAndOrganizations!);
    checkAllowedSubjectAltNames(o.allowedSans! as api.AllowedSubjectAltNames);
    unittest.expect(
      o.maximumLifetime!,
      unittest.equals('foo'),
    );
    checkReusableConfigWrapper(
        o.overwriteConfigValues! as api.ReusableConfigWrapper);
  }
  buildCounterCertificateAuthorityPolicy--;
}

core.int buildCounterCertificateConfig = 0;
api.CertificateConfig buildCertificateConfig() {
  var o = api.CertificateConfig();
  buildCounterCertificateConfig++;
  if (buildCounterCertificateConfig < 3) {
    o.publicKey = buildPublicKey();
    o.reusableConfig = buildReusableConfigWrapper();
    o.subjectConfig = buildSubjectConfig();
  }
  buildCounterCertificateConfig--;
  return o;
}

void checkCertificateConfig(api.CertificateConfig o) {
  buildCounterCertificateConfig++;
  if (buildCounterCertificateConfig < 3) {
    checkPublicKey(o.publicKey! as api.PublicKey);
    checkReusableConfigWrapper(o.reusableConfig! as api.ReusableConfigWrapper);
    checkSubjectConfig(o.subjectConfig! as api.SubjectConfig);
  }
  buildCounterCertificateConfig--;
}

core.List<core.String> buildUnnamed7922() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7922(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7923() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7923(core.List<core.String> o) {
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
    o.aiaIssuingCertificateUrls = buildUnnamed7922();
    o.authorityKeyId = buildKeyId();
    o.certFingerprint = buildCertificateFingerprint();
    o.configValues = buildReusableConfigValues();
    o.crlDistributionPoints = buildUnnamed7923();
    o.publicKey = buildPublicKey();
    o.subjectDescription = buildSubjectDescription();
    o.subjectKeyId = buildKeyId();
  }
  buildCounterCertificateDescription--;
  return o;
}

void checkCertificateDescription(api.CertificateDescription o) {
  buildCounterCertificateDescription++;
  if (buildCounterCertificateDescription < 3) {
    checkUnnamed7922(o.aiaIssuingCertificateUrls!);
    checkKeyId(o.authorityKeyId! as api.KeyId);
    checkCertificateFingerprint(
        o.certFingerprint! as api.CertificateFingerprint);
    checkReusableConfigValues(o.configValues! as api.ReusableConfigValues);
    checkUnnamed7923(o.crlDistributionPoints!);
    checkPublicKey(o.publicKey! as api.PublicKey);
    checkSubjectDescription(o.subjectDescription! as api.SubjectDescription);
    checkKeyId(o.subjectKeyId! as api.KeyId);
  }
  buildCounterCertificateDescription--;
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

core.Map<core.String, core.String> buildUnnamed7924() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7924(core.Map<core.String, core.String> o) {
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

core.List<api.RevokedCertificate> buildUnnamed7925() {
  var o = <api.RevokedCertificate>[];
  o.add(buildRevokedCertificate());
  o.add(buildRevokedCertificate());
  return o;
}

void checkUnnamed7925(core.List<api.RevokedCertificate> o) {
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
    o.labels = buildUnnamed7924();
    o.name = 'foo';
    o.pemCrl = 'foo';
    o.revokedCertificates = buildUnnamed7925();
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
    checkUnnamed7924(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pemCrl!,
      unittest.equals('foo'),
    );
    checkUnnamed7925(o.revokedCertificates!);
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

core.int buildCounterIssuingOptions = 0;
api.IssuingOptions buildIssuingOptions() {
  var o = api.IssuingOptions();
  buildCounterIssuingOptions++;
  if (buildCounterIssuingOptions < 3) {
    o.includeCaCertUrl = true;
    o.includeCrlAccessUrl = true;
  }
  buildCounterIssuingOptions--;
  return o;
}

void checkIssuingOptions(api.IssuingOptions o) {
  buildCounterIssuingOptions++;
  if (buildCounterIssuingOptions < 3) {
    unittest.expect(o.includeCaCertUrl!, unittest.isTrue);
    unittest.expect(o.includeCrlAccessUrl!, unittest.isTrue);
  }
  buildCounterIssuingOptions--;
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

core.List<api.ObjectId> buildUnnamed7926() {
  var o = <api.ObjectId>[];
  o.add(buildObjectId());
  o.add(buildObjectId());
  return o;
}

void checkUnnamed7926(core.List<api.ObjectId> o) {
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
    o.unknownExtendedKeyUsages = buildUnnamed7926();
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
    checkUnnamed7926(o.unknownExtendedKeyUsages!);
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

core.List<api.CertificateAuthority> buildUnnamed7927() {
  var o = <api.CertificateAuthority>[];
  o.add(buildCertificateAuthority());
  o.add(buildCertificateAuthority());
  return o;
}

void checkUnnamed7927(core.List<api.CertificateAuthority> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertificateAuthority(o[0] as api.CertificateAuthority);
  checkCertificateAuthority(o[1] as api.CertificateAuthority);
}

core.List<core.String> buildUnnamed7928() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7928(core.List<core.String> o) {
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
    o.certificateAuthorities = buildUnnamed7927();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed7928();
  }
  buildCounterListCertificateAuthoritiesResponse--;
  return o;
}

void checkListCertificateAuthoritiesResponse(
    api.ListCertificateAuthoritiesResponse o) {
  buildCounterListCertificateAuthoritiesResponse++;
  if (buildCounterListCertificateAuthoritiesResponse < 3) {
    checkUnnamed7927(o.certificateAuthorities!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7928(o.unreachable!);
  }
  buildCounterListCertificateAuthoritiesResponse--;
}

core.List<api.CertificateRevocationList> buildUnnamed7929() {
  var o = <api.CertificateRevocationList>[];
  o.add(buildCertificateRevocationList());
  o.add(buildCertificateRevocationList());
  return o;
}

void checkUnnamed7929(core.List<api.CertificateRevocationList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertificateRevocationList(o[0] as api.CertificateRevocationList);
  checkCertificateRevocationList(o[1] as api.CertificateRevocationList);
}

core.List<core.String> buildUnnamed7930() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7930(core.List<core.String> o) {
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
    o.certificateRevocationLists = buildUnnamed7929();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed7930();
  }
  buildCounterListCertificateRevocationListsResponse--;
  return o;
}

void checkListCertificateRevocationListsResponse(
    api.ListCertificateRevocationListsResponse o) {
  buildCounterListCertificateRevocationListsResponse++;
  if (buildCounterListCertificateRevocationListsResponse < 3) {
    checkUnnamed7929(o.certificateRevocationLists!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7930(o.unreachable!);
  }
  buildCounterListCertificateRevocationListsResponse--;
}

core.List<api.Certificate> buildUnnamed7931() {
  var o = <api.Certificate>[];
  o.add(buildCertificate());
  o.add(buildCertificate());
  return o;
}

void checkUnnamed7931(core.List<api.Certificate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertificate(o[0] as api.Certificate);
  checkCertificate(o[1] as api.Certificate);
}

core.List<core.String> buildUnnamed7932() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7932(core.List<core.String> o) {
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
    o.certificates = buildUnnamed7931();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed7932();
  }
  buildCounterListCertificatesResponse--;
  return o;
}

void checkListCertificatesResponse(api.ListCertificatesResponse o) {
  buildCounterListCertificatesResponse++;
  if (buildCounterListCertificatesResponse < 3) {
    checkUnnamed7931(o.certificates!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7932(o.unreachable!);
  }
  buildCounterListCertificatesResponse--;
}

core.List<api.Location> buildUnnamed7933() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed7933(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0] as api.Location);
  checkLocation(o[1] as api.Location);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  var o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed7933();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed7933(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed7934() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed7934(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed7934();
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
    checkUnnamed7934(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.ReusableConfig> buildUnnamed7935() {
  var o = <api.ReusableConfig>[];
  o.add(buildReusableConfig());
  o.add(buildReusableConfig());
  return o;
}

void checkUnnamed7935(core.List<api.ReusableConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReusableConfig(o[0] as api.ReusableConfig);
  checkReusableConfig(o[1] as api.ReusableConfig);
}

core.List<core.String> buildUnnamed7936() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7936(core.List<core.String> o) {
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

core.int buildCounterListReusableConfigsResponse = 0;
api.ListReusableConfigsResponse buildListReusableConfigsResponse() {
  var o = api.ListReusableConfigsResponse();
  buildCounterListReusableConfigsResponse++;
  if (buildCounterListReusableConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.reusableConfigs = buildUnnamed7935();
    o.unreachable = buildUnnamed7936();
  }
  buildCounterListReusableConfigsResponse--;
  return o;
}

void checkListReusableConfigsResponse(api.ListReusableConfigsResponse o) {
  buildCounterListReusableConfigsResponse++;
  if (buildCounterListReusableConfigsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7935(o.reusableConfigs!);
    checkUnnamed7936(o.unreachable!);
  }
  buildCounterListReusableConfigsResponse--;
}

core.Map<core.String, core.String> buildUnnamed7937() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7937(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed7938() {
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

void checkUnnamed7938(core.Map<core.String, core.Object> o) {
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
    o.labels = buildUnnamed7937();
    o.locationId = 'foo';
    o.metadata = buildUnnamed7938();
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
    checkUnnamed7937(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed7938(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.List<core.int> buildUnnamed7939() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed7939(core.List<core.int> o) {
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
    o.objectIdPath = buildUnnamed7939();
  }
  buildCounterObjectId--;
  return o;
}

void checkObjectId(api.ObjectId o) {
  buildCounterObjectId++;
  if (buildCounterObjectId < 3) {
    checkUnnamed7939(o.objectIdPath!);
  }
  buildCounterObjectId--;
}

core.Map<core.String, core.Object> buildUnnamed7940() {
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

void checkUnnamed7940(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed7941() {
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

void checkUnnamed7941(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed7940();
    o.name = 'foo';
    o.response = buildUnnamed7941();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error! as api.Status);
    checkUnnamed7940(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed7941(o.response!);
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

core.List<api.AuditConfig> buildUnnamed7942() {
  var o = <api.AuditConfig>[];
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

void checkUnnamed7942(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0] as api.AuditConfig);
  checkAuditConfig(o[1] as api.AuditConfig);
}

core.List<api.Binding> buildUnnamed7943() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed7943(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0] as api.Binding);
  checkBinding(o[1] as api.Binding);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed7942();
    o.bindings = buildUnnamed7943();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed7942(o.auditConfigs!);
    checkUnnamed7943(o.bindings!);
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
    o.key = 'foo';
    o.type = 'foo';
  }
  buildCounterPublicKey--;
  return o;
}

void checkPublicKey(api.PublicKey o) {
  buildCounterPublicKey++;
  if (buildCounterPublicKey < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterPublicKey--;
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

core.int buildCounterRestoreCertificateAuthorityRequest = 0;
api.RestoreCertificateAuthorityRequest
    buildRestoreCertificateAuthorityRequest() {
  var o = api.RestoreCertificateAuthorityRequest();
  buildCounterRestoreCertificateAuthorityRequest++;
  if (buildCounterRestoreCertificateAuthorityRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterRestoreCertificateAuthorityRequest--;
  return o;
}

void checkRestoreCertificateAuthorityRequest(
    api.RestoreCertificateAuthorityRequest o) {
  buildCounterRestoreCertificateAuthorityRequest++;
  if (buildCounterRestoreCertificateAuthorityRequest < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRestoreCertificateAuthorityRequest--;
}

core.Map<core.String, core.String> buildUnnamed7944() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7944(core.Map<core.String, core.String> o) {
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

core.int buildCounterReusableConfig = 0;
api.ReusableConfig buildReusableConfig() {
  var o = api.ReusableConfig();
  buildCounterReusableConfig++;
  if (buildCounterReusableConfig < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed7944();
    o.name = 'foo';
    o.updateTime = 'foo';
    o.values = buildReusableConfigValues();
  }
  buildCounterReusableConfig--;
  return o;
}

void checkReusableConfig(api.ReusableConfig o) {
  buildCounterReusableConfig++;
  if (buildCounterReusableConfig < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed7944(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkReusableConfigValues(o.values! as api.ReusableConfigValues);
  }
  buildCounterReusableConfig--;
}

core.List<api.X509Extension> buildUnnamed7945() {
  var o = <api.X509Extension>[];
  o.add(buildX509Extension());
  o.add(buildX509Extension());
  return o;
}

void checkUnnamed7945(core.List<api.X509Extension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkX509Extension(o[0] as api.X509Extension);
  checkX509Extension(o[1] as api.X509Extension);
}

core.List<core.String> buildUnnamed7946() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7946(core.List<core.String> o) {
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

core.List<api.ObjectId> buildUnnamed7947() {
  var o = <api.ObjectId>[];
  o.add(buildObjectId());
  o.add(buildObjectId());
  return o;
}

void checkUnnamed7947(core.List<api.ObjectId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectId(o[0] as api.ObjectId);
  checkObjectId(o[1] as api.ObjectId);
}

core.int buildCounterReusableConfigValues = 0;
api.ReusableConfigValues buildReusableConfigValues() {
  var o = api.ReusableConfigValues();
  buildCounterReusableConfigValues++;
  if (buildCounterReusableConfigValues < 3) {
    o.additionalExtensions = buildUnnamed7945();
    o.aiaOcspServers = buildUnnamed7946();
    o.caOptions = buildCaOptions();
    o.keyUsage = buildKeyUsage();
    o.policyIds = buildUnnamed7947();
  }
  buildCounterReusableConfigValues--;
  return o;
}

void checkReusableConfigValues(api.ReusableConfigValues o) {
  buildCounterReusableConfigValues++;
  if (buildCounterReusableConfigValues < 3) {
    checkUnnamed7945(o.additionalExtensions!);
    checkUnnamed7946(o.aiaOcspServers!);
    checkCaOptions(o.caOptions! as api.CaOptions);
    checkKeyUsage(o.keyUsage! as api.KeyUsage);
    checkUnnamed7947(o.policyIds!);
  }
  buildCounterReusableConfigValues--;
}

core.int buildCounterReusableConfigWrapper = 0;
api.ReusableConfigWrapper buildReusableConfigWrapper() {
  var o = api.ReusableConfigWrapper();
  buildCounterReusableConfigWrapper++;
  if (buildCounterReusableConfigWrapper < 3) {
    o.reusableConfig = 'foo';
    o.reusableConfigValues = buildReusableConfigValues();
  }
  buildCounterReusableConfigWrapper--;
  return o;
}

void checkReusableConfigWrapper(api.ReusableConfigWrapper o) {
  buildCounterReusableConfigWrapper++;
  if (buildCounterReusableConfigWrapper < 3) {
    unittest.expect(
      o.reusableConfig!,
      unittest.equals('foo'),
    );
    checkReusableConfigValues(
        o.reusableConfigValues! as api.ReusableConfigValues);
  }
  buildCounterReusableConfigWrapper--;
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

core.int buildCounterScheduleDeleteCertificateAuthorityRequest = 0;
api.ScheduleDeleteCertificateAuthorityRequest
    buildScheduleDeleteCertificateAuthorityRequest() {
  var o = api.ScheduleDeleteCertificateAuthorityRequest();
  buildCounterScheduleDeleteCertificateAuthorityRequest++;
  if (buildCounterScheduleDeleteCertificateAuthorityRequest < 3) {
    o.ignoreActiveCertificates = true;
    o.requestId = 'foo';
  }
  buildCounterScheduleDeleteCertificateAuthorityRequest--;
  return o;
}

void checkScheduleDeleteCertificateAuthorityRequest(
    api.ScheduleDeleteCertificateAuthorityRequest o) {
  buildCounterScheduleDeleteCertificateAuthorityRequest++;
  if (buildCounterScheduleDeleteCertificateAuthorityRequest < 3) {
    unittest.expect(o.ignoreActiveCertificates!, unittest.isTrue);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterScheduleDeleteCertificateAuthorityRequest--;
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

core.Map<core.String, core.Object> buildUnnamed7948() {
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

void checkUnnamed7948(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed7949() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed7948());
  o.add(buildUnnamed7948());
  return o;
}

void checkUnnamed7949(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7948(o[0]);
  checkUnnamed7948(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed7949();
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
    checkUnnamed7949(o.details!);
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

core.List<api.X509Extension> buildUnnamed7950() {
  var o = <api.X509Extension>[];
  o.add(buildX509Extension());
  o.add(buildX509Extension());
  return o;
}

void checkUnnamed7950(core.List<api.X509Extension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkX509Extension(o[0] as api.X509Extension);
  checkX509Extension(o[1] as api.X509Extension);
}

core.List<core.String> buildUnnamed7951() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7951(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7952() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7952(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7953() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7953(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7954() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7954(core.List<core.String> o) {
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
    o.customSans = buildUnnamed7950();
    o.dnsNames = buildUnnamed7951();
    o.emailAddresses = buildUnnamed7952();
    o.ipAddresses = buildUnnamed7953();
    o.uris = buildUnnamed7954();
  }
  buildCounterSubjectAltNames--;
  return o;
}

void checkSubjectAltNames(api.SubjectAltNames o) {
  buildCounterSubjectAltNames++;
  if (buildCounterSubjectAltNames < 3) {
    checkUnnamed7950(o.customSans!);
    checkUnnamed7951(o.dnsNames!);
    checkUnnamed7952(o.emailAddresses!);
    checkUnnamed7953(o.ipAddresses!);
    checkUnnamed7954(o.uris!);
  }
  buildCounterSubjectAltNames--;
}

core.int buildCounterSubjectConfig = 0;
api.SubjectConfig buildSubjectConfig() {
  var o = api.SubjectConfig();
  buildCounterSubjectConfig++;
  if (buildCounterSubjectConfig < 3) {
    o.commonName = 'foo';
    o.subject = buildSubject();
    o.subjectAltName = buildSubjectAltNames();
  }
  buildCounterSubjectConfig--;
  return o;
}

void checkSubjectConfig(api.SubjectConfig o) {
  buildCounterSubjectConfig++;
  if (buildCounterSubjectConfig < 3) {
    unittest.expect(
      o.commonName!,
      unittest.equals('foo'),
    );
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
    o.commonName = 'foo';
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
      o.commonName!,
      unittest.equals('foo'),
    );
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

core.List<core.String> buildUnnamed7955() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7955(core.List<core.String> o) {
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
    o.pemCertificates = buildUnnamed7955();
  }
  buildCounterSubordinateConfigChain--;
  return o;
}

void checkSubordinateConfigChain(api.SubordinateConfigChain o) {
  buildCounterSubordinateConfigChain++;
  if (buildCounterSubordinateConfigChain < 3) {
    checkUnnamed7955(o.pemCertificates!);
  }
  buildCounterSubordinateConfigChain--;
}

core.List<core.String> buildUnnamed7956() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7956(core.List<core.String> o) {
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
    o.permissions = buildUnnamed7956();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed7956(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed7957() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7957(core.List<core.String> o) {
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
    o.permissions = buildUnnamed7957();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed7957(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
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

  unittest.group('obj-schema-AllowedConfigList', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAllowedConfigList();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AllowedConfigList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAllowedConfigList(od as api.AllowedConfigList);
    });
  });

  unittest.group('obj-schema-AllowedSubjectAltNames', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAllowedSubjectAltNames();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AllowedSubjectAltNames.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAllowedSubjectAltNames(od as api.AllowedSubjectAltNames);
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

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCancelOperationRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od as api.CancelOperationRequest);
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

  unittest.group('obj-schema-CertificateAuthorityPolicy', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCertificateAuthorityPolicy();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CertificateAuthorityPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateAuthorityPolicy(od as api.CertificateAuthorityPolicy);
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

  unittest.group('obj-schema-CertificateFingerprint', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCertificateFingerprint();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CertificateFingerprint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateFingerprint(od as api.CertificateFingerprint);
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

  unittest.group('obj-schema-IssuingOptions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildIssuingOptions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.IssuingOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIssuingOptions(od as api.IssuingOptions);
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

  unittest.group('obj-schema-ListReusableConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListReusableConfigsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListReusableConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListReusableConfigsResponse(od as api.ListReusableConfigsResponse);
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

  unittest.group('obj-schema-RestoreCertificateAuthorityRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRestoreCertificateAuthorityRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RestoreCertificateAuthorityRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRestoreCertificateAuthorityRequest(
          od as api.RestoreCertificateAuthorityRequest);
    });
  });

  unittest.group('obj-schema-ReusableConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildReusableConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ReusableConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReusableConfig(od as api.ReusableConfig);
    });
  });

  unittest.group('obj-schema-ReusableConfigValues', () {
    unittest.test('to-json--from-json', () async {
      var o = buildReusableConfigValues();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ReusableConfigValues.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReusableConfigValues(od as api.ReusableConfigValues);
    });
  });

  unittest.group('obj-schema-ReusableConfigWrapper', () {
    unittest.test('to-json--from-json', () async {
      var o = buildReusableConfigWrapper();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ReusableConfigWrapper.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReusableConfigWrapper(od as api.ReusableConfigWrapper);
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

  unittest.group('obj-schema-ScheduleDeleteCertificateAuthorityRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildScheduleDeleteCertificateAuthorityRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ScheduleDeleteCertificateAuthorityRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScheduleDeleteCertificateAuthorityRequest(
          od as api.ScheduleDeleteCertificateAuthorityRequest);
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

  unittest.group('obj-schema-X509Extension', () {
    unittest.test('to-json--from-json', () async {
      var o = buildX509Extension();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.X509Extension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkX509Extension(od as api.X509Extension);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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

  unittest.group('resource-ProjectsLocationsCertificateAuthoritiesResource',
      () {
    unittest.test('method--activate', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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

    unittest.test('method--disable', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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

    unittest.test('method--getIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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

    unittest.test('method--restore', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
      var arg_request = buildRestoreCertificateAuthorityRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RestoreCertificateAuthorityRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRestoreCertificateAuthorityRequest(
            obj as api.RestoreCertificateAuthorityRequest);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          await res.restore(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--scheduleDelete', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
      var arg_request = buildScheduleDeleteCertificateAuthorityRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ScheduleDeleteCertificateAuthorityRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkScheduleDeleteCertificateAuthorityRequest(
            obj as api.ScheduleDeleteCertificateAuthorityRequest);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          await res.scheduleDelete(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          .certificateAuthorities;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
      'resource-ProjectsLocationsCertificateAuthoritiesCertificateRevocationListsResource',
      () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
      'resource-ProjectsLocationsCertificateAuthoritiesCertificatesResource',
      () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificates;
      var arg_request = buildCertificate();
      var arg_parent = 'foo';
      var arg_certificateId = 'foo';
      var arg_requestId = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildCertificate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          certificateId: arg_certificateId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkCertificate(response as api.Certificate);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          .certificateAuthorities
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          .certificateAuthorities
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          .certificateAuthorities
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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

  unittest.group('resource-ProjectsLocationsReusableConfigsResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .reusableConfigs;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildReusableConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkReusableConfig(response as api.ReusableConfig);
    });

    unittest.test('method--getIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .reusableConfigs;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          .reusableConfigs;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListReusableConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListReusableConfigsResponse(
          response as api.ListReusableConfigsResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .reusableConfigs;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          .reusableConfigs;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
}
