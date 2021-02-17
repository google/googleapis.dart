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
import 'package:googleapis/androidenterprise/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterAdministrator = 0;
api.Administrator buildAdministrator() {
  var o = api.Administrator();
  buildCounterAdministrator++;
  if (buildCounterAdministrator < 3) {
    o.email = 'foo';
  }
  buildCounterAdministrator--;
  return o;
}

void checkAdministrator(api.Administrator o) {
  buildCounterAdministrator++;
  if (buildCounterAdministrator < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
  }
  buildCounterAdministrator--;
}

core.int buildCounterAdministratorWebToken = 0;
api.AdministratorWebToken buildAdministratorWebToken() {
  var o = api.AdministratorWebToken();
  buildCounterAdministratorWebToken++;
  if (buildCounterAdministratorWebToken < 3) {
    o.token = 'foo';
  }
  buildCounterAdministratorWebToken--;
  return o;
}

void checkAdministratorWebToken(api.AdministratorWebToken o) {
  buildCounterAdministratorWebToken++;
  if (buildCounterAdministratorWebToken < 3) {
    unittest.expect(o.token, unittest.equals('foo'));
  }
  buildCounterAdministratorWebToken--;
}

core.List<core.String> buildUnnamed3987() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3987(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAdministratorWebTokenSpec = 0;
api.AdministratorWebTokenSpec buildAdministratorWebTokenSpec() {
  var o = api.AdministratorWebTokenSpec();
  buildCounterAdministratorWebTokenSpec++;
  if (buildCounterAdministratorWebTokenSpec < 3) {
    o.managedConfigurations =
        buildAdministratorWebTokenSpecManagedConfigurations();
    o.parent = 'foo';
    o.permission = buildUnnamed3987();
    o.playSearch = buildAdministratorWebTokenSpecPlaySearch();
    o.privateApps = buildAdministratorWebTokenSpecPrivateApps();
    o.storeBuilder = buildAdministratorWebTokenSpecStoreBuilder();
    o.webApps = buildAdministratorWebTokenSpecWebApps();
  }
  buildCounterAdministratorWebTokenSpec--;
  return o;
}

void checkAdministratorWebTokenSpec(api.AdministratorWebTokenSpec o) {
  buildCounterAdministratorWebTokenSpec++;
  if (buildCounterAdministratorWebTokenSpec < 3) {
    checkAdministratorWebTokenSpecManagedConfigurations(o.managedConfigurations
        as api.AdministratorWebTokenSpecManagedConfigurations);
    unittest.expect(o.parent, unittest.equals('foo'));
    checkUnnamed3987(o.permission);
    checkAdministratorWebTokenSpecPlaySearch(
        o.playSearch as api.AdministratorWebTokenSpecPlaySearch);
    checkAdministratorWebTokenSpecPrivateApps(
        o.privateApps as api.AdministratorWebTokenSpecPrivateApps);
    checkAdministratorWebTokenSpecStoreBuilder(
        o.storeBuilder as api.AdministratorWebTokenSpecStoreBuilder);
    checkAdministratorWebTokenSpecWebApps(
        o.webApps as api.AdministratorWebTokenSpecWebApps);
  }
  buildCounterAdministratorWebTokenSpec--;
}

core.int buildCounterAdministratorWebTokenSpecManagedConfigurations = 0;
api.AdministratorWebTokenSpecManagedConfigurations
    buildAdministratorWebTokenSpecManagedConfigurations() {
  var o = api.AdministratorWebTokenSpecManagedConfigurations();
  buildCounterAdministratorWebTokenSpecManagedConfigurations++;
  if (buildCounterAdministratorWebTokenSpecManagedConfigurations < 3) {
    o.enabled = true;
  }
  buildCounterAdministratorWebTokenSpecManagedConfigurations--;
  return o;
}

void checkAdministratorWebTokenSpecManagedConfigurations(
    api.AdministratorWebTokenSpecManagedConfigurations o) {
  buildCounterAdministratorWebTokenSpecManagedConfigurations++;
  if (buildCounterAdministratorWebTokenSpecManagedConfigurations < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterAdministratorWebTokenSpecManagedConfigurations--;
}

core.int buildCounterAdministratorWebTokenSpecPlaySearch = 0;
api.AdministratorWebTokenSpecPlaySearch
    buildAdministratorWebTokenSpecPlaySearch() {
  var o = api.AdministratorWebTokenSpecPlaySearch();
  buildCounterAdministratorWebTokenSpecPlaySearch++;
  if (buildCounterAdministratorWebTokenSpecPlaySearch < 3) {
    o.approveApps = true;
    o.enabled = true;
  }
  buildCounterAdministratorWebTokenSpecPlaySearch--;
  return o;
}

void checkAdministratorWebTokenSpecPlaySearch(
    api.AdministratorWebTokenSpecPlaySearch o) {
  buildCounterAdministratorWebTokenSpecPlaySearch++;
  if (buildCounterAdministratorWebTokenSpecPlaySearch < 3) {
    unittest.expect(o.approveApps, unittest.isTrue);
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterAdministratorWebTokenSpecPlaySearch--;
}

core.int buildCounterAdministratorWebTokenSpecPrivateApps = 0;
api.AdministratorWebTokenSpecPrivateApps
    buildAdministratorWebTokenSpecPrivateApps() {
  var o = api.AdministratorWebTokenSpecPrivateApps();
  buildCounterAdministratorWebTokenSpecPrivateApps++;
  if (buildCounterAdministratorWebTokenSpecPrivateApps < 3) {
    o.enabled = true;
  }
  buildCounterAdministratorWebTokenSpecPrivateApps--;
  return o;
}

void checkAdministratorWebTokenSpecPrivateApps(
    api.AdministratorWebTokenSpecPrivateApps o) {
  buildCounterAdministratorWebTokenSpecPrivateApps++;
  if (buildCounterAdministratorWebTokenSpecPrivateApps < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterAdministratorWebTokenSpecPrivateApps--;
}

core.int buildCounterAdministratorWebTokenSpecStoreBuilder = 0;
api.AdministratorWebTokenSpecStoreBuilder
    buildAdministratorWebTokenSpecStoreBuilder() {
  var o = api.AdministratorWebTokenSpecStoreBuilder();
  buildCounterAdministratorWebTokenSpecStoreBuilder++;
  if (buildCounterAdministratorWebTokenSpecStoreBuilder < 3) {
    o.enabled = true;
  }
  buildCounterAdministratorWebTokenSpecStoreBuilder--;
  return o;
}

void checkAdministratorWebTokenSpecStoreBuilder(
    api.AdministratorWebTokenSpecStoreBuilder o) {
  buildCounterAdministratorWebTokenSpecStoreBuilder++;
  if (buildCounterAdministratorWebTokenSpecStoreBuilder < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterAdministratorWebTokenSpecStoreBuilder--;
}

core.int buildCounterAdministratorWebTokenSpecWebApps = 0;
api.AdministratorWebTokenSpecWebApps buildAdministratorWebTokenSpecWebApps() {
  var o = api.AdministratorWebTokenSpecWebApps();
  buildCounterAdministratorWebTokenSpecWebApps++;
  if (buildCounterAdministratorWebTokenSpecWebApps < 3) {
    o.enabled = true;
  }
  buildCounterAdministratorWebTokenSpecWebApps--;
  return o;
}

void checkAdministratorWebTokenSpecWebApps(
    api.AdministratorWebTokenSpecWebApps o) {
  buildCounterAdministratorWebTokenSpecWebApps++;
  if (buildCounterAdministratorWebTokenSpecWebApps < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterAdministratorWebTokenSpecWebApps--;
}

core.List<api.AppRestrictionsSchemaRestriction> buildUnnamed3988() {
  var o = <api.AppRestrictionsSchemaRestriction>[];
  o.add(buildAppRestrictionsSchemaRestriction());
  o.add(buildAppRestrictionsSchemaRestriction());
  return o;
}

void checkUnnamed3988(core.List<api.AppRestrictionsSchemaRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppRestrictionsSchemaRestriction(
      o[0] as api.AppRestrictionsSchemaRestriction);
  checkAppRestrictionsSchemaRestriction(
      o[1] as api.AppRestrictionsSchemaRestriction);
}

core.int buildCounterAppRestrictionsSchema = 0;
api.AppRestrictionsSchema buildAppRestrictionsSchema() {
  var o = api.AppRestrictionsSchema();
  buildCounterAppRestrictionsSchema++;
  if (buildCounterAppRestrictionsSchema < 3) {
    o.kind = 'foo';
    o.restrictions = buildUnnamed3988();
  }
  buildCounterAppRestrictionsSchema--;
  return o;
}

void checkAppRestrictionsSchema(api.AppRestrictionsSchema o) {
  buildCounterAppRestrictionsSchema++;
  if (buildCounterAppRestrictionsSchema < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3988(o.restrictions);
  }
  buildCounterAppRestrictionsSchema--;
}

core.int buildCounterAppRestrictionsSchemaChangeEvent = 0;
api.AppRestrictionsSchemaChangeEvent buildAppRestrictionsSchemaChangeEvent() {
  var o = api.AppRestrictionsSchemaChangeEvent();
  buildCounterAppRestrictionsSchemaChangeEvent++;
  if (buildCounterAppRestrictionsSchemaChangeEvent < 3) {
    o.productId = 'foo';
  }
  buildCounterAppRestrictionsSchemaChangeEvent--;
  return o;
}

void checkAppRestrictionsSchemaChangeEvent(
    api.AppRestrictionsSchemaChangeEvent o) {
  buildCounterAppRestrictionsSchemaChangeEvent++;
  if (buildCounterAppRestrictionsSchemaChangeEvent < 3) {
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterAppRestrictionsSchemaChangeEvent--;
}

core.List<core.String> buildUnnamed3989() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3989(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3990() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3990(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.AppRestrictionsSchemaRestriction> buildUnnamed3991() {
  var o = <api.AppRestrictionsSchemaRestriction>[];
  o.add(buildAppRestrictionsSchemaRestriction());
  o.add(buildAppRestrictionsSchemaRestriction());
  return o;
}

void checkUnnamed3991(core.List<api.AppRestrictionsSchemaRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppRestrictionsSchemaRestriction(
      o[0] as api.AppRestrictionsSchemaRestriction);
  checkAppRestrictionsSchemaRestriction(
      o[1] as api.AppRestrictionsSchemaRestriction);
}

core.int buildCounterAppRestrictionsSchemaRestriction = 0;
api.AppRestrictionsSchemaRestriction buildAppRestrictionsSchemaRestriction() {
  var o = api.AppRestrictionsSchemaRestriction();
  buildCounterAppRestrictionsSchemaRestriction++;
  if (buildCounterAppRestrictionsSchemaRestriction < 3) {
    o.defaultValue = buildAppRestrictionsSchemaRestrictionRestrictionValue();
    o.description = 'foo';
    o.entry = buildUnnamed3989();
    o.entryValue = buildUnnamed3990();
    o.key = 'foo';
    o.nestedRestriction = buildUnnamed3991();
    o.restrictionType = 'foo';
    o.title = 'foo';
  }
  buildCounterAppRestrictionsSchemaRestriction--;
  return o;
}

void checkAppRestrictionsSchemaRestriction(
    api.AppRestrictionsSchemaRestriction o) {
  buildCounterAppRestrictionsSchemaRestriction++;
  if (buildCounterAppRestrictionsSchemaRestriction < 3) {
    checkAppRestrictionsSchemaRestrictionRestrictionValue(
        o.defaultValue as api.AppRestrictionsSchemaRestrictionRestrictionValue);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed3989(o.entry);
    checkUnnamed3990(o.entryValue);
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed3991(o.nestedRestriction);
    unittest.expect(o.restrictionType, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterAppRestrictionsSchemaRestriction--;
}

core.List<core.String> buildUnnamed3992() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3992(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAppRestrictionsSchemaRestrictionRestrictionValue = 0;
api.AppRestrictionsSchemaRestrictionRestrictionValue
    buildAppRestrictionsSchemaRestrictionRestrictionValue() {
  var o = api.AppRestrictionsSchemaRestrictionRestrictionValue();
  buildCounterAppRestrictionsSchemaRestrictionRestrictionValue++;
  if (buildCounterAppRestrictionsSchemaRestrictionRestrictionValue < 3) {
    o.type = 'foo';
    o.valueBool = true;
    o.valueInteger = 42;
    o.valueMultiselect = buildUnnamed3992();
    o.valueString = 'foo';
  }
  buildCounterAppRestrictionsSchemaRestrictionRestrictionValue--;
  return o;
}

void checkAppRestrictionsSchemaRestrictionRestrictionValue(
    api.AppRestrictionsSchemaRestrictionRestrictionValue o) {
  buildCounterAppRestrictionsSchemaRestrictionRestrictionValue++;
  if (buildCounterAppRestrictionsSchemaRestrictionRestrictionValue < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.valueBool, unittest.isTrue);
    unittest.expect(o.valueInteger, unittest.equals(42));
    checkUnnamed3992(o.valueMultiselect);
    unittest.expect(o.valueString, unittest.equals('foo'));
  }
  buildCounterAppRestrictionsSchemaRestrictionRestrictionValue--;
}

core.List<api.KeyedAppState> buildUnnamed3993() {
  var o = <api.KeyedAppState>[];
  o.add(buildKeyedAppState());
  o.add(buildKeyedAppState());
  return o;
}

void checkUnnamed3993(core.List<api.KeyedAppState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyedAppState(o[0] as api.KeyedAppState);
  checkKeyedAppState(o[1] as api.KeyedAppState);
}

core.int buildCounterAppState = 0;
api.AppState buildAppState() {
  var o = api.AppState();
  buildCounterAppState++;
  if (buildCounterAppState < 3) {
    o.keyedAppState = buildUnnamed3993();
    o.packageName = 'foo';
  }
  buildCounterAppState--;
  return o;
}

void checkAppState(api.AppState o) {
  buildCounterAppState++;
  if (buildCounterAppState < 3) {
    checkUnnamed3993(o.keyedAppState);
    unittest.expect(o.packageName, unittest.equals('foo'));
  }
  buildCounterAppState--;
}

core.int buildCounterAppUpdateEvent = 0;
api.AppUpdateEvent buildAppUpdateEvent() {
  var o = api.AppUpdateEvent();
  buildCounterAppUpdateEvent++;
  if (buildCounterAppUpdateEvent < 3) {
    o.productId = 'foo';
  }
  buildCounterAppUpdateEvent--;
  return o;
}

void checkAppUpdateEvent(api.AppUpdateEvent o) {
  buildCounterAppUpdateEvent++;
  if (buildCounterAppUpdateEvent < 3) {
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterAppUpdateEvent--;
}

core.List<core.String> buildUnnamed3994() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3994(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAppVersion = 0;
api.AppVersion buildAppVersion() {
  var o = api.AppVersion();
  buildCounterAppVersion++;
  if (buildCounterAppVersion < 3) {
    o.isProduction = true;
    o.track = 'foo';
    o.trackId = buildUnnamed3994();
    o.versionCode = 42;
    o.versionString = 'foo';
  }
  buildCounterAppVersion--;
  return o;
}

void checkAppVersion(api.AppVersion o) {
  buildCounterAppVersion++;
  if (buildCounterAppVersion < 3) {
    unittest.expect(o.isProduction, unittest.isTrue);
    unittest.expect(o.track, unittest.equals('foo'));
    checkUnnamed3994(o.trackId);
    unittest.expect(o.versionCode, unittest.equals(42));
    unittest.expect(o.versionString, unittest.equals('foo'));
  }
  buildCounterAppVersion--;
}

core.int buildCounterApprovalUrlInfo = 0;
api.ApprovalUrlInfo buildApprovalUrlInfo() {
  var o = api.ApprovalUrlInfo();
  buildCounterApprovalUrlInfo++;
  if (buildCounterApprovalUrlInfo < 3) {
    o.approvalUrl = 'foo';
  }
  buildCounterApprovalUrlInfo--;
  return o;
}

void checkApprovalUrlInfo(api.ApprovalUrlInfo o) {
  buildCounterApprovalUrlInfo++;
  if (buildCounterApprovalUrlInfo < 3) {
    unittest.expect(o.approvalUrl, unittest.equals('foo'));
  }
  buildCounterApprovalUrlInfo--;
}

core.int buildCounterAuthenticationToken = 0;
api.AuthenticationToken buildAuthenticationToken() {
  var o = api.AuthenticationToken();
  buildCounterAuthenticationToken++;
  if (buildCounterAuthenticationToken < 3) {
    o.token = 'foo';
  }
  buildCounterAuthenticationToken--;
  return o;
}

void checkAuthenticationToken(api.AuthenticationToken o) {
  buildCounterAuthenticationToken++;
  if (buildCounterAuthenticationToken < 3) {
    unittest.expect(o.token, unittest.equals('foo'));
  }
  buildCounterAuthenticationToken--;
}

core.int buildCounterAutoInstallConstraint = 0;
api.AutoInstallConstraint buildAutoInstallConstraint() {
  var o = api.AutoInstallConstraint();
  buildCounterAutoInstallConstraint++;
  if (buildCounterAutoInstallConstraint < 3) {
    o.chargingStateConstraint = 'foo';
    o.deviceIdleStateConstraint = 'foo';
    o.networkTypeConstraint = 'foo';
  }
  buildCounterAutoInstallConstraint--;
  return o;
}

void checkAutoInstallConstraint(api.AutoInstallConstraint o) {
  buildCounterAutoInstallConstraint++;
  if (buildCounterAutoInstallConstraint < 3) {
    unittest.expect(o.chargingStateConstraint, unittest.equals('foo'));
    unittest.expect(o.deviceIdleStateConstraint, unittest.equals('foo'));
    unittest.expect(o.networkTypeConstraint, unittest.equals('foo'));
  }
  buildCounterAutoInstallConstraint--;
}

core.List<api.AutoInstallConstraint> buildUnnamed3995() {
  var o = <api.AutoInstallConstraint>[];
  o.add(buildAutoInstallConstraint());
  o.add(buildAutoInstallConstraint());
  return o;
}

void checkUnnamed3995(core.List<api.AutoInstallConstraint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutoInstallConstraint(o[0] as api.AutoInstallConstraint);
  checkAutoInstallConstraint(o[1] as api.AutoInstallConstraint);
}

core.int buildCounterAutoInstallPolicy = 0;
api.AutoInstallPolicy buildAutoInstallPolicy() {
  var o = api.AutoInstallPolicy();
  buildCounterAutoInstallPolicy++;
  if (buildCounterAutoInstallPolicy < 3) {
    o.autoInstallConstraint = buildUnnamed3995();
    o.autoInstallMode = 'foo';
    o.autoInstallPriority = 42;
    o.minimumVersionCode = 42;
  }
  buildCounterAutoInstallPolicy--;
  return o;
}

void checkAutoInstallPolicy(api.AutoInstallPolicy o) {
  buildCounterAutoInstallPolicy++;
  if (buildCounterAutoInstallPolicy < 3) {
    checkUnnamed3995(o.autoInstallConstraint);
    unittest.expect(o.autoInstallMode, unittest.equals('foo'));
    unittest.expect(o.autoInstallPriority, unittest.equals(42));
    unittest.expect(o.minimumVersionCode, unittest.equals(42));
  }
  buildCounterAutoInstallPolicy--;
}

core.List<api.VariableSet> buildUnnamed3996() {
  var o = <api.VariableSet>[];
  o.add(buildVariableSet());
  o.add(buildVariableSet());
  return o;
}

void checkUnnamed3996(core.List<api.VariableSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariableSet(o[0] as api.VariableSet);
  checkVariableSet(o[1] as api.VariableSet);
}

core.int buildCounterConfigurationVariables = 0;
api.ConfigurationVariables buildConfigurationVariables() {
  var o = api.ConfigurationVariables();
  buildCounterConfigurationVariables++;
  if (buildCounterConfigurationVariables < 3) {
    o.mcmId = 'foo';
    o.variableSet = buildUnnamed3996();
  }
  buildCounterConfigurationVariables--;
  return o;
}

void checkConfigurationVariables(api.ConfigurationVariables o) {
  buildCounterConfigurationVariables++;
  if (buildCounterConfigurationVariables < 3) {
    unittest.expect(o.mcmId, unittest.equals('foo'));
    checkUnnamed3996(o.variableSet);
  }
  buildCounterConfigurationVariables--;
}

core.int buildCounterDevice = 0;
api.Device buildDevice() {
  var o = api.Device();
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    o.androidId = 'foo';
    o.managementType = 'foo';
    o.policy = buildPolicy();
    o.report = buildDeviceReport();
  }
  buildCounterDevice--;
  return o;
}

void checkDevice(api.Device o) {
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    unittest.expect(o.androidId, unittest.equals('foo'));
    unittest.expect(o.managementType, unittest.equals('foo'));
    checkPolicy(o.policy as api.Policy);
    checkDeviceReport(o.report as api.DeviceReport);
  }
  buildCounterDevice--;
}

core.List<api.AppState> buildUnnamed3997() {
  var o = <api.AppState>[];
  o.add(buildAppState());
  o.add(buildAppState());
  return o;
}

void checkUnnamed3997(core.List<api.AppState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppState(o[0] as api.AppState);
  checkAppState(o[1] as api.AppState);
}

core.int buildCounterDeviceReport = 0;
api.DeviceReport buildDeviceReport() {
  var o = api.DeviceReport();
  buildCounterDeviceReport++;
  if (buildCounterDeviceReport < 3) {
    o.appState = buildUnnamed3997();
    o.lastUpdatedTimestampMillis = 'foo';
  }
  buildCounterDeviceReport--;
  return o;
}

void checkDeviceReport(api.DeviceReport o) {
  buildCounterDeviceReport++;
  if (buildCounterDeviceReport < 3) {
    checkUnnamed3997(o.appState);
    unittest.expect(o.lastUpdatedTimestampMillis, unittest.equals('foo'));
  }
  buildCounterDeviceReport--;
}

core.int buildCounterDeviceReportUpdateEvent = 0;
api.DeviceReportUpdateEvent buildDeviceReportUpdateEvent() {
  var o = api.DeviceReportUpdateEvent();
  buildCounterDeviceReportUpdateEvent++;
  if (buildCounterDeviceReportUpdateEvent < 3) {
    o.deviceId = 'foo';
    o.report = buildDeviceReport();
    o.userId = 'foo';
  }
  buildCounterDeviceReportUpdateEvent--;
  return o;
}

void checkDeviceReportUpdateEvent(api.DeviceReportUpdateEvent o) {
  buildCounterDeviceReportUpdateEvent++;
  if (buildCounterDeviceReportUpdateEvent < 3) {
    unittest.expect(o.deviceId, unittest.equals('foo'));
    checkDeviceReport(o.report as api.DeviceReport);
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterDeviceReportUpdateEvent--;
}

core.int buildCounterDeviceState = 0;
api.DeviceState buildDeviceState() {
  var o = api.DeviceState();
  buildCounterDeviceState++;
  if (buildCounterDeviceState < 3) {
    o.accountState = 'foo';
  }
  buildCounterDeviceState--;
  return o;
}

void checkDeviceState(api.DeviceState o) {
  buildCounterDeviceState++;
  if (buildCounterDeviceState < 3) {
    unittest.expect(o.accountState, unittest.equals('foo'));
  }
  buildCounterDeviceState--;
}

core.List<api.Device> buildUnnamed3998() {
  var o = <api.Device>[];
  o.add(buildDevice());
  o.add(buildDevice());
  return o;
}

void checkUnnamed3998(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0] as api.Device);
  checkDevice(o[1] as api.Device);
}

core.int buildCounterDevicesListResponse = 0;
api.DevicesListResponse buildDevicesListResponse() {
  var o = api.DevicesListResponse();
  buildCounterDevicesListResponse++;
  if (buildCounterDevicesListResponse < 3) {
    o.device = buildUnnamed3998();
  }
  buildCounterDevicesListResponse--;
  return o;
}

void checkDevicesListResponse(api.DevicesListResponse o) {
  buildCounterDevicesListResponse++;
  if (buildCounterDevicesListResponse < 3) {
    checkUnnamed3998(o.device);
  }
  buildCounterDevicesListResponse--;
}

core.List<api.Administrator> buildUnnamed3999() {
  var o = <api.Administrator>[];
  o.add(buildAdministrator());
  o.add(buildAdministrator());
  return o;
}

void checkUnnamed3999(core.List<api.Administrator> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdministrator(o[0] as api.Administrator);
  checkAdministrator(o[1] as api.Administrator);
}

core.int buildCounterEnterprise = 0;
api.Enterprise buildEnterprise() {
  var o = api.Enterprise();
  buildCounterEnterprise++;
  if (buildCounterEnterprise < 3) {
    o.administrator = buildUnnamed3999();
    o.id = 'foo';
    o.name = 'foo';
    o.primaryDomain = 'foo';
  }
  buildCounterEnterprise--;
  return o;
}

void checkEnterprise(api.Enterprise o) {
  buildCounterEnterprise++;
  if (buildCounterEnterprise < 3) {
    checkUnnamed3999(o.administrator);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.primaryDomain, unittest.equals('foo'));
  }
  buildCounterEnterprise--;
}

core.int buildCounterEnterpriseAccount = 0;
api.EnterpriseAccount buildEnterpriseAccount() {
  var o = api.EnterpriseAccount();
  buildCounterEnterpriseAccount++;
  if (buildCounterEnterpriseAccount < 3) {
    o.accountEmail = 'foo';
  }
  buildCounterEnterpriseAccount--;
  return o;
}

void checkEnterpriseAccount(api.EnterpriseAccount o) {
  buildCounterEnterpriseAccount++;
  if (buildCounterEnterpriseAccount < 3) {
    unittest.expect(o.accountEmail, unittest.equals('foo'));
  }
  buildCounterEnterpriseAccount--;
}

core.List<api.Enterprise> buildUnnamed4000() {
  var o = <api.Enterprise>[];
  o.add(buildEnterprise());
  o.add(buildEnterprise());
  return o;
}

void checkUnnamed4000(core.List<api.Enterprise> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterprise(o[0] as api.Enterprise);
  checkEnterprise(o[1] as api.Enterprise);
}

core.int buildCounterEnterprisesListResponse = 0;
api.EnterprisesListResponse buildEnterprisesListResponse() {
  var o = api.EnterprisesListResponse();
  buildCounterEnterprisesListResponse++;
  if (buildCounterEnterprisesListResponse < 3) {
    o.enterprise = buildUnnamed4000();
  }
  buildCounterEnterprisesListResponse--;
  return o;
}

void checkEnterprisesListResponse(api.EnterprisesListResponse o) {
  buildCounterEnterprisesListResponse++;
  if (buildCounterEnterprisesListResponse < 3) {
    checkUnnamed4000(o.enterprise);
  }
  buildCounterEnterprisesListResponse--;
}

core.int buildCounterEnterprisesSendTestPushNotificationResponse = 0;
api.EnterprisesSendTestPushNotificationResponse
    buildEnterprisesSendTestPushNotificationResponse() {
  var o = api.EnterprisesSendTestPushNotificationResponse();
  buildCounterEnterprisesSendTestPushNotificationResponse++;
  if (buildCounterEnterprisesSendTestPushNotificationResponse < 3) {
    o.messageId = 'foo';
    o.topicName = 'foo';
  }
  buildCounterEnterprisesSendTestPushNotificationResponse--;
  return o;
}

void checkEnterprisesSendTestPushNotificationResponse(
    api.EnterprisesSendTestPushNotificationResponse o) {
  buildCounterEnterprisesSendTestPushNotificationResponse++;
  if (buildCounterEnterprisesSendTestPushNotificationResponse < 3) {
    unittest.expect(o.messageId, unittest.equals('foo'));
    unittest.expect(o.topicName, unittest.equals('foo'));
  }
  buildCounterEnterprisesSendTestPushNotificationResponse--;
}

core.int buildCounterEntitlement = 0;
api.Entitlement buildEntitlement() {
  var o = api.Entitlement();
  buildCounterEntitlement++;
  if (buildCounterEntitlement < 3) {
    o.productId = 'foo';
    o.reason = 'foo';
  }
  buildCounterEntitlement--;
  return o;
}

void checkEntitlement(api.Entitlement o) {
  buildCounterEntitlement++;
  if (buildCounterEntitlement < 3) {
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterEntitlement--;
}

core.List<api.Entitlement> buildUnnamed4001() {
  var o = <api.Entitlement>[];
  o.add(buildEntitlement());
  o.add(buildEntitlement());
  return o;
}

void checkUnnamed4001(core.List<api.Entitlement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntitlement(o[0] as api.Entitlement);
  checkEntitlement(o[1] as api.Entitlement);
}

core.int buildCounterEntitlementsListResponse = 0;
api.EntitlementsListResponse buildEntitlementsListResponse() {
  var o = api.EntitlementsListResponse();
  buildCounterEntitlementsListResponse++;
  if (buildCounterEntitlementsListResponse < 3) {
    o.entitlement = buildUnnamed4001();
  }
  buildCounterEntitlementsListResponse--;
  return o;
}

void checkEntitlementsListResponse(api.EntitlementsListResponse o) {
  buildCounterEntitlementsListResponse++;
  if (buildCounterEntitlementsListResponse < 3) {
    checkUnnamed4001(o.entitlement);
  }
  buildCounterEntitlementsListResponse--;
}

core.int buildCounterGroupLicense = 0;
api.GroupLicense buildGroupLicense() {
  var o = api.GroupLicense();
  buildCounterGroupLicense++;
  if (buildCounterGroupLicense < 3) {
    o.acquisitionKind = 'foo';
    o.approval = 'foo';
    o.numProvisioned = 42;
    o.numPurchased = 42;
    o.permissions = 'foo';
    o.productId = 'foo';
  }
  buildCounterGroupLicense--;
  return o;
}

void checkGroupLicense(api.GroupLicense o) {
  buildCounterGroupLicense++;
  if (buildCounterGroupLicense < 3) {
    unittest.expect(o.acquisitionKind, unittest.equals('foo'));
    unittest.expect(o.approval, unittest.equals('foo'));
    unittest.expect(o.numProvisioned, unittest.equals(42));
    unittest.expect(o.numPurchased, unittest.equals(42));
    unittest.expect(o.permissions, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterGroupLicense--;
}

core.List<api.User> buildUnnamed4002() {
  var o = <api.User>[];
  o.add(buildUser());
  o.add(buildUser());
  return o;
}

void checkUnnamed4002(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0] as api.User);
  checkUser(o[1] as api.User);
}

core.int buildCounterGroupLicenseUsersListResponse = 0;
api.GroupLicenseUsersListResponse buildGroupLicenseUsersListResponse() {
  var o = api.GroupLicenseUsersListResponse();
  buildCounterGroupLicenseUsersListResponse++;
  if (buildCounterGroupLicenseUsersListResponse < 3) {
    o.user = buildUnnamed4002();
  }
  buildCounterGroupLicenseUsersListResponse--;
  return o;
}

void checkGroupLicenseUsersListResponse(api.GroupLicenseUsersListResponse o) {
  buildCounterGroupLicenseUsersListResponse++;
  if (buildCounterGroupLicenseUsersListResponse < 3) {
    checkUnnamed4002(o.user);
  }
  buildCounterGroupLicenseUsersListResponse--;
}

core.List<api.GroupLicense> buildUnnamed4003() {
  var o = <api.GroupLicense>[];
  o.add(buildGroupLicense());
  o.add(buildGroupLicense());
  return o;
}

void checkUnnamed4003(core.List<api.GroupLicense> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupLicense(o[0] as api.GroupLicense);
  checkGroupLicense(o[1] as api.GroupLicense);
}

core.int buildCounterGroupLicensesListResponse = 0;
api.GroupLicensesListResponse buildGroupLicensesListResponse() {
  var o = api.GroupLicensesListResponse();
  buildCounterGroupLicensesListResponse++;
  if (buildCounterGroupLicensesListResponse < 3) {
    o.groupLicense = buildUnnamed4003();
  }
  buildCounterGroupLicensesListResponse--;
  return o;
}

void checkGroupLicensesListResponse(api.GroupLicensesListResponse o) {
  buildCounterGroupLicensesListResponse++;
  if (buildCounterGroupLicensesListResponse < 3) {
    checkUnnamed4003(o.groupLicense);
  }
  buildCounterGroupLicensesListResponse--;
}

core.int buildCounterInstall = 0;
api.Install buildInstall() {
  var o = api.Install();
  buildCounterInstall++;
  if (buildCounterInstall < 3) {
    o.installState = 'foo';
    o.productId = 'foo';
    o.versionCode = 42;
  }
  buildCounterInstall--;
  return o;
}

void checkInstall(api.Install o) {
  buildCounterInstall++;
  if (buildCounterInstall < 3) {
    unittest.expect(o.installState, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.versionCode, unittest.equals(42));
  }
  buildCounterInstall--;
}

core.int buildCounterInstallFailureEvent = 0;
api.InstallFailureEvent buildInstallFailureEvent() {
  var o = api.InstallFailureEvent();
  buildCounterInstallFailureEvent++;
  if (buildCounterInstallFailureEvent < 3) {
    o.deviceId = 'foo';
    o.failureDetails = 'foo';
    o.failureReason = 'foo';
    o.productId = 'foo';
    o.userId = 'foo';
  }
  buildCounterInstallFailureEvent--;
  return o;
}

void checkInstallFailureEvent(api.InstallFailureEvent o) {
  buildCounterInstallFailureEvent++;
  if (buildCounterInstallFailureEvent < 3) {
    unittest.expect(o.deviceId, unittest.equals('foo'));
    unittest.expect(o.failureDetails, unittest.equals('foo'));
    unittest.expect(o.failureReason, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterInstallFailureEvent--;
}

core.List<api.Install> buildUnnamed4004() {
  var o = <api.Install>[];
  o.add(buildInstall());
  o.add(buildInstall());
  return o;
}

void checkUnnamed4004(core.List<api.Install> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstall(o[0] as api.Install);
  checkInstall(o[1] as api.Install);
}

core.int buildCounterInstallsListResponse = 0;
api.InstallsListResponse buildInstallsListResponse() {
  var o = api.InstallsListResponse();
  buildCounterInstallsListResponse++;
  if (buildCounterInstallsListResponse < 3) {
    o.install = buildUnnamed4004();
  }
  buildCounterInstallsListResponse--;
  return o;
}

void checkInstallsListResponse(api.InstallsListResponse o) {
  buildCounterInstallsListResponse++;
  if (buildCounterInstallsListResponse < 3) {
    checkUnnamed4004(o.install);
  }
  buildCounterInstallsListResponse--;
}

core.int buildCounterKeyedAppState = 0;
api.KeyedAppState buildKeyedAppState() {
  var o = api.KeyedAppState();
  buildCounterKeyedAppState++;
  if (buildCounterKeyedAppState < 3) {
    o.data = 'foo';
    o.key = 'foo';
    o.message = 'foo';
    o.severity = 'foo';
    o.stateTimestampMillis = 'foo';
  }
  buildCounterKeyedAppState--;
  return o;
}

void checkKeyedAppState(api.KeyedAppState o) {
  buildCounterKeyedAppState++;
  if (buildCounterKeyedAppState < 3) {
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.stateTimestampMillis, unittest.equals('foo'));
  }
  buildCounterKeyedAppState--;
}

core.int buildCounterLocalizedText = 0;
api.LocalizedText buildLocalizedText() {
  var o = api.LocalizedText();
  buildCounterLocalizedText++;
  if (buildCounterLocalizedText < 3) {
    o.locale = 'foo';
    o.text = 'foo';
  }
  buildCounterLocalizedText--;
  return o;
}

void checkLocalizedText(api.LocalizedText o) {
  buildCounterLocalizedText++;
  if (buildCounterLocalizedText < 3) {
    unittest.expect(o.locale, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterLocalizedText--;
}

core.int buildCounterMaintenanceWindow = 0;
api.MaintenanceWindow buildMaintenanceWindow() {
  var o = api.MaintenanceWindow();
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    o.durationMs = 'foo';
    o.startTimeAfterMidnightMs = 'foo';
  }
  buildCounterMaintenanceWindow--;
  return o;
}

void checkMaintenanceWindow(api.MaintenanceWindow o) {
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    unittest.expect(o.durationMs, unittest.equals('foo'));
    unittest.expect(o.startTimeAfterMidnightMs, unittest.equals('foo'));
  }
  buildCounterMaintenanceWindow--;
}

core.List<api.ManagedProperty> buildUnnamed4005() {
  var o = <api.ManagedProperty>[];
  o.add(buildManagedProperty());
  o.add(buildManagedProperty());
  return o;
}

void checkUnnamed4005(core.List<api.ManagedProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedProperty(o[0] as api.ManagedProperty);
  checkManagedProperty(o[1] as api.ManagedProperty);
}

core.int buildCounterManagedConfiguration = 0;
api.ManagedConfiguration buildManagedConfiguration() {
  var o = api.ManagedConfiguration();
  buildCounterManagedConfiguration++;
  if (buildCounterManagedConfiguration < 3) {
    o.configurationVariables = buildConfigurationVariables();
    o.kind = 'foo';
    o.managedProperty = buildUnnamed4005();
    o.productId = 'foo';
  }
  buildCounterManagedConfiguration--;
  return o;
}

void checkManagedConfiguration(api.ManagedConfiguration o) {
  buildCounterManagedConfiguration++;
  if (buildCounterManagedConfiguration < 3) {
    checkConfigurationVariables(
        o.configurationVariables as api.ConfigurationVariables);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4005(o.managedProperty);
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterManagedConfiguration--;
}

core.List<api.ManagedConfiguration> buildUnnamed4006() {
  var o = <api.ManagedConfiguration>[];
  o.add(buildManagedConfiguration());
  o.add(buildManagedConfiguration());
  return o;
}

void checkUnnamed4006(core.List<api.ManagedConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedConfiguration(o[0] as api.ManagedConfiguration);
  checkManagedConfiguration(o[1] as api.ManagedConfiguration);
}

core.int buildCounterManagedConfigurationsForDeviceListResponse = 0;
api.ManagedConfigurationsForDeviceListResponse
    buildManagedConfigurationsForDeviceListResponse() {
  var o = api.ManagedConfigurationsForDeviceListResponse();
  buildCounterManagedConfigurationsForDeviceListResponse++;
  if (buildCounterManagedConfigurationsForDeviceListResponse < 3) {
    o.managedConfigurationForDevice = buildUnnamed4006();
  }
  buildCounterManagedConfigurationsForDeviceListResponse--;
  return o;
}

void checkManagedConfigurationsForDeviceListResponse(
    api.ManagedConfigurationsForDeviceListResponse o) {
  buildCounterManagedConfigurationsForDeviceListResponse++;
  if (buildCounterManagedConfigurationsForDeviceListResponse < 3) {
    checkUnnamed4006(o.managedConfigurationForDevice);
  }
  buildCounterManagedConfigurationsForDeviceListResponse--;
}

core.List<api.ManagedConfiguration> buildUnnamed4007() {
  var o = <api.ManagedConfiguration>[];
  o.add(buildManagedConfiguration());
  o.add(buildManagedConfiguration());
  return o;
}

void checkUnnamed4007(core.List<api.ManagedConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedConfiguration(o[0] as api.ManagedConfiguration);
  checkManagedConfiguration(o[1] as api.ManagedConfiguration);
}

core.int buildCounterManagedConfigurationsForUserListResponse = 0;
api.ManagedConfigurationsForUserListResponse
    buildManagedConfigurationsForUserListResponse() {
  var o = api.ManagedConfigurationsForUserListResponse();
  buildCounterManagedConfigurationsForUserListResponse++;
  if (buildCounterManagedConfigurationsForUserListResponse < 3) {
    o.managedConfigurationForUser = buildUnnamed4007();
  }
  buildCounterManagedConfigurationsForUserListResponse--;
  return o;
}

void checkManagedConfigurationsForUserListResponse(
    api.ManagedConfigurationsForUserListResponse o) {
  buildCounterManagedConfigurationsForUserListResponse++;
  if (buildCounterManagedConfigurationsForUserListResponse < 3) {
    checkUnnamed4007(o.managedConfigurationForUser);
  }
  buildCounterManagedConfigurationsForUserListResponse--;
}

core.int buildCounterManagedConfigurationsSettings = 0;
api.ManagedConfigurationsSettings buildManagedConfigurationsSettings() {
  var o = api.ManagedConfigurationsSettings();
  buildCounterManagedConfigurationsSettings++;
  if (buildCounterManagedConfigurationsSettings < 3) {
    o.lastUpdatedTimestampMillis = 'foo';
    o.mcmId = 'foo';
    o.name = 'foo';
  }
  buildCounterManagedConfigurationsSettings--;
  return o;
}

void checkManagedConfigurationsSettings(api.ManagedConfigurationsSettings o) {
  buildCounterManagedConfigurationsSettings++;
  if (buildCounterManagedConfigurationsSettings < 3) {
    unittest.expect(o.lastUpdatedTimestampMillis, unittest.equals('foo'));
    unittest.expect(o.mcmId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterManagedConfigurationsSettings--;
}

core.List<api.ManagedConfigurationsSettings> buildUnnamed4008() {
  var o = <api.ManagedConfigurationsSettings>[];
  o.add(buildManagedConfigurationsSettings());
  o.add(buildManagedConfigurationsSettings());
  return o;
}

void checkUnnamed4008(core.List<api.ManagedConfigurationsSettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedConfigurationsSettings(o[0] as api.ManagedConfigurationsSettings);
  checkManagedConfigurationsSettings(o[1] as api.ManagedConfigurationsSettings);
}

core.int buildCounterManagedConfigurationsSettingsListResponse = 0;
api.ManagedConfigurationsSettingsListResponse
    buildManagedConfigurationsSettingsListResponse() {
  var o = api.ManagedConfigurationsSettingsListResponse();
  buildCounterManagedConfigurationsSettingsListResponse++;
  if (buildCounterManagedConfigurationsSettingsListResponse < 3) {
    o.managedConfigurationsSettings = buildUnnamed4008();
  }
  buildCounterManagedConfigurationsSettingsListResponse--;
  return o;
}

void checkManagedConfigurationsSettingsListResponse(
    api.ManagedConfigurationsSettingsListResponse o) {
  buildCounterManagedConfigurationsSettingsListResponse++;
  if (buildCounterManagedConfigurationsSettingsListResponse < 3) {
    checkUnnamed4008(o.managedConfigurationsSettings);
  }
  buildCounterManagedConfigurationsSettingsListResponse--;
}

core.List<api.ManagedPropertyBundle> buildUnnamed4009() {
  var o = <api.ManagedPropertyBundle>[];
  o.add(buildManagedPropertyBundle());
  o.add(buildManagedPropertyBundle());
  return o;
}

void checkUnnamed4009(core.List<api.ManagedPropertyBundle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedPropertyBundle(o[0] as api.ManagedPropertyBundle);
  checkManagedPropertyBundle(o[1] as api.ManagedPropertyBundle);
}

core.List<core.String> buildUnnamed4010() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4010(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterManagedProperty = 0;
api.ManagedProperty buildManagedProperty() {
  var o = api.ManagedProperty();
  buildCounterManagedProperty++;
  if (buildCounterManagedProperty < 3) {
    o.key = 'foo';
    o.valueBool = true;
    o.valueBundle = buildManagedPropertyBundle();
    o.valueBundleArray = buildUnnamed4009();
    o.valueInteger = 42;
    o.valueString = 'foo';
    o.valueStringArray = buildUnnamed4010();
  }
  buildCounterManagedProperty--;
  return o;
}

void checkManagedProperty(api.ManagedProperty o) {
  buildCounterManagedProperty++;
  if (buildCounterManagedProperty < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.valueBool, unittest.isTrue);
    checkManagedPropertyBundle(o.valueBundle as api.ManagedPropertyBundle);
    checkUnnamed4009(o.valueBundleArray);
    unittest.expect(o.valueInteger, unittest.equals(42));
    unittest.expect(o.valueString, unittest.equals('foo'));
    checkUnnamed4010(o.valueStringArray);
  }
  buildCounterManagedProperty--;
}

core.List<api.ManagedProperty> buildUnnamed4011() {
  var o = <api.ManagedProperty>[];
  o.add(buildManagedProperty());
  o.add(buildManagedProperty());
  return o;
}

void checkUnnamed4011(core.List<api.ManagedProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedProperty(o[0] as api.ManagedProperty);
  checkManagedProperty(o[1] as api.ManagedProperty);
}

core.int buildCounterManagedPropertyBundle = 0;
api.ManagedPropertyBundle buildManagedPropertyBundle() {
  var o = api.ManagedPropertyBundle();
  buildCounterManagedPropertyBundle++;
  if (buildCounterManagedPropertyBundle < 3) {
    o.managedProperty = buildUnnamed4011();
  }
  buildCounterManagedPropertyBundle--;
  return o;
}

void checkManagedPropertyBundle(api.ManagedPropertyBundle o) {
  buildCounterManagedPropertyBundle++;
  if (buildCounterManagedPropertyBundle < 3) {
    checkUnnamed4011(o.managedProperty);
  }
  buildCounterManagedPropertyBundle--;
}

core.int buildCounterNewDeviceEvent = 0;
api.NewDeviceEvent buildNewDeviceEvent() {
  var o = api.NewDeviceEvent();
  buildCounterNewDeviceEvent++;
  if (buildCounterNewDeviceEvent < 3) {
    o.deviceId = 'foo';
    o.dpcPackageName = 'foo';
    o.managementType = 'foo';
    o.userId = 'foo';
  }
  buildCounterNewDeviceEvent--;
  return o;
}

void checkNewDeviceEvent(api.NewDeviceEvent o) {
  buildCounterNewDeviceEvent++;
  if (buildCounterNewDeviceEvent < 3) {
    unittest.expect(o.deviceId, unittest.equals('foo'));
    unittest.expect(o.dpcPackageName, unittest.equals('foo'));
    unittest.expect(o.managementType, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterNewDeviceEvent--;
}

core.List<core.String> buildUnnamed4012() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4012(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4013() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4013(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNewPermissionsEvent = 0;
api.NewPermissionsEvent buildNewPermissionsEvent() {
  var o = api.NewPermissionsEvent();
  buildCounterNewPermissionsEvent++;
  if (buildCounterNewPermissionsEvent < 3) {
    o.approvedPermissions = buildUnnamed4012();
    o.productId = 'foo';
    o.requestedPermissions = buildUnnamed4013();
  }
  buildCounterNewPermissionsEvent--;
  return o;
}

void checkNewPermissionsEvent(api.NewPermissionsEvent o) {
  buildCounterNewPermissionsEvent++;
  if (buildCounterNewPermissionsEvent < 3) {
    checkUnnamed4012(o.approvedPermissions);
    unittest.expect(o.productId, unittest.equals('foo'));
    checkUnnamed4013(o.requestedPermissions);
  }
  buildCounterNewPermissionsEvent--;
}

core.int buildCounterNotification = 0;
api.Notification buildNotification() {
  var o = api.Notification();
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    o.appRestrictionsSchemaChangeEvent =
        buildAppRestrictionsSchemaChangeEvent();
    o.appUpdateEvent = buildAppUpdateEvent();
    o.deviceReportUpdateEvent = buildDeviceReportUpdateEvent();
    o.enterpriseId = 'foo';
    o.installFailureEvent = buildInstallFailureEvent();
    o.newDeviceEvent = buildNewDeviceEvent();
    o.newPermissionsEvent = buildNewPermissionsEvent();
    o.notificationType = 'foo';
    o.productApprovalEvent = buildProductApprovalEvent();
    o.productAvailabilityChangeEvent = buildProductAvailabilityChangeEvent();
    o.timestampMillis = 'foo';
  }
  buildCounterNotification--;
  return o;
}

void checkNotification(api.Notification o) {
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    checkAppRestrictionsSchemaChangeEvent(o.appRestrictionsSchemaChangeEvent
        as api.AppRestrictionsSchemaChangeEvent);
    checkAppUpdateEvent(o.appUpdateEvent as api.AppUpdateEvent);
    checkDeviceReportUpdateEvent(
        o.deviceReportUpdateEvent as api.DeviceReportUpdateEvent);
    unittest.expect(o.enterpriseId, unittest.equals('foo'));
    checkInstallFailureEvent(o.installFailureEvent as api.InstallFailureEvent);
    checkNewDeviceEvent(o.newDeviceEvent as api.NewDeviceEvent);
    checkNewPermissionsEvent(o.newPermissionsEvent as api.NewPermissionsEvent);
    unittest.expect(o.notificationType, unittest.equals('foo'));
    checkProductApprovalEvent(
        o.productApprovalEvent as api.ProductApprovalEvent);
    checkProductAvailabilityChangeEvent(
        o.productAvailabilityChangeEvent as api.ProductAvailabilityChangeEvent);
    unittest.expect(o.timestampMillis, unittest.equals('foo'));
  }
  buildCounterNotification--;
}

core.List<api.Notification> buildUnnamed4014() {
  var o = <api.Notification>[];
  o.add(buildNotification());
  o.add(buildNotification());
  return o;
}

void checkUnnamed4014(core.List<api.Notification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotification(o[0] as api.Notification);
  checkNotification(o[1] as api.Notification);
}

core.int buildCounterNotificationSet = 0;
api.NotificationSet buildNotificationSet() {
  var o = api.NotificationSet();
  buildCounterNotificationSet++;
  if (buildCounterNotificationSet < 3) {
    o.notification = buildUnnamed4014();
    o.notificationSetId = 'foo';
  }
  buildCounterNotificationSet--;
  return o;
}

void checkNotificationSet(api.NotificationSet o) {
  buildCounterNotificationSet++;
  if (buildCounterNotificationSet < 3) {
    checkUnnamed4014(o.notification);
    unittest.expect(o.notificationSetId, unittest.equals('foo'));
  }
  buildCounterNotificationSet--;
}

core.int buildCounterPageInfo = 0;
api.PageInfo buildPageInfo() {
  var o = api.PageInfo();
  buildCounterPageInfo++;
  if (buildCounterPageInfo < 3) {
    o.resultPerPage = 42;
    o.startIndex = 42;
    o.totalResults = 42;
  }
  buildCounterPageInfo--;
  return o;
}

void checkPageInfo(api.PageInfo o) {
  buildCounterPageInfo++;
  if (buildCounterPageInfo < 3) {
    unittest.expect(o.resultPerPage, unittest.equals(42));
    unittest.expect(o.startIndex, unittest.equals(42));
    unittest.expect(o.totalResults, unittest.equals(42));
  }
  buildCounterPageInfo--;
}

core.int buildCounterPermission = 0;
api.Permission buildPermission() {
  var o = api.Permission();
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    o.description = 'foo';
    o.name = 'foo';
    o.permissionId = 'foo';
  }
  buildCounterPermission--;
  return o;
}

void checkPermission(api.Permission o) {
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.permissionId, unittest.equals('foo'));
  }
  buildCounterPermission--;
}

core.List<api.ProductPolicy> buildUnnamed4015() {
  var o = <api.ProductPolicy>[];
  o.add(buildProductPolicy());
  o.add(buildProductPolicy());
  return o;
}

void checkUnnamed4015(core.List<api.ProductPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductPolicy(o[0] as api.ProductPolicy);
  checkProductPolicy(o[1] as api.ProductPolicy);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.autoUpdatePolicy = 'foo';
    o.deviceReportPolicy = 'foo';
    o.maintenanceWindow = buildMaintenanceWindow();
    o.productAvailabilityPolicy = 'foo';
    o.productPolicy = buildUnnamed4015();
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    unittest.expect(o.autoUpdatePolicy, unittest.equals('foo'));
    unittest.expect(o.deviceReportPolicy, unittest.equals('foo'));
    checkMaintenanceWindow(o.maintenanceWindow as api.MaintenanceWindow);
    unittest.expect(o.productAvailabilityPolicy, unittest.equals('foo'));
    checkUnnamed4015(o.productPolicy);
  }
  buildCounterPolicy--;
}

core.List<api.TrackInfo> buildUnnamed4016() {
  var o = <api.TrackInfo>[];
  o.add(buildTrackInfo());
  o.add(buildTrackInfo());
  return o;
}

void checkUnnamed4016(core.List<api.TrackInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrackInfo(o[0] as api.TrackInfo);
  checkTrackInfo(o[1] as api.TrackInfo);
}

core.List<api.AppVersion> buildUnnamed4017() {
  var o = <api.AppVersion>[];
  o.add(buildAppVersion());
  o.add(buildAppVersion());
  return o;
}

void checkUnnamed4017(core.List<api.AppVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppVersion(o[0] as api.AppVersion);
  checkAppVersion(o[1] as api.AppVersion);
}

core.List<core.String> buildUnnamed4018() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4018(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4019() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4019(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4020() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4020(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ProductPermission> buildUnnamed4021() {
  var o = <api.ProductPermission>[];
  o.add(buildProductPermission());
  o.add(buildProductPermission());
  return o;
}

void checkUnnamed4021(core.List<api.ProductPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductPermission(o[0] as api.ProductPermission);
  checkProductPermission(o[1] as api.ProductPermission);
}

core.List<core.String> buildUnnamed4022() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4022(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProduct = 0;
api.Product buildProduct() {
  var o = api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.appTracks = buildUnnamed4016();
    o.appVersion = buildUnnamed4017();
    o.authorName = 'foo';
    o.availableCountries = buildUnnamed4018();
    o.availableTracks = buildUnnamed4019();
    o.category = 'foo';
    o.contentRating = 'foo';
    o.description = 'foo';
    o.detailsUrl = 'foo';
    o.distributionChannel = 'foo';
    o.features = buildUnnamed4020();
    o.iconUrl = 'foo';
    o.lastUpdatedTimestampMillis = 'foo';
    o.minAndroidSdkVersion = 42;
    o.permissions = buildUnnamed4021();
    o.productId = 'foo';
    o.productPricing = 'foo';
    o.recentChanges = 'foo';
    o.requiresContainerApp = true;
    o.screenshotUrls = buildUnnamed4022();
    o.signingCertificate = buildProductSigningCertificate();
    o.smallIconUrl = 'foo';
    o.title = 'foo';
    o.workDetailsUrl = 'foo';
  }
  buildCounterProduct--;
  return o;
}

void checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    checkUnnamed4016(o.appTracks);
    checkUnnamed4017(o.appVersion);
    unittest.expect(o.authorName, unittest.equals('foo'));
    checkUnnamed4018(o.availableCountries);
    checkUnnamed4019(o.availableTracks);
    unittest.expect(o.category, unittest.equals('foo'));
    unittest.expect(o.contentRating, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.detailsUrl, unittest.equals('foo'));
    unittest.expect(o.distributionChannel, unittest.equals('foo'));
    checkUnnamed4020(o.features);
    unittest.expect(o.iconUrl, unittest.equals('foo'));
    unittest.expect(o.lastUpdatedTimestampMillis, unittest.equals('foo'));
    unittest.expect(o.minAndroidSdkVersion, unittest.equals(42));
    checkUnnamed4021(o.permissions);
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.productPricing, unittest.equals('foo'));
    unittest.expect(o.recentChanges, unittest.equals('foo'));
    unittest.expect(o.requiresContainerApp, unittest.isTrue);
    checkUnnamed4022(o.screenshotUrls);
    checkProductSigningCertificate(
        o.signingCertificate as api.ProductSigningCertificate);
    unittest.expect(o.smallIconUrl, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.workDetailsUrl, unittest.equals('foo'));
  }
  buildCounterProduct--;
}

core.int buildCounterProductApprovalEvent = 0;
api.ProductApprovalEvent buildProductApprovalEvent() {
  var o = api.ProductApprovalEvent();
  buildCounterProductApprovalEvent++;
  if (buildCounterProductApprovalEvent < 3) {
    o.approved = 'foo';
    o.productId = 'foo';
  }
  buildCounterProductApprovalEvent--;
  return o;
}

void checkProductApprovalEvent(api.ProductApprovalEvent o) {
  buildCounterProductApprovalEvent++;
  if (buildCounterProductApprovalEvent < 3) {
    unittest.expect(o.approved, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterProductApprovalEvent--;
}

core.int buildCounterProductAvailabilityChangeEvent = 0;
api.ProductAvailabilityChangeEvent buildProductAvailabilityChangeEvent() {
  var o = api.ProductAvailabilityChangeEvent();
  buildCounterProductAvailabilityChangeEvent++;
  if (buildCounterProductAvailabilityChangeEvent < 3) {
    o.availabilityStatus = 'foo';
    o.productId = 'foo';
  }
  buildCounterProductAvailabilityChangeEvent--;
  return o;
}

void checkProductAvailabilityChangeEvent(api.ProductAvailabilityChangeEvent o) {
  buildCounterProductAvailabilityChangeEvent++;
  if (buildCounterProductAvailabilityChangeEvent < 3) {
    unittest.expect(o.availabilityStatus, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterProductAvailabilityChangeEvent--;
}

core.int buildCounterProductPermission = 0;
api.ProductPermission buildProductPermission() {
  var o = api.ProductPermission();
  buildCounterProductPermission++;
  if (buildCounterProductPermission < 3) {
    o.permissionId = 'foo';
    o.state = 'foo';
  }
  buildCounterProductPermission--;
  return o;
}

void checkProductPermission(api.ProductPermission o) {
  buildCounterProductPermission++;
  if (buildCounterProductPermission < 3) {
    unittest.expect(o.permissionId, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterProductPermission--;
}

core.List<api.ProductPermission> buildUnnamed4023() {
  var o = <api.ProductPermission>[];
  o.add(buildProductPermission());
  o.add(buildProductPermission());
  return o;
}

void checkUnnamed4023(core.List<api.ProductPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductPermission(o[0] as api.ProductPermission);
  checkProductPermission(o[1] as api.ProductPermission);
}

core.int buildCounterProductPermissions = 0;
api.ProductPermissions buildProductPermissions() {
  var o = api.ProductPermissions();
  buildCounterProductPermissions++;
  if (buildCounterProductPermissions < 3) {
    o.permission = buildUnnamed4023();
    o.productId = 'foo';
  }
  buildCounterProductPermissions--;
  return o;
}

void checkProductPermissions(api.ProductPermissions o) {
  buildCounterProductPermissions++;
  if (buildCounterProductPermissions < 3) {
    checkUnnamed4023(o.permission);
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterProductPermissions--;
}

core.List<core.String> buildUnnamed4024() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4024(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4025() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4025(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProductPolicy = 0;
api.ProductPolicy buildProductPolicy() {
  var o = api.ProductPolicy();
  buildCounterProductPolicy++;
  if (buildCounterProductPolicy < 3) {
    o.autoInstallPolicy = buildAutoInstallPolicy();
    o.autoUpdateMode = 'foo';
    o.managedConfiguration = buildManagedConfiguration();
    o.productId = 'foo';
    o.trackIds = buildUnnamed4024();
    o.tracks = buildUnnamed4025();
  }
  buildCounterProductPolicy--;
  return o;
}

void checkProductPolicy(api.ProductPolicy o) {
  buildCounterProductPolicy++;
  if (buildCounterProductPolicy < 3) {
    checkAutoInstallPolicy(o.autoInstallPolicy as api.AutoInstallPolicy);
    unittest.expect(o.autoUpdateMode, unittest.equals('foo'));
    checkManagedConfiguration(
        o.managedConfiguration as api.ManagedConfiguration);
    unittest.expect(o.productId, unittest.equals('foo'));
    checkUnnamed4024(o.trackIds);
    checkUnnamed4025(o.tracks);
  }
  buildCounterProductPolicy--;
}

core.List<core.String> buildUnnamed4026() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4026(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ProductVisibility> buildUnnamed4027() {
  var o = <api.ProductVisibility>[];
  o.add(buildProductVisibility());
  o.add(buildProductVisibility());
  return o;
}

void checkUnnamed4027(core.List<api.ProductVisibility> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductVisibility(o[0] as api.ProductVisibility);
  checkProductVisibility(o[1] as api.ProductVisibility);
}

core.int buildCounterProductSet = 0;
api.ProductSet buildProductSet() {
  var o = api.ProductSet();
  buildCounterProductSet++;
  if (buildCounterProductSet < 3) {
    o.productId = buildUnnamed4026();
    o.productSetBehavior = 'foo';
    o.productVisibility = buildUnnamed4027();
  }
  buildCounterProductSet--;
  return o;
}

void checkProductSet(api.ProductSet o) {
  buildCounterProductSet++;
  if (buildCounterProductSet < 3) {
    checkUnnamed4026(o.productId);
    unittest.expect(o.productSetBehavior, unittest.equals('foo'));
    checkUnnamed4027(o.productVisibility);
  }
  buildCounterProductSet--;
}

core.int buildCounterProductSigningCertificate = 0;
api.ProductSigningCertificate buildProductSigningCertificate() {
  var o = api.ProductSigningCertificate();
  buildCounterProductSigningCertificate++;
  if (buildCounterProductSigningCertificate < 3) {
    o.certificateHashSha1 = 'foo';
    o.certificateHashSha256 = 'foo';
  }
  buildCounterProductSigningCertificate--;
  return o;
}

void checkProductSigningCertificate(api.ProductSigningCertificate o) {
  buildCounterProductSigningCertificate++;
  if (buildCounterProductSigningCertificate < 3) {
    unittest.expect(o.certificateHashSha1, unittest.equals('foo'));
    unittest.expect(o.certificateHashSha256, unittest.equals('foo'));
  }
  buildCounterProductSigningCertificate--;
}

core.List<core.String> buildUnnamed4028() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4028(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4029() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4029(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProductVisibility = 0;
api.ProductVisibility buildProductVisibility() {
  var o = api.ProductVisibility();
  buildCounterProductVisibility++;
  if (buildCounterProductVisibility < 3) {
    o.productId = 'foo';
    o.trackIds = buildUnnamed4028();
    o.tracks = buildUnnamed4029();
  }
  buildCounterProductVisibility--;
  return o;
}

void checkProductVisibility(api.ProductVisibility o) {
  buildCounterProductVisibility++;
  if (buildCounterProductVisibility < 3) {
    unittest.expect(o.productId, unittest.equals('foo'));
    checkUnnamed4028(o.trackIds);
    checkUnnamed4029(o.tracks);
  }
  buildCounterProductVisibility--;
}

core.int buildCounterProductsApproveRequest = 0;
api.ProductsApproveRequest buildProductsApproveRequest() {
  var o = api.ProductsApproveRequest();
  buildCounterProductsApproveRequest++;
  if (buildCounterProductsApproveRequest < 3) {
    o.approvalUrlInfo = buildApprovalUrlInfo();
    o.approvedPermissions = 'foo';
  }
  buildCounterProductsApproveRequest--;
  return o;
}

void checkProductsApproveRequest(api.ProductsApproveRequest o) {
  buildCounterProductsApproveRequest++;
  if (buildCounterProductsApproveRequest < 3) {
    checkApprovalUrlInfo(o.approvalUrlInfo as api.ApprovalUrlInfo);
    unittest.expect(o.approvedPermissions, unittest.equals('foo'));
  }
  buildCounterProductsApproveRequest--;
}

core.int buildCounterProductsGenerateApprovalUrlResponse = 0;
api.ProductsGenerateApprovalUrlResponse
    buildProductsGenerateApprovalUrlResponse() {
  var o = api.ProductsGenerateApprovalUrlResponse();
  buildCounterProductsGenerateApprovalUrlResponse++;
  if (buildCounterProductsGenerateApprovalUrlResponse < 3) {
    o.url = 'foo';
  }
  buildCounterProductsGenerateApprovalUrlResponse--;
  return o;
}

void checkProductsGenerateApprovalUrlResponse(
    api.ProductsGenerateApprovalUrlResponse o) {
  buildCounterProductsGenerateApprovalUrlResponse++;
  if (buildCounterProductsGenerateApprovalUrlResponse < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterProductsGenerateApprovalUrlResponse--;
}

core.List<api.Product> buildUnnamed4030() {
  var o = <api.Product>[];
  o.add(buildProduct());
  o.add(buildProduct());
  return o;
}

void checkUnnamed4030(core.List<api.Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProduct(o[0] as api.Product);
  checkProduct(o[1] as api.Product);
}

core.int buildCounterProductsListResponse = 0;
api.ProductsListResponse buildProductsListResponse() {
  var o = api.ProductsListResponse();
  buildCounterProductsListResponse++;
  if (buildCounterProductsListResponse < 3) {
    o.pageInfo = buildPageInfo();
    o.product = buildUnnamed4030();
    o.tokenPagination = buildTokenPagination();
  }
  buildCounterProductsListResponse--;
  return o;
}

void checkProductsListResponse(api.ProductsListResponse o) {
  buildCounterProductsListResponse++;
  if (buildCounterProductsListResponse < 3) {
    checkPageInfo(o.pageInfo as api.PageInfo);
    checkUnnamed4030(o.product);
    checkTokenPagination(o.tokenPagination as api.TokenPagination);
  }
  buildCounterProductsListResponse--;
}

core.int buildCounterServiceAccount = 0;
api.ServiceAccount buildServiceAccount() {
  var o = api.ServiceAccount();
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    o.key = buildServiceAccountKey();
    o.name = 'foo';
  }
  buildCounterServiceAccount--;
  return o;
}

void checkServiceAccount(api.ServiceAccount o) {
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    checkServiceAccountKey(o.key as api.ServiceAccountKey);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterServiceAccount--;
}

core.int buildCounterServiceAccountKey = 0;
api.ServiceAccountKey buildServiceAccountKey() {
  var o = api.ServiceAccountKey();
  buildCounterServiceAccountKey++;
  if (buildCounterServiceAccountKey < 3) {
    o.data = 'foo';
    o.id = 'foo';
    o.publicData = 'foo';
    o.type = 'foo';
  }
  buildCounterServiceAccountKey--;
  return o;
}

void checkServiceAccountKey(api.ServiceAccountKey o) {
  buildCounterServiceAccountKey++;
  if (buildCounterServiceAccountKey < 3) {
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.publicData, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterServiceAccountKey--;
}

core.List<api.ServiceAccountKey> buildUnnamed4031() {
  var o = <api.ServiceAccountKey>[];
  o.add(buildServiceAccountKey());
  o.add(buildServiceAccountKey());
  return o;
}

void checkUnnamed4031(core.List<api.ServiceAccountKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceAccountKey(o[0] as api.ServiceAccountKey);
  checkServiceAccountKey(o[1] as api.ServiceAccountKey);
}

core.int buildCounterServiceAccountKeysListResponse = 0;
api.ServiceAccountKeysListResponse buildServiceAccountKeysListResponse() {
  var o = api.ServiceAccountKeysListResponse();
  buildCounterServiceAccountKeysListResponse++;
  if (buildCounterServiceAccountKeysListResponse < 3) {
    o.serviceAccountKey = buildUnnamed4031();
  }
  buildCounterServiceAccountKeysListResponse--;
  return o;
}

void checkServiceAccountKeysListResponse(api.ServiceAccountKeysListResponse o) {
  buildCounterServiceAccountKeysListResponse++;
  if (buildCounterServiceAccountKeysListResponse < 3) {
    checkUnnamed4031(o.serviceAccountKey);
  }
  buildCounterServiceAccountKeysListResponse--;
}

core.int buildCounterSignupInfo = 0;
api.SignupInfo buildSignupInfo() {
  var o = api.SignupInfo();
  buildCounterSignupInfo++;
  if (buildCounterSignupInfo < 3) {
    o.completionToken = 'foo';
    o.kind = 'foo';
    o.url = 'foo';
  }
  buildCounterSignupInfo--;
  return o;
}

void checkSignupInfo(api.SignupInfo o) {
  buildCounterSignupInfo++;
  if (buildCounterSignupInfo < 3) {
    unittest.expect(o.completionToken, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterSignupInfo--;
}

core.List<api.LocalizedText> buildUnnamed4032() {
  var o = <api.LocalizedText>[];
  o.add(buildLocalizedText());
  o.add(buildLocalizedText());
  return o;
}

void checkUnnamed4032(core.List<api.LocalizedText> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalizedText(o[0] as api.LocalizedText);
  checkLocalizedText(o[1] as api.LocalizedText);
}

core.List<core.String> buildUnnamed4033() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4033(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStoreCluster = 0;
api.StoreCluster buildStoreCluster() {
  var o = api.StoreCluster();
  buildCounterStoreCluster++;
  if (buildCounterStoreCluster < 3) {
    o.id = 'foo';
    o.name = buildUnnamed4032();
    o.orderInPage = 'foo';
    o.productId = buildUnnamed4033();
  }
  buildCounterStoreCluster--;
  return o;
}

void checkStoreCluster(api.StoreCluster o) {
  buildCounterStoreCluster++;
  if (buildCounterStoreCluster < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed4032(o.name);
    unittest.expect(o.orderInPage, unittest.equals('foo'));
    checkUnnamed4033(o.productId);
  }
  buildCounterStoreCluster--;
}

core.int buildCounterStoreLayout = 0;
api.StoreLayout buildStoreLayout() {
  var o = api.StoreLayout();
  buildCounterStoreLayout++;
  if (buildCounterStoreLayout < 3) {
    o.homepageId = 'foo';
    o.storeLayoutType = 'foo';
  }
  buildCounterStoreLayout--;
  return o;
}

void checkStoreLayout(api.StoreLayout o) {
  buildCounterStoreLayout++;
  if (buildCounterStoreLayout < 3) {
    unittest.expect(o.homepageId, unittest.equals('foo'));
    unittest.expect(o.storeLayoutType, unittest.equals('foo'));
  }
  buildCounterStoreLayout--;
}

core.List<api.StoreCluster> buildUnnamed4034() {
  var o = <api.StoreCluster>[];
  o.add(buildStoreCluster());
  o.add(buildStoreCluster());
  return o;
}

void checkUnnamed4034(core.List<api.StoreCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStoreCluster(o[0] as api.StoreCluster);
  checkStoreCluster(o[1] as api.StoreCluster);
}

core.int buildCounterStoreLayoutClustersListResponse = 0;
api.StoreLayoutClustersListResponse buildStoreLayoutClustersListResponse() {
  var o = api.StoreLayoutClustersListResponse();
  buildCounterStoreLayoutClustersListResponse++;
  if (buildCounterStoreLayoutClustersListResponse < 3) {
    o.cluster = buildUnnamed4034();
  }
  buildCounterStoreLayoutClustersListResponse--;
  return o;
}

void checkStoreLayoutClustersListResponse(
    api.StoreLayoutClustersListResponse o) {
  buildCounterStoreLayoutClustersListResponse++;
  if (buildCounterStoreLayoutClustersListResponse < 3) {
    checkUnnamed4034(o.cluster);
  }
  buildCounterStoreLayoutClustersListResponse--;
}

core.List<api.StorePage> buildUnnamed4035() {
  var o = <api.StorePage>[];
  o.add(buildStorePage());
  o.add(buildStorePage());
  return o;
}

void checkUnnamed4035(core.List<api.StorePage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStorePage(o[0] as api.StorePage);
  checkStorePage(o[1] as api.StorePage);
}

core.int buildCounterStoreLayoutPagesListResponse = 0;
api.StoreLayoutPagesListResponse buildStoreLayoutPagesListResponse() {
  var o = api.StoreLayoutPagesListResponse();
  buildCounterStoreLayoutPagesListResponse++;
  if (buildCounterStoreLayoutPagesListResponse < 3) {
    o.page = buildUnnamed4035();
  }
  buildCounterStoreLayoutPagesListResponse--;
  return o;
}

void checkStoreLayoutPagesListResponse(api.StoreLayoutPagesListResponse o) {
  buildCounterStoreLayoutPagesListResponse++;
  if (buildCounterStoreLayoutPagesListResponse < 3) {
    checkUnnamed4035(o.page);
  }
  buildCounterStoreLayoutPagesListResponse--;
}

core.List<core.String> buildUnnamed4036() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4036(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.LocalizedText> buildUnnamed4037() {
  var o = <api.LocalizedText>[];
  o.add(buildLocalizedText());
  o.add(buildLocalizedText());
  return o;
}

void checkUnnamed4037(core.List<api.LocalizedText> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalizedText(o[0] as api.LocalizedText);
  checkLocalizedText(o[1] as api.LocalizedText);
}

core.int buildCounterStorePage = 0;
api.StorePage buildStorePage() {
  var o = api.StorePage();
  buildCounterStorePage++;
  if (buildCounterStorePage < 3) {
    o.id = 'foo';
    o.link = buildUnnamed4036();
    o.name = buildUnnamed4037();
  }
  buildCounterStorePage--;
  return o;
}

void checkStorePage(api.StorePage o) {
  buildCounterStorePage++;
  if (buildCounterStorePage < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed4036(o.link);
    checkUnnamed4037(o.name);
  }
  buildCounterStorePage--;
}

core.int buildCounterTokenPagination = 0;
api.TokenPagination buildTokenPagination() {
  var o = api.TokenPagination();
  buildCounterTokenPagination++;
  if (buildCounterTokenPagination < 3) {
    o.nextPageToken = 'foo';
    o.previousPageToken = 'foo';
  }
  buildCounterTokenPagination--;
  return o;
}

void checkTokenPagination(api.TokenPagination o) {
  buildCounterTokenPagination++;
  if (buildCounterTokenPagination < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.previousPageToken, unittest.equals('foo'));
  }
  buildCounterTokenPagination--;
}

core.int buildCounterTrackInfo = 0;
api.TrackInfo buildTrackInfo() {
  var o = api.TrackInfo();
  buildCounterTrackInfo++;
  if (buildCounterTrackInfo < 3) {
    o.trackAlias = 'foo';
    o.trackId = 'foo';
  }
  buildCounterTrackInfo--;
  return o;
}

void checkTrackInfo(api.TrackInfo o) {
  buildCounterTrackInfo++;
  if (buildCounterTrackInfo < 3) {
    unittest.expect(o.trackAlias, unittest.equals('foo'));
    unittest.expect(o.trackId, unittest.equals('foo'));
  }
  buildCounterTrackInfo--;
}

core.int buildCounterUser = 0;
api.User buildUser() {
  var o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.accountIdentifier = 'foo';
    o.accountType = 'foo';
    o.displayName = 'foo';
    o.id = 'foo';
    o.managementType = 'foo';
    o.primaryEmail = 'foo';
  }
  buildCounterUser--;
  return o;
}

void checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    unittest.expect(o.accountIdentifier, unittest.equals('foo'));
    unittest.expect(o.accountType, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.managementType, unittest.equals('foo'));
    unittest.expect(o.primaryEmail, unittest.equals('foo'));
  }
  buildCounterUser--;
}

core.List<api.User> buildUnnamed4038() {
  var o = <api.User>[];
  o.add(buildUser());
  o.add(buildUser());
  return o;
}

void checkUnnamed4038(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0] as api.User);
  checkUser(o[1] as api.User);
}

core.int buildCounterUsersListResponse = 0;
api.UsersListResponse buildUsersListResponse() {
  var o = api.UsersListResponse();
  buildCounterUsersListResponse++;
  if (buildCounterUsersListResponse < 3) {
    o.user = buildUnnamed4038();
  }
  buildCounterUsersListResponse--;
  return o;
}

void checkUsersListResponse(api.UsersListResponse o) {
  buildCounterUsersListResponse++;
  if (buildCounterUsersListResponse < 3) {
    checkUnnamed4038(o.user);
  }
  buildCounterUsersListResponse--;
}

core.int buildCounterVariableSet = 0;
api.VariableSet buildVariableSet() {
  var o = api.VariableSet();
  buildCounterVariableSet++;
  if (buildCounterVariableSet < 3) {
    o.placeholder = 'foo';
    o.userValue = 'foo';
  }
  buildCounterVariableSet--;
  return o;
}

void checkVariableSet(api.VariableSet o) {
  buildCounterVariableSet++;
  if (buildCounterVariableSet < 3) {
    unittest.expect(o.placeholder, unittest.equals('foo'));
    unittest.expect(o.userValue, unittest.equals('foo'));
  }
  buildCounterVariableSet--;
}

core.List<api.WebAppIcon> buildUnnamed4039() {
  var o = <api.WebAppIcon>[];
  o.add(buildWebAppIcon());
  o.add(buildWebAppIcon());
  return o;
}

void checkUnnamed4039(core.List<api.WebAppIcon> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebAppIcon(o[0] as api.WebAppIcon);
  checkWebAppIcon(o[1] as api.WebAppIcon);
}

core.int buildCounterWebApp = 0;
api.WebApp buildWebApp() {
  var o = api.WebApp();
  buildCounterWebApp++;
  if (buildCounterWebApp < 3) {
    o.displayMode = 'foo';
    o.icons = buildUnnamed4039();
    o.isPublished = true;
    o.startUrl = 'foo';
    o.title = 'foo';
    o.versionCode = 'foo';
    o.webAppId = 'foo';
  }
  buildCounterWebApp--;
  return o;
}

void checkWebApp(api.WebApp o) {
  buildCounterWebApp++;
  if (buildCounterWebApp < 3) {
    unittest.expect(o.displayMode, unittest.equals('foo'));
    checkUnnamed4039(o.icons);
    unittest.expect(o.isPublished, unittest.isTrue);
    unittest.expect(o.startUrl, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.versionCode, unittest.equals('foo'));
    unittest.expect(o.webAppId, unittest.equals('foo'));
  }
  buildCounterWebApp--;
}

core.int buildCounterWebAppIcon = 0;
api.WebAppIcon buildWebAppIcon() {
  var o = api.WebAppIcon();
  buildCounterWebAppIcon++;
  if (buildCounterWebAppIcon < 3) {
    o.imageData = 'foo';
  }
  buildCounterWebAppIcon--;
  return o;
}

void checkWebAppIcon(api.WebAppIcon o) {
  buildCounterWebAppIcon++;
  if (buildCounterWebAppIcon < 3) {
    unittest.expect(o.imageData, unittest.equals('foo'));
  }
  buildCounterWebAppIcon--;
}

core.List<api.WebApp> buildUnnamed4040() {
  var o = <api.WebApp>[];
  o.add(buildWebApp());
  o.add(buildWebApp());
  return o;
}

void checkUnnamed4040(core.List<api.WebApp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebApp(o[0] as api.WebApp);
  checkWebApp(o[1] as api.WebApp);
}

core.int buildCounterWebAppsListResponse = 0;
api.WebAppsListResponse buildWebAppsListResponse() {
  var o = api.WebAppsListResponse();
  buildCounterWebAppsListResponse++;
  if (buildCounterWebAppsListResponse < 3) {
    o.webApp = buildUnnamed4040();
  }
  buildCounterWebAppsListResponse--;
  return o;
}

void checkWebAppsListResponse(api.WebAppsListResponse o) {
  buildCounterWebAppsListResponse++;
  if (buildCounterWebAppsListResponse < 3) {
    checkUnnamed4040(o.webApp);
  }
  buildCounterWebAppsListResponse--;
}

void main() {
  unittest.group('obj-schema-Administrator', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdministrator();
      var od = api.Administrator.fromJson(o.toJson());
      checkAdministrator(od as api.Administrator);
    });
  });

  unittest.group('obj-schema-AdministratorWebToken', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdministratorWebToken();
      var od = api.AdministratorWebToken.fromJson(o.toJson());
      checkAdministratorWebToken(od as api.AdministratorWebToken);
    });
  });

  unittest.group('obj-schema-AdministratorWebTokenSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdministratorWebTokenSpec();
      var od = api.AdministratorWebTokenSpec.fromJson(o.toJson());
      checkAdministratorWebTokenSpec(od as api.AdministratorWebTokenSpec);
    });
  });

  unittest.group('obj-schema-AdministratorWebTokenSpecManagedConfigurations',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildAdministratorWebTokenSpecManagedConfigurations();
      var od = api.AdministratorWebTokenSpecManagedConfigurations.fromJson(
          o.toJson());
      checkAdministratorWebTokenSpecManagedConfigurations(
          od as api.AdministratorWebTokenSpecManagedConfigurations);
    });
  });

  unittest.group('obj-schema-AdministratorWebTokenSpecPlaySearch', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdministratorWebTokenSpecPlaySearch();
      var od = api.AdministratorWebTokenSpecPlaySearch.fromJson(o.toJson());
      checkAdministratorWebTokenSpecPlaySearch(
          od as api.AdministratorWebTokenSpecPlaySearch);
    });
  });

  unittest.group('obj-schema-AdministratorWebTokenSpecPrivateApps', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdministratorWebTokenSpecPrivateApps();
      var od = api.AdministratorWebTokenSpecPrivateApps.fromJson(o.toJson());
      checkAdministratorWebTokenSpecPrivateApps(
          od as api.AdministratorWebTokenSpecPrivateApps);
    });
  });

  unittest.group('obj-schema-AdministratorWebTokenSpecStoreBuilder', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdministratorWebTokenSpecStoreBuilder();
      var od = api.AdministratorWebTokenSpecStoreBuilder.fromJson(o.toJson());
      checkAdministratorWebTokenSpecStoreBuilder(
          od as api.AdministratorWebTokenSpecStoreBuilder);
    });
  });

  unittest.group('obj-schema-AdministratorWebTokenSpecWebApps', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdministratorWebTokenSpecWebApps();
      var od = api.AdministratorWebTokenSpecWebApps.fromJson(o.toJson());
      checkAdministratorWebTokenSpecWebApps(
          od as api.AdministratorWebTokenSpecWebApps);
    });
  });

  unittest.group('obj-schema-AppRestrictionsSchema', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppRestrictionsSchema();
      var od = api.AppRestrictionsSchema.fromJson(o.toJson());
      checkAppRestrictionsSchema(od as api.AppRestrictionsSchema);
    });
  });

  unittest.group('obj-schema-AppRestrictionsSchemaChangeEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppRestrictionsSchemaChangeEvent();
      var od = api.AppRestrictionsSchemaChangeEvent.fromJson(o.toJson());
      checkAppRestrictionsSchemaChangeEvent(
          od as api.AppRestrictionsSchemaChangeEvent);
    });
  });

  unittest.group('obj-schema-AppRestrictionsSchemaRestriction', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppRestrictionsSchemaRestriction();
      var od = api.AppRestrictionsSchemaRestriction.fromJson(o.toJson());
      checkAppRestrictionsSchemaRestriction(
          od as api.AppRestrictionsSchemaRestriction);
    });
  });

  unittest.group('obj-schema-AppRestrictionsSchemaRestrictionRestrictionValue',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildAppRestrictionsSchemaRestrictionRestrictionValue();
      var od = api.AppRestrictionsSchemaRestrictionRestrictionValue.fromJson(
          o.toJson());
      checkAppRestrictionsSchemaRestrictionRestrictionValue(
          od as api.AppRestrictionsSchemaRestrictionRestrictionValue);
    });
  });

  unittest.group('obj-schema-AppState', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppState();
      var od = api.AppState.fromJson(o.toJson());
      checkAppState(od as api.AppState);
    });
  });

  unittest.group('obj-schema-AppUpdateEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppUpdateEvent();
      var od = api.AppUpdateEvent.fromJson(o.toJson());
      checkAppUpdateEvent(od as api.AppUpdateEvent);
    });
  });

  unittest.group('obj-schema-AppVersion', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppVersion();
      var od = api.AppVersion.fromJson(o.toJson());
      checkAppVersion(od as api.AppVersion);
    });
  });

  unittest.group('obj-schema-ApprovalUrlInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildApprovalUrlInfo();
      var od = api.ApprovalUrlInfo.fromJson(o.toJson());
      checkApprovalUrlInfo(od as api.ApprovalUrlInfo);
    });
  });

  unittest.group('obj-schema-AuthenticationToken', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuthenticationToken();
      var od = api.AuthenticationToken.fromJson(o.toJson());
      checkAuthenticationToken(od as api.AuthenticationToken);
    });
  });

  unittest.group('obj-schema-AutoInstallConstraint', () {
    unittest.test('to-json--from-json', () {
      var o = buildAutoInstallConstraint();
      var od = api.AutoInstallConstraint.fromJson(o.toJson());
      checkAutoInstallConstraint(od as api.AutoInstallConstraint);
    });
  });

  unittest.group('obj-schema-AutoInstallPolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildAutoInstallPolicy();
      var od = api.AutoInstallPolicy.fromJson(o.toJson());
      checkAutoInstallPolicy(od as api.AutoInstallPolicy);
    });
  });

  unittest.group('obj-schema-ConfigurationVariables', () {
    unittest.test('to-json--from-json', () {
      var o = buildConfigurationVariables();
      var od = api.ConfigurationVariables.fromJson(o.toJson());
      checkConfigurationVariables(od as api.ConfigurationVariables);
    });
  });

  unittest.group('obj-schema-Device', () {
    unittest.test('to-json--from-json', () {
      var o = buildDevice();
      var od = api.Device.fromJson(o.toJson());
      checkDevice(od as api.Device);
    });
  });

  unittest.group('obj-schema-DeviceReport', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceReport();
      var od = api.DeviceReport.fromJson(o.toJson());
      checkDeviceReport(od as api.DeviceReport);
    });
  });

  unittest.group('obj-schema-DeviceReportUpdateEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceReportUpdateEvent();
      var od = api.DeviceReportUpdateEvent.fromJson(o.toJson());
      checkDeviceReportUpdateEvent(od as api.DeviceReportUpdateEvent);
    });
  });

  unittest.group('obj-schema-DeviceState', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceState();
      var od = api.DeviceState.fromJson(o.toJson());
      checkDeviceState(od as api.DeviceState);
    });
  });

  unittest.group('obj-schema-DevicesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDevicesListResponse();
      var od = api.DevicesListResponse.fromJson(o.toJson());
      checkDevicesListResponse(od as api.DevicesListResponse);
    });
  });

  unittest.group('obj-schema-Enterprise', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnterprise();
      var od = api.Enterprise.fromJson(o.toJson());
      checkEnterprise(od as api.Enterprise);
    });
  });

  unittest.group('obj-schema-EnterpriseAccount', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnterpriseAccount();
      var od = api.EnterpriseAccount.fromJson(o.toJson());
      checkEnterpriseAccount(od as api.EnterpriseAccount);
    });
  });

  unittest.group('obj-schema-EnterprisesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnterprisesListResponse();
      var od = api.EnterprisesListResponse.fromJson(o.toJson());
      checkEnterprisesListResponse(od as api.EnterprisesListResponse);
    });
  });

  unittest.group('obj-schema-EnterprisesSendTestPushNotificationResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnterprisesSendTestPushNotificationResponse();
      var od =
          api.EnterprisesSendTestPushNotificationResponse.fromJson(o.toJson());
      checkEnterprisesSendTestPushNotificationResponse(
          od as api.EnterprisesSendTestPushNotificationResponse);
    });
  });

  unittest.group('obj-schema-Entitlement', () {
    unittest.test('to-json--from-json', () {
      var o = buildEntitlement();
      var od = api.Entitlement.fromJson(o.toJson());
      checkEntitlement(od as api.Entitlement);
    });
  });

  unittest.group('obj-schema-EntitlementsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildEntitlementsListResponse();
      var od = api.EntitlementsListResponse.fromJson(o.toJson());
      checkEntitlementsListResponse(od as api.EntitlementsListResponse);
    });
  });

  unittest.group('obj-schema-GroupLicense', () {
    unittest.test('to-json--from-json', () {
      var o = buildGroupLicense();
      var od = api.GroupLicense.fromJson(o.toJson());
      checkGroupLicense(od as api.GroupLicense);
    });
  });

  unittest.group('obj-schema-GroupLicenseUsersListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGroupLicenseUsersListResponse();
      var od = api.GroupLicenseUsersListResponse.fromJson(o.toJson());
      checkGroupLicenseUsersListResponse(
          od as api.GroupLicenseUsersListResponse);
    });
  });

  unittest.group('obj-schema-GroupLicensesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGroupLicensesListResponse();
      var od = api.GroupLicensesListResponse.fromJson(o.toJson());
      checkGroupLicensesListResponse(od as api.GroupLicensesListResponse);
    });
  });

  unittest.group('obj-schema-Install', () {
    unittest.test('to-json--from-json', () {
      var o = buildInstall();
      var od = api.Install.fromJson(o.toJson());
      checkInstall(od as api.Install);
    });
  });

  unittest.group('obj-schema-InstallFailureEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildInstallFailureEvent();
      var od = api.InstallFailureEvent.fromJson(o.toJson());
      checkInstallFailureEvent(od as api.InstallFailureEvent);
    });
  });

  unittest.group('obj-schema-InstallsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildInstallsListResponse();
      var od = api.InstallsListResponse.fromJson(o.toJson());
      checkInstallsListResponse(od as api.InstallsListResponse);
    });
  });

  unittest.group('obj-schema-KeyedAppState', () {
    unittest.test('to-json--from-json', () {
      var o = buildKeyedAppState();
      var od = api.KeyedAppState.fromJson(o.toJson());
      checkKeyedAppState(od as api.KeyedAppState);
    });
  });

  unittest.group('obj-schema-LocalizedText', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocalizedText();
      var od = api.LocalizedText.fromJson(o.toJson());
      checkLocalizedText(od as api.LocalizedText);
    });
  });

  unittest.group('obj-schema-MaintenanceWindow', () {
    unittest.test('to-json--from-json', () {
      var o = buildMaintenanceWindow();
      var od = api.MaintenanceWindow.fromJson(o.toJson());
      checkMaintenanceWindow(od as api.MaintenanceWindow);
    });
  });

  unittest.group('obj-schema-ManagedConfiguration', () {
    unittest.test('to-json--from-json', () {
      var o = buildManagedConfiguration();
      var od = api.ManagedConfiguration.fromJson(o.toJson());
      checkManagedConfiguration(od as api.ManagedConfiguration);
    });
  });

  unittest.group('obj-schema-ManagedConfigurationsForDeviceListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildManagedConfigurationsForDeviceListResponse();
      var od =
          api.ManagedConfigurationsForDeviceListResponse.fromJson(o.toJson());
      checkManagedConfigurationsForDeviceListResponse(
          od as api.ManagedConfigurationsForDeviceListResponse);
    });
  });

  unittest.group('obj-schema-ManagedConfigurationsForUserListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildManagedConfigurationsForUserListResponse();
      var od =
          api.ManagedConfigurationsForUserListResponse.fromJson(o.toJson());
      checkManagedConfigurationsForUserListResponse(
          od as api.ManagedConfigurationsForUserListResponse);
    });
  });

  unittest.group('obj-schema-ManagedConfigurationsSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildManagedConfigurationsSettings();
      var od = api.ManagedConfigurationsSettings.fromJson(o.toJson());
      checkManagedConfigurationsSettings(
          od as api.ManagedConfigurationsSettings);
    });
  });

  unittest.group('obj-schema-ManagedConfigurationsSettingsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildManagedConfigurationsSettingsListResponse();
      var od =
          api.ManagedConfigurationsSettingsListResponse.fromJson(o.toJson());
      checkManagedConfigurationsSettingsListResponse(
          od as api.ManagedConfigurationsSettingsListResponse);
    });
  });

  unittest.group('obj-schema-ManagedProperty', () {
    unittest.test('to-json--from-json', () {
      var o = buildManagedProperty();
      var od = api.ManagedProperty.fromJson(o.toJson());
      checkManagedProperty(od as api.ManagedProperty);
    });
  });

  unittest.group('obj-schema-ManagedPropertyBundle', () {
    unittest.test('to-json--from-json', () {
      var o = buildManagedPropertyBundle();
      var od = api.ManagedPropertyBundle.fromJson(o.toJson());
      checkManagedPropertyBundle(od as api.ManagedPropertyBundle);
    });
  });

  unittest.group('obj-schema-NewDeviceEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildNewDeviceEvent();
      var od = api.NewDeviceEvent.fromJson(o.toJson());
      checkNewDeviceEvent(od as api.NewDeviceEvent);
    });
  });

  unittest.group('obj-schema-NewPermissionsEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildNewPermissionsEvent();
      var od = api.NewPermissionsEvent.fromJson(o.toJson());
      checkNewPermissionsEvent(od as api.NewPermissionsEvent);
    });
  });

  unittest.group('obj-schema-Notification', () {
    unittest.test('to-json--from-json', () {
      var o = buildNotification();
      var od = api.Notification.fromJson(o.toJson());
      checkNotification(od as api.Notification);
    });
  });

  unittest.group('obj-schema-NotificationSet', () {
    unittest.test('to-json--from-json', () {
      var o = buildNotificationSet();
      var od = api.NotificationSet.fromJson(o.toJson());
      checkNotificationSet(od as api.NotificationSet);
    });
  });

  unittest.group('obj-schema-PageInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildPageInfo();
      var od = api.PageInfo.fromJson(o.toJson());
      checkPageInfo(od as api.PageInfo);
    });
  });

  unittest.group('obj-schema-Permission', () {
    unittest.test('to-json--from-json', () {
      var o = buildPermission();
      var od = api.Permission.fromJson(o.toJson());
      checkPermission(od as api.Permission);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicy();
      var od = api.Policy.fromJson(o.toJson());
      checkPolicy(od as api.Policy);
    });
  });

  unittest.group('obj-schema-Product', () {
    unittest.test('to-json--from-json', () {
      var o = buildProduct();
      var od = api.Product.fromJson(o.toJson());
      checkProduct(od as api.Product);
    });
  });

  unittest.group('obj-schema-ProductApprovalEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductApprovalEvent();
      var od = api.ProductApprovalEvent.fromJson(o.toJson());
      checkProductApprovalEvent(od as api.ProductApprovalEvent);
    });
  });

  unittest.group('obj-schema-ProductAvailabilityChangeEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductAvailabilityChangeEvent();
      var od = api.ProductAvailabilityChangeEvent.fromJson(o.toJson());
      checkProductAvailabilityChangeEvent(
          od as api.ProductAvailabilityChangeEvent);
    });
  });

  unittest.group('obj-schema-ProductPermission', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductPermission();
      var od = api.ProductPermission.fromJson(o.toJson());
      checkProductPermission(od as api.ProductPermission);
    });
  });

  unittest.group('obj-schema-ProductPermissions', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductPermissions();
      var od = api.ProductPermissions.fromJson(o.toJson());
      checkProductPermissions(od as api.ProductPermissions);
    });
  });

  unittest.group('obj-schema-ProductPolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductPolicy();
      var od = api.ProductPolicy.fromJson(o.toJson());
      checkProductPolicy(od as api.ProductPolicy);
    });
  });

  unittest.group('obj-schema-ProductSet', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductSet();
      var od = api.ProductSet.fromJson(o.toJson());
      checkProductSet(od as api.ProductSet);
    });
  });

  unittest.group('obj-schema-ProductSigningCertificate', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductSigningCertificate();
      var od = api.ProductSigningCertificate.fromJson(o.toJson());
      checkProductSigningCertificate(od as api.ProductSigningCertificate);
    });
  });

  unittest.group('obj-schema-ProductVisibility', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductVisibility();
      var od = api.ProductVisibility.fromJson(o.toJson());
      checkProductVisibility(od as api.ProductVisibility);
    });
  });

  unittest.group('obj-schema-ProductsApproveRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductsApproveRequest();
      var od = api.ProductsApproveRequest.fromJson(o.toJson());
      checkProductsApproveRequest(od as api.ProductsApproveRequest);
    });
  });

  unittest.group('obj-schema-ProductsGenerateApprovalUrlResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductsGenerateApprovalUrlResponse();
      var od = api.ProductsGenerateApprovalUrlResponse.fromJson(o.toJson());
      checkProductsGenerateApprovalUrlResponse(
          od as api.ProductsGenerateApprovalUrlResponse);
    });
  });

  unittest.group('obj-schema-ProductsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductsListResponse();
      var od = api.ProductsListResponse.fromJson(o.toJson());
      checkProductsListResponse(od as api.ProductsListResponse);
    });
  });

  unittest.group('obj-schema-ServiceAccount', () {
    unittest.test('to-json--from-json', () {
      var o = buildServiceAccount();
      var od = api.ServiceAccount.fromJson(o.toJson());
      checkServiceAccount(od as api.ServiceAccount);
    });
  });

  unittest.group('obj-schema-ServiceAccountKey', () {
    unittest.test('to-json--from-json', () {
      var o = buildServiceAccountKey();
      var od = api.ServiceAccountKey.fromJson(o.toJson());
      checkServiceAccountKey(od as api.ServiceAccountKey);
    });
  });

  unittest.group('obj-schema-ServiceAccountKeysListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildServiceAccountKeysListResponse();
      var od = api.ServiceAccountKeysListResponse.fromJson(o.toJson());
      checkServiceAccountKeysListResponse(
          od as api.ServiceAccountKeysListResponse);
    });
  });

  unittest.group('obj-schema-SignupInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildSignupInfo();
      var od = api.SignupInfo.fromJson(o.toJson());
      checkSignupInfo(od as api.SignupInfo);
    });
  });

  unittest.group('obj-schema-StoreCluster', () {
    unittest.test('to-json--from-json', () {
      var o = buildStoreCluster();
      var od = api.StoreCluster.fromJson(o.toJson());
      checkStoreCluster(od as api.StoreCluster);
    });
  });

  unittest.group('obj-schema-StoreLayout', () {
    unittest.test('to-json--from-json', () {
      var o = buildStoreLayout();
      var od = api.StoreLayout.fromJson(o.toJson());
      checkStoreLayout(od as api.StoreLayout);
    });
  });

  unittest.group('obj-schema-StoreLayoutClustersListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildStoreLayoutClustersListResponse();
      var od = api.StoreLayoutClustersListResponse.fromJson(o.toJson());
      checkStoreLayoutClustersListResponse(
          od as api.StoreLayoutClustersListResponse);
    });
  });

  unittest.group('obj-schema-StoreLayoutPagesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildStoreLayoutPagesListResponse();
      var od = api.StoreLayoutPagesListResponse.fromJson(o.toJson());
      checkStoreLayoutPagesListResponse(od as api.StoreLayoutPagesListResponse);
    });
  });

  unittest.group('obj-schema-StorePage', () {
    unittest.test('to-json--from-json', () {
      var o = buildStorePage();
      var od = api.StorePage.fromJson(o.toJson());
      checkStorePage(od as api.StorePage);
    });
  });

  unittest.group('obj-schema-TokenPagination', () {
    unittest.test('to-json--from-json', () {
      var o = buildTokenPagination();
      var od = api.TokenPagination.fromJson(o.toJson());
      checkTokenPagination(od as api.TokenPagination);
    });
  });

  unittest.group('obj-schema-TrackInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildTrackInfo();
      var od = api.TrackInfo.fromJson(o.toJson());
      checkTrackInfo(od as api.TrackInfo);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () {
      var o = buildUser();
      var od = api.User.fromJson(o.toJson());
      checkUser(od as api.User);
    });
  });

  unittest.group('obj-schema-UsersListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildUsersListResponse();
      var od = api.UsersListResponse.fromJson(o.toJson());
      checkUsersListResponse(od as api.UsersListResponse);
    });
  });

  unittest.group('obj-schema-VariableSet', () {
    unittest.test('to-json--from-json', () {
      var o = buildVariableSet();
      var od = api.VariableSet.fromJson(o.toJson());
      checkVariableSet(od as api.VariableSet);
    });
  });

  unittest.group('obj-schema-WebApp', () {
    unittest.test('to-json--from-json', () {
      var o = buildWebApp();
      var od = api.WebApp.fromJson(o.toJson());
      checkWebApp(od as api.WebApp);
    });
  });

  unittest.group('obj-schema-WebAppIcon', () {
    unittest.test('to-json--from-json', () {
      var o = buildWebAppIcon();
      var od = api.WebAppIcon.fromJson(o.toJson());
      checkWebAppIcon(od as api.WebAppIcon);
    });
  });

  unittest.group('obj-schema-WebAppsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildWebAppsListResponse();
      var od = api.WebAppsListResponse.fromJson(o.toJson());
      checkWebAppsListResponse(od as api.WebAppsListResponse);
    });
  });

  unittest.group('resource-DevicesResource', () {
    unittest.test('method--forceReportUpload', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).devices;
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_deviceId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf('/forceReportUpload', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_deviceId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/forceReportUpload"));
        pathOffset += 18;

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .forceReportUpload(arg_enterpriseId, arg_userId, arg_deviceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).devices;
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_deviceId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_deviceId'));

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
        var resp = convert.json.encode(buildDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, arg_userId, arg_deviceId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDevice(response as api.Device);
      })));
    });

    unittest.test('method--getState', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).devices;
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_deviceId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf('/state', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_deviceId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/state"));
        pathOffset += 6;

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
        var resp = convert.json.encode(buildDeviceState());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getState(arg_enterpriseId, arg_userId, arg_deviceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeviceState(response as api.DeviceState);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).devices;
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/devices', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/devices"));
        pathOffset += 8;

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
        var resp = convert.json.encode(buildDevicesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDevicesListResponse(response as api.DevicesListResponse);
      })));
    });

    unittest.test('method--setState', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).devices;
      var arg_request = buildDeviceState();
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_deviceId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DeviceState.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeviceState(obj as api.DeviceState);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf('/state', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_deviceId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/state"));
        pathOffset += 6;

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
        var resp = convert.json.encode(buildDeviceState());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setState(arg_request, arg_enterpriseId, arg_userId, arg_deviceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeviceState(response as api.DeviceState);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).devices;
      var arg_request = buildDevice();
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_deviceId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Device.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDevice(obj as api.Device);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_deviceId'));

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
        var resp = convert.json.encode(buildDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_enterpriseId, arg_userId, arg_deviceId,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDevice(response as api.Device);
      })));
    });
  });

  unittest.group('resource-EnterprisesResource', () {
    unittest.test('method--acknowledgeNotificationSet', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).enterprises;
      var arg_notificationSetId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 59),
            unittest.equals(
                "androidenterprise/v1/enterprises/acknowledgeNotificationSet"));
        pathOffset += 59;

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
        unittest.expect(queryMap["notificationSetId"].first,
            unittest.equals(arg_notificationSetId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .acknowledgeNotificationSet(
              notificationSetId: arg_notificationSetId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--completeSignup', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).enterprises;
      var arg_completionToken = 'foo';
      var arg_enterpriseToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 47),
            unittest.equals("androidenterprise/v1/enterprises/completeSignup"));
        pathOffset += 47;

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
        unittest.expect(queryMap["completionToken"].first,
            unittest.equals(arg_completionToken));
        unittest.expect(queryMap["enterpriseToken"].first,
            unittest.equals(arg_enterpriseToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEnterprise());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .completeSignup(
              completionToken: arg_completionToken,
              enterpriseToken: arg_enterpriseToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnterprise(response as api.Enterprise);
      })));
    });

    unittest.test('method--createWebToken', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).enterprises;
      var arg_request = buildAdministratorWebTokenSpec();
      var arg_enterpriseId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AdministratorWebTokenSpec.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAdministratorWebTokenSpec(obj as api.AdministratorWebTokenSpec);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/createWebToken', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/createWebToken"));
        pathOffset += 15;

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
        var resp = convert.json.encode(buildAdministratorWebToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createWebToken(arg_request, arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdministratorWebToken(response as api.AdministratorWebToken);
      })));
    });

    unittest.test('method--enroll', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).enterprises;
      var arg_request = buildEnterprise();
      var arg_token = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Enterprise.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnterprise(obj as api.Enterprise);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 39),
            unittest.equals("androidenterprise/v1/enterprises/enroll"));
        pathOffset += 39;

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
        unittest.expect(queryMap["token"].first, unittest.equals(arg_token));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEnterprise());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .enroll(arg_request, arg_token, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnterprise(response as api.Enterprise);
      })));
    });

    unittest.test('method--generateSignupUrl', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).enterprises;
      var arg_callbackUrl = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 42),
            unittest.equals("androidenterprise/v1/enterprises/signupUrl"));
        pathOffset += 42;

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
            queryMap["callbackUrl"].first, unittest.equals(arg_callbackUrl));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSignupInfo());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateSignupUrl(callbackUrl: arg_callbackUrl, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSignupInfo(response as api.SignupInfo);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).enterprises;
      var arg_enterpriseId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));

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
        var resp = convert.json.encode(buildEnterprise());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnterprise(response as api.Enterprise);
      })));
    });

    unittest.test('method--getServiceAccount', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).enterprises;
      var arg_enterpriseId = 'foo';
      var arg_keyType = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/serviceAccount', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/serviceAccount"));
        pathOffset += 15;

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
            queryMap["keyType"].first, unittest.equals(arg_keyType));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildServiceAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getServiceAccount(arg_enterpriseId,
              keyType: arg_keyType, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceAccount(response as api.ServiceAccount);
      })));
    });

    unittest.test('method--getStoreLayout', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).enterprises;
      var arg_enterpriseId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/storeLayout', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/storeLayout"));
        pathOffset += 12;

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
        var resp = convert.json.encode(buildStoreLayout());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getStoreLayout(arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStoreLayout(response as api.StoreLayout);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).enterprises;
      var arg_domain = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("androidenterprise/v1/enterprises"));
        pathOffset += 32;

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
        unittest.expect(queryMap["domain"].first, unittest.equals(arg_domain));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEnterprisesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_domain, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnterprisesListResponse(response as api.EnterprisesListResponse);
      })));
    });

    unittest.test('method--pullNotificationSet', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).enterprises;
      var arg_requestMode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 52),
            unittest.equals(
                "androidenterprise/v1/enterprises/pullNotificationSet"));
        pathOffset += 52;

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
            queryMap["requestMode"].first, unittest.equals(arg_requestMode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildNotificationSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .pullNotificationSet(
              requestMode: arg_requestMode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNotificationSet(response as api.NotificationSet);
      })));
    });

    unittest.test('method--sendTestPushNotification', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).enterprises;
      var arg_enterpriseId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/sendTestPushNotification', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("/sendTestPushNotification"));
        pathOffset += 25;

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
        var resp = convert.json
            .encode(buildEnterprisesSendTestPushNotificationResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .sendTestPushNotification(arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnterprisesSendTestPushNotificationResponse(
            response as api.EnterprisesSendTestPushNotificationResponse);
      })));
    });

    unittest.test('method--setAccount', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).enterprises;
      var arg_request = buildEnterpriseAccount();
      var arg_enterpriseId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.EnterpriseAccount.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnterpriseAccount(obj as api.EnterpriseAccount);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/account', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/account"));
        pathOffset += 8;

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
        var resp = convert.json.encode(buildEnterpriseAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setAccount(arg_request, arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnterpriseAccount(response as api.EnterpriseAccount);
      })));
    });

    unittest.test('method--setStoreLayout', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).enterprises;
      var arg_request = buildStoreLayout();
      var arg_enterpriseId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.StoreLayout.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStoreLayout(obj as api.StoreLayout);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/storeLayout', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/storeLayout"));
        pathOffset += 12;

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
        var resp = convert.json.encode(buildStoreLayout());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setStoreLayout(arg_request, arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStoreLayout(response as api.StoreLayout);
      })));
    });

    unittest.test('method--unenroll', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).enterprises;
      var arg_enterpriseId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/unenroll', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/unenroll"));
        pathOffset += 9;

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .unenroll(arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group('resource-EntitlementsResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).entitlements;
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_entitlementId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/entitlements/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/entitlements/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_entitlementId'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_enterpriseId, arg_userId, arg_entitlementId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).entitlements;
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_entitlementId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/entitlements/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/entitlements/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_entitlementId'));

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
        var resp = convert.json.encode(buildEntitlement());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, arg_userId, arg_entitlementId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEntitlement(response as api.Entitlement);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).entitlements;
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/entitlements', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/entitlements"));
        pathOffset += 13;

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
        var resp = convert.json.encode(buildEntitlementsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEntitlementsListResponse(response as api.EntitlementsListResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).entitlements;
      var arg_request = buildEntitlement();
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_entitlementId = 'foo';
      var arg_install = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Entitlement.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEntitlement(obj as api.Entitlement);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/entitlements/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/entitlements/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_entitlementId'));

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
            queryMap["install"].first, unittest.equals("$arg_install"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEntitlement());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_enterpriseId, arg_userId, arg_entitlementId,
              install: arg_install, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEntitlement(response as api.Entitlement);
      })));
    });
  });

  unittest.group('resource-GrouplicensesResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).grouplicenses;
      var arg_enterpriseId = 'foo';
      var arg_groupLicenseId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/groupLicenses/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/groupLicenses/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_groupLicenseId'));

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
        var resp = convert.json.encode(buildGroupLicense());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, arg_groupLicenseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroupLicense(response as api.GroupLicense);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).grouplicenses;
      var arg_enterpriseId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/groupLicenses', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/groupLicenses"));
        pathOffset += 14;

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
        var resp = convert.json.encode(buildGroupLicensesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroupLicensesListResponse(
            response as api.GroupLicensesListResponse);
      })));
    });
  });

  unittest.group('resource-GrouplicenseusersResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).grouplicenseusers;
      var arg_enterpriseId = 'foo';
      var arg_groupLicenseId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/groupLicenses/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/groupLicenses/"));
        pathOffset += 15;
        index = path.indexOf('/users', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_groupLicenseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/users"));
        pathOffset += 6;

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
        var resp = convert.json.encode(buildGroupLicenseUsersListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, arg_groupLicenseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroupLicenseUsersListResponse(
            response as api.GroupLicenseUsersListResponse);
      })));
    });
  });

  unittest.group('resource-InstallsResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).installs;
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_deviceId = 'foo';
      var arg_installId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf('/installs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_deviceId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/installs/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_installId'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_enterpriseId, arg_userId, arg_deviceId, arg_installId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).installs;
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_deviceId = 'foo';
      var arg_installId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf('/installs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_deviceId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/installs/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_installId'));

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
        var resp = convert.json.encode(buildInstall());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, arg_userId, arg_deviceId, arg_installId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInstall(response as api.Install);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).installs;
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_deviceId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf('/installs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_deviceId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/installs"));
        pathOffset += 9;

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
        var resp = convert.json.encode(buildInstallsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, arg_userId, arg_deviceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInstallsListResponse(response as api.InstallsListResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).installs;
      var arg_request = buildInstall();
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_deviceId = 'foo';
      var arg_installId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Install.fromJson(json as core.Map<core.String, core.dynamic>);
        checkInstall(obj as api.Install);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf('/installs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_deviceId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/installs/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_installId'));

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
        var resp = convert.json.encode(buildInstall());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_enterpriseId, arg_userId, arg_deviceId,
              arg_installId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInstall(response as api.Install);
      })));
    });
  });

  unittest.group('resource-ManagedconfigurationsfordeviceResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).managedconfigurationsfordevice;
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_deviceId = 'foo';
      var arg_managedConfigurationForDeviceId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf('/managedConfigurationsForDevice/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_deviceId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("/managedConfigurationsForDevice/"));
        pathOffset += 32;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
            subPart, unittest.equals('$arg_managedConfigurationForDeviceId'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_enterpriseId, arg_userId, arg_deviceId,
              arg_managedConfigurationForDeviceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).managedconfigurationsfordevice;
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_deviceId = 'foo';
      var arg_managedConfigurationForDeviceId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf('/managedConfigurationsForDevice/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_deviceId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("/managedConfigurationsForDevice/"));
        pathOffset += 32;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
            subPart, unittest.equals('$arg_managedConfigurationForDeviceId'));

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
        var resp = convert.json.encode(buildManagedConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, arg_userId, arg_deviceId,
              arg_managedConfigurationForDeviceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedConfiguration(response as api.ManagedConfiguration);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).managedconfigurationsfordevice;
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_deviceId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf('/managedConfigurationsForDevice', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_deviceId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 31),
            unittest.equals("/managedConfigurationsForDevice"));
        pathOffset += 31;

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
        var resp = convert.json
            .encode(buildManagedConfigurationsForDeviceListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, arg_userId, arg_deviceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedConfigurationsForDeviceListResponse(
            response as api.ManagedConfigurationsForDeviceListResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).managedconfigurationsfordevice;
      var arg_request = buildManagedConfiguration();
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_deviceId = 'foo';
      var arg_managedConfigurationForDeviceId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ManagedConfiguration.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkManagedConfiguration(obj as api.ManagedConfiguration);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf('/managedConfigurationsForDevice/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_deviceId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("/managedConfigurationsForDevice/"));
        pathOffset += 32;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
            subPart, unittest.equals('$arg_managedConfigurationForDeviceId'));

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
        var resp = convert.json.encode(buildManagedConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_enterpriseId, arg_userId, arg_deviceId,
              arg_managedConfigurationForDeviceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedConfiguration(response as api.ManagedConfiguration);
      })));
    });
  });

  unittest.group('resource-ManagedconfigurationsforuserResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).managedconfigurationsforuser;
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_managedConfigurationForUserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/managedConfigurationsForUser/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("/managedConfigurationsForUser/"));
        pathOffset += 30;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
            subPart, unittest.equals('$arg_managedConfigurationForUserId'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(
              arg_enterpriseId, arg_userId, arg_managedConfigurationForUserId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).managedconfigurationsforuser;
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_managedConfigurationForUserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/managedConfigurationsForUser/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("/managedConfigurationsForUser/"));
        pathOffset += 30;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
            subPart, unittest.equals('$arg_managedConfigurationForUserId'));

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
        var resp = convert.json.encode(buildManagedConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, arg_userId, arg_managedConfigurationForUserId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedConfiguration(response as api.ManagedConfiguration);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).managedconfigurationsforuser;
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/managedConfigurationsForUser', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("/managedConfigurationsForUser"));
        pathOffset += 29;

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
        var resp = convert.json
            .encode(buildManagedConfigurationsForUserListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedConfigurationsForUserListResponse(
            response as api.ManagedConfigurationsForUserListResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).managedconfigurationsforuser;
      var arg_request = buildManagedConfiguration();
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_managedConfigurationForUserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ManagedConfiguration.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkManagedConfiguration(obj as api.ManagedConfiguration);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/managedConfigurationsForUser/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("/managedConfigurationsForUser/"));
        pathOffset += 30;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
            subPart, unittest.equals('$arg_managedConfigurationForUserId'));

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
        var resp = convert.json.encode(buildManagedConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_enterpriseId, arg_userId,
              arg_managedConfigurationForUserId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedConfiguration(response as api.ManagedConfiguration);
      })));
    });
  });

  unittest.group('resource-ManagedconfigurationssettingsResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).managedconfigurationssettings;
      var arg_enterpriseId = 'foo';
      var arg_productId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/products/"));
        pathOffset += 10;
        index = path.indexOf('/managedConfigurationsSettings', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_productId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("/managedConfigurationsSettings"));
        pathOffset += 30;

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
        var resp = convert.json
            .encode(buildManagedConfigurationsSettingsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, arg_productId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedConfigurationsSettingsListResponse(
            response as api.ManagedConfigurationsSettingsListResponse);
      })));
    });
  });

  unittest.group('resource-PermissionsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).permissions;
      var arg_permissionId = 'foo';
      var arg_language = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/permissions/"));
        pathOffset += 33;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_permissionId'));

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
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPermission());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_permissionId, language: arg_language, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPermission(response as api.Permission);
      })));
    });
  });

  unittest.group('resource-ProductsResource', () {
    unittest.test('method--approve', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).products;
      var arg_request = buildProductsApproveRequest();
      var arg_enterpriseId = 'foo';
      var arg_productId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ProductsApproveRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProductsApproveRequest(obj as api.ProductsApproveRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/products/"));
        pathOffset += 10;
        index = path.indexOf('/approve', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_productId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/approve"));
        pathOffset += 8;

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .approve(arg_request, arg_enterpriseId, arg_productId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--generateApprovalUrl', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).products;
      var arg_enterpriseId = 'foo';
      var arg_productId = 'foo';
      var arg_languageCode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/products/"));
        pathOffset += 10;
        index = path.indexOf('/generateApprovalUrl', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_productId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/generateApprovalUrl"));
        pathOffset += 20;

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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildProductsGenerateApprovalUrlResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateApprovalUrl(arg_enterpriseId, arg_productId,
              languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductsGenerateApprovalUrlResponse(
            response as api.ProductsGenerateApprovalUrlResponse);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).products;
      var arg_enterpriseId = 'foo';
      var arg_productId = 'foo';
      var arg_language = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/products/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_productId'));

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
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, arg_productId,
              language: arg_language, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProduct(response as api.Product);
      })));
    });

    unittest.test('method--getAppRestrictionsSchema', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).products;
      var arg_enterpriseId = 'foo';
      var arg_productId = 'foo';
      var arg_language = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/products/"));
        pathOffset += 10;
        index = path.indexOf('/appRestrictionsSchema', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_productId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("/appRestrictionsSchema"));
        pathOffset += 22;

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
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAppRestrictionsSchema());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAppRestrictionsSchema(arg_enterpriseId, arg_productId,
              language: arg_language, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppRestrictionsSchema(response as api.AppRestrictionsSchema);
      })));
    });

    unittest.test('method--getPermissions', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).products;
      var arg_enterpriseId = 'foo';
      var arg_productId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/products/"));
        pathOffset += 10;
        index = path.indexOf('/permissions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_productId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/permissions"));
        pathOffset += 12;

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
        var resp = convert.json.encode(buildProductPermissions());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getPermissions(arg_enterpriseId, arg_productId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductPermissions(response as api.ProductPermissions);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).products;
      var arg_enterpriseId = 'foo';
      var arg_approved = true;
      var arg_language = 'foo';
      var arg_maxResults = 42;
      var arg_query = 'foo';
      var arg_token = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/products', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/products"));
        pathOffset += 9;

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
            queryMap["approved"].first, unittest.equals("$arg_approved"));
        unittest.expect(
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["token"].first, unittest.equals(arg_token));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildProductsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId,
              approved: arg_approved,
              language: arg_language,
              maxResults: arg_maxResults,
              query: arg_query,
              token: arg_token,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductsListResponse(response as api.ProductsListResponse);
      })));
    });

    unittest.test('method--unapprove', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).products;
      var arg_enterpriseId = 'foo';
      var arg_productId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/products/"));
        pathOffset += 10;
        index = path.indexOf('/unapprove', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_productId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/unapprove"));
        pathOffset += 10;

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .unapprove(arg_enterpriseId, arg_productId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group('resource-ServiceaccountkeysResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).serviceaccountkeys;
      var arg_enterpriseId = 'foo';
      var arg_keyId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/serviceAccountKeys/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/serviceAccountKeys/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_keyId'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_enterpriseId, arg_keyId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).serviceaccountkeys;
      var arg_request = buildServiceAccountKey();
      var arg_enterpriseId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ServiceAccountKey.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServiceAccountKey(obj as api.ServiceAccountKey);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/serviceAccountKeys', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/serviceAccountKeys"));
        pathOffset += 19;

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
        var resp = convert.json.encode(buildServiceAccountKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceAccountKey(response as api.ServiceAccountKey);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).serviceaccountkeys;
      var arg_enterpriseId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/serviceAccountKeys', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/serviceAccountKeys"));
        pathOffset += 19;

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
        var resp = convert.json.encode(buildServiceAccountKeysListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceAccountKeysListResponse(
            response as api.ServiceAccountKeysListResponse);
      })));
    });
  });

  unittest.group('resource-StorelayoutclustersResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).storelayoutclusters;
      var arg_enterpriseId = 'foo';
      var arg_pageId = 'foo';
      var arg_clusterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/storeLayout/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/storeLayout/pages/"));
        pathOffset += 19;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_pageId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_enterpriseId, arg_pageId, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).storelayoutclusters;
      var arg_enterpriseId = 'foo';
      var arg_pageId = 'foo';
      var arg_clusterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/storeLayout/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/storeLayout/pages/"));
        pathOffset += 19;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_pageId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));

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
        var resp = convert.json.encode(buildStoreCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, arg_pageId, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStoreCluster(response as api.StoreCluster);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).storelayoutclusters;
      var arg_request = buildStoreCluster();
      var arg_enterpriseId = 'foo';
      var arg_pageId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.StoreCluster.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStoreCluster(obj as api.StoreCluster);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/storeLayout/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/storeLayout/pages/"));
        pathOffset += 19;
        index = path.indexOf('/clusters', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_pageId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/clusters"));
        pathOffset += 9;

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
        var resp = convert.json.encode(buildStoreCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_enterpriseId, arg_pageId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStoreCluster(response as api.StoreCluster);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).storelayoutclusters;
      var arg_enterpriseId = 'foo';
      var arg_pageId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/storeLayout/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/storeLayout/pages/"));
        pathOffset += 19;
        index = path.indexOf('/clusters', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_pageId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/clusters"));
        pathOffset += 9;

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
        var resp = convert.json.encode(buildStoreLayoutClustersListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, arg_pageId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStoreLayoutClustersListResponse(
            response as api.StoreLayoutClustersListResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).storelayoutclusters;
      var arg_request = buildStoreCluster();
      var arg_enterpriseId = 'foo';
      var arg_pageId = 'foo';
      var arg_clusterId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.StoreCluster.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStoreCluster(obj as api.StoreCluster);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/storeLayout/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/storeLayout/pages/"));
        pathOffset += 19;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_pageId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_clusterId'));

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
        var resp = convert.json.encode(buildStoreCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_enterpriseId, arg_pageId, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStoreCluster(response as api.StoreCluster);
      })));
    });
  });

  unittest.group('resource-StorelayoutpagesResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).storelayoutpages;
      var arg_enterpriseId = 'foo';
      var arg_pageId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/storeLayout/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/storeLayout/pages/"));
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_pageId'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_enterpriseId, arg_pageId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).storelayoutpages;
      var arg_enterpriseId = 'foo';
      var arg_pageId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/storeLayout/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/storeLayout/pages/"));
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_pageId'));

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
        var resp = convert.json.encode(buildStorePage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, arg_pageId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStorePage(response as api.StorePage);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).storelayoutpages;
      var arg_request = buildStorePage();
      var arg_enterpriseId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.StorePage.fromJson(json as core.Map<core.String, core.dynamic>);
        checkStorePage(obj as api.StorePage);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/storeLayout/pages', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/storeLayout/pages"));
        pathOffset += 18;

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
        var resp = convert.json.encode(buildStorePage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStorePage(response as api.StorePage);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).storelayoutpages;
      var arg_enterpriseId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/storeLayout/pages', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/storeLayout/pages"));
        pathOffset += 18;

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
        var resp = convert.json.encode(buildStoreLayoutPagesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStoreLayoutPagesListResponse(
            response as api.StoreLayoutPagesListResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).storelayoutpages;
      var arg_request = buildStorePage();
      var arg_enterpriseId = 'foo';
      var arg_pageId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.StorePage.fromJson(json as core.Map<core.String, core.dynamic>);
        checkStorePage(obj as api.StorePage);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/storeLayout/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/storeLayout/pages/"));
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_pageId'));

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
        var resp = convert.json.encode(buildStorePage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_enterpriseId, arg_pageId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStorePage(response as api.StorePage);
      })));
    });
  });

  unittest.group('resource-UsersResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).users;
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_userId'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_enterpriseId, arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--generateAuthenticationToken', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).users;
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/authenticationToken', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/authenticationToken"));
        pathOffset += 20;

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
        var resp = convert.json.encode(buildAuthenticationToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateAuthenticationToken(arg_enterpriseId, arg_userId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAuthenticationToken(response as api.AuthenticationToken);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).users;
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_userId'));

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
        var resp = convert.json.encode(buildUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUser(response as api.User);
      })));
    });

    unittest.test('method--getAvailableProductSet', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).users;
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/availableProductSet', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/availableProductSet"));
        pathOffset += 20;

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
        var resp = convert.json.encode(buildProductSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAvailableProductSet(arg_enterpriseId, arg_userId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductSet(response as api.ProductSet);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).users;
      var arg_request = buildUser();
      var arg_enterpriseId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.User.fromJson(json as core.Map<core.String, core.dynamic>);
        checkUser(obj as api.User);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/users"));
        pathOffset += 6;

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
        var resp = convert.json.encode(buildUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUser(response as api.User);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).users;
      var arg_enterpriseId = 'foo';
      var arg_email = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/users"));
        pathOffset += 6;

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
        unittest.expect(queryMap["email"].first, unittest.equals(arg_email));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildUsersListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, arg_email, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUsersListResponse(response as api.UsersListResponse);
      })));
    });

    unittest.test('method--revokeDeviceAccess', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).users;
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/deviceAccess', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/deviceAccess"));
        pathOffset += 13;

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .revokeDeviceAccess(arg_enterpriseId, arg_userId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--setAvailableProductSet', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).users;
      var arg_request = buildProductSet();
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ProductSet.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProductSet(obj as api.ProductSet);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf('/availableProductSet', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/availableProductSet"));
        pathOffset += 20;

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
        var resp = convert.json.encode(buildProductSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setAvailableProductSet(arg_request, arg_enterpriseId, arg_userId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductSet(response as api.ProductSet);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).users;
      var arg_request = buildUser();
      var arg_enterpriseId = 'foo';
      var arg_userId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.User.fromJson(json as core.Map<core.String, core.dynamic>);
        checkUser(obj as api.User);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_userId'));

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
        var resp = convert.json.encode(buildUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_enterpriseId, arg_userId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUser(response as api.User);
      })));
    });
  });

  unittest.group('resource-WebappsResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).webapps;
      var arg_enterpriseId = 'foo';
      var arg_webAppId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/webApps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/webApps/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_webAppId'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_enterpriseId, arg_webAppId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).webapps;
      var arg_enterpriseId = 'foo';
      var arg_webAppId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/webApps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/webApps/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_webAppId'));

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
        var resp = convert.json.encode(buildWebApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, arg_webAppId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWebApp(response as api.WebApp);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).webapps;
      var arg_request = buildWebApp();
      var arg_enterpriseId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.WebApp.fromJson(json as core.Map<core.String, core.dynamic>);
        checkWebApp(obj as api.WebApp);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/webApps', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/webApps"));
        pathOffset += 8;

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
        var resp = convert.json.encode(buildWebApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWebApp(response as api.WebApp);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).webapps;
      var arg_enterpriseId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/webApps', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/webApps"));
        pathOffset += 8;

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
        var resp = convert.json.encode(buildWebAppsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWebAppsListResponse(response as api.WebAppsListResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.AndroidEnterpriseApi(mock).webapps;
      var arg_request = buildWebApp();
      var arg_enterpriseId = 'foo';
      var arg_webAppId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.WebApp.fromJson(json as core.Map<core.String, core.dynamic>);
        checkWebApp(obj as api.WebApp);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidenterprise/v1/enterprises/"));
        pathOffset += 33;
        index = path.indexOf('/webApps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_enterpriseId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/webApps/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_webAppId'));

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
        var resp = convert.json.encode(buildWebApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_enterpriseId, arg_webAppId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWebApp(response as api.WebApp);
      })));
    });
  });
}
