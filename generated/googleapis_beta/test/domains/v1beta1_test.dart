// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis_beta/domains/v1beta1.dart' as api;

import '../test_shared.dart';

core.List<api.AuditLogConfig> buildUnnamed7579() {
  var o = <api.AuditLogConfig>[];
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

void checkUnnamed7579(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0] as api.AuditLogConfig);
  checkAuditLogConfig(o[1] as api.AuditLogConfig);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  var o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed7579();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed7579(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed7580() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7580(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  var o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed7580();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed7580(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
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
    unittest.expect(o.code, unittest.equals('foo'));
  }
  buildCounterAuthorizationCode--;
}

core.List<core.String> buildUnnamed7581() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7581(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  var o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed7581();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition as api.Expr);
    checkUnnamed7581(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.List<core.String> buildUnnamed7582() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7582(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterConfigureContactSettingsRequest = 0;
api.ConfigureContactSettingsRequest buildConfigureContactSettingsRequest() {
  var o = api.ConfigureContactSettingsRequest();
  buildCounterConfigureContactSettingsRequest++;
  if (buildCounterConfigureContactSettingsRequest < 3) {
    o.contactNotices = buildUnnamed7582();
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
    checkUnnamed7582(o.contactNotices);
    checkContactSettings(o.contactSettings as api.ContactSettings);
    unittest.expect(o.updateMask, unittest.equals('foo'));
    unittest.expect(o.validateOnly, unittest.isTrue);
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
    checkDnsSettings(o.dnsSettings as api.DnsSettings);
    unittest.expect(o.updateMask, unittest.equals('foo'));
    unittest.expect(o.validateOnly, unittest.isTrue);
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
    checkManagementSettings(o.managementSettings as api.ManagementSettings);
    unittest.expect(o.updateMask, unittest.equals('foo'));
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
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.faxNumber, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    checkPostalAddress(o.postalAddress as api.PostalAddress);
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
    checkContact(o.adminContact as api.Contact);
    unittest.expect(o.privacy, unittest.equals('foo'));
    checkContact(o.registrantContact as api.Contact);
    checkContact(o.technicalContact as api.Contact);
  }
  buildCounterContactSettings--;
}

core.List<api.DsRecord> buildUnnamed7583() {
  var o = <api.DsRecord>[];
  o.add(buildDsRecord());
  o.add(buildDsRecord());
  return o;
}

void checkUnnamed7583(core.List<api.DsRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDsRecord(o[0] as api.DsRecord);
  checkDsRecord(o[1] as api.DsRecord);
}

core.List<core.String> buildUnnamed7584() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7584(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCustomDns = 0;
api.CustomDns buildCustomDns() {
  var o = api.CustomDns();
  buildCounterCustomDns++;
  if (buildCounterCustomDns < 3) {
    o.dsRecords = buildUnnamed7583();
    o.nameServers = buildUnnamed7584();
  }
  buildCounterCustomDns--;
  return o;
}

void checkCustomDns(api.CustomDns o) {
  buildCounterCustomDns++;
  if (buildCounterCustomDns < 3) {
    checkUnnamed7583(o.dsRecords);
    checkUnnamed7584(o.nameServers);
  }
  buildCounterCustomDns--;
}

core.List<api.GlueRecord> buildUnnamed7585() {
  var o = <api.GlueRecord>[];
  o.add(buildGlueRecord());
  o.add(buildGlueRecord());
  return o;
}

void checkUnnamed7585(core.List<api.GlueRecord> o) {
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
    o.glueRecords = buildUnnamed7585();
    o.googleDomainsDns = buildGoogleDomainsDns();
  }
  buildCounterDnsSettings--;
  return o;
}

void checkDnsSettings(api.DnsSettings o) {
  buildCounterDnsSettings++;
  if (buildCounterDnsSettings < 3) {
    checkCustomDns(o.customDns as api.CustomDns);
    checkUnnamed7585(o.glueRecords);
    checkGoogleDomainsDns(o.googleDomainsDns as api.GoogleDomainsDns);
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
    unittest.expect(o.algorithm, unittest.equals('foo'));
    unittest.expect(o.digest, unittest.equals('foo'));
    unittest.expect(o.digestType, unittest.equals('foo'));
    unittest.expect(o.keyTag, unittest.equals(42));
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.List<core.String> buildUnnamed7586() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7586(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed7587() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7587(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGlueRecord = 0;
api.GlueRecord buildGlueRecord() {
  var o = api.GlueRecord();
  buildCounterGlueRecord++;
  if (buildCounterGlueRecord < 3) {
    o.hostName = 'foo';
    o.ipv4Addresses = buildUnnamed7586();
    o.ipv6Addresses = buildUnnamed7587();
  }
  buildCounterGlueRecord--;
  return o;
}

void checkGlueRecord(api.GlueRecord o) {
  buildCounterGlueRecord++;
  if (buildCounterGlueRecord < 3) {
    unittest.expect(o.hostName, unittest.equals('foo'));
    checkUnnamed7586(o.ipv4Addresses);
    checkUnnamed7587(o.ipv6Addresses);
  }
  buildCounterGlueRecord--;
}

core.List<api.DsRecord> buildUnnamed7588() {
  var o = <api.DsRecord>[];
  o.add(buildDsRecord());
  o.add(buildDsRecord());
  return o;
}

void checkUnnamed7588(core.List<api.DsRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDsRecord(o[0] as api.DsRecord);
  checkDsRecord(o[1] as api.DsRecord);
}

core.List<core.String> buildUnnamed7589() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7589(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleDomainsDns = 0;
api.GoogleDomainsDns buildGoogleDomainsDns() {
  var o = api.GoogleDomainsDns();
  buildCounterGoogleDomainsDns++;
  if (buildCounterGoogleDomainsDns < 3) {
    o.dsRecords = buildUnnamed7588();
    o.dsState = 'foo';
    o.nameServers = buildUnnamed7589();
  }
  buildCounterGoogleDomainsDns--;
  return o;
}

void checkGoogleDomainsDns(api.GoogleDomainsDns o) {
  buildCounterGoogleDomainsDns++;
  if (buildCounterGoogleDomainsDns < 3) {
    checkUnnamed7588(o.dsRecords);
    unittest.expect(o.dsState, unittest.equals('foo'));
    checkUnnamed7589(o.nameServers);
  }
  buildCounterGoogleDomainsDns--;
}

core.List<api.Location> buildUnnamed7590() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed7590(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0] as api.Location);
  checkLocation(o[1] as api.Location);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  var o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed7590();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed7590(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed7591() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed7591(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed7591();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed7591(o.operations);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Registration> buildUnnamed7592() {
  var o = <api.Registration>[];
  o.add(buildRegistration());
  o.add(buildRegistration());
  return o;
}

void checkUnnamed7592(core.List<api.Registration> o) {
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
    o.registrations = buildUnnamed7592();
  }
  buildCounterListRegistrationsResponse--;
  return o;
}

void checkListRegistrationsResponse(api.ListRegistrationsResponse o) {
  buildCounterListRegistrationsResponse++;
  if (buildCounterListRegistrationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed7592(o.registrations);
  }
  buildCounterListRegistrationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed7593() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7593(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed7594() {
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

void checkUnnamed7594(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  var o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed7593();
    o.locationId = 'foo';
    o.metadata = buildUnnamed7594();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed7593(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed7594(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
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
    unittest.expect(o.renewalMethod, unittest.equals('foo'));
    unittest.expect(o.transferLockState, unittest.equals('foo'));
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
    unittest.expect(o.currencyCode, unittest.equals('foo'));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.units, unittest.equals('foo'));
  }
  buildCounterMoney--;
}

core.Map<core.String, core.Object> buildUnnamed7595() {
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

void checkUnnamed7595(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed7596() {
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

void checkUnnamed7596(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed7595();
    o.name = 'foo';
    o.response = buildUnnamed7596();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error as api.Status);
    checkUnnamed7595(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed7596(o.response);
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
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.statusDetail, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.verb, unittest.equals('foo'));
  }
  buildCounterOperationMetadata--;
}

core.List<api.AuditConfig> buildUnnamed7597() {
  var o = <api.AuditConfig>[];
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

void checkUnnamed7597(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0] as api.AuditConfig);
  checkAuditConfig(o[1] as api.AuditConfig);
}

core.List<api.Binding> buildUnnamed7598() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed7598(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0] as api.Binding);
  checkBinding(o[1] as api.Binding);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed7597();
    o.bindings = buildUnnamed7598();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed7597(o.auditConfigs);
    checkUnnamed7598(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.List<core.String> buildUnnamed7599() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7599(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed7600() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7600(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPostalAddress = 0;
api.PostalAddress buildPostalAddress() {
  var o = api.PostalAddress();
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    o.addressLines = buildUnnamed7599();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed7600();
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
    checkUnnamed7599(o.addressLines);
    unittest.expect(o.administrativeArea, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.organization, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    checkUnnamed7600(o.recipients);
    unittest.expect(o.regionCode, unittest.equals('foo'));
    unittest.expect(o.revision, unittest.equals(42));
    unittest.expect(o.sortingCode, unittest.equals('foo'));
    unittest.expect(o.sublocality, unittest.equals('foo'));
  }
  buildCounterPostalAddress--;
}

core.List<core.String> buildUnnamed7601() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7601(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed7602() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7602(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRegisterDomainRequest = 0;
api.RegisterDomainRequest buildRegisterDomainRequest() {
  var o = api.RegisterDomainRequest();
  buildCounterRegisterDomainRequest++;
  if (buildCounterRegisterDomainRequest < 3) {
    o.contactNotices = buildUnnamed7601();
    o.domainNotices = buildUnnamed7602();
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
    checkUnnamed7601(o.contactNotices);
    checkUnnamed7602(o.domainNotices);
    checkRegistration(o.registration as api.Registration);
    unittest.expect(o.validateOnly, unittest.isTrue);
    checkMoney(o.yearlyPrice as api.Money);
  }
  buildCounterRegisterDomainRequest--;
}

core.List<core.String> buildUnnamed7603() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7603(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed7604() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7604(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRegisterParameters = 0;
api.RegisterParameters buildRegisterParameters() {
  var o = api.RegisterParameters();
  buildCounterRegisterParameters++;
  if (buildCounterRegisterParameters < 3) {
    o.availability = 'foo';
    o.domainName = 'foo';
    o.domainNotices = buildUnnamed7603();
    o.supportedPrivacy = buildUnnamed7604();
    o.yearlyPrice = buildMoney();
  }
  buildCounterRegisterParameters--;
  return o;
}

void checkRegisterParameters(api.RegisterParameters o) {
  buildCounterRegisterParameters++;
  if (buildCounterRegisterParameters < 3) {
    unittest.expect(o.availability, unittest.equals('foo'));
    unittest.expect(o.domainName, unittest.equals('foo'));
    checkUnnamed7603(o.domainNotices);
    checkUnnamed7604(o.supportedPrivacy);
    checkMoney(o.yearlyPrice as api.Money);
  }
  buildCounterRegisterParameters--;
}

core.List<core.String> buildUnnamed7605() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7605(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed7606() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7606(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed7607() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7607(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    o.issues = buildUnnamed7605();
    o.labels = buildUnnamed7606();
    o.managementSettings = buildManagementSettings();
    o.name = 'foo';
    o.pendingContactSettings = buildContactSettings();
    o.state = 'foo';
    o.supportedPrivacy = buildUnnamed7607();
  }
  buildCounterRegistration--;
  return o;
}

void checkRegistration(api.Registration o) {
  buildCounterRegistration++;
  if (buildCounterRegistration < 3) {
    checkContactSettings(o.contactSettings as api.ContactSettings);
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkDnsSettings(o.dnsSettings as api.DnsSettings);
    unittest.expect(o.domainName, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
    checkUnnamed7605(o.issues);
    checkUnnamed7606(o.labels);
    checkManagementSettings(o.managementSettings as api.ManagementSettings);
    unittest.expect(o.name, unittest.equals('foo'));
    checkContactSettings(o.pendingContactSettings as api.ContactSettings);
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed7607(o.supportedPrivacy);
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
    checkRegisterParameters(o.registerParameters as api.RegisterParameters);
  }
  buildCounterRetrieveRegisterParametersResponse--;
}

core.List<api.RegisterParameters> buildUnnamed7608() {
  var o = <api.RegisterParameters>[];
  o.add(buildRegisterParameters());
  o.add(buildRegisterParameters());
  return o;
}

void checkUnnamed7608(core.List<api.RegisterParameters> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegisterParameters(o[0] as api.RegisterParameters);
  checkRegisterParameters(o[1] as api.RegisterParameters);
}

core.int buildCounterSearchDomainsResponse = 0;
api.SearchDomainsResponse buildSearchDomainsResponse() {
  var o = api.SearchDomainsResponse();
  buildCounterSearchDomainsResponse++;
  if (buildCounterSearchDomainsResponse < 3) {
    o.registerParameters = buildUnnamed7608();
  }
  buildCounterSearchDomainsResponse--;
  return o;
}

void checkSearchDomainsResponse(api.SearchDomainsResponse o) {
  buildCounterSearchDomainsResponse++;
  if (buildCounterSearchDomainsResponse < 3) {
    checkUnnamed7608(o.registerParameters);
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
    checkPolicy(o.policy as api.Policy);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

core.Map<core.String, core.Object> buildUnnamed7609() {
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

void checkUnnamed7609(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed7610() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed7609());
  o.add(buildUnnamed7609());
  return o;
}

void checkUnnamed7610(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7609(o[0]);
  checkUnnamed7609(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed7610();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed7610(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed7611() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7611(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  var o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed7611();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed7611(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed7612() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7612(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  var o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed7612();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed7612(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

void main() {
  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuditConfig();
      var od = api.AuditConfig.fromJson(o.toJson());
      checkAuditConfig(od as api.AuditConfig);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuditLogConfig();
      var od = api.AuditLogConfig.fromJson(o.toJson());
      checkAuditLogConfig(od as api.AuditLogConfig);
    });
  });

  unittest.group('obj-schema-AuthorizationCode', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuthorizationCode();
      var od = api.AuthorizationCode.fromJson(o.toJson());
      checkAuthorizationCode(od as api.AuthorizationCode);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () {
      var o = buildBinding();
      var od = api.Binding.fromJson(o.toJson());
      checkBinding(od as api.Binding);
    });
  });

  unittest.group('obj-schema-ConfigureContactSettingsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildConfigureContactSettingsRequest();
      var od = api.ConfigureContactSettingsRequest.fromJson(o.toJson());
      checkConfigureContactSettingsRequest(
          od as api.ConfigureContactSettingsRequest);
    });
  });

  unittest.group('obj-schema-ConfigureDnsSettingsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildConfigureDnsSettingsRequest();
      var od = api.ConfigureDnsSettingsRequest.fromJson(o.toJson());
      checkConfigureDnsSettingsRequest(od as api.ConfigureDnsSettingsRequest);
    });
  });

  unittest.group('obj-schema-ConfigureManagementSettingsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildConfigureManagementSettingsRequest();
      var od = api.ConfigureManagementSettingsRequest.fromJson(o.toJson());
      checkConfigureManagementSettingsRequest(
          od as api.ConfigureManagementSettingsRequest);
    });
  });

  unittest.group('obj-schema-Contact', () {
    unittest.test('to-json--from-json', () {
      var o = buildContact();
      var od = api.Contact.fromJson(o.toJson());
      checkContact(od as api.Contact);
    });
  });

  unittest.group('obj-schema-ContactSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildContactSettings();
      var od = api.ContactSettings.fromJson(o.toJson());
      checkContactSettings(od as api.ContactSettings);
    });
  });

  unittest.group('obj-schema-CustomDns', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomDns();
      var od = api.CustomDns.fromJson(o.toJson());
      checkCustomDns(od as api.CustomDns);
    });
  });

  unittest.group('obj-schema-DnsSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildDnsSettings();
      var od = api.DnsSettings.fromJson(o.toJson());
      checkDnsSettings(od as api.DnsSettings);
    });
  });

  unittest.group('obj-schema-DsRecord', () {
    unittest.test('to-json--from-json', () {
      var o = buildDsRecord();
      var od = api.DsRecord.fromJson(o.toJson());
      checkDsRecord(od as api.DsRecord);
    });
  });

  unittest.group('obj-schema-ExportRegistrationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildExportRegistrationRequest();
      var od = api.ExportRegistrationRequest.fromJson(o.toJson());
      checkExportRegistrationRequest(od as api.ExportRegistrationRequest);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () {
      var o = buildExpr();
      var od = api.Expr.fromJson(o.toJson());
      checkExpr(od as api.Expr);
    });
  });

  unittest.group('obj-schema-GlueRecord', () {
    unittest.test('to-json--from-json', () {
      var o = buildGlueRecord();
      var od = api.GlueRecord.fromJson(o.toJson());
      checkGlueRecord(od as api.GlueRecord);
    });
  });

  unittest.group('obj-schema-GoogleDomainsDns', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDomainsDns();
      var od = api.GoogleDomainsDns.fromJson(o.toJson());
      checkGoogleDomainsDns(od as api.GoogleDomainsDns);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListLocationsResponse();
      var od = api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od as api.ListLocationsResponse);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOperationsResponse();
      var od = api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od as api.ListOperationsResponse);
    });
  });

  unittest.group('obj-schema-ListRegistrationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListRegistrationsResponse();
      var od = api.ListRegistrationsResponse.fromJson(o.toJson());
      checkListRegistrationsResponse(od as api.ListRegistrationsResponse);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocation();
      var od = api.Location.fromJson(o.toJson());
      checkLocation(od as api.Location);
    });
  });

  unittest.group('obj-schema-ManagementSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildManagementSettings();
      var od = api.ManagementSettings.fromJson(o.toJson());
      checkManagementSettings(od as api.ManagementSettings);
    });
  });

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () {
      var o = buildMoney();
      var od = api.Money.fromJson(o.toJson());
      checkMoney(od as api.Money);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-OperationMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperationMetadata();
      var od = api.OperationMetadata.fromJson(o.toJson());
      checkOperationMetadata(od as api.OperationMetadata);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicy();
      var od = api.Policy.fromJson(o.toJson());
      checkPolicy(od as api.Policy);
    });
  });

  unittest.group('obj-schema-PostalAddress', () {
    unittest.test('to-json--from-json', () {
      var o = buildPostalAddress();
      var od = api.PostalAddress.fromJson(o.toJson());
      checkPostalAddress(od as api.PostalAddress);
    });
  });

  unittest.group('obj-schema-RegisterDomainRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegisterDomainRequest();
      var od = api.RegisterDomainRequest.fromJson(o.toJson());
      checkRegisterDomainRequest(od as api.RegisterDomainRequest);
    });
  });

  unittest.group('obj-schema-RegisterParameters', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegisterParameters();
      var od = api.RegisterParameters.fromJson(o.toJson());
      checkRegisterParameters(od as api.RegisterParameters);
    });
  });

  unittest.group('obj-schema-Registration', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegistration();
      var od = api.Registration.fromJson(o.toJson());
      checkRegistration(od as api.Registration);
    });
  });

  unittest.group('obj-schema-ResetAuthorizationCodeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildResetAuthorizationCodeRequest();
      var od = api.ResetAuthorizationCodeRequest.fromJson(o.toJson());
      checkResetAuthorizationCodeRequest(
          od as api.ResetAuthorizationCodeRequest);
    });
  });

  unittest.group('obj-schema-RetrieveRegisterParametersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildRetrieveRegisterParametersResponse();
      var od = api.RetrieveRegisterParametersResponse.fromJson(o.toJson());
      checkRetrieveRegisterParametersResponse(
          od as api.RetrieveRegisterParametersResponse);
    });
  });

  unittest.group('obj-schema-SearchDomainsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchDomainsResponse();
      var od = api.SearchDomainsResponse.fromJson(o.toJson());
      checkSearchDomainsResponse(od as api.SearchDomainsResponse);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSetIamPolicyRequest();
      var od = api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od as api.SetIamPolicyRequest);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsRequest();
      var od = api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od as api.TestIamPermissionsRequest);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestIamPermissionsResponse();
      var od = api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLocation(response as api.Location);
      })));
    });

    unittest.test('method--list', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response as api.ListLocationsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--get', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--list', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response as api.ListOperationsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsRegistrationsResource', () {
    unittest.test('method--configureContactSettings', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .configureContactSettings(arg_request, arg_registration,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--configureDnsSettings', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .configureDnsSettings(arg_request, arg_registration,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--configureManagementSettings', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .configureManagementSettings(arg_request, arg_registration,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--export', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .export(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--get', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRegistration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRegistration(response as api.Registration);
      })));
    });

    unittest.test('method--getIamPolicy', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
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
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--list', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListRegistrationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListRegistrationsResponse(
            response as api.ListRegistrationsResponse);
      })));
    });

    unittest.test('method--patch', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--register', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .register(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--resetAuthorizationCode', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAuthorizationCode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resetAuthorizationCode(arg_request, arg_registration,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAuthorizationCode(response as api.AuthorizationCode);
      })));
    });

    unittest.test('method--retrieveAuthorizationCode', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAuthorizationCode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .retrieveAuthorizationCode(arg_registration, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAuthorizationCode(response as api.AuthorizationCode);
      })));
    });

    unittest.test('method--retrieveRegisterParameters', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
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
            queryMap["domainName"].first, unittest.equals(arg_domainName));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildRetrieveRegisterParametersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .retrieveRegisterParameters(arg_location,
              domainName: arg_domainName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRetrieveRegisterParametersResponse(
            response as api.RetrieveRegisterParametersResponse);
      })));
    });

    unittest.test('method--searchDomains', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
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
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSearchDomainsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchDomains(arg_location, query: arg_query, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchDomainsResponse(response as api.SearchDomainsResponse);
      })));
    });

    unittest.test('method--setIamPolicy', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response as api.Policy);
      })));
    });

    unittest.test('method--testIamPermissions', () {
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(
            response as api.TestIamPermissionsResponse);
      })));
    });
  });
}
