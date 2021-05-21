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

import 'package:googleapis_beta/domains/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.AuditLogConfig> buildUnnamed8062() {
  var o = <api.AuditLogConfig>[];
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

void checkUnnamed8062(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0] as api.AuditLogConfig);
  checkAuditLogConfig(o[1] as api.AuditLogConfig);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  var o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed8062();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed8062(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed8063() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8063(core.List<core.String> o) {
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
    o.exemptedMembers = buildUnnamed8063();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed8063(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterAuthorizationCode = 0;
api.AuthorizationCode buildAuthorizationCode() {
  var o = api.AuthorizationCode();
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

core.List<core.String> buildUnnamed8064() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8064(core.List<core.String> o) {
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
    o.members = buildUnnamed8064();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition! as api.Expr);
    checkUnnamed8064(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.List<core.String> buildUnnamed8065() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8065(core.List<core.String> o) {
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
  var o = api.ConfigureContactSettingsRequest();
  buildCounterConfigureContactSettingsRequest++;
  if (buildCounterConfigureContactSettingsRequest < 3) {
    o.contactNotices = buildUnnamed8065();
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
    checkUnnamed8065(o.contactNotices!);
    checkContactSettings(o.contactSettings! as api.ContactSettings);
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
  var o = api.ConfigureDnsSettingsRequest();
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
    checkDnsSettings(o.dnsSettings! as api.DnsSettings);
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
  var o = api.ConfigureManagementSettingsRequest();
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
    checkManagementSettings(o.managementSettings! as api.ManagementSettings);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfigureManagementSettingsRequest--;
}

core.int buildCounterContact = 0;
api.Contact buildContact() {
  var o = api.Contact();
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
    checkPostalAddress(o.postalAddress! as api.PostalAddress);
  }
  buildCounterContact--;
}

core.int buildCounterContactSettings = 0;
api.ContactSettings buildContactSettings() {
  var o = api.ContactSettings();
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
    checkContact(o.adminContact! as api.Contact);
    unittest.expect(
      o.privacy!,
      unittest.equals('foo'),
    );
    checkContact(o.registrantContact! as api.Contact);
    checkContact(o.technicalContact! as api.Contact);
  }
  buildCounterContactSettings--;
}

core.List<api.DsRecord> buildUnnamed8066() {
  var o = <api.DsRecord>[];
  o.add(buildDsRecord());
  o.add(buildDsRecord());
  return o;
}

void checkUnnamed8066(core.List<api.DsRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDsRecord(o[0] as api.DsRecord);
  checkDsRecord(o[1] as api.DsRecord);
}

core.List<core.String> buildUnnamed8067() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8067(core.List<core.String> o) {
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
  var o = api.CustomDns();
  buildCounterCustomDns++;
  if (buildCounterCustomDns < 3) {
    o.dsRecords = buildUnnamed8066();
    o.nameServers = buildUnnamed8067();
  }
  buildCounterCustomDns--;
  return o;
}

void checkCustomDns(api.CustomDns o) {
  buildCounterCustomDns++;
  if (buildCounterCustomDns < 3) {
    checkUnnamed8066(o.dsRecords!);
    checkUnnamed8067(o.nameServers!);
  }
  buildCounterCustomDns--;
}

core.List<api.GlueRecord> buildUnnamed8068() {
  var o = <api.GlueRecord>[];
  o.add(buildGlueRecord());
  o.add(buildGlueRecord());
  return o;
}

void checkUnnamed8068(core.List<api.GlueRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGlueRecord(o[0] as api.GlueRecord);
  checkGlueRecord(o[1] as api.GlueRecord);
}

core.int buildCounterDnsSettings = 0;
api.DnsSettings buildDnsSettings() {
  var o = api.DnsSettings();
  buildCounterDnsSettings++;
  if (buildCounterDnsSettings < 3) {
    o.customDns = buildCustomDns();
    o.glueRecords = buildUnnamed8068();
    o.googleDomainsDns = buildGoogleDomainsDns();
  }
  buildCounterDnsSettings--;
  return o;
}

void checkDnsSettings(api.DnsSettings o) {
  buildCounterDnsSettings++;
  if (buildCounterDnsSettings < 3) {
    checkCustomDns(o.customDns! as api.CustomDns);
    checkUnnamed8068(o.glueRecords!);
    checkGoogleDomainsDns(o.googleDomainsDns! as api.GoogleDomainsDns);
  }
  buildCounterDnsSettings--;
}

core.int buildCounterDsRecord = 0;
api.DsRecord buildDsRecord() {
  var o = api.DsRecord();
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

core.int buildCounterExportRegistrationRequest = 0;
api.ExportRegistrationRequest buildExportRegistrationRequest() {
  var o = api.ExportRegistrationRequest();
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

core.List<core.String> buildUnnamed8069() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8069(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8070() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8070(core.List<core.String> o) {
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
  var o = api.GlueRecord();
  buildCounterGlueRecord++;
  if (buildCounterGlueRecord < 3) {
    o.hostName = 'foo';
    o.ipv4Addresses = buildUnnamed8069();
    o.ipv6Addresses = buildUnnamed8070();
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
    checkUnnamed8069(o.ipv4Addresses!);
    checkUnnamed8070(o.ipv6Addresses!);
  }
  buildCounterGlueRecord--;
}

core.List<api.DsRecord> buildUnnamed8071() {
  var o = <api.DsRecord>[];
  o.add(buildDsRecord());
  o.add(buildDsRecord());
  return o;
}

void checkUnnamed8071(core.List<api.DsRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDsRecord(o[0] as api.DsRecord);
  checkDsRecord(o[1] as api.DsRecord);
}

core.List<core.String> buildUnnamed8072() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8072(core.List<core.String> o) {
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
  var o = api.GoogleDomainsDns();
  buildCounterGoogleDomainsDns++;
  if (buildCounterGoogleDomainsDns < 3) {
    o.dsRecords = buildUnnamed8071();
    o.dsState = 'foo';
    o.nameServers = buildUnnamed8072();
  }
  buildCounterGoogleDomainsDns--;
  return o;
}

void checkGoogleDomainsDns(api.GoogleDomainsDns o) {
  buildCounterGoogleDomainsDns++;
  if (buildCounterGoogleDomainsDns < 3) {
    checkUnnamed8071(o.dsRecords!);
    unittest.expect(
      o.dsState!,
      unittest.equals('foo'),
    );
    checkUnnamed8072(o.nameServers!);
  }
  buildCounterGoogleDomainsDns--;
}

core.List<api.Location> buildUnnamed8073() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed8073(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0] as api.Location);
  checkLocation(o[1] as api.Location);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  var o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed8073();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed8073(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed8074() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed8074(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed8074();
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
    checkUnnamed8074(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Registration> buildUnnamed8075() {
  var o = <api.Registration>[];
  o.add(buildRegistration());
  o.add(buildRegistration());
  return o;
}

void checkUnnamed8075(core.List<api.Registration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegistration(o[0] as api.Registration);
  checkRegistration(o[1] as api.Registration);
}

core.int buildCounterListRegistrationsResponse = 0;
api.ListRegistrationsResponse buildListRegistrationsResponse() {
  var o = api.ListRegistrationsResponse();
  buildCounterListRegistrationsResponse++;
  if (buildCounterListRegistrationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.registrations = buildUnnamed8075();
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
    checkUnnamed8075(o.registrations!);
  }
  buildCounterListRegistrationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed8076() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed8076(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed8077() {
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

void checkUnnamed8077(core.Map<core.String, core.Object> o) {
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
    o.labels = buildUnnamed8076();
    o.locationId = 'foo';
    o.metadata = buildUnnamed8077();
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
    checkUnnamed8076(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed8077(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterManagementSettings = 0;
api.ManagementSettings buildManagementSettings() {
  var o = api.ManagementSettings();
  buildCounterManagementSettings++;
  if (buildCounterManagementSettings < 3) {
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
  var o = api.Money();
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

core.Map<core.String, core.Object> buildUnnamed8078() {
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

void checkUnnamed8078(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed8079() {
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

void checkUnnamed8079(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed8078();
    o.name = 'foo';
    o.response = buildUnnamed8079();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error! as api.Status);
    checkUnnamed8078(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed8079(o.response!);
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
    o.statusDetail = 'foo';
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
    unittest.expect(
      o.statusDetail!,
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

core.List<api.AuditConfig> buildUnnamed8080() {
  var o = <api.AuditConfig>[];
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

void checkUnnamed8080(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0] as api.AuditConfig);
  checkAuditConfig(o[1] as api.AuditConfig);
}

core.List<api.Binding> buildUnnamed8081() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed8081(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0] as api.Binding);
  checkBinding(o[1] as api.Binding);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed8080();
    o.bindings = buildUnnamed8081();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed8080(o.auditConfigs!);
    checkUnnamed8081(o.bindings!);
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

core.List<core.String> buildUnnamed8082() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8082(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8083() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8083(core.List<core.String> o) {
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
  var o = api.PostalAddress();
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    o.addressLines = buildUnnamed8082();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed8083();
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
    checkUnnamed8082(o.addressLines!);
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
    checkUnnamed8083(o.recipients!);
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

core.List<core.String> buildUnnamed8084() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8084(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8085() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8085(core.List<core.String> o) {
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
  var o = api.RegisterDomainRequest();
  buildCounterRegisterDomainRequest++;
  if (buildCounterRegisterDomainRequest < 3) {
    o.contactNotices = buildUnnamed8084();
    o.domainNotices = buildUnnamed8085();
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
    checkUnnamed8084(o.contactNotices!);
    checkUnnamed8085(o.domainNotices!);
    checkRegistration(o.registration! as api.Registration);
    unittest.expect(o.validateOnly!, unittest.isTrue);
    checkMoney(o.yearlyPrice! as api.Money);
  }
  buildCounterRegisterDomainRequest--;
}

core.List<core.String> buildUnnamed8086() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8086(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8087() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8087(core.List<core.String> o) {
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
  var o = api.RegisterParameters();
  buildCounterRegisterParameters++;
  if (buildCounterRegisterParameters < 3) {
    o.availability = 'foo';
    o.domainName = 'foo';
    o.domainNotices = buildUnnamed8086();
    o.supportedPrivacy = buildUnnamed8087();
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
    checkUnnamed8086(o.domainNotices!);
    checkUnnamed8087(o.supportedPrivacy!);
    checkMoney(o.yearlyPrice! as api.Money);
  }
  buildCounterRegisterParameters--;
}

core.List<core.String> buildUnnamed8088() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8088(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed8089() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed8089(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed8090() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8090(core.List<core.String> o) {
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
  var o = api.Registration();
  buildCounterRegistration++;
  if (buildCounterRegistration < 3) {
    o.contactSettings = buildContactSettings();
    o.createTime = 'foo';
    o.dnsSettings = buildDnsSettings();
    o.domainName = 'foo';
    o.expireTime = 'foo';
    o.issues = buildUnnamed8088();
    o.labels = buildUnnamed8089();
    o.managementSettings = buildManagementSettings();
    o.name = 'foo';
    o.pendingContactSettings = buildContactSettings();
    o.state = 'foo';
    o.supportedPrivacy = buildUnnamed8090();
  }
  buildCounterRegistration--;
  return o;
}

void checkRegistration(api.Registration o) {
  buildCounterRegistration++;
  if (buildCounterRegistration < 3) {
    checkContactSettings(o.contactSettings! as api.ContactSettings);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkDnsSettings(o.dnsSettings! as api.DnsSettings);
    unittest.expect(
      o.domainName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    checkUnnamed8088(o.issues!);
    checkUnnamed8089(o.labels!);
    checkManagementSettings(o.managementSettings! as api.ManagementSettings);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkContactSettings(o.pendingContactSettings! as api.ContactSettings);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed8090(o.supportedPrivacy!);
  }
  buildCounterRegistration--;
}

core.int buildCounterResetAuthorizationCodeRequest = 0;
api.ResetAuthorizationCodeRequest buildResetAuthorizationCodeRequest() {
  var o = api.ResetAuthorizationCodeRequest();
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

core.int buildCounterRetrieveRegisterParametersResponse = 0;
api.RetrieveRegisterParametersResponse
    buildRetrieveRegisterParametersResponse() {
  var o = api.RetrieveRegisterParametersResponse();
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
    checkRegisterParameters(o.registerParameters! as api.RegisterParameters);
  }
  buildCounterRetrieveRegisterParametersResponse--;
}

core.List<api.RegisterParameters> buildUnnamed8091() {
  var o = <api.RegisterParameters>[];
  o.add(buildRegisterParameters());
  o.add(buildRegisterParameters());
  return o;
}

void checkUnnamed8091(core.List<api.RegisterParameters> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegisterParameters(o[0] as api.RegisterParameters);
  checkRegisterParameters(o[1] as api.RegisterParameters);
}

core.int buildCounterSearchDomainsResponse = 0;
api.SearchDomainsResponse buildSearchDomainsResponse() {
  var o = api.SearchDomainsResponse();
  buildCounterSearchDomainsResponse++;
  if (buildCounterSearchDomainsResponse < 3) {
    o.registerParameters = buildUnnamed8091();
  }
  buildCounterSearchDomainsResponse--;
  return o;
}

void checkSearchDomainsResponse(api.SearchDomainsResponse o) {
  buildCounterSearchDomainsResponse++;
  if (buildCounterSearchDomainsResponse < 3) {
    checkUnnamed8091(o.registerParameters!);
  }
  buildCounterSearchDomainsResponse--;
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

core.Map<core.String, core.Object> buildUnnamed8092() {
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

void checkUnnamed8092(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed8093() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed8092());
  o.add(buildUnnamed8092());
  return o;
}

void checkUnnamed8093(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed8092(o[0]);
  checkUnnamed8092(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed8093();
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
    checkUnnamed8093(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed8094() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8094(core.List<core.String> o) {
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
    o.permissions = buildUnnamed8094();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed8094(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed8095() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8095(core.List<core.String> o) {
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
    o.permissions = buildUnnamed8095();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed8095(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

void main() {
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

  unittest.group('obj-schema-AuthorizationCode', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAuthorizationCode();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AuthorizationCode.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthorizationCode(od as api.AuthorizationCode);
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

  unittest.group('obj-schema-ConfigureContactSettingsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigureContactSettingsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigureContactSettingsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigureContactSettingsRequest(
          od as api.ConfigureContactSettingsRequest);
    });
  });

  unittest.group('obj-schema-ConfigureDnsSettingsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigureDnsSettingsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigureDnsSettingsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigureDnsSettingsRequest(od as api.ConfigureDnsSettingsRequest);
    });
  });

  unittest.group('obj-schema-ConfigureManagementSettingsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildConfigureManagementSettingsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ConfigureManagementSettingsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigureManagementSettingsRequest(
          od as api.ConfigureManagementSettingsRequest);
    });
  });

  unittest.group('obj-schema-Contact', () {
    unittest.test('to-json--from-json', () async {
      var o = buildContact();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Contact.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkContact(od as api.Contact);
    });
  });

  unittest.group('obj-schema-ContactSettings', () {
    unittest.test('to-json--from-json', () async {
      var o = buildContactSettings();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ContactSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContactSettings(od as api.ContactSettings);
    });
  });

  unittest.group('obj-schema-CustomDns', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCustomDns();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.CustomDns.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCustomDns(od as api.CustomDns);
    });
  });

  unittest.group('obj-schema-DnsSettings', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDnsSettings();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DnsSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDnsSettings(od as api.DnsSettings);
    });
  });

  unittest.group('obj-schema-DsRecord', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDsRecord();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.DsRecord.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDsRecord(od as api.DsRecord);
    });
  });

  unittest.group('obj-schema-ExportRegistrationRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildExportRegistrationRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ExportRegistrationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportRegistrationRequest(od as api.ExportRegistrationRequest);
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

  unittest.group('obj-schema-GlueRecord', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGlueRecord();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GlueRecord.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGlueRecord(od as api.GlueRecord);
    });
  });

  unittest.group('obj-schema-GoogleDomainsDns', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleDomainsDns();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleDomainsDns.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleDomainsDns(od as api.GoogleDomainsDns);
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

  unittest.group('obj-schema-ListRegistrationsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListRegistrationsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListRegistrationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRegistrationsResponse(od as api.ListRegistrationsResponse);
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

  unittest.group('obj-schema-ManagementSettings', () {
    unittest.test('to-json--from-json', () async {
      var o = buildManagementSettings();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ManagementSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagementSettings(od as api.ManagementSettings);
    });
  });

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMoney();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Money.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMoney(od as api.Money);
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

  unittest.group('obj-schema-PostalAddress', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPostalAddress();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PostalAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostalAddress(od as api.PostalAddress);
    });
  });

  unittest.group('obj-schema-RegisterDomainRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRegisterDomainRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RegisterDomainRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegisterDomainRequest(od as api.RegisterDomainRequest);
    });
  });

  unittest.group('obj-schema-RegisterParameters', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRegisterParameters();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RegisterParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegisterParameters(od as api.RegisterParameters);
    });
  });

  unittest.group('obj-schema-Registration', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRegistration();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Registration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegistration(od as api.Registration);
    });
  });

  unittest.group('obj-schema-ResetAuthorizationCodeRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildResetAuthorizationCodeRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ResetAuthorizationCodeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResetAuthorizationCodeRequest(
          od as api.ResetAuthorizationCodeRequest);
    });
  });

  unittest.group('obj-schema-RetrieveRegisterParametersResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRetrieveRegisterParametersResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RetrieveRegisterParametersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRetrieveRegisterParametersResponse(
          od as api.RetrieveRegisterParametersResponse);
    });
  });

  unittest.group('obj-schema-SearchDomainsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSearchDomainsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SearchDomainsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchDomainsResponse(od as api.SearchDomainsResponse);
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

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CloudDomainsApi(mock).projects.locations;
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
      var res = api.CloudDomainsApi(mock).projects.locations;
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

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CloudDomainsApi(mock).projects.locations.operations;
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
      var res = api.CloudDomainsApi(mock).projects.locations.operations;
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

  unittest.group('resource-ProjectsLocationsRegistrationsResource', () {
    unittest.test('method--configureContactSettings', () async {
      var mock = HttpServerMock();
      var res = api.CloudDomainsApi(mock).projects.locations.registrations;
      var arg_request = buildConfigureContactSettingsRequest();
      var arg_registration = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ConfigureContactSettingsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConfigureContactSettingsRequest(
            obj as api.ConfigureContactSettingsRequest);

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
      final response = await res.configureContactSettings(
          arg_request, arg_registration,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--configureDnsSettings', () async {
      var mock = HttpServerMock();
      var res = api.CloudDomainsApi(mock).projects.locations.registrations;
      var arg_request = buildConfigureDnsSettingsRequest();
      var arg_registration = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ConfigureDnsSettingsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConfigureDnsSettingsRequest(
            obj as api.ConfigureDnsSettingsRequest);

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
      final response = await res.configureDnsSettings(
          arg_request, arg_registration,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--configureManagementSettings', () async {
      var mock = HttpServerMock();
      var res = api.CloudDomainsApi(mock).projects.locations.registrations;
      var arg_request = buildConfigureManagementSettingsRequest();
      var arg_registration = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ConfigureManagementSettingsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConfigureManagementSettingsRequest(
            obj as api.ConfigureManagementSettingsRequest);

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
      final response = await res.configureManagementSettings(
          arg_request, arg_registration,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.CloudDomainsApi(mock).projects.locations.registrations;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--export', () async {
      var mock = HttpServerMock();
      var res = api.CloudDomainsApi(mock).projects.locations.registrations;
      var arg_request = buildExportRegistrationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ExportRegistrationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExportRegistrationRequest(obj as api.ExportRegistrationRequest);

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
          await res.export(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CloudDomainsApi(mock).projects.locations.registrations;
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
        var resp = convert.json.encode(buildRegistration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRegistration(response as api.Registration);
    });

    unittest.test('method--getIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.CloudDomainsApi(mock).projects.locations.registrations;
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
      var res = api.CloudDomainsApi(mock).projects.locations.registrations;
      var arg_parent = 'foo';
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
        var resp = convert.json.encode(buildListRegistrationsResponse());
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
      var mock = HttpServerMock();
      var res = api.CloudDomainsApi(mock).projects.locations.registrations;
      var arg_request = buildRegistration();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Registration.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRegistration(obj as api.Registration);

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
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--register', () async {
      var mock = HttpServerMock();
      var res = api.CloudDomainsApi(mock).projects.locations.registrations;
      var arg_request = buildRegisterDomainRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RegisterDomainRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRegisterDomainRequest(obj as api.RegisterDomainRequest);

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
          await res.register(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--resetAuthorizationCode', () async {
      var mock = HttpServerMock();
      var res = api.CloudDomainsApi(mock).projects.locations.registrations;
      var arg_request = buildResetAuthorizationCodeRequest();
      var arg_registration = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ResetAuthorizationCodeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResetAuthorizationCodeRequest(
            obj as api.ResetAuthorizationCodeRequest);

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
        var resp = convert.json.encode(buildAuthorizationCode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.resetAuthorizationCode(
          arg_request, arg_registration,
          $fields: arg_$fields);
      checkAuthorizationCode(response as api.AuthorizationCode);
    });

    unittest.test('method--retrieveAuthorizationCode', () async {
      var mock = HttpServerMock();
      var res = api.CloudDomainsApi(mock).projects.locations.registrations;
      var arg_registration = 'foo';
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
        var resp = convert.json.encode(buildAuthorizationCode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.retrieveAuthorizationCode(arg_registration,
          $fields: arg_$fields);
      checkAuthorizationCode(response as api.AuthorizationCode);
    });

    unittest.test('method--retrieveRegisterParameters', () async {
      var mock = HttpServerMock();
      var res = api.CloudDomainsApi(mock).projects.locations.registrations;
      var arg_location = 'foo';
      var arg_domainName = 'foo';
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
          queryMap["domainName"]!.first,
          unittest.equals(arg_domainName),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildRetrieveRegisterParametersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.retrieveRegisterParameters(arg_location,
          domainName: arg_domainName, $fields: arg_$fields);
      checkRetrieveRegisterParametersResponse(
          response as api.RetrieveRegisterParametersResponse);
    });

    unittest.test('method--searchDomains', () async {
      var mock = HttpServerMock();
      var res = api.CloudDomainsApi(mock).projects.locations.registrations;
      var arg_location = 'foo';
      var arg_query = 'foo';
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
          queryMap["query"]!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSearchDomainsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchDomains(arg_location,
          query: arg_query, $fields: arg_$fields);
      checkSearchDomainsResponse(response as api.SearchDomainsResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.CloudDomainsApi(mock).projects.locations.registrations;
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
      var res = api.CloudDomainsApi(mock).projects.locations.registrations;
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
