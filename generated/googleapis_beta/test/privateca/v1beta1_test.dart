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

import 'package:googleapis_beta/privateca/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccessUrls = 0;
api.AccessUrls buildAccessUrls() {
  final o = api.AccessUrls();
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
  final o = api.ActivateCertificateAuthorityRequest();
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
    checkSubordinateConfig(o.subordinateConfig!);
  }
  buildCounterActivateCertificateAuthorityRequest--;
}

core.List<api.ReusableConfigWrapper> buildUnnamed8342() => [
      buildReusableConfigWrapper(),
      buildReusableConfigWrapper(),
    ];

void checkUnnamed8342(core.List<api.ReusableConfigWrapper> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReusableConfigWrapper(o[0]);
  checkReusableConfigWrapper(o[1]);
}

core.int buildCounterAllowedConfigList = 0;
api.AllowedConfigList buildAllowedConfigList() {
  final o = api.AllowedConfigList();
  buildCounterAllowedConfigList++;
  if (buildCounterAllowedConfigList < 3) {
    o.allowedConfigValues = buildUnnamed8342();
  }
  buildCounterAllowedConfigList--;
  return o;
}

void checkAllowedConfigList(api.AllowedConfigList o) {
  buildCounterAllowedConfigList++;
  if (buildCounterAllowedConfigList < 3) {
    checkUnnamed8342(o.allowedConfigValues!);
  }
  buildCounterAllowedConfigList--;
}

core.List<core.String> buildUnnamed8343() => [
      'foo',
      'foo',
    ];

void checkUnnamed8343(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8344() => [
      'foo',
      'foo',
    ];

void checkUnnamed8344(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8345() => [
      'foo',
      'foo',
    ];

void checkUnnamed8345(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8346() => [
      'foo',
      'foo',
    ];

void checkUnnamed8346(core.List<core.String> o) {
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
  final o = api.AllowedSubjectAltNames();
  buildCounterAllowedSubjectAltNames++;
  if (buildCounterAllowedSubjectAltNames < 3) {
    o.allowCustomSans = true;
    o.allowGlobbingDnsWildcards = true;
    o.allowedDnsNames = buildUnnamed8343();
    o.allowedEmailAddresses = buildUnnamed8344();
    o.allowedIps = buildUnnamed8345();
    o.allowedUris = buildUnnamed8346();
  }
  buildCounterAllowedSubjectAltNames--;
  return o;
}

void checkAllowedSubjectAltNames(api.AllowedSubjectAltNames o) {
  buildCounterAllowedSubjectAltNames++;
  if (buildCounterAllowedSubjectAltNames < 3) {
    unittest.expect(o.allowCustomSans!, unittest.isTrue);
    unittest.expect(o.allowGlobbingDnsWildcards!, unittest.isTrue);
    checkUnnamed8343(o.allowedDnsNames!);
    checkUnnamed8344(o.allowedEmailAddresses!);
    checkUnnamed8345(o.allowedIps!);
    checkUnnamed8346(o.allowedUris!);
  }
  buildCounterAllowedSubjectAltNames--;
}

core.List<api.AuditLogConfig> buildUnnamed8347() => [
      buildAuditLogConfig(),
      buildAuditLogConfig(),
    ];

void checkUnnamed8347(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed8347();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed8347(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed8348() => [
      'foo',
      'foo',
    ];

void checkUnnamed8348(core.List<core.String> o) {
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
    o.exemptedMembers = buildUnnamed8348();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed8348(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.List<core.String> buildUnnamed8349() => [
      'foo',
      'foo',
    ];

void checkUnnamed8349(core.List<core.String> o) {
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
    o.members = buildUnnamed8349();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed8349(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.int buildCounterCaOptions = 0;
api.CaOptions buildCaOptions() {
  final o = api.CaOptions();
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
  final o = api.CancelOperationRequest();
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

core.Map<core.String, core.String> buildUnnamed8350() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8350(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed8351() => [
      'foo',
      'foo',
    ];

void checkUnnamed8351(core.List<core.String> o) {
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
  final o = api.Certificate();
  buildCounterCertificate++;
  if (buildCounterCertificate < 3) {
    o.certificateDescription = buildCertificateDescription();
    o.config = buildCertificateConfig();
    o.createTime = 'foo';
    o.labels = buildUnnamed8350();
    o.lifetime = 'foo';
    o.name = 'foo';
    o.pemCertificate = 'foo';
    o.pemCertificateChain = buildUnnamed8351();
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
    checkCertificateDescription(o.certificateDescription!);
    checkCertificateConfig(o.config!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed8350(o.labels!);
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
    checkUnnamed8351(o.pemCertificateChain!);
    unittest.expect(
      o.pemCsr!,
      unittest.equals('foo'),
    );
    checkRevocationDetails(o.revocationDetails!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCertificate--;
}

core.List<api.CertificateDescription> buildUnnamed8352() => [
      buildCertificateDescription(),
      buildCertificateDescription(),
    ];

void checkUnnamed8352(core.List<api.CertificateDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertificateDescription(o[0]);
  checkCertificateDescription(o[1]);
}

core.Map<core.String, core.String> buildUnnamed8353() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8353(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed8354() => [
      'foo',
      'foo',
    ];

void checkUnnamed8354(core.List<core.String> o) {
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
  final o = api.CertificateAuthority();
  buildCounterCertificateAuthority++;
  if (buildCounterCertificateAuthority < 3) {
    o.accessUrls = buildAccessUrls();
    o.caCertificateDescriptions = buildUnnamed8352();
    o.certificatePolicy = buildCertificateAuthorityPolicy();
    o.config = buildCertificateConfig();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.gcsBucket = 'foo';
    o.issuingOptions = buildIssuingOptions();
    o.keySpec = buildKeyVersionSpec();
    o.labels = buildUnnamed8353();
    o.lifetime = 'foo';
    o.name = 'foo';
    o.pemCaCertificates = buildUnnamed8354();
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
    checkAccessUrls(o.accessUrls!);
    checkUnnamed8352(o.caCertificateDescriptions!);
    checkCertificateAuthorityPolicy(o.certificatePolicy!);
    checkCertificateConfig(o.config!);
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
    checkIssuingOptions(o.issuingOptions!);
    checkKeyVersionSpec(o.keySpec!);
    checkUnnamed8353(o.labels!);
    unittest.expect(
      o.lifetime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed8354(o.pemCaCertificates!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkSubordinateConfig(o.subordinateConfig!);
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

core.List<core.String> buildUnnamed8355() => [
      'foo',
      'foo',
    ];

void checkUnnamed8355(core.List<core.String> o) {
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

core.List<api.Subject> buildUnnamed8356() => [
      buildSubject(),
      buildSubject(),
    ];

void checkUnnamed8356(core.List<api.Subject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubject(o[0]);
  checkSubject(o[1]);
}

core.int buildCounterCertificateAuthorityPolicy = 0;
api.CertificateAuthorityPolicy buildCertificateAuthorityPolicy() {
  final o = api.CertificateAuthorityPolicy();
  buildCounterCertificateAuthorityPolicy++;
  if (buildCounterCertificateAuthorityPolicy < 3) {
    o.allowedCommonNames = buildUnnamed8355();
    o.allowedConfigList = buildAllowedConfigList();
    o.allowedIssuanceModes = buildIssuanceModes();
    o.allowedLocationsAndOrganizations = buildUnnamed8356();
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
    checkUnnamed8355(o.allowedCommonNames!);
    checkAllowedConfigList(o.allowedConfigList!);
    checkIssuanceModes(o.allowedIssuanceModes!);
    checkUnnamed8356(o.allowedLocationsAndOrganizations!);
    checkAllowedSubjectAltNames(o.allowedSans!);
    unittest.expect(
      o.maximumLifetime!,
      unittest.equals('foo'),
    );
    checkReusableConfigWrapper(o.overwriteConfigValues!);
  }
  buildCounterCertificateAuthorityPolicy--;
}

core.int buildCounterCertificateConfig = 0;
api.CertificateConfig buildCertificateConfig() {
  final o = api.CertificateConfig();
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
    checkPublicKey(o.publicKey!);
    checkReusableConfigWrapper(o.reusableConfig!);
    checkSubjectConfig(o.subjectConfig!);
  }
  buildCounterCertificateConfig--;
}

core.List<core.String> buildUnnamed8357() => [
      'foo',
      'foo',
    ];

void checkUnnamed8357(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8358() => [
      'foo',
      'foo',
    ];

void checkUnnamed8358(core.List<core.String> o) {
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
  final o = api.CertificateDescription();
  buildCounterCertificateDescription++;
  if (buildCounterCertificateDescription < 3) {
    o.aiaIssuingCertificateUrls = buildUnnamed8357();
    o.authorityKeyId = buildKeyId();
    o.certFingerprint = buildCertificateFingerprint();
    o.configValues = buildReusableConfigValues();
    o.crlDistributionPoints = buildUnnamed8358();
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
    checkUnnamed8357(o.aiaIssuingCertificateUrls!);
    checkKeyId(o.authorityKeyId!);
    checkCertificateFingerprint(o.certFingerprint!);
    checkReusableConfigValues(o.configValues!);
    checkUnnamed8358(o.crlDistributionPoints!);
    checkPublicKey(o.publicKey!);
    checkSubjectDescription(o.subjectDescription!);
    checkKeyId(o.subjectKeyId!);
  }
  buildCounterCertificateDescription--;
}

core.int buildCounterCertificateFingerprint = 0;
api.CertificateFingerprint buildCertificateFingerprint() {
  final o = api.CertificateFingerprint();
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

core.Map<core.String, core.String> buildUnnamed8359() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8359(core.Map<core.String, core.String> o) {
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

core.List<api.RevokedCertificate> buildUnnamed8360() => [
      buildRevokedCertificate(),
      buildRevokedCertificate(),
    ];

void checkUnnamed8360(core.List<api.RevokedCertificate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRevokedCertificate(o[0]);
  checkRevokedCertificate(o[1]);
}

core.int buildCounterCertificateRevocationList = 0;
api.CertificateRevocationList buildCertificateRevocationList() {
  final o = api.CertificateRevocationList();
  buildCounterCertificateRevocationList++;
  if (buildCounterCertificateRevocationList < 3) {
    o.accessUrl = 'foo';
    o.createTime = 'foo';
    o.labels = buildUnnamed8359();
    o.name = 'foo';
    o.pemCrl = 'foo';
    o.revokedCertificates = buildUnnamed8360();
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
    checkUnnamed8359(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pemCrl!,
      unittest.equals('foo'),
    );
    checkUnnamed8360(o.revokedCertificates!);
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
  final o = api.DisableCertificateAuthorityRequest();
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

core.int buildCounterEnableCertificateAuthorityRequest = 0;
api.EnableCertificateAuthorityRequest buildEnableCertificateAuthorityRequest() {
  final o = api.EnableCertificateAuthorityRequest();
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

core.int buildCounterExtendedKeyUsageOptions = 0;
api.ExtendedKeyUsageOptions buildExtendedKeyUsageOptions() {
  final o = api.ExtendedKeyUsageOptions();
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
  final o = api.FetchCertificateAuthorityCsrResponse();
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
  final o = api.IssuanceModes();
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
  final o = api.IssuingOptions();
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
  final o = api.KeyId();
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

core.List<api.ObjectId> buildUnnamed8361() => [
      buildObjectId(),
      buildObjectId(),
    ];

void checkUnnamed8361(core.List<api.ObjectId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectId(o[0]);
  checkObjectId(o[1]);
}

core.int buildCounterKeyUsage = 0;
api.KeyUsage buildKeyUsage() {
  final o = api.KeyUsage();
  buildCounterKeyUsage++;
  if (buildCounterKeyUsage < 3) {
    o.baseKeyUsage = buildKeyUsageOptions();
    o.extendedKeyUsage = buildExtendedKeyUsageOptions();
    o.unknownExtendedKeyUsages = buildUnnamed8361();
  }
  buildCounterKeyUsage--;
  return o;
}

void checkKeyUsage(api.KeyUsage o) {
  buildCounterKeyUsage++;
  if (buildCounterKeyUsage < 3) {
    checkKeyUsageOptions(o.baseKeyUsage!);
    checkExtendedKeyUsageOptions(o.extendedKeyUsage!);
    checkUnnamed8361(o.unknownExtendedKeyUsages!);
  }
  buildCounterKeyUsage--;
}

core.int buildCounterKeyUsageOptions = 0;
api.KeyUsageOptions buildKeyUsageOptions() {
  final o = api.KeyUsageOptions();
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
  final o = api.KeyVersionSpec();
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

core.List<api.CertificateAuthority> buildUnnamed8362() => [
      buildCertificateAuthority(),
      buildCertificateAuthority(),
    ];

void checkUnnamed8362(core.List<api.CertificateAuthority> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertificateAuthority(o[0]);
  checkCertificateAuthority(o[1]);
}

core.List<core.String> buildUnnamed8363() => [
      'foo',
      'foo',
    ];

void checkUnnamed8363(core.List<core.String> o) {
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
  final o = api.ListCertificateAuthoritiesResponse();
  buildCounterListCertificateAuthoritiesResponse++;
  if (buildCounterListCertificateAuthoritiesResponse < 3) {
    o.certificateAuthorities = buildUnnamed8362();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed8363();
  }
  buildCounterListCertificateAuthoritiesResponse--;
  return o;
}

void checkListCertificateAuthoritiesResponse(
    api.ListCertificateAuthoritiesResponse o) {
  buildCounterListCertificateAuthoritiesResponse++;
  if (buildCounterListCertificateAuthoritiesResponse < 3) {
    checkUnnamed8362(o.certificateAuthorities!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8363(o.unreachable!);
  }
  buildCounterListCertificateAuthoritiesResponse--;
}

core.List<api.CertificateRevocationList> buildUnnamed8364() => [
      buildCertificateRevocationList(),
      buildCertificateRevocationList(),
    ];

void checkUnnamed8364(core.List<api.CertificateRevocationList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertificateRevocationList(o[0]);
  checkCertificateRevocationList(o[1]);
}

core.List<core.String> buildUnnamed8365() => [
      'foo',
      'foo',
    ];

void checkUnnamed8365(core.List<core.String> o) {
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
  final o = api.ListCertificateRevocationListsResponse();
  buildCounterListCertificateRevocationListsResponse++;
  if (buildCounterListCertificateRevocationListsResponse < 3) {
    o.certificateRevocationLists = buildUnnamed8364();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed8365();
  }
  buildCounterListCertificateRevocationListsResponse--;
  return o;
}

void checkListCertificateRevocationListsResponse(
    api.ListCertificateRevocationListsResponse o) {
  buildCounterListCertificateRevocationListsResponse++;
  if (buildCounterListCertificateRevocationListsResponse < 3) {
    checkUnnamed8364(o.certificateRevocationLists!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8365(o.unreachable!);
  }
  buildCounterListCertificateRevocationListsResponse--;
}

core.List<api.Certificate> buildUnnamed8366() => [
      buildCertificate(),
      buildCertificate(),
    ];

void checkUnnamed8366(core.List<api.Certificate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertificate(o[0]);
  checkCertificate(o[1]);
}

core.List<core.String> buildUnnamed8367() => [
      'foo',
      'foo',
    ];

void checkUnnamed8367(core.List<core.String> o) {
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
  final o = api.ListCertificatesResponse();
  buildCounterListCertificatesResponse++;
  if (buildCounterListCertificatesResponse < 3) {
    o.certificates = buildUnnamed8366();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed8367();
  }
  buildCounterListCertificatesResponse--;
  return o;
}

void checkListCertificatesResponse(api.ListCertificatesResponse o) {
  buildCounterListCertificatesResponse++;
  if (buildCounterListCertificatesResponse < 3) {
    checkUnnamed8366(o.certificates!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8367(o.unreachable!);
  }
  buildCounterListCertificatesResponse--;
}

core.List<api.Location> buildUnnamed8368() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed8368(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed8368();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed8368(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed8369() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed8369(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed8369();
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
    checkUnnamed8369(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.ReusableConfig> buildUnnamed8370() => [
      buildReusableConfig(),
      buildReusableConfig(),
    ];

void checkUnnamed8370(core.List<api.ReusableConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReusableConfig(o[0]);
  checkReusableConfig(o[1]);
}

core.List<core.String> buildUnnamed8371() => [
      'foo',
      'foo',
    ];

void checkUnnamed8371(core.List<core.String> o) {
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
  final o = api.ListReusableConfigsResponse();
  buildCounterListReusableConfigsResponse++;
  if (buildCounterListReusableConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.reusableConfigs = buildUnnamed8370();
    o.unreachable = buildUnnamed8371();
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
    checkUnnamed8370(o.reusableConfigs!);
    checkUnnamed8371(o.unreachable!);
  }
  buildCounterListReusableConfigsResponse--;
}

core.Map<core.String, core.String> buildUnnamed8372() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8372(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed8373() => {
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

void checkUnnamed8373(core.Map<core.String, core.Object> o) {
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
    o.labels = buildUnnamed8372();
    o.locationId = 'foo';
    o.metadata = buildUnnamed8373();
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
    checkUnnamed8372(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed8373(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.List<core.int> buildUnnamed8374() => [
      42,
      42,
    ];

void checkUnnamed8374(core.List<core.int> o) {
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
  final o = api.ObjectId();
  buildCounterObjectId++;
  if (buildCounterObjectId < 3) {
    o.objectIdPath = buildUnnamed8374();
  }
  buildCounterObjectId--;
  return o;
}

void checkObjectId(api.ObjectId o) {
  buildCounterObjectId++;
  if (buildCounterObjectId < 3) {
    checkUnnamed8374(o.objectIdPath!);
  }
  buildCounterObjectId--;
}

core.Map<core.String, core.Object> buildUnnamed8375() => {
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

void checkUnnamed8375(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed8376() => {
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

void checkUnnamed8376(core.Map<core.String, core.Object> o) {
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
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed8375();
    o.name = 'foo';
    o.response = buildUnnamed8376();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed8375(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed8376(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationMetadata = 0;
api.OperationMetadata buildOperationMetadata() {
  final o = api.OperationMetadata();
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

core.List<api.AuditConfig> buildUnnamed8377() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed8377(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed8378() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed8378(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed8377();
    o.bindings = buildUnnamed8378();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed8377(o.auditConfigs!);
    checkUnnamed8378(o.bindings!);
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
  final o = api.ReconciliationOperationMetadata();
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
  final o = api.RestoreCertificateAuthorityRequest();
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

core.Map<core.String, core.String> buildUnnamed8379() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8379(core.Map<core.String, core.String> o) {
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
  final o = api.ReusableConfig();
  buildCounterReusableConfig++;
  if (buildCounterReusableConfig < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed8379();
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
    checkUnnamed8379(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkReusableConfigValues(o.values!);
  }
  buildCounterReusableConfig--;
}

core.List<api.X509Extension> buildUnnamed8380() => [
      buildX509Extension(),
      buildX509Extension(),
    ];

void checkUnnamed8380(core.List<api.X509Extension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkX509Extension(o[0]);
  checkX509Extension(o[1]);
}

core.List<core.String> buildUnnamed8381() => [
      'foo',
      'foo',
    ];

void checkUnnamed8381(core.List<core.String> o) {
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

core.List<api.ObjectId> buildUnnamed8382() => [
      buildObjectId(),
      buildObjectId(),
    ];

void checkUnnamed8382(core.List<api.ObjectId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectId(o[0]);
  checkObjectId(o[1]);
}

core.int buildCounterReusableConfigValues = 0;
api.ReusableConfigValues buildReusableConfigValues() {
  final o = api.ReusableConfigValues();
  buildCounterReusableConfigValues++;
  if (buildCounterReusableConfigValues < 3) {
    o.additionalExtensions = buildUnnamed8380();
    o.aiaOcspServers = buildUnnamed8381();
    o.caOptions = buildCaOptions();
    o.keyUsage = buildKeyUsage();
    o.policyIds = buildUnnamed8382();
  }
  buildCounterReusableConfigValues--;
  return o;
}

void checkReusableConfigValues(api.ReusableConfigValues o) {
  buildCounterReusableConfigValues++;
  if (buildCounterReusableConfigValues < 3) {
    checkUnnamed8380(o.additionalExtensions!);
    checkUnnamed8381(o.aiaOcspServers!);
    checkCaOptions(o.caOptions!);
    checkKeyUsage(o.keyUsage!);
    checkUnnamed8382(o.policyIds!);
  }
  buildCounterReusableConfigValues--;
}

core.int buildCounterReusableConfigWrapper = 0;
api.ReusableConfigWrapper buildReusableConfigWrapper() {
  final o = api.ReusableConfigWrapper();
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
    checkReusableConfigValues(o.reusableConfigValues!);
  }
  buildCounterReusableConfigWrapper--;
}

core.int buildCounterRevocationDetails = 0;
api.RevocationDetails buildRevocationDetails() {
  final o = api.RevocationDetails();
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
  final o = api.RevokeCertificateRequest();
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
  final o = api.RevokedCertificate();
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
  final o = api.ScheduleDeleteCertificateAuthorityRequest();
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

core.Map<core.String, core.Object> buildUnnamed8383() => {
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

void checkUnnamed8383(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed8384() => [
      buildUnnamed8383(),
      buildUnnamed8383(),
    ];

void checkUnnamed8384(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed8383(o[0]);
  checkUnnamed8383(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed8384();
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
    checkUnnamed8384(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterSubject = 0;
api.Subject buildSubject() {
  final o = api.Subject();
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

core.List<api.X509Extension> buildUnnamed8385() => [
      buildX509Extension(),
      buildX509Extension(),
    ];

void checkUnnamed8385(core.List<api.X509Extension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkX509Extension(o[0]);
  checkX509Extension(o[1]);
}

core.List<core.String> buildUnnamed8386() => [
      'foo',
      'foo',
    ];

void checkUnnamed8386(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8387() => [
      'foo',
      'foo',
    ];

void checkUnnamed8387(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8388() => [
      'foo',
      'foo',
    ];

void checkUnnamed8388(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8389() => [
      'foo',
      'foo',
    ];

void checkUnnamed8389(core.List<core.String> o) {
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
  final o = api.SubjectAltNames();
  buildCounterSubjectAltNames++;
  if (buildCounterSubjectAltNames < 3) {
    o.customSans = buildUnnamed8385();
    o.dnsNames = buildUnnamed8386();
    o.emailAddresses = buildUnnamed8387();
    o.ipAddresses = buildUnnamed8388();
    o.uris = buildUnnamed8389();
  }
  buildCounterSubjectAltNames--;
  return o;
}

void checkSubjectAltNames(api.SubjectAltNames o) {
  buildCounterSubjectAltNames++;
  if (buildCounterSubjectAltNames < 3) {
    checkUnnamed8385(o.customSans!);
    checkUnnamed8386(o.dnsNames!);
    checkUnnamed8387(o.emailAddresses!);
    checkUnnamed8388(o.ipAddresses!);
    checkUnnamed8389(o.uris!);
  }
  buildCounterSubjectAltNames--;
}

core.int buildCounterSubjectConfig = 0;
api.SubjectConfig buildSubjectConfig() {
  final o = api.SubjectConfig();
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
    checkSubject(o.subject!);
    checkSubjectAltNames(o.subjectAltName!);
  }
  buildCounterSubjectConfig--;
}

core.int buildCounterSubjectDescription = 0;
api.SubjectDescription buildSubjectDescription() {
  final o = api.SubjectDescription();
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
    checkSubject(o.subject!);
    checkSubjectAltNames(o.subjectAltName!);
  }
  buildCounterSubjectDescription--;
}

core.int buildCounterSubordinateConfig = 0;
api.SubordinateConfig buildSubordinateConfig() {
  final o = api.SubordinateConfig();
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
    checkSubordinateConfigChain(o.pemIssuerChain!);
  }
  buildCounterSubordinateConfig--;
}

core.List<core.String> buildUnnamed8390() => [
      'foo',
      'foo',
    ];

void checkUnnamed8390(core.List<core.String> o) {
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
  final o = api.SubordinateConfigChain();
  buildCounterSubordinateConfigChain++;
  if (buildCounterSubordinateConfigChain < 3) {
    o.pemCertificates = buildUnnamed8390();
  }
  buildCounterSubordinateConfigChain--;
  return o;
}

void checkSubordinateConfigChain(api.SubordinateConfigChain o) {
  buildCounterSubordinateConfigChain++;
  if (buildCounterSubordinateConfigChain < 3) {
    checkUnnamed8390(o.pemCertificates!);
  }
  buildCounterSubordinateConfigChain--;
}

core.List<core.String> buildUnnamed8391() => [
      'foo',
      'foo',
    ];

void checkUnnamed8391(core.List<core.String> o) {
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
    o.permissions = buildUnnamed8391();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed8391(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed8392() => [
      'foo',
      'foo',
    ];

void checkUnnamed8392(core.List<core.String> o) {
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
    o.permissions = buildUnnamed8392();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed8392(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterX509Extension = 0;
api.X509Extension buildX509Extension() {
  final o = api.X509Extension();
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
    checkObjectId(o.objectId!);
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
      final o = buildAccessUrls();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AccessUrls.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAccessUrls(od);
    });
  });

  unittest.group('obj-schema-ActivateCertificateAuthorityRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivateCertificateAuthorityRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivateCertificateAuthorityRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivateCertificateAuthorityRequest(od);
    });
  });

  unittest.group('obj-schema-AllowedConfigList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAllowedConfigList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AllowedConfigList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAllowedConfigList(od);
    });
  });

  unittest.group('obj-schema-AllowedSubjectAltNames', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAllowedSubjectAltNames();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AllowedSubjectAltNames.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAllowedSubjectAltNames(od);
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

  unittest.group('obj-schema-CaOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCaOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CaOptions.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCaOptions(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-Certificate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCertificate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Certificate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificate(od);
    });
  });

  unittest.group('obj-schema-CertificateAuthority', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCertificateAuthority();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CertificateAuthority.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateAuthority(od);
    });
  });

  unittest.group('obj-schema-CertificateAuthorityPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCertificateAuthorityPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CertificateAuthorityPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateAuthorityPolicy(od);
    });
  });

  unittest.group('obj-schema-CertificateConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCertificateConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CertificateConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateConfig(od);
    });
  });

  unittest.group('obj-schema-CertificateDescription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCertificateDescription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CertificateDescription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateDescription(od);
    });
  });

  unittest.group('obj-schema-CertificateFingerprint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCertificateFingerprint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CertificateFingerprint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateFingerprint(od);
    });
  });

  unittest.group('obj-schema-CertificateRevocationList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCertificateRevocationList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CertificateRevocationList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateRevocationList(od);
    });
  });

  unittest.group('obj-schema-DisableCertificateAuthorityRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisableCertificateAuthorityRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisableCertificateAuthorityRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisableCertificateAuthorityRequest(od);
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

  unittest.group('obj-schema-EnableCertificateAuthorityRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnableCertificateAuthorityRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnableCertificateAuthorityRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnableCertificateAuthorityRequest(od);
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

  unittest.group('obj-schema-ExtendedKeyUsageOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtendedKeyUsageOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtendedKeyUsageOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExtendedKeyUsageOptions(od);
    });
  });

  unittest.group('obj-schema-FetchCertificateAuthorityCsrResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchCertificateAuthorityCsrResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchCertificateAuthorityCsrResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchCertificateAuthorityCsrResponse(od);
    });
  });

  unittest.group('obj-schema-IssuanceModes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIssuanceModes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IssuanceModes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIssuanceModes(od);
    });
  });

  unittest.group('obj-schema-IssuingOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIssuingOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IssuingOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIssuingOptions(od);
    });
  });

  unittest.group('obj-schema-KeyId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeyId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.KeyId.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkKeyId(od);
    });
  });

  unittest.group('obj-schema-KeyUsage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeyUsage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.KeyUsage.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkKeyUsage(od);
    });
  });

  unittest.group('obj-schema-KeyUsageOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeyUsageOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KeyUsageOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKeyUsageOptions(od);
    });
  });

  unittest.group('obj-schema-KeyVersionSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeyVersionSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KeyVersionSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKeyVersionSpec(od);
    });
  });

  unittest.group('obj-schema-ListCertificateAuthoritiesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCertificateAuthoritiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCertificateAuthoritiesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCertificateAuthoritiesResponse(od);
    });
  });

  unittest.group('obj-schema-ListCertificateRevocationListsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCertificateRevocationListsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCertificateRevocationListsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCertificateRevocationListsResponse(od);
    });
  });

  unittest.group('obj-schema-ListCertificatesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCertificatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCertificatesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCertificatesResponse(od);
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

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListReusableConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReusableConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReusableConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListReusableConfigsResponse(od);
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

  unittest.group('obj-schema-ObjectId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ObjectId.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkObjectId(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-OperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationMetadata(od);
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

  unittest.group('obj-schema-ReconciliationOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReconciliationOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReconciliationOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReconciliationOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-RestoreCertificateAuthorityRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestoreCertificateAuthorityRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestoreCertificateAuthorityRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRestoreCertificateAuthorityRequest(od);
    });
  });

  unittest.group('obj-schema-ReusableConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReusableConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReusableConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReusableConfig(od);
    });
  });

  unittest.group('obj-schema-ReusableConfigValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReusableConfigValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReusableConfigValues.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReusableConfigValues(od);
    });
  });

  unittest.group('obj-schema-ReusableConfigWrapper', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReusableConfigWrapper();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReusableConfigWrapper.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReusableConfigWrapper(od);
    });
  });

  unittest.group('obj-schema-RevocationDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevocationDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevocationDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevocationDetails(od);
    });
  });

  unittest.group('obj-schema-RevokeCertificateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevokeCertificateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevokeCertificateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevokeCertificateRequest(od);
    });
  });

  unittest.group('obj-schema-RevokedCertificate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevokedCertificate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevokedCertificate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevokedCertificate(od);
    });
  });

  unittest.group('obj-schema-ScheduleDeleteCertificateAuthorityRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScheduleDeleteCertificateAuthorityRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScheduleDeleteCertificateAuthorityRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScheduleDeleteCertificateAuthorityRequest(od);
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

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-Subject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Subject.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSubject(od);
    });
  });

  unittest.group('obj-schema-SubjectAltNames', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubjectAltNames();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubjectAltNames.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubjectAltNames(od);
    });
  });

  unittest.group('obj-schema-SubjectConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubjectConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubjectConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubjectConfig(od);
    });
  });

  unittest.group('obj-schema-SubjectDescription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubjectDescription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubjectDescription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubjectDescription(od);
    });
  });

  unittest.group('obj-schema-SubordinateConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubordinateConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubordinateConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubordinateConfig(od);
    });
  });

  unittest.group('obj-schema-SubordinateConfigChain', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubordinateConfigChain();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubordinateConfigChain.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubordinateConfigChain(od);
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

  unittest.group('obj-schema-X509Extension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildX509Extension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.X509Extension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkX509Extension(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock).projects.locations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
      final res = api.CertificateAuthorityServiceApi(mock).projects.locations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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

  unittest.group('resource-ProjectsLocationsCertificateAuthoritiesResource',
      () {
    unittest.test('method--activate', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
      final arg_request = buildActivateCertificateAuthorityRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ActivateCertificateAuthorityRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkActivateCertificateAuthorityRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.activate(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
      final arg_request = buildCertificateAuthority();
      final arg_parent = 'foo';
      final arg_certificateAuthorityId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CertificateAuthority.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCertificateAuthority(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
          queryMap['certificateAuthorityId']!.first,
          unittest.equals(arg_certificateAuthorityId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          certificateAuthorityId: arg_certificateAuthorityId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--disable', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
      final arg_request = buildDisableCertificateAuthorityRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DisableCertificateAuthorityRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDisableCertificateAuthorityRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.disable(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--enable', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
      final arg_request = buildEnableCertificateAuthorityRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EnableCertificateAuthorityRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnableCertificateAuthorityRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.enable(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--fetch', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp =
            convert.json.encode(buildFetchCertificateAuthorityCsrResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetch(arg_name, $fields: arg_$fields);
      checkFetchCertificateAuthorityCsrResponse(
          response as api.FetchCertificateAuthorityCsrResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildCertificateAuthority());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCertificateAuthority(response as api.CertificateAuthority);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp =
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
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
      final arg_request = buildCertificateAuthority();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CertificateAuthority.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCertificateAuthority(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--restore', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
      final arg_request = buildRestoreCertificateAuthorityRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RestoreCertificateAuthorityRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRestoreCertificateAuthorityRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.restore(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--scheduleDelete', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
      final arg_request = buildScheduleDeleteCertificateAuthorityRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ScheduleDeleteCertificateAuthorityRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkScheduleDeleteCertificateAuthorityRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.scheduleDelete(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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

  unittest.group(
      'resource-ProjectsLocationsCertificateAuthoritiesCertificateRevocationListsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificateRevocationLists;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildCertificateRevocationList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCertificateRevocationList(response as api.CertificateRevocationList);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificateRevocationLists;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificateRevocationLists;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp =
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
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificateRevocationLists;
      final arg_request = buildCertificateRevocationList();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CertificateRevocationList.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCertificateRevocationList(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificateRevocationLists;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificateRevocationLists;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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

  unittest.group(
      'resource-ProjectsLocationsCertificateAuthoritiesCertificatesResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificates;
      final arg_request = buildCertificate();
      final arg_parent = 'foo';
      final arg_certificateId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Certificate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCertificate(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
          queryMap['certificateId']!.first,
          unittest.equals(arg_certificateId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCertificate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          certificateId: arg_certificateId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkCertificate(response as api.Certificate);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificates;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildCertificate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCertificate(response as api.Certificate);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificates;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildListCertificatesResponse());
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
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificates;
      final arg_request = buildCertificate();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Certificate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCertificate(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
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
        final resp = convert.json.encode(buildCertificate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkCertificate(response as api.Certificate);
    });

    unittest.test('method--revoke', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificates;
      final arg_request = buildRevokeCertificateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RevokeCertificateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRevokeCertificateRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildCertificate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.revoke(arg_request, arg_name, $fields: arg_$fields);
      checkCertificate(response as api.Certificate);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .operations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .operations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .operations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildListOperationsResponse());
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
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .reusableConfigs;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildReusableConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkReusableConfig(response as api.ReusableConfig);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .reusableConfigs;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .reusableConfigs;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildListReusableConfigsResponse());
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
      final mock = HttpServerMock();
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .reusableConfigs;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
      final res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .reusableConfigs;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
