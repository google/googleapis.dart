// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/domains/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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

core.int buildCounterAuthorizationCode = 0;
api.AuthorizationCode buildAuthorizationCode() {
  final o = api.AuthorizationCode();
  buildCounterAuthorizationCode++;
  if (buildCounterAuthorizationCode < 3) {
    o.code = 'foo';
  }
  buildCounterAuthorizationCode--;
  return o;
}

void checkAuthorizationCode(api.AuthorizationCode o) {
  buildCounterAuthorizationCode++;
  if (buildCounterAuthorizationCode < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuthorizationCode--;
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

core.int buildCounterConfigureContactSettingsRequest = 0;
api.ConfigureContactSettingsRequest buildConfigureContactSettingsRequest() {
  final o = api.ConfigureContactSettingsRequest();
  buildCounterConfigureContactSettingsRequest++;
  if (buildCounterConfigureContactSettingsRequest < 3) {
    o.contactNotices = buildUnnamed3();
    o.contactSettings = buildContactSettings();
    o.updateMask = 'foo';
    o.validateOnly = true;
  }
  buildCounterConfigureContactSettingsRequest--;
  return o;
}

void checkConfigureContactSettingsRequest(
    api.ConfigureContactSettingsRequest o) {
  buildCounterConfigureContactSettingsRequest++;
  if (buildCounterConfigureContactSettingsRequest < 3) {
    checkUnnamed3(o.contactNotices!);
    checkContactSettings(o.contactSettings!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterConfigureContactSettingsRequest--;
}

core.int buildCounterConfigureDnsSettingsRequest = 0;
api.ConfigureDnsSettingsRequest buildConfigureDnsSettingsRequest() {
  final o = api.ConfigureDnsSettingsRequest();
  buildCounterConfigureDnsSettingsRequest++;
  if (buildCounterConfigureDnsSettingsRequest < 3) {
    o.dnsSettings = buildDnsSettings();
    o.updateMask = 'foo';
    o.validateOnly = true;
  }
  buildCounterConfigureDnsSettingsRequest--;
  return o;
}

void checkConfigureDnsSettingsRequest(api.ConfigureDnsSettingsRequest o) {
  buildCounterConfigureDnsSettingsRequest++;
  if (buildCounterConfigureDnsSettingsRequest < 3) {
    checkDnsSettings(o.dnsSettings!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterConfigureDnsSettingsRequest--;
}

core.int buildCounterConfigureManagementSettingsRequest = 0;
api.ConfigureManagementSettingsRequest
    buildConfigureManagementSettingsRequest() {
  final o = api.ConfigureManagementSettingsRequest();
  buildCounterConfigureManagementSettingsRequest++;
  if (buildCounterConfigureManagementSettingsRequest < 3) {
    o.managementSettings = buildManagementSettings();
    o.updateMask = 'foo';
  }
  buildCounterConfigureManagementSettingsRequest--;
  return o;
}

void checkConfigureManagementSettingsRequest(
    api.ConfigureManagementSettingsRequest o) {
  buildCounterConfigureManagementSettingsRequest++;
  if (buildCounterConfigureManagementSettingsRequest < 3) {
    checkManagementSettings(o.managementSettings!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigureManagementSettingsRequest--;
}

core.int buildCounterContact = 0;
api.Contact buildContact() {
  final o = api.Contact();
  buildCounterContact++;
  if (buildCounterContact < 3) {
    o.email = 'foo';
    o.faxNumber = 'foo';
    o.phoneNumber = 'foo';
    o.postalAddress = buildPostalAddress();
  }
  buildCounterContact--;
  return o;
}

void checkContact(api.Contact o) {
  buildCounterContact++;
  if (buildCounterContact < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.faxNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    checkPostalAddress(o.postalAddress!);
  }
  buildCounterContact--;
}

core.int buildCounterContactSettings = 0;
api.ContactSettings buildContactSettings() {
  final o = api.ContactSettings();
  buildCounterContactSettings++;
  if (buildCounterContactSettings < 3) {
    o.adminContact = buildContact();
    o.privacy = 'foo';
    o.registrantContact = buildContact();
    o.technicalContact = buildContact();
  }
  buildCounterContactSettings--;
  return o;
}

void checkContactSettings(api.ContactSettings o) {
  buildCounterContactSettings++;
  if (buildCounterContactSettings < 3) {
    checkContact(o.adminContact!);
    unittest.expect(
      o.privacy!,
      unittest.equals('foo'),
    );
    checkContact(o.registrantContact!);
    checkContact(o.technicalContact!);
  }
  buildCounterContactSettings--;
}

core.List<api.DsRecord> buildUnnamed4() => [
      buildDsRecord(),
      buildDsRecord(),
    ];

void checkUnnamed4(core.List<api.DsRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDsRecord(o[0]);
  checkDsRecord(o[1]);
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

core.int buildCounterCustomDns = 0;
api.CustomDns buildCustomDns() {
  final o = api.CustomDns();
  buildCounterCustomDns++;
  if (buildCounterCustomDns < 3) {
    o.dsRecords = buildUnnamed4();
    o.nameServers = buildUnnamed5();
  }
  buildCounterCustomDns--;
  return o;
}

void checkCustomDns(api.CustomDns o) {
  buildCounterCustomDns++;
  if (buildCounterCustomDns < 3) {
    checkUnnamed4(o.dsRecords!);
    checkUnnamed5(o.nameServers!);
  }
  buildCounterCustomDns--;
}

core.List<api.GlueRecord> buildUnnamed6() => [
      buildGlueRecord(),
      buildGlueRecord(),
    ];

void checkUnnamed6(core.List<api.GlueRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGlueRecord(o[0]);
  checkGlueRecord(o[1]);
}

core.int buildCounterDnsSettings = 0;
api.DnsSettings buildDnsSettings() {
  final o = api.DnsSettings();
  buildCounterDnsSettings++;
  if (buildCounterDnsSettings < 3) {
    o.customDns = buildCustomDns();
    o.glueRecords = buildUnnamed6();
    o.googleDomainsDns = buildGoogleDomainsDns();
    o.googleDomainsRedirectsDataAvailable = true;
  }
  buildCounterDnsSettings--;
  return o;
}

void checkDnsSettings(api.DnsSettings o) {
  buildCounterDnsSettings++;
  if (buildCounterDnsSettings < 3) {
    checkCustomDns(o.customDns!);
    checkUnnamed6(o.glueRecords!);
    checkGoogleDomainsDns(o.googleDomainsDns!);
    unittest.expect(o.googleDomainsRedirectsDataAvailable!, unittest.isTrue);
  }
  buildCounterDnsSettings--;
}

core.int buildCounterDomain = 0;
api.Domain buildDomain() {
  final o = api.Domain();
  buildCounterDomain++;
  if (buildCounterDomain < 3) {
    o.domainName = 'foo';
    o.resourceState = 'foo';
    o.yearlyPrice = buildMoney();
  }
  buildCounterDomain--;
  return o;
}

void checkDomain(api.Domain o) {
  buildCounterDomain++;
  if (buildCounterDomain < 3) {
    unittest.expect(
      o.domainName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceState!,
      unittest.equals('foo'),
    );
    checkMoney(o.yearlyPrice!);
  }
  buildCounterDomain--;
}

core.int buildCounterDomainForwarding = 0;
api.DomainForwarding buildDomainForwarding() {
  final o = api.DomainForwarding();
  buildCounterDomainForwarding++;
  if (buildCounterDomainForwarding < 3) {
    o.pathForwarding = true;
    o.pemCertificate = 'foo';
    o.redirectType = 'foo';
    o.sslEnabled = true;
    o.subdomain = 'foo';
    o.targetUri = 'foo';
  }
  buildCounterDomainForwarding--;
  return o;
}

void checkDomainForwarding(api.DomainForwarding o) {
  buildCounterDomainForwarding++;
  if (buildCounterDomainForwarding < 3) {
    unittest.expect(o.pathForwarding!, unittest.isTrue);
    unittest.expect(
      o.pemCertificate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.redirectType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.sslEnabled!, unittest.isTrue);
    unittest.expect(
      o.subdomain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterDomainForwarding--;
}

core.int buildCounterDsRecord = 0;
api.DsRecord buildDsRecord() {
  final o = api.DsRecord();
  buildCounterDsRecord++;
  if (buildCounterDsRecord < 3) {
    o.algorithm = 'foo';
    o.digest = 'foo';
    o.digestType = 'foo';
    o.keyTag = 42;
  }
  buildCounterDsRecord--;
  return o;
}

void checkDsRecord(api.DsRecord o) {
  buildCounterDsRecord++;
  if (buildCounterDsRecord < 3) {
    unittest.expect(
      o.algorithm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.digest!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.digestType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keyTag!,
      unittest.equals(42),
    );
  }
  buildCounterDsRecord--;
}

core.int buildCounterEmailForwarding = 0;
api.EmailForwarding buildEmailForwarding() {
  final o = api.EmailForwarding();
  buildCounterEmailForwarding++;
  if (buildCounterEmailForwarding < 3) {
    o.alias = 'foo';
    o.targetEmailAddress = 'foo';
  }
  buildCounterEmailForwarding--;
  return o;
}

void checkEmailForwarding(api.EmailForwarding o) {
  buildCounterEmailForwarding++;
  if (buildCounterEmailForwarding < 3) {
    unittest.expect(
      o.alias!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetEmailAddress!,
      unittest.equals('foo'),
    );
  }
  buildCounterEmailForwarding--;
}

core.int buildCounterExportRegistrationRequest = 0;
api.ExportRegistrationRequest buildExportRegistrationRequest() {
  final o = api.ExportRegistrationRequest();
  buildCounterExportRegistrationRequest++;
  if (buildCounterExportRegistrationRequest < 3) {}
  buildCounterExportRegistrationRequest--;
  return o;
}

void checkExportRegistrationRequest(api.ExportRegistrationRequest o) {
  buildCounterExportRegistrationRequest++;
  if (buildCounterExportRegistrationRequest < 3) {}
  buildCounterExportRegistrationRequest--;
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

core.List<api.GeoPolicyItem> buildUnnamed7() => [
      buildGeoPolicyItem(),
      buildGeoPolicyItem(),
    ];

void checkUnnamed7(core.List<api.GeoPolicyItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeoPolicyItem(o[0]);
  checkGeoPolicyItem(o[1]);
}

core.int buildCounterGeoPolicy = 0;
api.GeoPolicy buildGeoPolicy() {
  final o = api.GeoPolicy();
  buildCounterGeoPolicy++;
  if (buildCounterGeoPolicy < 3) {
    o.enableFencing = true;
    o.item = buildUnnamed7();
  }
  buildCounterGeoPolicy--;
  return o;
}

void checkGeoPolicy(api.GeoPolicy o) {
  buildCounterGeoPolicy++;
  if (buildCounterGeoPolicy < 3) {
    unittest.expect(o.enableFencing!, unittest.isTrue);
    checkUnnamed7(o.item!);
  }
  buildCounterGeoPolicy--;
}

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed9() => [
      'foo',
      'foo',
    ];

void checkUnnamed9(core.List<core.String> o) {
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

core.int buildCounterGeoPolicyItem = 0;
api.GeoPolicyItem buildGeoPolicyItem() {
  final o = api.GeoPolicyItem();
  buildCounterGeoPolicyItem++;
  if (buildCounterGeoPolicyItem < 3) {
    o.healthCheckedTargets = buildHealthCheckTargets();
    o.location = 'foo';
    o.rrdata = buildUnnamed8();
    o.signatureRrdata = buildUnnamed9();
  }
  buildCounterGeoPolicyItem--;
  return o;
}

void checkGeoPolicyItem(api.GeoPolicyItem o) {
  buildCounterGeoPolicyItem++;
  if (buildCounterGeoPolicyItem < 3) {
    checkHealthCheckTargets(o.healthCheckedTargets!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.rrdata!);
    checkUnnamed9(o.signatureRrdata!);
  }
  buildCounterGeoPolicyItem--;
}

core.List<core.String> buildUnnamed10() => [
      'foo',
      'foo',
    ];

void checkUnnamed10(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed11() => [
      'foo',
      'foo',
    ];

void checkUnnamed11(core.List<core.String> o) {
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

core.int buildCounterGlueRecord = 0;
api.GlueRecord buildGlueRecord() {
  final o = api.GlueRecord();
  buildCounterGlueRecord++;
  if (buildCounterGlueRecord < 3) {
    o.hostName = 'foo';
    o.ipv4Addresses = buildUnnamed10();
    o.ipv6Addresses = buildUnnamed11();
  }
  buildCounterGlueRecord--;
  return o;
}

void checkGlueRecord(api.GlueRecord o) {
  buildCounterGlueRecord++;
  if (buildCounterGlueRecord < 3) {
    unittest.expect(
      o.hostName!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.ipv4Addresses!);
    checkUnnamed11(o.ipv6Addresses!);
  }
  buildCounterGlueRecord--;
}

core.List<api.DsRecord> buildUnnamed12() => [
      buildDsRecord(),
      buildDsRecord(),
    ];

void checkUnnamed12(core.List<api.DsRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDsRecord(o[0]);
  checkDsRecord(o[1]);
}

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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

core.int buildCounterGoogleDomainsDns = 0;
api.GoogleDomainsDns buildGoogleDomainsDns() {
  final o = api.GoogleDomainsDns();
  buildCounterGoogleDomainsDns++;
  if (buildCounterGoogleDomainsDns < 3) {
    o.dsRecords = buildUnnamed12();
    o.dsState = 'foo';
    o.nameServers = buildUnnamed13();
  }
  buildCounterGoogleDomainsDns--;
  return o;
}

void checkGoogleDomainsDns(api.GoogleDomainsDns o) {
  buildCounterGoogleDomainsDns++;
  if (buildCounterGoogleDomainsDns < 3) {
    checkUnnamed12(o.dsRecords!);
    unittest.expect(
      o.dsState!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.nameServers!);
  }
  buildCounterGoogleDomainsDns--;
}

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.List<api.LoadBalancerTarget> buildUnnamed15() => [
      buildLoadBalancerTarget(),
      buildLoadBalancerTarget(),
    ];

void checkUnnamed15(core.List<api.LoadBalancerTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoadBalancerTarget(o[0]);
  checkLoadBalancerTarget(o[1]);
}

core.int buildCounterHealthCheckTargets = 0;
api.HealthCheckTargets buildHealthCheckTargets() {
  final o = api.HealthCheckTargets();
  buildCounterHealthCheckTargets++;
  if (buildCounterHealthCheckTargets < 3) {
    o.externalEndpoints = buildUnnamed14();
    o.internalLoadBalancer = buildUnnamed15();
  }
  buildCounterHealthCheckTargets--;
  return o;
}

void checkHealthCheckTargets(api.HealthCheckTargets o) {
  buildCounterHealthCheckTargets++;
  if (buildCounterHealthCheckTargets < 3) {
    checkUnnamed14(o.externalEndpoints!);
    checkUnnamed15(o.internalLoadBalancer!);
  }
  buildCounterHealthCheckTargets--;
}

core.Map<core.String, core.String> buildUnnamed16() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed16(core.Map<core.String, core.String> o) {
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

core.int buildCounterImportDomainRequest = 0;
api.ImportDomainRequest buildImportDomainRequest() {
  final o = api.ImportDomainRequest();
  buildCounterImportDomainRequest++;
  if (buildCounterImportDomainRequest < 3) {
    o.domainName = 'foo';
    o.labels = buildUnnamed16();
  }
  buildCounterImportDomainRequest--;
  return o;
}

void checkImportDomainRequest(api.ImportDomainRequest o) {
  buildCounterImportDomainRequest++;
  if (buildCounterImportDomainRequest < 3) {
    unittest.expect(
      o.domainName!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.labels!);
  }
  buildCounterImportDomainRequest--;
}

core.int buildCounterInitiatePushTransferRequest = 0;
api.InitiatePushTransferRequest buildInitiatePushTransferRequest() {
  final o = api.InitiatePushTransferRequest();
  buildCounterInitiatePushTransferRequest++;
  if (buildCounterInitiatePushTransferRequest < 3) {
    o.tag = 'foo';
  }
  buildCounterInitiatePushTransferRequest--;
  return o;
}

void checkInitiatePushTransferRequest(api.InitiatePushTransferRequest o) {
  buildCounterInitiatePushTransferRequest++;
  if (buildCounterInitiatePushTransferRequest < 3) {
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterInitiatePushTransferRequest--;
}

core.List<api.Location> buildUnnamed17() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed17(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed17();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed17(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed18() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed18(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed18();
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
    checkUnnamed18(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Registration> buildUnnamed19() => [
      buildRegistration(),
      buildRegistration(),
    ];

void checkUnnamed19(core.List<api.Registration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegistration(o[0]);
  checkRegistration(o[1]);
}

core.int buildCounterListRegistrationsResponse = 0;
api.ListRegistrationsResponse buildListRegistrationsResponse() {
  final o = api.ListRegistrationsResponse();
  buildCounterListRegistrationsResponse++;
  if (buildCounterListRegistrationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.registrations = buildUnnamed19();
  }
  buildCounterListRegistrationsResponse--;
  return o;
}

void checkListRegistrationsResponse(api.ListRegistrationsResponse o) {
  buildCounterListRegistrationsResponse++;
  if (buildCounterListRegistrationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.registrations!);
  }
  buildCounterListRegistrationsResponse--;
}

core.int buildCounterLoadBalancerTarget = 0;
api.LoadBalancerTarget buildLoadBalancerTarget() {
  final o = api.LoadBalancerTarget();
  buildCounterLoadBalancerTarget++;
  if (buildCounterLoadBalancerTarget < 3) {
    o.ipAddress = 'foo';
    o.ipProtocol = 'foo';
    o.loadBalancerType = 'foo';
    o.networkUrl = 'foo';
    o.port = 'foo';
    o.project = 'foo';
    o.region = 'foo';
  }
  buildCounterLoadBalancerTarget--;
  return o;
}

void checkLoadBalancerTarget(api.LoadBalancerTarget o) {
  buildCounterLoadBalancerTarget++;
  if (buildCounterLoadBalancerTarget < 3) {
    unittest.expect(
      o.ipAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipProtocol!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.loadBalancerType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.port!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
  }
  buildCounterLoadBalancerTarget--;
}

core.Map<core.String, core.String> buildUnnamed20() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed20(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed21() => {
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

void checkUnnamed21(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed20();
    o.locationId = 'foo';
    o.metadata = buildUnnamed21();
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
    checkUnnamed20(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterManagementSettings = 0;
api.ManagementSettings buildManagementSettings() {
  final o = api.ManagementSettings();
  buildCounterManagementSettings++;
  if (buildCounterManagementSettings < 3) {
    o.effectiveTransferLockState = 'foo';
    o.preferredRenewalMethod = 'foo';
    o.renewalMethod = 'foo';
    o.transferLockState = 'foo';
  }
  buildCounterManagementSettings--;
  return o;
}

void checkManagementSettings(api.ManagementSettings o) {
  buildCounterManagementSettings++;
  if (buildCounterManagementSettings < 3) {
    unittest.expect(
      o.effectiveTransferLockState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.preferredRenewalMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.renewalMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transferLockState!,
      unittest.equals('foo'),
    );
  }
  buildCounterManagementSettings--;
}

core.int buildCounterMoney = 0;
api.Money buildMoney() {
  final o = api.Money();
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    o.currencyCode = 'foo';
    o.nanos = 42;
    o.units = 'foo';
  }
  buildCounterMoney--;
  return o;
}

void checkMoney(api.Money o) {
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.units!,
      unittest.equals('foo'),
    );
  }
  buildCounterMoney--;
}

core.Map<core.String, core.Object?> buildUnnamed22() => {
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

void checkUnnamed22(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed23() => {
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

void checkUnnamed23(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed22();
    o.name = 'foo';
    o.response = buildUnnamed23();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed22(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.AuditConfig> buildUnnamed24() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed24(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed25() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed25(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed24();
    o.bindings = buildUnnamed25();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed24(o.auditConfigs!);
    checkUnnamed25(o.bindings!);
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

core.List<core.String> buildUnnamed26() => [
      'foo',
      'foo',
    ];

void checkUnnamed26(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed27() => [
      'foo',
      'foo',
    ];

void checkUnnamed27(core.List<core.String> o) {
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

core.int buildCounterPostalAddress = 0;
api.PostalAddress buildPostalAddress() {
  final o = api.PostalAddress();
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    o.addressLines = buildUnnamed26();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed27();
    o.regionCode = 'foo';
    o.revision = 42;
    o.sortingCode = 'foo';
    o.sublocality = 'foo';
  }
  buildCounterPostalAddress--;
  return o;
}

void checkPostalAddress(api.PostalAddress o) {
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    checkUnnamed26(o.addressLines!);
    unittest.expect(
      o.administrativeArea!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
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
      o.postalCode!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.recipients!);
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sortingCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sublocality!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostalAddress--;
}

core.int buildCounterPrimaryBackupPolicy = 0;
api.PrimaryBackupPolicy buildPrimaryBackupPolicy() {
  final o = api.PrimaryBackupPolicy();
  buildCounterPrimaryBackupPolicy++;
  if (buildCounterPrimaryBackupPolicy < 3) {
    o.backupGeoTargets = buildGeoPolicy();
    o.primaryTargets = buildHealthCheckTargets();
    o.trickleTraffic = 42.0;
  }
  buildCounterPrimaryBackupPolicy--;
  return o;
}

void checkPrimaryBackupPolicy(api.PrimaryBackupPolicy o) {
  buildCounterPrimaryBackupPolicy++;
  if (buildCounterPrimaryBackupPolicy < 3) {
    checkGeoPolicy(o.backupGeoTargets!);
    checkHealthCheckTargets(o.primaryTargets!);
    unittest.expect(
      o.trickleTraffic!,
      unittest.equals(42.0),
    );
  }
  buildCounterPrimaryBackupPolicy--;
}

core.int buildCounterRRSetRoutingPolicy = 0;
api.RRSetRoutingPolicy buildRRSetRoutingPolicy() {
  final o = api.RRSetRoutingPolicy();
  buildCounterRRSetRoutingPolicy++;
  if (buildCounterRRSetRoutingPolicy < 3) {
    o.geo = buildGeoPolicy();
    o.geoPolicy = buildGeoPolicy();
    o.healthCheck = 'foo';
    o.primaryBackup = buildPrimaryBackupPolicy();
    o.wrr = buildWrrPolicy();
    o.wrrPolicy = buildWrrPolicy();
  }
  buildCounterRRSetRoutingPolicy--;
  return o;
}

void checkRRSetRoutingPolicy(api.RRSetRoutingPolicy o) {
  buildCounterRRSetRoutingPolicy++;
  if (buildCounterRRSetRoutingPolicy < 3) {
    checkGeoPolicy(o.geo!);
    checkGeoPolicy(o.geoPolicy!);
    unittest.expect(
      o.healthCheck!,
      unittest.equals('foo'),
    );
    checkPrimaryBackupPolicy(o.primaryBackup!);
    checkWrrPolicy(o.wrr!);
    checkWrrPolicy(o.wrrPolicy!);
  }
  buildCounterRRSetRoutingPolicy--;
}

core.List<core.String> buildUnnamed28() => [
      'foo',
      'foo',
    ];

void checkUnnamed28(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed29() => [
      'foo',
      'foo',
    ];

void checkUnnamed29(core.List<core.String> o) {
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

core.int buildCounterRegisterDomainRequest = 0;
api.RegisterDomainRequest buildRegisterDomainRequest() {
  final o = api.RegisterDomainRequest();
  buildCounterRegisterDomainRequest++;
  if (buildCounterRegisterDomainRequest < 3) {
    o.contactNotices = buildUnnamed28();
    o.domainNotices = buildUnnamed29();
    o.registration = buildRegistration();
    o.validateOnly = true;
    o.yearlyPrice = buildMoney();
  }
  buildCounterRegisterDomainRequest--;
  return o;
}

void checkRegisterDomainRequest(api.RegisterDomainRequest o) {
  buildCounterRegisterDomainRequest++;
  if (buildCounterRegisterDomainRequest < 3) {
    checkUnnamed28(o.contactNotices!);
    checkUnnamed29(o.domainNotices!);
    checkRegistration(o.registration!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
    checkMoney(o.yearlyPrice!);
  }
  buildCounterRegisterDomainRequest--;
}

core.List<core.String> buildUnnamed30() => [
      'foo',
      'foo',
    ];

void checkUnnamed30(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed31() => [
      'foo',
      'foo',
    ];

void checkUnnamed31(core.List<core.String> o) {
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

core.int buildCounterRegisterParameters = 0;
api.RegisterParameters buildRegisterParameters() {
  final o = api.RegisterParameters();
  buildCounterRegisterParameters++;
  if (buildCounterRegisterParameters < 3) {
    o.availability = 'foo';
    o.domainName = 'foo';
    o.domainNotices = buildUnnamed30();
    o.supportedPrivacy = buildUnnamed31();
    o.yearlyPrice = buildMoney();
  }
  buildCounterRegisterParameters--;
  return o;
}

void checkRegisterParameters(api.RegisterParameters o) {
  buildCounterRegisterParameters++;
  if (buildCounterRegisterParameters < 3) {
    unittest.expect(
      o.availability!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.domainName!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.domainNotices!);
    checkUnnamed31(o.supportedPrivacy!);
    checkMoney(o.yearlyPrice!);
  }
  buildCounterRegisterParameters--;
}

core.List<core.String> buildUnnamed32() => [
      'foo',
      'foo',
    ];

void checkUnnamed32(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed33() => [
      'foo',
      'foo',
    ];

void checkUnnamed33(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed34() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed34(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed35() => [
      'foo',
      'foo',
    ];

void checkUnnamed35(core.List<core.String> o) {
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

core.int buildCounterRegistration = 0;
api.Registration buildRegistration() {
  final o = api.Registration();
  buildCounterRegistration++;
  if (buildCounterRegistration < 3) {
    o.contactSettings = buildContactSettings();
    o.createTime = 'foo';
    o.dnsSettings = buildDnsSettings();
    o.domainName = 'foo';
    o.domainProperties = buildUnnamed32();
    o.expireTime = 'foo';
    o.issues = buildUnnamed33();
    o.labels = buildUnnamed34();
    o.managementSettings = buildManagementSettings();
    o.name = 'foo';
    o.pendingContactSettings = buildContactSettings();
    o.registerFailureReason = 'foo';
    o.state = 'foo';
    o.supportedPrivacy = buildUnnamed35();
    o.transferFailureReason = 'foo';
  }
  buildCounterRegistration--;
  return o;
}

void checkRegistration(api.Registration o) {
  buildCounterRegistration++;
  if (buildCounterRegistration < 3) {
    checkContactSettings(o.contactSettings!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkDnsSettings(o.dnsSettings!);
    unittest.expect(
      o.domainName!,
      unittest.equals('foo'),
    );
    checkUnnamed32(o.domainProperties!);
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    checkUnnamed33(o.issues!);
    checkUnnamed34(o.labels!);
    checkManagementSettings(o.managementSettings!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkContactSettings(o.pendingContactSettings!);
    unittest.expect(
      o.registerFailureReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed35(o.supportedPrivacy!);
    unittest.expect(
      o.transferFailureReason!,
      unittest.equals('foo'),
    );
  }
  buildCounterRegistration--;
}

core.int buildCounterRenewDomainRequest = 0;
api.RenewDomainRequest buildRenewDomainRequest() {
  final o = api.RenewDomainRequest();
  buildCounterRenewDomainRequest++;
  if (buildCounterRenewDomainRequest < 3) {
    o.validateOnly = true;
    o.yearlyPrice = buildMoney();
  }
  buildCounterRenewDomainRequest--;
  return o;
}

void checkRenewDomainRequest(api.RenewDomainRequest o) {
  buildCounterRenewDomainRequest++;
  if (buildCounterRenewDomainRequest < 3) {
    unittest.expect(o.validateOnly!, unittest.isTrue);
    checkMoney(o.yearlyPrice!);
  }
  buildCounterRenewDomainRequest--;
}

core.int buildCounterResetAuthorizationCodeRequest = 0;
api.ResetAuthorizationCodeRequest buildResetAuthorizationCodeRequest() {
  final o = api.ResetAuthorizationCodeRequest();
  buildCounterResetAuthorizationCodeRequest++;
  if (buildCounterResetAuthorizationCodeRequest < 3) {}
  buildCounterResetAuthorizationCodeRequest--;
  return o;
}

void checkResetAuthorizationCodeRequest(api.ResetAuthorizationCodeRequest o) {
  buildCounterResetAuthorizationCodeRequest++;
  if (buildCounterResetAuthorizationCodeRequest < 3) {}
  buildCounterResetAuthorizationCodeRequest--;
}

core.List<core.String> buildUnnamed36() => [
      'foo',
      'foo',
    ];

void checkUnnamed36(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed37() => [
      'foo',
      'foo',
    ];

void checkUnnamed37(core.List<core.String> o) {
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

core.int buildCounterResourceRecordSet = 0;
api.ResourceRecordSet buildResourceRecordSet() {
  final o = api.ResourceRecordSet();
  buildCounterResourceRecordSet++;
  if (buildCounterResourceRecordSet < 3) {
    o.name = 'foo';
    o.routingPolicy = buildRRSetRoutingPolicy();
    o.rrdata = buildUnnamed36();
    o.signatureRrdata = buildUnnamed37();
    o.ttl = 42;
    o.type = 'foo';
  }
  buildCounterResourceRecordSet--;
  return o;
}

void checkResourceRecordSet(api.ResourceRecordSet o) {
  buildCounterResourceRecordSet++;
  if (buildCounterResourceRecordSet < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkRRSetRoutingPolicy(o.routingPolicy!);
    checkUnnamed36(o.rrdata!);
    checkUnnamed37(o.signatureRrdata!);
    unittest.expect(
      o.ttl!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterResourceRecordSet--;
}

core.List<api.ResourceRecordSet> buildUnnamed38() => [
      buildResourceRecordSet(),
      buildResourceRecordSet(),
    ];

void checkUnnamed38(core.List<api.ResourceRecordSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceRecordSet(o[0]);
  checkResourceRecordSet(o[1]);
}

core.int buildCounterRetrieveGoogleDomainsDnsRecordsResponse = 0;
api.RetrieveGoogleDomainsDnsRecordsResponse
    buildRetrieveGoogleDomainsDnsRecordsResponse() {
  final o = api.RetrieveGoogleDomainsDnsRecordsResponse();
  buildCounterRetrieveGoogleDomainsDnsRecordsResponse++;
  if (buildCounterRetrieveGoogleDomainsDnsRecordsResponse < 3) {
    o.nextPageToken = 'foo';
    o.rrset = buildUnnamed38();
  }
  buildCounterRetrieveGoogleDomainsDnsRecordsResponse--;
  return o;
}

void checkRetrieveGoogleDomainsDnsRecordsResponse(
    api.RetrieveGoogleDomainsDnsRecordsResponse o) {
  buildCounterRetrieveGoogleDomainsDnsRecordsResponse++;
  if (buildCounterRetrieveGoogleDomainsDnsRecordsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed38(o.rrset!);
  }
  buildCounterRetrieveGoogleDomainsDnsRecordsResponse--;
}

core.List<api.DomainForwarding> buildUnnamed39() => [
      buildDomainForwarding(),
      buildDomainForwarding(),
    ];

void checkUnnamed39(core.List<api.DomainForwarding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomainForwarding(o[0]);
  checkDomainForwarding(o[1]);
}

core.List<api.EmailForwarding> buildUnnamed40() => [
      buildEmailForwarding(),
      buildEmailForwarding(),
    ];

void checkUnnamed40(core.List<api.EmailForwarding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEmailForwarding(o[0]);
  checkEmailForwarding(o[1]);
}

core.int buildCounterRetrieveGoogleDomainsForwardingConfigResponse = 0;
api.RetrieveGoogleDomainsForwardingConfigResponse
    buildRetrieveGoogleDomainsForwardingConfigResponse() {
  final o = api.RetrieveGoogleDomainsForwardingConfigResponse();
  buildCounterRetrieveGoogleDomainsForwardingConfigResponse++;
  if (buildCounterRetrieveGoogleDomainsForwardingConfigResponse < 3) {
    o.domainForwardings = buildUnnamed39();
    o.emailForwardings = buildUnnamed40();
  }
  buildCounterRetrieveGoogleDomainsForwardingConfigResponse--;
  return o;
}

void checkRetrieveGoogleDomainsForwardingConfigResponse(
    api.RetrieveGoogleDomainsForwardingConfigResponse o) {
  buildCounterRetrieveGoogleDomainsForwardingConfigResponse++;
  if (buildCounterRetrieveGoogleDomainsForwardingConfigResponse < 3) {
    checkUnnamed39(o.domainForwardings!);
    checkUnnamed40(o.emailForwardings!);
  }
  buildCounterRetrieveGoogleDomainsForwardingConfigResponse--;
}

core.List<api.Domain> buildUnnamed41() => [
      buildDomain(),
      buildDomain(),
    ];

void checkUnnamed41(core.List<api.Domain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomain(o[0]);
  checkDomain(o[1]);
}

core.int buildCounterRetrieveImportableDomainsResponse = 0;
api.RetrieveImportableDomainsResponse buildRetrieveImportableDomainsResponse() {
  final o = api.RetrieveImportableDomainsResponse();
  buildCounterRetrieveImportableDomainsResponse++;
  if (buildCounterRetrieveImportableDomainsResponse < 3) {
    o.domains = buildUnnamed41();
    o.nextPageToken = 'foo';
  }
  buildCounterRetrieveImportableDomainsResponse--;
  return o;
}

void checkRetrieveImportableDomainsResponse(
    api.RetrieveImportableDomainsResponse o) {
  buildCounterRetrieveImportableDomainsResponse++;
  if (buildCounterRetrieveImportableDomainsResponse < 3) {
    checkUnnamed41(o.domains!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterRetrieveImportableDomainsResponse--;
}

core.int buildCounterRetrieveRegisterParametersResponse = 0;
api.RetrieveRegisterParametersResponse
    buildRetrieveRegisterParametersResponse() {
  final o = api.RetrieveRegisterParametersResponse();
  buildCounterRetrieveRegisterParametersResponse++;
  if (buildCounterRetrieveRegisterParametersResponse < 3) {
    o.registerParameters = buildRegisterParameters();
  }
  buildCounterRetrieveRegisterParametersResponse--;
  return o;
}

void checkRetrieveRegisterParametersResponse(
    api.RetrieveRegisterParametersResponse o) {
  buildCounterRetrieveRegisterParametersResponse++;
  if (buildCounterRetrieveRegisterParametersResponse < 3) {
    checkRegisterParameters(o.registerParameters!);
  }
  buildCounterRetrieveRegisterParametersResponse--;
}

core.int buildCounterRetrieveTransferParametersResponse = 0;
api.RetrieveTransferParametersResponse
    buildRetrieveTransferParametersResponse() {
  final o = api.RetrieveTransferParametersResponse();
  buildCounterRetrieveTransferParametersResponse++;
  if (buildCounterRetrieveTransferParametersResponse < 3) {
    o.transferParameters = buildTransferParameters();
  }
  buildCounterRetrieveTransferParametersResponse--;
  return o;
}

void checkRetrieveTransferParametersResponse(
    api.RetrieveTransferParametersResponse o) {
  buildCounterRetrieveTransferParametersResponse++;
  if (buildCounterRetrieveTransferParametersResponse < 3) {
    checkTransferParameters(o.transferParameters!);
  }
  buildCounterRetrieveTransferParametersResponse--;
}

core.List<api.RegisterParameters> buildUnnamed42() => [
      buildRegisterParameters(),
      buildRegisterParameters(),
    ];

void checkUnnamed42(core.List<api.RegisterParameters> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegisterParameters(o[0]);
  checkRegisterParameters(o[1]);
}

core.int buildCounterSearchDomainsResponse = 0;
api.SearchDomainsResponse buildSearchDomainsResponse() {
  final o = api.SearchDomainsResponse();
  buildCounterSearchDomainsResponse++;
  if (buildCounterSearchDomainsResponse < 3) {
    o.registerParameters = buildUnnamed42();
  }
  buildCounterSearchDomainsResponse--;
  return o;
}

void checkSearchDomainsResponse(api.SearchDomainsResponse o) {
  buildCounterSearchDomainsResponse++;
  if (buildCounterSearchDomainsResponse < 3) {
    checkUnnamed42(o.registerParameters!);
  }
  buildCounterSearchDomainsResponse--;
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

core.Map<core.String, core.Object?> buildUnnamed43() => {
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

void checkUnnamed43(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed44() => [
      buildUnnamed43(),
      buildUnnamed43(),
    ];

void checkUnnamed44(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed43(o[0]);
  checkUnnamed43(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed44();
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
    checkUnnamed44(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed45() => [
      'foo',
      'foo',
    ];

void checkUnnamed45(core.List<core.String> o) {
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
    o.permissions = buildUnnamed45();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed45(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed46() => [
      'foo',
      'foo',
    ];

void checkUnnamed46(core.List<core.String> o) {
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
    o.permissions = buildUnnamed46();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed46(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<core.String> buildUnnamed47() => [
      'foo',
      'foo',
    ];

void checkUnnamed47(core.List<core.String> o) {
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

core.int buildCounterTransferDomainRequest = 0;
api.TransferDomainRequest buildTransferDomainRequest() {
  final o = api.TransferDomainRequest();
  buildCounterTransferDomainRequest++;
  if (buildCounterTransferDomainRequest < 3) {
    o.authorizationCode = buildAuthorizationCode();
    o.contactNotices = buildUnnamed47();
    o.registration = buildRegistration();
    o.validateOnly = true;
    o.yearlyPrice = buildMoney();
  }
  buildCounterTransferDomainRequest--;
  return o;
}

void checkTransferDomainRequest(api.TransferDomainRequest o) {
  buildCounterTransferDomainRequest++;
  if (buildCounterTransferDomainRequest < 3) {
    checkAuthorizationCode(o.authorizationCode!);
    checkUnnamed47(o.contactNotices!);
    checkRegistration(o.registration!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
    checkMoney(o.yearlyPrice!);
  }
  buildCounterTransferDomainRequest--;
}

core.List<core.String> buildUnnamed48() => [
      'foo',
      'foo',
    ];

void checkUnnamed48(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed49() => [
      'foo',
      'foo',
    ];

void checkUnnamed49(core.List<core.String> o) {
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

core.int buildCounterTransferParameters = 0;
api.TransferParameters buildTransferParameters() {
  final o = api.TransferParameters();
  buildCounterTransferParameters++;
  if (buildCounterTransferParameters < 3) {
    o.currentRegistrar = 'foo';
    o.currentRegistrarUri = 'foo';
    o.domainName = 'foo';
    o.nameServers = buildUnnamed48();
    o.supportedPrivacy = buildUnnamed49();
    o.transferLockState = 'foo';
    o.yearlyPrice = buildMoney();
  }
  buildCounterTransferParameters--;
  return o;
}

void checkTransferParameters(api.TransferParameters o) {
  buildCounterTransferParameters++;
  if (buildCounterTransferParameters < 3) {
    unittest.expect(
      o.currentRegistrar!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currentRegistrarUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.domainName!,
      unittest.equals('foo'),
    );
    checkUnnamed48(o.nameServers!);
    checkUnnamed49(o.supportedPrivacy!);
    unittest.expect(
      o.transferLockState!,
      unittest.equals('foo'),
    );
    checkMoney(o.yearlyPrice!);
  }
  buildCounterTransferParameters--;
}

core.List<api.WrrPolicyItem> buildUnnamed50() => [
      buildWrrPolicyItem(),
      buildWrrPolicyItem(),
    ];

void checkUnnamed50(core.List<api.WrrPolicyItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWrrPolicyItem(o[0]);
  checkWrrPolicyItem(o[1]);
}

core.int buildCounterWrrPolicy = 0;
api.WrrPolicy buildWrrPolicy() {
  final o = api.WrrPolicy();
  buildCounterWrrPolicy++;
  if (buildCounterWrrPolicy < 3) {
    o.item = buildUnnamed50();
  }
  buildCounterWrrPolicy--;
  return o;
}

void checkWrrPolicy(api.WrrPolicy o) {
  buildCounterWrrPolicy++;
  if (buildCounterWrrPolicy < 3) {
    checkUnnamed50(o.item!);
  }
  buildCounterWrrPolicy--;
}

core.List<core.String> buildUnnamed51() => [
      'foo',
      'foo',
    ];

void checkUnnamed51(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed52() => [
      'foo',
      'foo',
    ];

void checkUnnamed52(core.List<core.String> o) {
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

core.int buildCounterWrrPolicyItem = 0;
api.WrrPolicyItem buildWrrPolicyItem() {
  final o = api.WrrPolicyItem();
  buildCounterWrrPolicyItem++;
  if (buildCounterWrrPolicyItem < 3) {
    o.healthCheckedTargets = buildHealthCheckTargets();
    o.rrdata = buildUnnamed51();
    o.signatureRrdata = buildUnnamed52();
    o.weight = 42.0;
  }
  buildCounterWrrPolicyItem--;
  return o;
}

void checkWrrPolicyItem(api.WrrPolicyItem o) {
  buildCounterWrrPolicyItem++;
  if (buildCounterWrrPolicyItem < 3) {
    checkHealthCheckTargets(o.healthCheckedTargets!);
    checkUnnamed51(o.rrdata!);
    checkUnnamed52(o.signatureRrdata!);
    unittest.expect(
      o.weight!,
      unittest.equals(42.0),
    );
  }
  buildCounterWrrPolicyItem--;
}

void main() {
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

  unittest.group('obj-schema-AuthorizationCode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthorizationCode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthorizationCode.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthorizationCode(od);
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

  unittest.group('obj-schema-ConfigureContactSettingsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigureContactSettingsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigureContactSettingsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigureContactSettingsRequest(od);
    });
  });

  unittest.group('obj-schema-ConfigureDnsSettingsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigureDnsSettingsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigureDnsSettingsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigureDnsSettingsRequest(od);
    });
  });

  unittest.group('obj-schema-ConfigureManagementSettingsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigureManagementSettingsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigureManagementSettingsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigureManagementSettingsRequest(od);
    });
  });

  unittest.group('obj-schema-Contact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Contact.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkContact(od);
    });
  });

  unittest.group('obj-schema-ContactSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContactSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContactSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContactSettings(od);
    });
  });

  unittest.group('obj-schema-CustomDns', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomDns();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CustomDns.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCustomDns(od);
    });
  });

  unittest.group('obj-schema-DnsSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDnsSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DnsSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDnsSettings(od);
    });
  });

  unittest.group('obj-schema-Domain', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomain();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Domain.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDomain(od);
    });
  });

  unittest.group('obj-schema-DomainForwarding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomainForwarding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DomainForwarding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDomainForwarding(od);
    });
  });

  unittest.group('obj-schema-DsRecord', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDsRecord();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DsRecord.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDsRecord(od);
    });
  });

  unittest.group('obj-schema-EmailForwarding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmailForwarding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmailForwarding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEmailForwarding(od);
    });
  });

  unittest.group('obj-schema-ExportRegistrationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportRegistrationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportRegistrationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportRegistrationRequest(od);
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

  unittest.group('obj-schema-GeoPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeoPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GeoPolicy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGeoPolicy(od);
    });
  });

  unittest.group('obj-schema-GeoPolicyItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeoPolicyItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeoPolicyItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGeoPolicyItem(od);
    });
  });

  unittest.group('obj-schema-GlueRecord', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGlueRecord();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GlueRecord.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGlueRecord(od);
    });
  });

  unittest.group('obj-schema-GoogleDomainsDns', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleDomainsDns();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleDomainsDns.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleDomainsDns(od);
    });
  });

  unittest.group('obj-schema-HealthCheckTargets', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHealthCheckTargets();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HealthCheckTargets.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHealthCheckTargets(od);
    });
  });

  unittest.group('obj-schema-ImportDomainRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportDomainRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportDomainRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportDomainRequest(od);
    });
  });

  unittest.group('obj-schema-InitiatePushTransferRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInitiatePushTransferRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InitiatePushTransferRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInitiatePushTransferRequest(od);
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

  unittest.group('obj-schema-ListRegistrationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRegistrationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRegistrationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRegistrationsResponse(od);
    });
  });

  unittest.group('obj-schema-LoadBalancerTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoadBalancerTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoadBalancerTarget.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLoadBalancerTarget(od);
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

  unittest.group('obj-schema-ManagementSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagementSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagementSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagementSettings(od);
    });
  });

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Money.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMoney(od);
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

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-PostalAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostalAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostalAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostalAddress(od);
    });
  });

  unittest.group('obj-schema-PrimaryBackupPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrimaryBackupPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrimaryBackupPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrimaryBackupPolicy(od);
    });
  });

  unittest.group('obj-schema-RRSetRoutingPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRRSetRoutingPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RRSetRoutingPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRRSetRoutingPolicy(od);
    });
  });

  unittest.group('obj-schema-RegisterDomainRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegisterDomainRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegisterDomainRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegisterDomainRequest(od);
    });
  });

  unittest.group('obj-schema-RegisterParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegisterParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegisterParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegisterParameters(od);
    });
  });

  unittest.group('obj-schema-Registration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegistration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Registration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegistration(od);
    });
  });

  unittest.group('obj-schema-RenewDomainRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRenewDomainRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RenewDomainRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRenewDomainRequest(od);
    });
  });

  unittest.group('obj-schema-ResetAuthorizationCodeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResetAuthorizationCodeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResetAuthorizationCodeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResetAuthorizationCodeRequest(od);
    });
  });

  unittest.group('obj-schema-ResourceRecordSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceRecordSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceRecordSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceRecordSet(od);
    });
  });

  unittest.group('obj-schema-RetrieveGoogleDomainsDnsRecordsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetrieveGoogleDomainsDnsRecordsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetrieveGoogleDomainsDnsRecordsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRetrieveGoogleDomainsDnsRecordsResponse(od);
    });
  });

  unittest.group('obj-schema-RetrieveGoogleDomainsForwardingConfigResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetrieveGoogleDomainsForwardingConfigResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetrieveGoogleDomainsForwardingConfigResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRetrieveGoogleDomainsForwardingConfigResponse(od);
    });
  });

  unittest.group('obj-schema-RetrieveImportableDomainsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetrieveImportableDomainsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetrieveImportableDomainsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRetrieveImportableDomainsResponse(od);
    });
  });

  unittest.group('obj-schema-RetrieveRegisterParametersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetrieveRegisterParametersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetrieveRegisterParametersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRetrieveRegisterParametersResponse(od);
    });
  });

  unittest.group('obj-schema-RetrieveTransferParametersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetrieveTransferParametersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetrieveTransferParametersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRetrieveTransferParametersResponse(od);
    });
  });

  unittest.group('obj-schema-SearchDomainsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchDomainsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchDomainsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchDomainsResponse(od);
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

  unittest.group('obj-schema-TransferDomainRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransferDomainRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransferDomainRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransferDomainRequest(od);
    });
  });

  unittest.group('obj-schema-TransferParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransferParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransferParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransferParameters(od);
    });
  });

  unittest.group('obj-schema-WrrPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWrrPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.WrrPolicy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWrrPolicy(od);
    });
  });

  unittest.group('obj-schema-WrrPolicyItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWrrPolicyItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WrrPolicyItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWrrPolicyItem(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
      final res = api.CloudDomainsApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
      final res = api.CloudDomainsApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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

  unittest.group('resource-ProjectsLocationsRegistrationsResource', () {
    unittest.test('method--configureContactSettings', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_request = buildConfigureContactSettingsRequest();
      final arg_registration = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConfigureContactSettingsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConfigureContactSettingsRequest(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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
      final response = await res.configureContactSettings(
          arg_request, arg_registration,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--configureDnsSettings', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_request = buildConfigureDnsSettingsRequest();
      final arg_registration = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConfigureDnsSettingsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConfigureDnsSettingsRequest(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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
      final response = await res.configureDnsSettings(
          arg_request, arg_registration,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--configureManagementSettings', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_request = buildConfigureManagementSettingsRequest();
      final arg_registration = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConfigureManagementSettingsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConfigureManagementSettingsRequest(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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
      final response = await res.configureManagementSettings(
          arg_request, arg_registration,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_request = buildExportRegistrationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExportRegistrationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExportRegistrationRequest(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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
          await res.export(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
        final resp = convert.json.encode(buildRegistration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRegistration(response as api.Registration);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_request = buildImportDomainRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ImportDomainRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkImportDomainRequest(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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
          await res.import(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--initiatePushTransfer', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_request = buildInitiatePushTransferRequest();
      final arg_registration = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InitiatePushTransferRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInitiatePushTransferRequest(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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
      final response = await res.initiatePushTransfer(
          arg_request, arg_registration,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
        final resp = convert.json.encode(buildListRegistrationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListRegistrationsResponse(response as api.ListRegistrationsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_request = buildRegistration();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Registration.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRegistration(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--register', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_request = buildRegisterDomainRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RegisterDomainRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRegisterDomainRequest(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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
          await res.register(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--renewDomain', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_request = buildRenewDomainRequest();
      final arg_registration = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RenewDomainRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRenewDomainRequest(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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
      final response = await res.renewDomain(arg_request, arg_registration,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--resetAuthorizationCode', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_request = buildResetAuthorizationCodeRequest();
      final arg_registration = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResetAuthorizationCodeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResetAuthorizationCodeRequest(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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
        final resp = convert.json.encode(buildAuthorizationCode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.resetAuthorizationCode(
          arg_request, arg_registration,
          $fields: arg_$fields);
      checkAuthorizationCode(response as api.AuthorizationCode);
    });

    unittest.test('method--retrieveAuthorizationCode', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_registration = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
        final resp = convert.json.encode(buildAuthorizationCode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.retrieveAuthorizationCode(arg_registration,
          $fields: arg_$fields);
      checkAuthorizationCode(response as api.AuthorizationCode);
    });

    unittest.test('method--retrieveGoogleDomainsDnsRecords', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_registration = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
            convert.json.encode(buildRetrieveGoogleDomainsDnsRecordsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.retrieveGoogleDomainsDnsRecords(
          arg_registration,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkRetrieveGoogleDomainsDnsRecordsResponse(
          response as api.RetrieveGoogleDomainsDnsRecordsResponse);
    });

    unittest.test('method--retrieveGoogleDomainsForwardingConfig', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_registration = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
        final resp = convert.json
            .encode(buildRetrieveGoogleDomainsForwardingConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.retrieveGoogleDomainsForwardingConfig(
          arg_registration,
          $fields: arg_$fields);
      checkRetrieveGoogleDomainsForwardingConfigResponse(
          response as api.RetrieveGoogleDomainsForwardingConfigResponse);
    });

    unittest.test('method--retrieveImportableDomains', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_location = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
            convert.json.encode(buildRetrieveImportableDomainsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.retrieveImportableDomains(arg_location,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkRetrieveImportableDomainsResponse(
          response as api.RetrieveImportableDomainsResponse);
    });

    unittest.test('method--retrieveRegisterParameters', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_location = 'foo';
      final arg_domainName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
          queryMap['domainName']!.first,
          unittest.equals(arg_domainName),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildRetrieveRegisterParametersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.retrieveRegisterParameters(arg_location,
          domainName: arg_domainName, $fields: arg_$fields);
      checkRetrieveRegisterParametersResponse(
          response as api.RetrieveRegisterParametersResponse);
    });

    unittest.test('method--retrieveTransferParameters', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_location = 'foo';
      final arg_domainName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
          queryMap['domainName']!.first,
          unittest.equals(arg_domainName),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildRetrieveTransferParametersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.retrieveTransferParameters(arg_location,
          domainName: arg_domainName, $fields: arg_$fields);
      checkRetrieveTransferParametersResponse(
          response as api.RetrieveTransferParametersResponse);
    });

    unittest.test('method--searchDomains', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_location = 'foo';
      final arg_query = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
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

        final query = req.url.query;
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
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSearchDomainsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchDomains(arg_location,
          query: arg_query, $fields: arg_$fields);
      checkSearchDomainsResponse(response as api.SearchDomainsResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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

    unittest.test('method--transfer', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_request = buildTransferDomainRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TransferDomainRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTransferDomainRequest(obj);

        final path = req.url.path;
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

        final query = req.url.query;
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
          await res.transfer(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });
}
