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

import 'package:googleapis_beta/domains/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.AuditLogConfig> buildUnnamed8550() {
  final o = <api.AuditLogConfig>[];
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

void checkUnnamed8550(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed8550();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed8550(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed8551() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8551(core.List<core.String> o) {
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
    o.exemptedMembers = buildUnnamed8551();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed8551(o.exemptedMembers!);
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

core.List<core.String> buildUnnamed8552() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8552(core.List<core.String> o) {
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
    o.members = buildUnnamed8552();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed8552(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.List<core.String> buildUnnamed8553() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8553(core.List<core.String> o) {
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
    o.contactNotices = buildUnnamed8553();
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
    checkUnnamed8553(o.contactNotices!);
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

core.List<api.DsRecord> buildUnnamed8554() {
  final o = <api.DsRecord>[];
  o.add(buildDsRecord());
  o.add(buildDsRecord());
  return o;
}

void checkUnnamed8554(core.List<api.DsRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDsRecord(o[0]);
  checkDsRecord(o[1]);
}

core.List<core.String> buildUnnamed8555() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8555(core.List<core.String> o) {
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
    o.dsRecords = buildUnnamed8554();
    o.nameServers = buildUnnamed8555();
  }
  buildCounterCustomDns--;
  return o;
}

void checkCustomDns(api.CustomDns o) {
  buildCounterCustomDns++;
  if (buildCounterCustomDns < 3) {
    checkUnnamed8554(o.dsRecords!);
    checkUnnamed8555(o.nameServers!);
  }
  buildCounterCustomDns--;
}

core.List<api.GlueRecord> buildUnnamed8556() {
  final o = <api.GlueRecord>[];
  o.add(buildGlueRecord());
  o.add(buildGlueRecord());
  return o;
}

void checkUnnamed8556(core.List<api.GlueRecord> o) {
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
    o.glueRecords = buildUnnamed8556();
    o.googleDomainsDns = buildGoogleDomainsDns();
  }
  buildCounterDnsSettings--;
  return o;
}

void checkDnsSettings(api.DnsSettings o) {
  buildCounterDnsSettings++;
  if (buildCounterDnsSettings < 3) {
    checkCustomDns(o.customDns!);
    checkUnnamed8556(o.glueRecords!);
    checkGoogleDomainsDns(o.googleDomainsDns!);
  }
  buildCounterDnsSettings--;
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

core.List<core.String> buildUnnamed8557() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8557(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8558() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8558(core.List<core.String> o) {
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
    o.ipv4Addresses = buildUnnamed8557();
    o.ipv6Addresses = buildUnnamed8558();
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
    checkUnnamed8557(o.ipv4Addresses!);
    checkUnnamed8558(o.ipv6Addresses!);
  }
  buildCounterGlueRecord--;
}

core.List<api.DsRecord> buildUnnamed8559() {
  final o = <api.DsRecord>[];
  o.add(buildDsRecord());
  o.add(buildDsRecord());
  return o;
}

void checkUnnamed8559(core.List<api.DsRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDsRecord(o[0]);
  checkDsRecord(o[1]);
}

core.List<core.String> buildUnnamed8560() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8560(core.List<core.String> o) {
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
    o.dsRecords = buildUnnamed8559();
    o.dsState = 'foo';
    o.nameServers = buildUnnamed8560();
  }
  buildCounterGoogleDomainsDns--;
  return o;
}

void checkGoogleDomainsDns(api.GoogleDomainsDns o) {
  buildCounterGoogleDomainsDns++;
  if (buildCounterGoogleDomainsDns < 3) {
    checkUnnamed8559(o.dsRecords!);
    unittest.expect(
      o.dsState!,
      unittest.equals('foo'),
    );
    checkUnnamed8560(o.nameServers!);
  }
  buildCounterGoogleDomainsDns--;
}

core.List<api.Location> buildUnnamed8561() {
  final o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed8561(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed8561();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed8561(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed8562() {
  final o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed8562(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed8562();
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
    checkUnnamed8562(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Registration> buildUnnamed8563() {
  final o = <api.Registration>[];
  o.add(buildRegistration());
  o.add(buildRegistration());
  return o;
}

void checkUnnamed8563(core.List<api.Registration> o) {
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
    o.registrations = buildUnnamed8563();
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
    checkUnnamed8563(o.registrations!);
  }
  buildCounterListRegistrationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed8564() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed8564(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed8565() {
  final o = <core.String, core.Object>{};
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

void checkUnnamed8565(core.Map<core.String, core.Object> o) {
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
    o.labels = buildUnnamed8564();
    o.locationId = 'foo';
    o.metadata = buildUnnamed8565();
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
    checkUnnamed8564(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed8565(o.metadata!);
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

core.Map<core.String, core.Object> buildUnnamed8566() {
  final o = <core.String, core.Object>{};
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

void checkUnnamed8566(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed8567() {
  final o = <core.String, core.Object>{};
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

void checkUnnamed8567(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed8566();
    o.name = 'foo';
    o.response = buildUnnamed8567();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed8566(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed8567(o.response!);
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

core.List<api.AuditConfig> buildUnnamed8568() {
  final o = <api.AuditConfig>[];
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

void checkUnnamed8568(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed8569() {
  final o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed8569(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed8568();
    o.bindings = buildUnnamed8569();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed8568(o.auditConfigs!);
    checkUnnamed8569(o.bindings!);
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

core.List<core.String> buildUnnamed8570() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8570(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8571() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8571(core.List<core.String> o) {
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
    o.addressLines = buildUnnamed8570();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed8571();
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
    checkUnnamed8570(o.addressLines!);
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
    checkUnnamed8571(o.recipients!);
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

core.List<core.String> buildUnnamed8572() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8572(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8573() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8573(core.List<core.String> o) {
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
    o.contactNotices = buildUnnamed8572();
    o.domainNotices = buildUnnamed8573();
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
    checkUnnamed8572(o.contactNotices!);
    checkUnnamed8573(o.domainNotices!);
    checkRegistration(o.registration!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
    checkMoney(o.yearlyPrice!);
  }
  buildCounterRegisterDomainRequest--;
}

core.List<core.String> buildUnnamed8574() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8574(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8575() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8575(core.List<core.String> o) {
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
    o.domainNotices = buildUnnamed8574();
    o.supportedPrivacy = buildUnnamed8575();
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
    checkUnnamed8574(o.domainNotices!);
    checkUnnamed8575(o.supportedPrivacy!);
    checkMoney(o.yearlyPrice!);
  }
  buildCounterRegisterParameters--;
}

core.List<core.String> buildUnnamed8576() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8576(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed8577() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed8577(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed8578() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8578(core.List<core.String> o) {
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
    o.expireTime = 'foo';
    o.issues = buildUnnamed8576();
    o.labels = buildUnnamed8577();
    o.managementSettings = buildManagementSettings();
    o.name = 'foo';
    o.pendingContactSettings = buildContactSettings();
    o.state = 'foo';
    o.supportedPrivacy = buildUnnamed8578();
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
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    checkUnnamed8576(o.issues!);
    checkUnnamed8577(o.labels!);
    checkManagementSettings(o.managementSettings!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkContactSettings(o.pendingContactSettings!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed8578(o.supportedPrivacy!);
  }
  buildCounterRegistration--;
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

core.List<api.RegisterParameters> buildUnnamed8579() {
  final o = <api.RegisterParameters>[];
  o.add(buildRegisterParameters());
  o.add(buildRegisterParameters());
  return o;
}

void checkUnnamed8579(core.List<api.RegisterParameters> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegisterParameters(o[0]);
  checkRegisterParameters(o[1]);
}

core.int buildCounterSearchDomainsResponse = 0;
api.SearchDomainsResponse buildSearchDomainsResponse() {
  final o = api.SearchDomainsResponse();
  buildCounterSearchDomainsResponse++;
  if (buildCounterSearchDomainsResponse < 3) {
    o.registerParameters = buildUnnamed8579();
  }
  buildCounterSearchDomainsResponse--;
  return o;
}

void checkSearchDomainsResponse(api.SearchDomainsResponse o) {
  buildCounterSearchDomainsResponse++;
  if (buildCounterSearchDomainsResponse < 3) {
    checkUnnamed8579(o.registerParameters!);
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

core.Map<core.String, core.Object> buildUnnamed8580() {
  final o = <core.String, core.Object>{};
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

void checkUnnamed8580(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed8581() {
  final o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed8580());
  o.add(buildUnnamed8580());
  return o;
}

void checkUnnamed8581(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed8580(o[0]);
  checkUnnamed8580(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed8581();
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
    checkUnnamed8581(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed8582() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8582(core.List<core.String> o) {
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
    o.permissions = buildUnnamed8582();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed8582(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed8583() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8583(core.List<core.String> o) {
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
    o.permissions = buildUnnamed8583();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed8583(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
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

  unittest.group('obj-schema-DsRecord', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDsRecord();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DsRecord.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDsRecord(od);
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

  unittest.group('obj-schema-PostalAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostalAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostalAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostalAddress(od);
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

  unittest.group('obj-schema-ResetAuthorizationCodeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResetAuthorizationCodeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResetAuthorizationCodeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResetAuthorizationCodeRequest(od);
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

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations;
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
      final res = api.CloudDomainsApi(mock).projects.locations;
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

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.operations;
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
      final res = api.CloudDomainsApi(mock).projects.locations.operations;
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
          await res.export(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
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
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_parent = 'foo';
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
          await res.register(arg_request, arg_parent, $fields: arg_$fields);
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
        final resp = convert.json.encode(buildAuthorizationCode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.retrieveAuthorizationCode(arg_registration,
          $fields: arg_$fields);
      checkAuthorizationCode(response as api.AuthorizationCode);
    });

    unittest.test('method--retrieveRegisterParameters', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_location = 'foo';
      final arg_domainName = 'foo';
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

    unittest.test('method--searchDomains', () async {
      final mock = HttpServerMock();
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
      final arg_location = 'foo';
      final arg_query = 'foo';
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
      final res = api.CloudDomainsApi(mock).projects.locations.registrations;
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
