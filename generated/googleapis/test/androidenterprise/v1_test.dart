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

import 'package:googleapis/androidenterprise/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAdministrator = 0;
api.Administrator buildAdministrator() {
  final o = api.Administrator();
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
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdministrator--;
}

core.int buildCounterAdministratorWebToken = 0;
api.AdministratorWebToken buildAdministratorWebToken() {
  final o = api.AdministratorWebToken();
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
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdministratorWebToken--;
}

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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

core.int buildCounterAdministratorWebTokenSpec = 0;
api.AdministratorWebTokenSpec buildAdministratorWebTokenSpec() {
  final o = api.AdministratorWebTokenSpec();
  buildCounterAdministratorWebTokenSpec++;
  if (buildCounterAdministratorWebTokenSpec < 3) {
    o.managedConfigurations =
        buildAdministratorWebTokenSpecManagedConfigurations();
    o.parent = 'foo';
    o.permission = buildUnnamed0();
    o.playSearch = buildAdministratorWebTokenSpecPlaySearch();
    o.privateApps = buildAdministratorWebTokenSpecPrivateApps();
    o.storeBuilder = buildAdministratorWebTokenSpecStoreBuilder();
    o.webApps = buildAdministratorWebTokenSpecWebApps();
    o.zeroTouch = buildAdministratorWebTokenSpecZeroTouch();
  }
  buildCounterAdministratorWebTokenSpec--;
  return o;
}

void checkAdministratorWebTokenSpec(api.AdministratorWebTokenSpec o) {
  buildCounterAdministratorWebTokenSpec++;
  if (buildCounterAdministratorWebTokenSpec < 3) {
    checkAdministratorWebTokenSpecManagedConfigurations(
        o.managedConfigurations!);
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.permission!);
    checkAdministratorWebTokenSpecPlaySearch(o.playSearch!);
    checkAdministratorWebTokenSpecPrivateApps(o.privateApps!);
    checkAdministratorWebTokenSpecStoreBuilder(o.storeBuilder!);
    checkAdministratorWebTokenSpecWebApps(o.webApps!);
    checkAdministratorWebTokenSpecZeroTouch(o.zeroTouch!);
  }
  buildCounterAdministratorWebTokenSpec--;
}

core.int buildCounterAdministratorWebTokenSpecManagedConfigurations = 0;
api.AdministratorWebTokenSpecManagedConfigurations
    buildAdministratorWebTokenSpecManagedConfigurations() {
  final o = api.AdministratorWebTokenSpecManagedConfigurations();
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
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterAdministratorWebTokenSpecManagedConfigurations--;
}

core.int buildCounterAdministratorWebTokenSpecPlaySearch = 0;
api.AdministratorWebTokenSpecPlaySearch
    buildAdministratorWebTokenSpecPlaySearch() {
  final o = api.AdministratorWebTokenSpecPlaySearch();
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
    unittest.expect(o.approveApps!, unittest.isTrue);
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterAdministratorWebTokenSpecPlaySearch--;
}

core.int buildCounterAdministratorWebTokenSpecPrivateApps = 0;
api.AdministratorWebTokenSpecPrivateApps
    buildAdministratorWebTokenSpecPrivateApps() {
  final o = api.AdministratorWebTokenSpecPrivateApps();
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
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterAdministratorWebTokenSpecPrivateApps--;
}

core.int buildCounterAdministratorWebTokenSpecStoreBuilder = 0;
api.AdministratorWebTokenSpecStoreBuilder
    buildAdministratorWebTokenSpecStoreBuilder() {
  final o = api.AdministratorWebTokenSpecStoreBuilder();
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
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterAdministratorWebTokenSpecStoreBuilder--;
}

core.int buildCounterAdministratorWebTokenSpecWebApps = 0;
api.AdministratorWebTokenSpecWebApps buildAdministratorWebTokenSpecWebApps() {
  final o = api.AdministratorWebTokenSpecWebApps();
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
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterAdministratorWebTokenSpecWebApps--;
}

core.int buildCounterAdministratorWebTokenSpecZeroTouch = 0;
api.AdministratorWebTokenSpecZeroTouch
    buildAdministratorWebTokenSpecZeroTouch() {
  final o = api.AdministratorWebTokenSpecZeroTouch();
  buildCounterAdministratorWebTokenSpecZeroTouch++;
  if (buildCounterAdministratorWebTokenSpecZeroTouch < 3) {
    o.enabled = true;
  }
  buildCounterAdministratorWebTokenSpecZeroTouch--;
  return o;
}

void checkAdministratorWebTokenSpecZeroTouch(
    api.AdministratorWebTokenSpecZeroTouch o) {
  buildCounterAdministratorWebTokenSpecZeroTouch++;
  if (buildCounterAdministratorWebTokenSpecZeroTouch < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterAdministratorWebTokenSpecZeroTouch--;
}

core.List<api.AppRestrictionsSchemaRestriction> buildUnnamed1() => [
      buildAppRestrictionsSchemaRestriction(),
      buildAppRestrictionsSchemaRestriction(),
    ];

void checkUnnamed1(core.List<api.AppRestrictionsSchemaRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppRestrictionsSchemaRestriction(o[0]);
  checkAppRestrictionsSchemaRestriction(o[1]);
}

core.int buildCounterAppRestrictionsSchema = 0;
api.AppRestrictionsSchema buildAppRestrictionsSchema() {
  final o = api.AppRestrictionsSchema();
  buildCounterAppRestrictionsSchema++;
  if (buildCounterAppRestrictionsSchema < 3) {
    o.kind = 'foo';
    o.restrictions = buildUnnamed1();
  }
  buildCounterAppRestrictionsSchema--;
  return o;
}

void checkAppRestrictionsSchema(api.AppRestrictionsSchema o) {
  buildCounterAppRestrictionsSchema++;
  if (buildCounterAppRestrictionsSchema < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.restrictions!);
  }
  buildCounterAppRestrictionsSchema--;
}

core.int buildCounterAppRestrictionsSchemaChangeEvent = 0;
api.AppRestrictionsSchemaChangeEvent buildAppRestrictionsSchemaChangeEvent() {
  final o = api.AppRestrictionsSchemaChangeEvent();
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
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppRestrictionsSchemaChangeEvent--;
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

core.List<api.AppRestrictionsSchemaRestriction> buildUnnamed4() => [
      buildAppRestrictionsSchemaRestriction(),
      buildAppRestrictionsSchemaRestriction(),
    ];

void checkUnnamed4(core.List<api.AppRestrictionsSchemaRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppRestrictionsSchemaRestriction(o[0]);
  checkAppRestrictionsSchemaRestriction(o[1]);
}

core.int buildCounterAppRestrictionsSchemaRestriction = 0;
api.AppRestrictionsSchemaRestriction buildAppRestrictionsSchemaRestriction() {
  final o = api.AppRestrictionsSchemaRestriction();
  buildCounterAppRestrictionsSchemaRestriction++;
  if (buildCounterAppRestrictionsSchemaRestriction < 3) {
    o.defaultValue = buildAppRestrictionsSchemaRestrictionRestrictionValue();
    o.description = 'foo';
    o.entry = buildUnnamed2();
    o.entryValue = buildUnnamed3();
    o.key = 'foo';
    o.nestedRestriction = buildUnnamed4();
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
    checkAppRestrictionsSchemaRestrictionRestrictionValue(o.defaultValue!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.entry!);
    checkUnnamed3(o.entryValue!);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.nestedRestriction!);
    unittest.expect(
      o.restrictionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppRestrictionsSchemaRestriction--;
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

core.int buildCounterAppRestrictionsSchemaRestrictionRestrictionValue = 0;
api.AppRestrictionsSchemaRestrictionRestrictionValue
    buildAppRestrictionsSchemaRestrictionRestrictionValue() {
  final o = api.AppRestrictionsSchemaRestrictionRestrictionValue();
  buildCounterAppRestrictionsSchemaRestrictionRestrictionValue++;
  if (buildCounterAppRestrictionsSchemaRestrictionRestrictionValue < 3) {
    o.type = 'foo';
    o.valueBool = true;
    o.valueInteger = 42;
    o.valueMultiselect = buildUnnamed5();
    o.valueString = 'foo';
  }
  buildCounterAppRestrictionsSchemaRestrictionRestrictionValue--;
  return o;
}

void checkAppRestrictionsSchemaRestrictionRestrictionValue(
    api.AppRestrictionsSchemaRestrictionRestrictionValue o) {
  buildCounterAppRestrictionsSchemaRestrictionRestrictionValue++;
  if (buildCounterAppRestrictionsSchemaRestrictionRestrictionValue < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(o.valueBool!, unittest.isTrue);
    unittest.expect(
      o.valueInteger!,
      unittest.equals(42),
    );
    checkUnnamed5(o.valueMultiselect!);
    unittest.expect(
      o.valueString!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppRestrictionsSchemaRestrictionRestrictionValue--;
}

core.List<api.KeyedAppState> buildUnnamed6() => [
      buildKeyedAppState(),
      buildKeyedAppState(),
    ];

void checkUnnamed6(core.List<api.KeyedAppState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyedAppState(o[0]);
  checkKeyedAppState(o[1]);
}

core.int buildCounterAppState = 0;
api.AppState buildAppState() {
  final o = api.AppState();
  buildCounterAppState++;
  if (buildCounterAppState < 3) {
    o.keyedAppState = buildUnnamed6();
    o.packageName = 'foo';
  }
  buildCounterAppState--;
  return o;
}

void checkAppState(api.AppState o) {
  buildCounterAppState++;
  if (buildCounterAppState < 3) {
    checkUnnamed6(o.keyedAppState!);
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppState--;
}

core.int buildCounterAppUpdateEvent = 0;
api.AppUpdateEvent buildAppUpdateEvent() {
  final o = api.AppUpdateEvent();
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
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppUpdateEvent--;
}

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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

core.int buildCounterAppVersion = 0;
api.AppVersion buildAppVersion() {
  final o = api.AppVersion();
  buildCounterAppVersion++;
  if (buildCounterAppVersion < 3) {
    o.isProduction = true;
    o.track = 'foo';
    o.trackId = buildUnnamed7();
    o.versionCode = 42;
    o.versionString = 'foo';
  }
  buildCounterAppVersion--;
  return o;
}

void checkAppVersion(api.AppVersion o) {
  buildCounterAppVersion++;
  if (buildCounterAppVersion < 3) {
    unittest.expect(o.isProduction!, unittest.isTrue);
    unittest.expect(
      o.track!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.trackId!);
    unittest.expect(
      o.versionCode!,
      unittest.equals(42),
    );
    unittest.expect(
      o.versionString!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppVersion--;
}

core.int buildCounterApprovalUrlInfo = 0;
api.ApprovalUrlInfo buildApprovalUrlInfo() {
  final o = api.ApprovalUrlInfo();
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
    unittest.expect(
      o.approvalUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterApprovalUrlInfo--;
}

core.int buildCounterAuthenticationToken = 0;
api.AuthenticationToken buildAuthenticationToken() {
  final o = api.AuthenticationToken();
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
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuthenticationToken--;
}

core.int buildCounterAutoInstallConstraint = 0;
api.AutoInstallConstraint buildAutoInstallConstraint() {
  final o = api.AutoInstallConstraint();
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
    unittest.expect(
      o.chargingStateConstraint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceIdleStateConstraint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkTypeConstraint!,
      unittest.equals('foo'),
    );
  }
  buildCounterAutoInstallConstraint--;
}

core.List<api.AutoInstallConstraint> buildUnnamed8() => [
      buildAutoInstallConstraint(),
      buildAutoInstallConstraint(),
    ];

void checkUnnamed8(core.List<api.AutoInstallConstraint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutoInstallConstraint(o[0]);
  checkAutoInstallConstraint(o[1]);
}

core.int buildCounterAutoInstallPolicy = 0;
api.AutoInstallPolicy buildAutoInstallPolicy() {
  final o = api.AutoInstallPolicy();
  buildCounterAutoInstallPolicy++;
  if (buildCounterAutoInstallPolicy < 3) {
    o.autoInstallConstraint = buildUnnamed8();
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
    checkUnnamed8(o.autoInstallConstraint!);
    unittest.expect(
      o.autoInstallMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.autoInstallPriority!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minimumVersionCode!,
      unittest.equals(42),
    );
  }
  buildCounterAutoInstallPolicy--;
}

core.List<api.VariableSet> buildUnnamed9() => [
      buildVariableSet(),
      buildVariableSet(),
    ];

void checkUnnamed9(core.List<api.VariableSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariableSet(o[0]);
  checkVariableSet(o[1]);
}

core.int buildCounterConfigurationVariables = 0;
api.ConfigurationVariables buildConfigurationVariables() {
  final o = api.ConfigurationVariables();
  buildCounterConfigurationVariables++;
  if (buildCounterConfigurationVariables < 3) {
    o.mcmId = 'foo';
    o.variableSet = buildUnnamed9();
  }
  buildCounterConfigurationVariables--;
  return o;
}

void checkConfigurationVariables(api.ConfigurationVariables o) {
  buildCounterConfigurationVariables++;
  if (buildCounterConfigurationVariables < 3) {
    unittest.expect(
      o.mcmId!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.variableSet!);
  }
  buildCounterConfigurationVariables--;
}

core.int buildCounterDevice = 0;
api.Device buildDevice() {
  final o = api.Device();
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
    unittest.expect(
      o.androidId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.managementType!,
      unittest.equals('foo'),
    );
    checkPolicy(o.policy!);
    checkDeviceReport(o.report!);
  }
  buildCounterDevice--;
}

core.List<api.AppState> buildUnnamed10() => [
      buildAppState(),
      buildAppState(),
    ];

void checkUnnamed10(core.List<api.AppState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppState(o[0]);
  checkAppState(o[1]);
}

core.int buildCounterDeviceReport = 0;
api.DeviceReport buildDeviceReport() {
  final o = api.DeviceReport();
  buildCounterDeviceReport++;
  if (buildCounterDeviceReport < 3) {
    o.appState = buildUnnamed10();
    o.lastUpdatedTimestampMillis = 'foo';
  }
  buildCounterDeviceReport--;
  return o;
}

void checkDeviceReport(api.DeviceReport o) {
  buildCounterDeviceReport++;
  if (buildCounterDeviceReport < 3) {
    checkUnnamed10(o.appState!);
    unittest.expect(
      o.lastUpdatedTimestampMillis!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeviceReport--;
}

core.int buildCounterDeviceReportUpdateEvent = 0;
api.DeviceReportUpdateEvent buildDeviceReportUpdateEvent() {
  final o = api.DeviceReportUpdateEvent();
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
    unittest.expect(
      o.deviceId!,
      unittest.equals('foo'),
    );
    checkDeviceReport(o.report!);
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeviceReportUpdateEvent--;
}

core.int buildCounterDeviceState = 0;
api.DeviceState buildDeviceState() {
  final o = api.DeviceState();
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
    unittest.expect(
      o.accountState!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeviceState--;
}

core.List<api.Device> buildUnnamed11() => [
      buildDevice(),
      buildDevice(),
    ];

void checkUnnamed11(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0]);
  checkDevice(o[1]);
}

core.int buildCounterDevicesListResponse = 0;
api.DevicesListResponse buildDevicesListResponse() {
  final o = api.DevicesListResponse();
  buildCounterDevicesListResponse++;
  if (buildCounterDevicesListResponse < 3) {
    o.device = buildUnnamed11();
  }
  buildCounterDevicesListResponse--;
  return o;
}

void checkDevicesListResponse(api.DevicesListResponse o) {
  buildCounterDevicesListResponse++;
  if (buildCounterDevicesListResponse < 3) {
    checkUnnamed11(o.device!);
  }
  buildCounterDevicesListResponse--;
}

core.List<api.Administrator> buildUnnamed12() => [
      buildAdministrator(),
      buildAdministrator(),
    ];

void checkUnnamed12(core.List<api.Administrator> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdministrator(o[0]);
  checkAdministrator(o[1]);
}

core.int buildCounterEnterprise = 0;
api.Enterprise buildEnterprise() {
  final o = api.Enterprise();
  buildCounterEnterprise++;
  if (buildCounterEnterprise < 3) {
    o.administrator = buildUnnamed12();
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
    checkUnnamed12(o.administrator!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primaryDomain!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterprise--;
}

core.int buildCounterEnterpriseAccount = 0;
api.EnterpriseAccount buildEnterpriseAccount() {
  final o = api.EnterpriseAccount();
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
    unittest.expect(
      o.accountEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseAccount--;
}

core.int buildCounterEnterpriseAuthenticationAppLinkConfig = 0;
api.EnterpriseAuthenticationAppLinkConfig
    buildEnterpriseAuthenticationAppLinkConfig() {
  final o = api.EnterpriseAuthenticationAppLinkConfig();
  buildCounterEnterpriseAuthenticationAppLinkConfig++;
  if (buildCounterEnterpriseAuthenticationAppLinkConfig < 3) {
    o.uri = 'foo';
  }
  buildCounterEnterpriseAuthenticationAppLinkConfig--;
  return o;
}

void checkEnterpriseAuthenticationAppLinkConfig(
    api.EnterpriseAuthenticationAppLinkConfig o) {
  buildCounterEnterpriseAuthenticationAppLinkConfig++;
  if (buildCounterEnterpriseAuthenticationAppLinkConfig < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseAuthenticationAppLinkConfig--;
}

core.List<api.Enterprise> buildUnnamed13() => [
      buildEnterprise(),
      buildEnterprise(),
    ];

void checkUnnamed13(core.List<api.Enterprise> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterprise(o[0]);
  checkEnterprise(o[1]);
}

core.int buildCounterEnterprisesListResponse = 0;
api.EnterprisesListResponse buildEnterprisesListResponse() {
  final o = api.EnterprisesListResponse();
  buildCounterEnterprisesListResponse++;
  if (buildCounterEnterprisesListResponse < 3) {
    o.enterprise = buildUnnamed13();
  }
  buildCounterEnterprisesListResponse--;
  return o;
}

void checkEnterprisesListResponse(api.EnterprisesListResponse o) {
  buildCounterEnterprisesListResponse++;
  if (buildCounterEnterprisesListResponse < 3) {
    checkUnnamed13(o.enterprise!);
  }
  buildCounterEnterprisesListResponse--;
}

core.int buildCounterEnterprisesSendTestPushNotificationResponse = 0;
api.EnterprisesSendTestPushNotificationResponse
    buildEnterprisesSendTestPushNotificationResponse() {
  final o = api.EnterprisesSendTestPushNotificationResponse();
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
    unittest.expect(
      o.messageId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.topicName!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterprisesSendTestPushNotificationResponse--;
}

core.int buildCounterEntitlement = 0;
api.Entitlement buildEntitlement() {
  final o = api.Entitlement();
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
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterEntitlement--;
}

core.List<api.Entitlement> buildUnnamed14() => [
      buildEntitlement(),
      buildEntitlement(),
    ];

void checkUnnamed14(core.List<api.Entitlement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntitlement(o[0]);
  checkEntitlement(o[1]);
}

core.int buildCounterEntitlementsListResponse = 0;
api.EntitlementsListResponse buildEntitlementsListResponse() {
  final o = api.EntitlementsListResponse();
  buildCounterEntitlementsListResponse++;
  if (buildCounterEntitlementsListResponse < 3) {
    o.entitlement = buildUnnamed14();
  }
  buildCounterEntitlementsListResponse--;
  return o;
}

void checkEntitlementsListResponse(api.EntitlementsListResponse o) {
  buildCounterEntitlementsListResponse++;
  if (buildCounterEntitlementsListResponse < 3) {
    checkUnnamed14(o.entitlement!);
  }
  buildCounterEntitlementsListResponse--;
}

core.int buildCounterGroupLicense = 0;
api.GroupLicense buildGroupLicense() {
  final o = api.GroupLicense();
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
    unittest.expect(
      o.acquisitionKind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.approval!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numProvisioned!,
      unittest.equals(42),
    );
    unittest.expect(
      o.numPurchased!,
      unittest.equals(42),
    );
    unittest.expect(
      o.permissions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGroupLicense--;
}

core.List<api.User> buildUnnamed15() => [
      buildUser(),
      buildUser(),
    ];

void checkUnnamed15(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
}

core.int buildCounterGroupLicenseUsersListResponse = 0;
api.GroupLicenseUsersListResponse buildGroupLicenseUsersListResponse() {
  final o = api.GroupLicenseUsersListResponse();
  buildCounterGroupLicenseUsersListResponse++;
  if (buildCounterGroupLicenseUsersListResponse < 3) {
    o.user = buildUnnamed15();
  }
  buildCounterGroupLicenseUsersListResponse--;
  return o;
}

void checkGroupLicenseUsersListResponse(api.GroupLicenseUsersListResponse o) {
  buildCounterGroupLicenseUsersListResponse++;
  if (buildCounterGroupLicenseUsersListResponse < 3) {
    checkUnnamed15(o.user!);
  }
  buildCounterGroupLicenseUsersListResponse--;
}

core.List<api.GroupLicense> buildUnnamed16() => [
      buildGroupLicense(),
      buildGroupLicense(),
    ];

void checkUnnamed16(core.List<api.GroupLicense> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupLicense(o[0]);
  checkGroupLicense(o[1]);
}

core.int buildCounterGroupLicensesListResponse = 0;
api.GroupLicensesListResponse buildGroupLicensesListResponse() {
  final o = api.GroupLicensesListResponse();
  buildCounterGroupLicensesListResponse++;
  if (buildCounterGroupLicensesListResponse < 3) {
    o.groupLicense = buildUnnamed16();
  }
  buildCounterGroupLicensesListResponse--;
  return o;
}

void checkGroupLicensesListResponse(api.GroupLicensesListResponse o) {
  buildCounterGroupLicensesListResponse++;
  if (buildCounterGroupLicensesListResponse < 3) {
    checkUnnamed16(o.groupLicense!);
  }
  buildCounterGroupLicensesListResponse--;
}

core.int buildCounterInstall = 0;
api.Install buildInstall() {
  final o = api.Install();
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
    unittest.expect(
      o.installState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionCode!,
      unittest.equals(42),
    );
  }
  buildCounterInstall--;
}

core.int buildCounterInstallFailureEvent = 0;
api.InstallFailureEvent buildInstallFailureEvent() {
  final o = api.InstallFailureEvent();
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
    unittest.expect(
      o.deviceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.failureDetails!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.failureReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstallFailureEvent--;
}

core.List<api.Install> buildUnnamed17() => [
      buildInstall(),
      buildInstall(),
    ];

void checkUnnamed17(core.List<api.Install> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstall(o[0]);
  checkInstall(o[1]);
}

core.int buildCounterInstallsListResponse = 0;
api.InstallsListResponse buildInstallsListResponse() {
  final o = api.InstallsListResponse();
  buildCounterInstallsListResponse++;
  if (buildCounterInstallsListResponse < 3) {
    o.install = buildUnnamed17();
  }
  buildCounterInstallsListResponse--;
  return o;
}

void checkInstallsListResponse(api.InstallsListResponse o) {
  buildCounterInstallsListResponse++;
  if (buildCounterInstallsListResponse < 3) {
    checkUnnamed17(o.install!);
  }
  buildCounterInstallsListResponse--;
}

core.int buildCounterKeyedAppState = 0;
api.KeyedAppState buildKeyedAppState() {
  final o = api.KeyedAppState();
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
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateTimestampMillis!,
      unittest.equals('foo'),
    );
  }
  buildCounterKeyedAppState--;
}

core.int buildCounterLocalizedText = 0;
api.LocalizedText buildLocalizedText() {
  final o = api.LocalizedText();
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
    unittest.expect(
      o.locale!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocalizedText--;
}

core.int buildCounterMaintenanceWindow = 0;
api.MaintenanceWindow buildMaintenanceWindow() {
  final o = api.MaintenanceWindow();
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
    unittest.expect(
      o.durationMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTimeAfterMidnightMs!,
      unittest.equals('foo'),
    );
  }
  buildCounterMaintenanceWindow--;
}

core.List<api.ManagedProperty> buildUnnamed18() => [
      buildManagedProperty(),
      buildManagedProperty(),
    ];

void checkUnnamed18(core.List<api.ManagedProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedProperty(o[0]);
  checkManagedProperty(o[1]);
}

core.int buildCounterManagedConfiguration = 0;
api.ManagedConfiguration buildManagedConfiguration() {
  final o = api.ManagedConfiguration();
  buildCounterManagedConfiguration++;
  if (buildCounterManagedConfiguration < 3) {
    o.configurationVariables = buildConfigurationVariables();
    o.kind = 'foo';
    o.managedProperty = buildUnnamed18();
    o.productId = 'foo';
  }
  buildCounterManagedConfiguration--;
  return o;
}

void checkManagedConfiguration(api.ManagedConfiguration o) {
  buildCounterManagedConfiguration++;
  if (buildCounterManagedConfiguration < 3) {
    checkConfigurationVariables(o.configurationVariables!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.managedProperty!);
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
  }
  buildCounterManagedConfiguration--;
}

core.List<api.ManagedConfiguration> buildUnnamed19() => [
      buildManagedConfiguration(),
      buildManagedConfiguration(),
    ];

void checkUnnamed19(core.List<api.ManagedConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedConfiguration(o[0]);
  checkManagedConfiguration(o[1]);
}

core.int buildCounterManagedConfigurationsForDeviceListResponse = 0;
api.ManagedConfigurationsForDeviceListResponse
    buildManagedConfigurationsForDeviceListResponse() {
  final o = api.ManagedConfigurationsForDeviceListResponse();
  buildCounterManagedConfigurationsForDeviceListResponse++;
  if (buildCounterManagedConfigurationsForDeviceListResponse < 3) {
    o.managedConfigurationForDevice = buildUnnamed19();
  }
  buildCounterManagedConfigurationsForDeviceListResponse--;
  return o;
}

void checkManagedConfigurationsForDeviceListResponse(
    api.ManagedConfigurationsForDeviceListResponse o) {
  buildCounterManagedConfigurationsForDeviceListResponse++;
  if (buildCounterManagedConfigurationsForDeviceListResponse < 3) {
    checkUnnamed19(o.managedConfigurationForDevice!);
  }
  buildCounterManagedConfigurationsForDeviceListResponse--;
}

core.List<api.ManagedConfiguration> buildUnnamed20() => [
      buildManagedConfiguration(),
      buildManagedConfiguration(),
    ];

void checkUnnamed20(core.List<api.ManagedConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedConfiguration(o[0]);
  checkManagedConfiguration(o[1]);
}

core.int buildCounterManagedConfigurationsForUserListResponse = 0;
api.ManagedConfigurationsForUserListResponse
    buildManagedConfigurationsForUserListResponse() {
  final o = api.ManagedConfigurationsForUserListResponse();
  buildCounterManagedConfigurationsForUserListResponse++;
  if (buildCounterManagedConfigurationsForUserListResponse < 3) {
    o.managedConfigurationForUser = buildUnnamed20();
  }
  buildCounterManagedConfigurationsForUserListResponse--;
  return o;
}

void checkManagedConfigurationsForUserListResponse(
    api.ManagedConfigurationsForUserListResponse o) {
  buildCounterManagedConfigurationsForUserListResponse++;
  if (buildCounterManagedConfigurationsForUserListResponse < 3) {
    checkUnnamed20(o.managedConfigurationForUser!);
  }
  buildCounterManagedConfigurationsForUserListResponse--;
}

core.int buildCounterManagedConfigurationsSettings = 0;
api.ManagedConfigurationsSettings buildManagedConfigurationsSettings() {
  final o = api.ManagedConfigurationsSettings();
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
    unittest.expect(
      o.lastUpdatedTimestampMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mcmId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterManagedConfigurationsSettings--;
}

core.List<api.ManagedConfigurationsSettings> buildUnnamed21() => [
      buildManagedConfigurationsSettings(),
      buildManagedConfigurationsSettings(),
    ];

void checkUnnamed21(core.List<api.ManagedConfigurationsSettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedConfigurationsSettings(o[0]);
  checkManagedConfigurationsSettings(o[1]);
}

core.int buildCounterManagedConfigurationsSettingsListResponse = 0;
api.ManagedConfigurationsSettingsListResponse
    buildManagedConfigurationsSettingsListResponse() {
  final o = api.ManagedConfigurationsSettingsListResponse();
  buildCounterManagedConfigurationsSettingsListResponse++;
  if (buildCounterManagedConfigurationsSettingsListResponse < 3) {
    o.managedConfigurationsSettings = buildUnnamed21();
  }
  buildCounterManagedConfigurationsSettingsListResponse--;
  return o;
}

void checkManagedConfigurationsSettingsListResponse(
    api.ManagedConfigurationsSettingsListResponse o) {
  buildCounterManagedConfigurationsSettingsListResponse++;
  if (buildCounterManagedConfigurationsSettingsListResponse < 3) {
    checkUnnamed21(o.managedConfigurationsSettings!);
  }
  buildCounterManagedConfigurationsSettingsListResponse--;
}

core.List<api.ManagedPropertyBundle> buildUnnamed22() => [
      buildManagedPropertyBundle(),
      buildManagedPropertyBundle(),
    ];

void checkUnnamed22(core.List<api.ManagedPropertyBundle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedPropertyBundle(o[0]);
  checkManagedPropertyBundle(o[1]);
}

core.List<core.String> buildUnnamed23() => [
      'foo',
      'foo',
    ];

void checkUnnamed23(core.List<core.String> o) {
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

core.int buildCounterManagedProperty = 0;
api.ManagedProperty buildManagedProperty() {
  final o = api.ManagedProperty();
  buildCounterManagedProperty++;
  if (buildCounterManagedProperty < 3) {
    o.key = 'foo';
    o.valueBool = true;
    o.valueBundle = buildManagedPropertyBundle();
    o.valueBundleArray = buildUnnamed22();
    o.valueInteger = 42;
    o.valueString = 'foo';
    o.valueStringArray = buildUnnamed23();
  }
  buildCounterManagedProperty--;
  return o;
}

void checkManagedProperty(api.ManagedProperty o) {
  buildCounterManagedProperty++;
  if (buildCounterManagedProperty < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(o.valueBool!, unittest.isTrue);
    checkManagedPropertyBundle(o.valueBundle!);
    checkUnnamed22(o.valueBundleArray!);
    unittest.expect(
      o.valueInteger!,
      unittest.equals(42),
    );
    unittest.expect(
      o.valueString!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.valueStringArray!);
  }
  buildCounterManagedProperty--;
}

core.List<api.ManagedProperty> buildUnnamed24() => [
      buildManagedProperty(),
      buildManagedProperty(),
    ];

void checkUnnamed24(core.List<api.ManagedProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedProperty(o[0]);
  checkManagedProperty(o[1]);
}

core.int buildCounterManagedPropertyBundle = 0;
api.ManagedPropertyBundle buildManagedPropertyBundle() {
  final o = api.ManagedPropertyBundle();
  buildCounterManagedPropertyBundle++;
  if (buildCounterManagedPropertyBundle < 3) {
    o.managedProperty = buildUnnamed24();
  }
  buildCounterManagedPropertyBundle--;
  return o;
}

void checkManagedPropertyBundle(api.ManagedPropertyBundle o) {
  buildCounterManagedPropertyBundle++;
  if (buildCounterManagedPropertyBundle < 3) {
    checkUnnamed24(o.managedProperty!);
  }
  buildCounterManagedPropertyBundle--;
}

core.int buildCounterNewDeviceEvent = 0;
api.NewDeviceEvent buildNewDeviceEvent() {
  final o = api.NewDeviceEvent();
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
    unittest.expect(
      o.deviceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dpcPackageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.managementType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterNewDeviceEvent--;
}

core.List<core.String> buildUnnamed25() => [
      'foo',
      'foo',
    ];

void checkUnnamed25(core.List<core.String> o) {
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

core.int buildCounterNewPermissionsEvent = 0;
api.NewPermissionsEvent buildNewPermissionsEvent() {
  final o = api.NewPermissionsEvent();
  buildCounterNewPermissionsEvent++;
  if (buildCounterNewPermissionsEvent < 3) {
    o.approvedPermissions = buildUnnamed25();
    o.productId = 'foo';
    o.requestedPermissions = buildUnnamed26();
  }
  buildCounterNewPermissionsEvent--;
  return o;
}

void checkNewPermissionsEvent(api.NewPermissionsEvent o) {
  buildCounterNewPermissionsEvent++;
  if (buildCounterNewPermissionsEvent < 3) {
    checkUnnamed25(o.approvedPermissions!);
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.requestedPermissions!);
  }
  buildCounterNewPermissionsEvent--;
}

core.int buildCounterNotification = 0;
api.Notification buildNotification() {
  final o = api.Notification();
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
    checkAppRestrictionsSchemaChangeEvent(o.appRestrictionsSchemaChangeEvent!);
    checkAppUpdateEvent(o.appUpdateEvent!);
    checkDeviceReportUpdateEvent(o.deviceReportUpdateEvent!);
    unittest.expect(
      o.enterpriseId!,
      unittest.equals('foo'),
    );
    checkInstallFailureEvent(o.installFailureEvent!);
    checkNewDeviceEvent(o.newDeviceEvent!);
    checkNewPermissionsEvent(o.newPermissionsEvent!);
    unittest.expect(
      o.notificationType!,
      unittest.equals('foo'),
    );
    checkProductApprovalEvent(o.productApprovalEvent!);
    checkProductAvailabilityChangeEvent(o.productAvailabilityChangeEvent!);
    unittest.expect(
      o.timestampMillis!,
      unittest.equals('foo'),
    );
  }
  buildCounterNotification--;
}

core.List<api.Notification> buildUnnamed27() => [
      buildNotification(),
      buildNotification(),
    ];

void checkUnnamed27(core.List<api.Notification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotification(o[0]);
  checkNotification(o[1]);
}

core.int buildCounterNotificationSet = 0;
api.NotificationSet buildNotificationSet() {
  final o = api.NotificationSet();
  buildCounterNotificationSet++;
  if (buildCounterNotificationSet < 3) {
    o.notification = buildUnnamed27();
    o.notificationSetId = 'foo';
  }
  buildCounterNotificationSet--;
  return o;
}

void checkNotificationSet(api.NotificationSet o) {
  buildCounterNotificationSet++;
  if (buildCounterNotificationSet < 3) {
    checkUnnamed27(o.notification!);
    unittest.expect(
      o.notificationSetId!,
      unittest.equals('foo'),
    );
  }
  buildCounterNotificationSet--;
}

core.int buildCounterPageInfo = 0;
api.PageInfo buildPageInfo() {
  final o = api.PageInfo();
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
    unittest.expect(
      o.resultPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
  }
  buildCounterPageInfo--;
}

core.int buildCounterPermission = 0;
api.Permission buildPermission() {
  final o = api.Permission();
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.permissionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterPermission--;
}

core.List<api.ProductPolicy> buildUnnamed28() => [
      buildProductPolicy(),
      buildProductPolicy(),
    ];

void checkUnnamed28(core.List<api.ProductPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductPolicy(o[0]);
  checkProductPolicy(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.autoUpdatePolicy = 'foo';
    o.deviceReportPolicy = 'foo';
    o.maintenanceWindow = buildMaintenanceWindow();
    o.productAvailabilityPolicy = 'foo';
    o.productPolicy = buildUnnamed28();
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    unittest.expect(
      o.autoUpdatePolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceReportPolicy!,
      unittest.equals('foo'),
    );
    checkMaintenanceWindow(o.maintenanceWindow!);
    unittest.expect(
      o.productAvailabilityPolicy!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.productPolicy!);
  }
  buildCounterPolicy--;
}

core.List<api.TrackInfo> buildUnnamed29() => [
      buildTrackInfo(),
      buildTrackInfo(),
    ];

void checkUnnamed29(core.List<api.TrackInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrackInfo(o[0]);
  checkTrackInfo(o[1]);
}

core.List<api.AppVersion> buildUnnamed30() => [
      buildAppVersion(),
      buildAppVersion(),
    ];

void checkUnnamed30(core.List<api.AppVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppVersion(o[0]);
  checkAppVersion(o[1]);
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

core.List<api.ProductPermission> buildUnnamed34() => [
      buildProductPermission(),
      buildProductPermission(),
    ];

void checkUnnamed34(core.List<api.ProductPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductPermission(o[0]);
  checkProductPermission(o[1]);
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

core.int buildCounterProduct = 0;
api.Product buildProduct() {
  final o = api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.appRestrictionsSchema = buildAppRestrictionsSchema();
    o.appTracks = buildUnnamed29();
    o.appVersion = buildUnnamed30();
    o.authorName = 'foo';
    o.availableCountries = buildUnnamed31();
    o.availableTracks = buildUnnamed32();
    o.category = 'foo';
    o.contentRating = 'foo';
    o.description = 'foo';
    o.detailsUrl = 'foo';
    o.distributionChannel = 'foo';
    o.features = buildUnnamed33();
    o.iconUrl = 'foo';
    o.lastUpdatedTimestampMillis = 'foo';
    o.minAndroidSdkVersion = 42;
    o.permissions = buildUnnamed34();
    o.productId = 'foo';
    o.productPricing = 'foo';
    o.recentChanges = 'foo';
    o.requiresContainerApp = true;
    o.screenshotUrls = buildUnnamed35();
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
    checkAppRestrictionsSchema(o.appRestrictionsSchema!);
    checkUnnamed29(o.appTracks!);
    checkUnnamed30(o.appVersion!);
    unittest.expect(
      o.authorName!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.availableCountries!);
    checkUnnamed32(o.availableTracks!);
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contentRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.detailsUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.distributionChannel!,
      unittest.equals('foo'),
    );
    checkUnnamed33(o.features!);
    unittest.expect(
      o.iconUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastUpdatedTimestampMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minAndroidSdkVersion!,
      unittest.equals(42),
    );
    checkUnnamed34(o.permissions!);
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productPricing!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recentChanges!,
      unittest.equals('foo'),
    );
    unittest.expect(o.requiresContainerApp!, unittest.isTrue);
    checkUnnamed35(o.screenshotUrls!);
    checkProductSigningCertificate(o.signingCertificate!);
    unittest.expect(
      o.smallIconUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workDetailsUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterProduct--;
}

core.int buildCounterProductApprovalEvent = 0;
api.ProductApprovalEvent buildProductApprovalEvent() {
  final o = api.ProductApprovalEvent();
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
    unittest.expect(
      o.approved!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductApprovalEvent--;
}

core.int buildCounterProductAvailabilityChangeEvent = 0;
api.ProductAvailabilityChangeEvent buildProductAvailabilityChangeEvent() {
  final o = api.ProductAvailabilityChangeEvent();
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
    unittest.expect(
      o.availabilityStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductAvailabilityChangeEvent--;
}

core.int buildCounterProductPermission = 0;
api.ProductPermission buildProductPermission() {
  final o = api.ProductPermission();
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
    unittest.expect(
      o.permissionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductPermission--;
}

core.List<api.ProductPermission> buildUnnamed36() => [
      buildProductPermission(),
      buildProductPermission(),
    ];

void checkUnnamed36(core.List<api.ProductPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductPermission(o[0]);
  checkProductPermission(o[1]);
}

core.int buildCounterProductPermissions = 0;
api.ProductPermissions buildProductPermissions() {
  final o = api.ProductPermissions();
  buildCounterProductPermissions++;
  if (buildCounterProductPermissions < 3) {
    o.permission = buildUnnamed36();
    o.productId = 'foo';
  }
  buildCounterProductPermissions--;
  return o;
}

void checkProductPermissions(api.ProductPermissions o) {
  buildCounterProductPermissions++;
  if (buildCounterProductPermissions < 3) {
    checkUnnamed36(o.permission!);
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductPermissions--;
}

core.List<api.EnterpriseAuthenticationAppLinkConfig> buildUnnamed37() => [
      buildEnterpriseAuthenticationAppLinkConfig(),
      buildEnterpriseAuthenticationAppLinkConfig(),
    ];

void checkUnnamed37(core.List<api.EnterpriseAuthenticationAppLinkConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseAuthenticationAppLinkConfig(o[0]);
  checkEnterpriseAuthenticationAppLinkConfig(o[1]);
}

core.List<core.String> buildUnnamed38() => [
      'foo',
      'foo',
    ];

void checkUnnamed38(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed39() => [
      'foo',
      'foo',
    ];

void checkUnnamed39(core.List<core.String> o) {
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

core.int buildCounterProductPolicy = 0;
api.ProductPolicy buildProductPolicy() {
  final o = api.ProductPolicy();
  buildCounterProductPolicy++;
  if (buildCounterProductPolicy < 3) {
    o.autoInstallPolicy = buildAutoInstallPolicy();
    o.autoUpdateMode = 'foo';
    o.enterpriseAuthenticationAppLinkConfigs = buildUnnamed37();
    o.managedConfiguration = buildManagedConfiguration();
    o.productId = 'foo';
    o.trackIds = buildUnnamed38();
    o.tracks = buildUnnamed39();
  }
  buildCounterProductPolicy--;
  return o;
}

void checkProductPolicy(api.ProductPolicy o) {
  buildCounterProductPolicy++;
  if (buildCounterProductPolicy < 3) {
    checkAutoInstallPolicy(o.autoInstallPolicy!);
    unittest.expect(
      o.autoUpdateMode!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.enterpriseAuthenticationAppLinkConfigs!);
    checkManagedConfiguration(o.managedConfiguration!);
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    checkUnnamed38(o.trackIds!);
    checkUnnamed39(o.tracks!);
  }
  buildCounterProductPolicy--;
}

core.List<core.String> buildUnnamed40() => [
      'foo',
      'foo',
    ];

void checkUnnamed40(core.List<core.String> o) {
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

core.List<api.ProductVisibility> buildUnnamed41() => [
      buildProductVisibility(),
      buildProductVisibility(),
    ];

void checkUnnamed41(core.List<api.ProductVisibility> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductVisibility(o[0]);
  checkProductVisibility(o[1]);
}

core.int buildCounterProductSet = 0;
api.ProductSet buildProductSet() {
  final o = api.ProductSet();
  buildCounterProductSet++;
  if (buildCounterProductSet < 3) {
    o.productId = buildUnnamed40();
    o.productSetBehavior = 'foo';
    o.productVisibility = buildUnnamed41();
  }
  buildCounterProductSet--;
  return o;
}

void checkProductSet(api.ProductSet o) {
  buildCounterProductSet++;
  if (buildCounterProductSet < 3) {
    checkUnnamed40(o.productId!);
    unittest.expect(
      o.productSetBehavior!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.productVisibility!);
  }
  buildCounterProductSet--;
}

core.int buildCounterProductSigningCertificate = 0;
api.ProductSigningCertificate buildProductSigningCertificate() {
  final o = api.ProductSigningCertificate();
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
    unittest.expect(
      o.certificateHashSha1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.certificateHashSha256!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductSigningCertificate--;
}

core.List<core.String> buildUnnamed42() => [
      'foo',
      'foo',
    ];

void checkUnnamed42(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed43() => [
      'foo',
      'foo',
    ];

void checkUnnamed43(core.List<core.String> o) {
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

core.int buildCounterProductVisibility = 0;
api.ProductVisibility buildProductVisibility() {
  final o = api.ProductVisibility();
  buildCounterProductVisibility++;
  if (buildCounterProductVisibility < 3) {
    o.productId = 'foo';
    o.trackIds = buildUnnamed42();
    o.tracks = buildUnnamed43();
  }
  buildCounterProductVisibility--;
  return o;
}

void checkProductVisibility(api.ProductVisibility o) {
  buildCounterProductVisibility++;
  if (buildCounterProductVisibility < 3) {
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    checkUnnamed42(o.trackIds!);
    checkUnnamed43(o.tracks!);
  }
  buildCounterProductVisibility--;
}

core.int buildCounterProductsApproveRequest = 0;
api.ProductsApproveRequest buildProductsApproveRequest() {
  final o = api.ProductsApproveRequest();
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
    checkApprovalUrlInfo(o.approvalUrlInfo!);
    unittest.expect(
      o.approvedPermissions!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductsApproveRequest--;
}

core.int buildCounterProductsGenerateApprovalUrlResponse = 0;
api.ProductsGenerateApprovalUrlResponse
    buildProductsGenerateApprovalUrlResponse() {
  final o = api.ProductsGenerateApprovalUrlResponse();
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
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductsGenerateApprovalUrlResponse--;
}

core.List<api.Product> buildUnnamed44() => [
      buildProduct(),
      buildProduct(),
    ];

void checkUnnamed44(core.List<api.Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProduct(o[0]);
  checkProduct(o[1]);
}

core.int buildCounterProductsListResponse = 0;
api.ProductsListResponse buildProductsListResponse() {
  final o = api.ProductsListResponse();
  buildCounterProductsListResponse++;
  if (buildCounterProductsListResponse < 3) {
    o.pageInfo = buildPageInfo();
    o.product = buildUnnamed44();
    o.tokenPagination = buildTokenPagination();
  }
  buildCounterProductsListResponse--;
  return o;
}

void checkProductsListResponse(api.ProductsListResponse o) {
  buildCounterProductsListResponse++;
  if (buildCounterProductsListResponse < 3) {
    checkPageInfo(o.pageInfo!);
    checkUnnamed44(o.product!);
    checkTokenPagination(o.tokenPagination!);
  }
  buildCounterProductsListResponse--;
}

core.int buildCounterServiceAccount = 0;
api.ServiceAccount buildServiceAccount() {
  final o = api.ServiceAccount();
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
    checkServiceAccountKey(o.key!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceAccount--;
}

core.int buildCounterServiceAccountKey = 0;
api.ServiceAccountKey buildServiceAccountKey() {
  final o = api.ServiceAccountKey();
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
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publicData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceAccountKey--;
}

core.List<api.ServiceAccountKey> buildUnnamed45() => [
      buildServiceAccountKey(),
      buildServiceAccountKey(),
    ];

void checkUnnamed45(core.List<api.ServiceAccountKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceAccountKey(o[0]);
  checkServiceAccountKey(o[1]);
}

core.int buildCounterServiceAccountKeysListResponse = 0;
api.ServiceAccountKeysListResponse buildServiceAccountKeysListResponse() {
  final o = api.ServiceAccountKeysListResponse();
  buildCounterServiceAccountKeysListResponse++;
  if (buildCounterServiceAccountKeysListResponse < 3) {
    o.serviceAccountKey = buildUnnamed45();
  }
  buildCounterServiceAccountKeysListResponse--;
  return o;
}

void checkServiceAccountKeysListResponse(api.ServiceAccountKeysListResponse o) {
  buildCounterServiceAccountKeysListResponse++;
  if (buildCounterServiceAccountKeysListResponse < 3) {
    checkUnnamed45(o.serviceAccountKey!);
  }
  buildCounterServiceAccountKeysListResponse--;
}

core.int buildCounterSignupInfo = 0;
api.SignupInfo buildSignupInfo() {
  final o = api.SignupInfo();
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
    unittest.expect(
      o.completionToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterSignupInfo--;
}

core.List<api.LocalizedText> buildUnnamed46() => [
      buildLocalizedText(),
      buildLocalizedText(),
    ];

void checkUnnamed46(core.List<api.LocalizedText> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalizedText(o[0]);
  checkLocalizedText(o[1]);
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

core.int buildCounterStoreCluster = 0;
api.StoreCluster buildStoreCluster() {
  final o = api.StoreCluster();
  buildCounterStoreCluster++;
  if (buildCounterStoreCluster < 3) {
    o.id = 'foo';
    o.name = buildUnnamed46();
    o.orderInPage = 'foo';
    o.productId = buildUnnamed47();
  }
  buildCounterStoreCluster--;
  return o;
}

void checkStoreCluster(api.StoreCluster o) {
  buildCounterStoreCluster++;
  if (buildCounterStoreCluster < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed46(o.name!);
    unittest.expect(
      o.orderInPage!,
      unittest.equals('foo'),
    );
    checkUnnamed47(o.productId!);
  }
  buildCounterStoreCluster--;
}

core.int buildCounterStoreLayout = 0;
api.StoreLayout buildStoreLayout() {
  final o = api.StoreLayout();
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
    unittest.expect(
      o.homepageId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storeLayoutType!,
      unittest.equals('foo'),
    );
  }
  buildCounterStoreLayout--;
}

core.List<api.StoreCluster> buildUnnamed48() => [
      buildStoreCluster(),
      buildStoreCluster(),
    ];

void checkUnnamed48(core.List<api.StoreCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStoreCluster(o[0]);
  checkStoreCluster(o[1]);
}

core.int buildCounterStoreLayoutClustersListResponse = 0;
api.StoreLayoutClustersListResponse buildStoreLayoutClustersListResponse() {
  final o = api.StoreLayoutClustersListResponse();
  buildCounterStoreLayoutClustersListResponse++;
  if (buildCounterStoreLayoutClustersListResponse < 3) {
    o.cluster = buildUnnamed48();
  }
  buildCounterStoreLayoutClustersListResponse--;
  return o;
}

void checkStoreLayoutClustersListResponse(
    api.StoreLayoutClustersListResponse o) {
  buildCounterStoreLayoutClustersListResponse++;
  if (buildCounterStoreLayoutClustersListResponse < 3) {
    checkUnnamed48(o.cluster!);
  }
  buildCounterStoreLayoutClustersListResponse--;
}

core.List<api.StorePage> buildUnnamed49() => [
      buildStorePage(),
      buildStorePage(),
    ];

void checkUnnamed49(core.List<api.StorePage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStorePage(o[0]);
  checkStorePage(o[1]);
}

core.int buildCounterStoreLayoutPagesListResponse = 0;
api.StoreLayoutPagesListResponse buildStoreLayoutPagesListResponse() {
  final o = api.StoreLayoutPagesListResponse();
  buildCounterStoreLayoutPagesListResponse++;
  if (buildCounterStoreLayoutPagesListResponse < 3) {
    o.page = buildUnnamed49();
  }
  buildCounterStoreLayoutPagesListResponse--;
  return o;
}

void checkStoreLayoutPagesListResponse(api.StoreLayoutPagesListResponse o) {
  buildCounterStoreLayoutPagesListResponse++;
  if (buildCounterStoreLayoutPagesListResponse < 3) {
    checkUnnamed49(o.page!);
  }
  buildCounterStoreLayoutPagesListResponse--;
}

core.List<core.String> buildUnnamed50() => [
      'foo',
      'foo',
    ];

void checkUnnamed50(core.List<core.String> o) {
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

core.List<api.LocalizedText> buildUnnamed51() => [
      buildLocalizedText(),
      buildLocalizedText(),
    ];

void checkUnnamed51(core.List<api.LocalizedText> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalizedText(o[0]);
  checkLocalizedText(o[1]);
}

core.int buildCounterStorePage = 0;
api.StorePage buildStorePage() {
  final o = api.StorePage();
  buildCounterStorePage++;
  if (buildCounterStorePage < 3) {
    o.id = 'foo';
    o.link = buildUnnamed50();
    o.name = buildUnnamed51();
  }
  buildCounterStorePage--;
  return o;
}

void checkStorePage(api.StorePage o) {
  buildCounterStorePage++;
  if (buildCounterStorePage < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed50(o.link!);
    checkUnnamed51(o.name!);
  }
  buildCounterStorePage--;
}

core.int buildCounterTokenPagination = 0;
api.TokenPagination buildTokenPagination() {
  final o = api.TokenPagination();
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
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterTokenPagination--;
}

core.int buildCounterTrackInfo = 0;
api.TrackInfo buildTrackInfo() {
  final o = api.TrackInfo();
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
    unittest.expect(
      o.trackAlias!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trackId!,
      unittest.equals('foo'),
    );
  }
  buildCounterTrackInfo--;
}

core.int buildCounterUser = 0;
api.User buildUser() {
  final o = api.User();
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
    unittest.expect(
      o.accountIdentifier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.accountType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.managementType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primaryEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterUser--;
}

core.List<api.User> buildUnnamed52() => [
      buildUser(),
      buildUser(),
    ];

void checkUnnamed52(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
}

core.int buildCounterUsersListResponse = 0;
api.UsersListResponse buildUsersListResponse() {
  final o = api.UsersListResponse();
  buildCounterUsersListResponse++;
  if (buildCounterUsersListResponse < 3) {
    o.user = buildUnnamed52();
  }
  buildCounterUsersListResponse--;
  return o;
}

void checkUsersListResponse(api.UsersListResponse o) {
  buildCounterUsersListResponse++;
  if (buildCounterUsersListResponse < 3) {
    checkUnnamed52(o.user!);
  }
  buildCounterUsersListResponse--;
}

core.int buildCounterVariableSet = 0;
api.VariableSet buildVariableSet() {
  final o = api.VariableSet();
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
    unittest.expect(
      o.placeholder!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterVariableSet--;
}

core.List<api.WebAppIcon> buildUnnamed53() => [
      buildWebAppIcon(),
      buildWebAppIcon(),
    ];

void checkUnnamed53(core.List<api.WebAppIcon> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebAppIcon(o[0]);
  checkWebAppIcon(o[1]);
}

core.int buildCounterWebApp = 0;
api.WebApp buildWebApp() {
  final o = api.WebApp();
  buildCounterWebApp++;
  if (buildCounterWebApp < 3) {
    o.displayMode = 'foo';
    o.icons = buildUnnamed53();
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
    unittest.expect(
      o.displayMode!,
      unittest.equals('foo'),
    );
    checkUnnamed53(o.icons!);
    unittest.expect(o.isPublished!, unittest.isTrue);
    unittest.expect(
      o.startUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webAppId!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebApp--;
}

core.int buildCounterWebAppIcon = 0;
api.WebAppIcon buildWebAppIcon() {
  final o = api.WebAppIcon();
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
    unittest.expect(
      o.imageData!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebAppIcon--;
}

core.List<api.WebApp> buildUnnamed54() => [
      buildWebApp(),
      buildWebApp(),
    ];

void checkUnnamed54(core.List<api.WebApp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebApp(o[0]);
  checkWebApp(o[1]);
}

core.int buildCounterWebAppsListResponse = 0;
api.WebAppsListResponse buildWebAppsListResponse() {
  final o = api.WebAppsListResponse();
  buildCounterWebAppsListResponse++;
  if (buildCounterWebAppsListResponse < 3) {
    o.webApp = buildUnnamed54();
  }
  buildCounterWebAppsListResponse--;
  return o;
}

void checkWebAppsListResponse(api.WebAppsListResponse o) {
  buildCounterWebAppsListResponse++;
  if (buildCounterWebAppsListResponse < 3) {
    checkUnnamed54(o.webApp!);
  }
  buildCounterWebAppsListResponse--;
}

void main() {
  unittest.group('obj-schema-Administrator', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdministrator();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Administrator.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdministrator(od);
    });
  });

  unittest.group('obj-schema-AdministratorWebToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdministratorWebToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdministratorWebToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdministratorWebToken(od);
    });
  });

  unittest.group('obj-schema-AdministratorWebTokenSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdministratorWebTokenSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdministratorWebTokenSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdministratorWebTokenSpec(od);
    });
  });

  unittest.group('obj-schema-AdministratorWebTokenSpecManagedConfigurations',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdministratorWebTokenSpecManagedConfigurations();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdministratorWebTokenSpecManagedConfigurations.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdministratorWebTokenSpecManagedConfigurations(od);
    });
  });

  unittest.group('obj-schema-AdministratorWebTokenSpecPlaySearch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdministratorWebTokenSpecPlaySearch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdministratorWebTokenSpecPlaySearch.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdministratorWebTokenSpecPlaySearch(od);
    });
  });

  unittest.group('obj-schema-AdministratorWebTokenSpecPrivateApps', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdministratorWebTokenSpecPrivateApps();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdministratorWebTokenSpecPrivateApps.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdministratorWebTokenSpecPrivateApps(od);
    });
  });

  unittest.group('obj-schema-AdministratorWebTokenSpecStoreBuilder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdministratorWebTokenSpecStoreBuilder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdministratorWebTokenSpecStoreBuilder.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdministratorWebTokenSpecStoreBuilder(od);
    });
  });

  unittest.group('obj-schema-AdministratorWebTokenSpecWebApps', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdministratorWebTokenSpecWebApps();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdministratorWebTokenSpecWebApps.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdministratorWebTokenSpecWebApps(od);
    });
  });

  unittest.group('obj-schema-AdministratorWebTokenSpecZeroTouch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdministratorWebTokenSpecZeroTouch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdministratorWebTokenSpecZeroTouch.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdministratorWebTokenSpecZeroTouch(od);
    });
  });

  unittest.group('obj-schema-AppRestrictionsSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppRestrictionsSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppRestrictionsSchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppRestrictionsSchema(od);
    });
  });

  unittest.group('obj-schema-AppRestrictionsSchemaChangeEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppRestrictionsSchemaChangeEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppRestrictionsSchemaChangeEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppRestrictionsSchemaChangeEvent(od);
    });
  });

  unittest.group('obj-schema-AppRestrictionsSchemaRestriction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppRestrictionsSchemaRestriction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppRestrictionsSchemaRestriction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppRestrictionsSchemaRestriction(od);
    });
  });

  unittest.group('obj-schema-AppRestrictionsSchemaRestrictionRestrictionValue',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppRestrictionsSchemaRestrictionRestrictionValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppRestrictionsSchemaRestrictionRestrictionValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppRestrictionsSchemaRestrictionRestrictionValue(od);
    });
  });

  unittest.group('obj-schema-AppState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AppState.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAppState(od);
    });
  });

  unittest.group('obj-schema-AppUpdateEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppUpdateEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppUpdateEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppUpdateEvent(od);
    });
  });

  unittest.group('obj-schema-AppVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AppVersion.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAppVersion(od);
    });
  });

  unittest.group('obj-schema-ApprovalUrlInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApprovalUrlInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApprovalUrlInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApprovalUrlInfo(od);
    });
  });

  unittest.group('obj-schema-AuthenticationToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthenticationToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthenticationToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthenticationToken(od);
    });
  });

  unittest.group('obj-schema-AutoInstallConstraint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoInstallConstraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoInstallConstraint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAutoInstallConstraint(od);
    });
  });

  unittest.group('obj-schema-AutoInstallPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoInstallPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoInstallPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAutoInstallPolicy(od);
    });
  });

  unittest.group('obj-schema-ConfigurationVariables', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigurationVariables();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigurationVariables.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigurationVariables(od);
    });
  });

  unittest.group('obj-schema-Device', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Device.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDevice(od);
    });
  });

  unittest.group('obj-schema-DeviceReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceReport(od);
    });
  });

  unittest.group('obj-schema-DeviceReportUpdateEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceReportUpdateEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceReportUpdateEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceReportUpdateEvent(od);
    });
  });

  unittest.group('obj-schema-DeviceState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceState(od);
    });
  });

  unittest.group('obj-schema-DevicesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDevicesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DevicesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDevicesListResponse(od);
    });
  });

  unittest.group('obj-schema-Enterprise', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterprise();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Enterprise.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnterprise(od);
    });
  });

  unittest.group('obj-schema-EnterpriseAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseAccount(od);
    });
  });

  unittest.group('obj-schema-EnterpriseAuthenticationAppLinkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseAuthenticationAppLinkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseAuthenticationAppLinkConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseAuthenticationAppLinkConfig(od);
    });
  });

  unittest.group('obj-schema-EnterprisesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterprisesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterprisesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterprisesListResponse(od);
    });
  });

  unittest.group('obj-schema-EnterprisesSendTestPushNotificationResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterprisesSendTestPushNotificationResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterprisesSendTestPushNotificationResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterprisesSendTestPushNotificationResponse(od);
    });
  });

  unittest.group('obj-schema-Entitlement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntitlement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Entitlement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEntitlement(od);
    });
  });

  unittest.group('obj-schema-EntitlementsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntitlementsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntitlementsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEntitlementsListResponse(od);
    });
  });

  unittest.group('obj-schema-GroupLicense', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupLicense();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupLicense.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGroupLicense(od);
    });
  });

  unittest.group('obj-schema-GroupLicenseUsersListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupLicenseUsersListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupLicenseUsersListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGroupLicenseUsersListResponse(od);
    });
  });

  unittest.group('obj-schema-GroupLicensesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupLicensesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupLicensesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGroupLicensesListResponse(od);
    });
  });

  unittest.group('obj-schema-Install', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstall();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Install.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInstall(od);
    });
  });

  unittest.group('obj-schema-InstallFailureEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstallFailureEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstallFailureEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstallFailureEvent(od);
    });
  });

  unittest.group('obj-schema-InstallsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstallsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstallsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstallsListResponse(od);
    });
  });

  unittest.group('obj-schema-KeyedAppState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeyedAppState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KeyedAppState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKeyedAppState(od);
    });
  });

  unittest.group('obj-schema-LocalizedText', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalizedText();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalizedText.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocalizedText(od);
    });
  });

  unittest.group('obj-schema-MaintenanceWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaintenanceWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaintenanceWindow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMaintenanceWindow(od);
    });
  });

  unittest.group('obj-schema-ManagedConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedConfiguration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedConfiguration(od);
    });
  });

  unittest.group('obj-schema-ManagedConfigurationsForDeviceListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedConfigurationsForDeviceListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedConfigurationsForDeviceListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedConfigurationsForDeviceListResponse(od);
    });
  });

  unittest.group('obj-schema-ManagedConfigurationsForUserListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedConfigurationsForUserListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedConfigurationsForUserListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedConfigurationsForUserListResponse(od);
    });
  });

  unittest.group('obj-schema-ManagedConfigurationsSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedConfigurationsSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedConfigurationsSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedConfigurationsSettings(od);
    });
  });

  unittest.group('obj-schema-ManagedConfigurationsSettingsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedConfigurationsSettingsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedConfigurationsSettingsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedConfigurationsSettingsListResponse(od);
    });
  });

  unittest.group('obj-schema-ManagedProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedProperty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedProperty(od);
    });
  });

  unittest.group('obj-schema-ManagedPropertyBundle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedPropertyBundle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedPropertyBundle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedPropertyBundle(od);
    });
  });

  unittest.group('obj-schema-NewDeviceEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNewDeviceEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NewDeviceEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNewDeviceEvent(od);
    });
  });

  unittest.group('obj-schema-NewPermissionsEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNewPermissionsEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NewPermissionsEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNewPermissionsEvent(od);
    });
  });

  unittest.group('obj-schema-Notification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Notification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotification(od);
    });
  });

  unittest.group('obj-schema-NotificationSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotificationSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NotificationSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotificationSet(od);
    });
  });

  unittest.group('obj-schema-PageInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPageInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PageInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPageInfo(od);
    });
  });

  unittest.group('obj-schema-Permission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Permission.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPermission(od);
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

  unittest.group('obj-schema-Product', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProduct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Product.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProduct(od);
    });
  });

  unittest.group('obj-schema-ProductApprovalEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductApprovalEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductApprovalEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductApprovalEvent(od);
    });
  });

  unittest.group('obj-schema-ProductAvailabilityChangeEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductAvailabilityChangeEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductAvailabilityChangeEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductAvailabilityChangeEvent(od);
    });
  });

  unittest.group('obj-schema-ProductPermission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductPermission.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductPermission(od);
    });
  });

  unittest.group('obj-schema-ProductPermissions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductPermissions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductPermissions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductPermissions(od);
    });
  });

  unittest.group('obj-schema-ProductPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductPolicy(od);
    });
  });

  unittest.group('obj-schema-ProductSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ProductSet.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProductSet(od);
    });
  });

  unittest.group('obj-schema-ProductSigningCertificate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductSigningCertificate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductSigningCertificate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductSigningCertificate(od);
    });
  });

  unittest.group('obj-schema-ProductVisibility', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductVisibility();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductVisibility.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductVisibility(od);
    });
  });

  unittest.group('obj-schema-ProductsApproveRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductsApproveRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductsApproveRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductsApproveRequest(od);
    });
  });

  unittest.group('obj-schema-ProductsGenerateApprovalUrlResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductsGenerateApprovalUrlResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductsGenerateApprovalUrlResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductsGenerateApprovalUrlResponse(od);
    });
  });

  unittest.group('obj-schema-ProductsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductsListResponse(od);
    });
  });

  unittest.group('obj-schema-ServiceAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceAccount(od);
    });
  });

  unittest.group('obj-schema-ServiceAccountKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceAccountKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceAccountKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceAccountKey(od);
    });
  });

  unittest.group('obj-schema-ServiceAccountKeysListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceAccountKeysListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceAccountKeysListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceAccountKeysListResponse(od);
    });
  });

  unittest.group('obj-schema-SignupInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignupInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SignupInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSignupInfo(od);
    });
  });

  unittest.group('obj-schema-StoreCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStoreCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StoreCluster.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStoreCluster(od);
    });
  });

  unittest.group('obj-schema-StoreLayout', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStoreLayout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StoreLayout.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStoreLayout(od);
    });
  });

  unittest.group('obj-schema-StoreLayoutClustersListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStoreLayoutClustersListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StoreLayoutClustersListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStoreLayoutClustersListResponse(od);
    });
  });

  unittest.group('obj-schema-StoreLayoutPagesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStoreLayoutPagesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StoreLayoutPagesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStoreLayoutPagesListResponse(od);
    });
  });

  unittest.group('obj-schema-StorePage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStorePage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.StorePage.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStorePage(od);
    });
  });

  unittest.group('obj-schema-TokenPagination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTokenPagination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TokenPagination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTokenPagination(od);
    });
  });

  unittest.group('obj-schema-TrackInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrackInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TrackInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTrackInfo(od);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.User.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUser(od);
    });
  });

  unittest.group('obj-schema-UsersListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsersListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsersListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsersListResponse(od);
    });
  });

  unittest.group('obj-schema-VariableSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVariableSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VariableSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVariableSet(od);
    });
  });

  unittest.group('obj-schema-WebApp', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebApp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.WebApp.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWebApp(od);
    });
  });

  unittest.group('obj-schema-WebAppIcon', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebAppIcon();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.WebAppIcon.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWebAppIcon(od);
    });
  });

  unittest.group('obj-schema-WebAppsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebAppsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WebAppsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWebAppsListResponse(od);
    });
  });

  unittest.group('resource-DevicesResource', () {
    unittest.test('method--forceReportUpload', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).devices;
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
      final arg_deviceId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/devices/'),
        );
        pathOffset += 9;
        index = path.indexOf('/forceReportUpload', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deviceId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/forceReportUpload'),
        );
        pathOffset += 18;

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.forceReportUpload(arg_enterpriseId, arg_userId, arg_deviceId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).devices;
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
      final arg_deviceId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/devices/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deviceId'),
        );

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
        final resp = convert.json.encode(buildDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_enterpriseId, arg_userId, arg_deviceId,
          $fields: arg_$fields);
      checkDevice(response as api.Device);
    });

    unittest.test('method--getState', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).devices;
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
      final arg_deviceId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/devices/'),
        );
        pathOffset += 9;
        index = path.indexOf('/state', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deviceId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/state'),
        );
        pathOffset += 6;

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
        final resp = convert.json.encode(buildDeviceState());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getState(
          arg_enterpriseId, arg_userId, arg_deviceId,
          $fields: arg_$fields);
      checkDeviceState(response as api.DeviceState);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).devices;
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/devices', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/devices'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildDevicesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_enterpriseId, arg_userId, $fields: arg_$fields);
      checkDevicesListResponse(response as api.DevicesListResponse);
    });

    unittest.test('method--setState', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).devices;
      final arg_request = buildDeviceState();
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
      final arg_deviceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DeviceState.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeviceState(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/devices/'),
        );
        pathOffset += 9;
        index = path.indexOf('/state', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deviceId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/state'),
        );
        pathOffset += 6;

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
        final resp = convert.json.encode(buildDeviceState());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setState(
          arg_request, arg_enterpriseId, arg_userId, arg_deviceId,
          $fields: arg_$fields);
      checkDeviceState(response as api.DeviceState);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).devices;
      final arg_request = buildDevice();
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
      final arg_deviceId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Device.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDevice(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/devices/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deviceId'),
        );

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
        final resp = convert.json.encode(buildDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_enterpriseId, arg_userId, arg_deviceId,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkDevice(response as api.Device);
    });
  });

  unittest.group('resource-EnterprisesResource', () {
    unittest.test('method--acknowledgeNotificationSet', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).enterprises;
      final arg_notificationSetId = 'foo';
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
          path.substring(pathOffset, pathOffset + 59),
          unittest.equals(
              'androidenterprise/v1/enterprises/acknowledgeNotificationSet'),
        );
        pathOffset += 59;

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
          queryMap['notificationSetId']!.first,
          unittest.equals(arg_notificationSetId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.acknowledgeNotificationSet(
          notificationSetId: arg_notificationSetId, $fields: arg_$fields);
    });

    unittest.test('method--completeSignup', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).enterprises;
      final arg_completionToken = 'foo';
      final arg_enterpriseToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 47),
          unittest.equals('androidenterprise/v1/enterprises/completeSignup'),
        );
        pathOffset += 47;

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
          queryMap['completionToken']!.first,
          unittest.equals(arg_completionToken),
        );
        unittest.expect(
          queryMap['enterpriseToken']!.first,
          unittest.equals(arg_enterpriseToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEnterprise());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.completeSignup(
          completionToken: arg_completionToken,
          enterpriseToken: arg_enterpriseToken,
          $fields: arg_$fields);
      checkEnterprise(response as api.Enterprise);
    });

    unittest.test('method--createWebToken', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).enterprises;
      final arg_request = buildAdministratorWebTokenSpec();
      final arg_enterpriseId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AdministratorWebTokenSpec.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAdministratorWebTokenSpec(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/createWebToken', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/createWebToken'),
        );
        pathOffset += 15;

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
        final resp = convert.json.encode(buildAdministratorWebToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createWebToken(arg_request, arg_enterpriseId,
          $fields: arg_$fields);
      checkAdministratorWebToken(response as api.AdministratorWebToken);
    });

    unittest.test('method--enroll', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).enterprises;
      final arg_request = buildEnterprise();
      final arg_token = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Enterprise.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnterprise(obj);

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
          path.substring(pathOffset, pathOffset + 39),
          unittest.equals('androidenterprise/v1/enterprises/enroll'),
        );
        pathOffset += 39;

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
          queryMap['token']!.first,
          unittest.equals(arg_token),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEnterprise());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.enroll(arg_request, arg_token, $fields: arg_$fields);
      checkEnterprise(response as api.Enterprise);
    });

    unittest.test('method--generateSignupUrl', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).enterprises;
      final arg_callbackUrl = 'foo';
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
          path.substring(pathOffset, pathOffset + 42),
          unittest.equals('androidenterprise/v1/enterprises/signupUrl'),
        );
        pathOffset += 42;

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
          queryMap['callbackUrl']!.first,
          unittest.equals(arg_callbackUrl),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSignupInfo());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generateSignupUrl(
          callbackUrl: arg_callbackUrl, $fields: arg_$fields);
      checkSignupInfo(response as api.SignupInfo);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).enterprises;
      final arg_enterpriseId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );

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
        final resp = convert.json.encode(buildEnterprise());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_enterpriseId, $fields: arg_$fields);
      checkEnterprise(response as api.Enterprise);
    });

    unittest.test('method--getServiceAccount', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).enterprises;
      final arg_enterpriseId = 'foo';
      final arg_keyType = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/serviceAccount', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/serviceAccount'),
        );
        pathOffset += 15;

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
          queryMap['keyType']!.first,
          unittest.equals(arg_keyType),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildServiceAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getServiceAccount(arg_enterpriseId,
          keyType: arg_keyType, $fields: arg_$fields);
      checkServiceAccount(response as api.ServiceAccount);
    });

    unittest.test('method--getStoreLayout', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).enterprises;
      final arg_enterpriseId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/storeLayout', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/storeLayout'),
        );
        pathOffset += 12;

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
        final resp = convert.json.encode(buildStoreLayout());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getStoreLayout(arg_enterpriseId, $fields: arg_$fields);
      checkStoreLayout(response as api.StoreLayout);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).enterprises;
      final arg_domain = 'foo';
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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('androidenterprise/v1/enterprises'),
        );
        pathOffset += 32;

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
          queryMap['domain']!.first,
          unittest.equals(arg_domain),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEnterprisesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_domain, $fields: arg_$fields);
      checkEnterprisesListResponse(response as api.EnterprisesListResponse);
    });

    unittest.test('method--pullNotificationSet', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).enterprises;
      final arg_requestMode = 'foo';
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
          path.substring(pathOffset, pathOffset + 52),
          unittest
              .equals('androidenterprise/v1/enterprises/pullNotificationSet'),
        );
        pathOffset += 52;

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
          queryMap['requestMode']!.first,
          unittest.equals(arg_requestMode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildNotificationSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.pullNotificationSet(
          requestMode: arg_requestMode, $fields: arg_$fields);
      checkNotificationSet(response as api.NotificationSet);
    });

    unittest.test('method--sendTestPushNotification', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).enterprises;
      final arg_enterpriseId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/sendTestPushNotification', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('/sendTestPushNotification'),
        );
        pathOffset += 25;

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
        final resp = convert.json
            .encode(buildEnterprisesSendTestPushNotificationResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.sendTestPushNotification(arg_enterpriseId,
          $fields: arg_$fields);
      checkEnterprisesSendTestPushNotificationResponse(
          response as api.EnterprisesSendTestPushNotificationResponse);
    });

    unittest.test('method--setAccount', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).enterprises;
      final arg_request = buildEnterpriseAccount();
      final arg_enterpriseId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EnterpriseAccount.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnterpriseAccount(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/account', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/account'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildEnterpriseAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setAccount(arg_request, arg_enterpriseId,
          $fields: arg_$fields);
      checkEnterpriseAccount(response as api.EnterpriseAccount);
    });

    unittest.test('method--setStoreLayout', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).enterprises;
      final arg_request = buildStoreLayout();
      final arg_enterpriseId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StoreLayout.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStoreLayout(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/storeLayout', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/storeLayout'),
        );
        pathOffset += 12;

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
        final resp = convert.json.encode(buildStoreLayout());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setStoreLayout(arg_request, arg_enterpriseId,
          $fields: arg_$fields);
      checkStoreLayout(response as api.StoreLayout);
    });

    unittest.test('method--unenroll', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).enterprises;
      final arg_enterpriseId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/unenroll', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/unenroll'),
        );
        pathOffset += 9;

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.unenroll(arg_enterpriseId, $fields: arg_$fields);
    });
  });

  unittest.group('resource-EntitlementsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).entitlements;
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
      final arg_entitlementId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/entitlements/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/entitlements/'),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_entitlementId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_enterpriseId, arg_userId, arg_entitlementId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).entitlements;
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
      final arg_entitlementId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/entitlements/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/entitlements/'),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_entitlementId'),
        );

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
        final resp = convert.json.encode(buildEntitlement());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_enterpriseId, arg_userId, arg_entitlementId,
          $fields: arg_$fields);
      checkEntitlement(response as api.Entitlement);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).entitlements;
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/entitlements', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/entitlements'),
        );
        pathOffset += 13;

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
        final resp = convert.json.encode(buildEntitlementsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_enterpriseId, arg_userId, $fields: arg_$fields);
      checkEntitlementsListResponse(response as api.EntitlementsListResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).entitlements;
      final arg_request = buildEntitlement();
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
      final arg_entitlementId = 'foo';
      final arg_install = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Entitlement.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEntitlement(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/entitlements/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/entitlements/'),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_entitlementId'),
        );

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
          queryMap['install']!.first,
          unittest.equals('$arg_install'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEntitlement());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_enterpriseId, arg_userId, arg_entitlementId,
          install: arg_install, $fields: arg_$fields);
      checkEntitlement(response as api.Entitlement);
    });
  });

  unittest.group('resource-GrouplicensesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).grouplicenses;
      final arg_enterpriseId = 'foo';
      final arg_groupLicenseId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/groupLicenses/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/groupLicenses/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_groupLicenseId'),
        );

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
        final resp = convert.json.encode(buildGroupLicense());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_enterpriseId, arg_groupLicenseId,
          $fields: arg_$fields);
      checkGroupLicense(response as api.GroupLicense);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).grouplicenses;
      final arg_enterpriseId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/groupLicenses', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/groupLicenses'),
        );
        pathOffset += 14;

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
        final resp = convert.json.encode(buildGroupLicensesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_enterpriseId, $fields: arg_$fields);
      checkGroupLicensesListResponse(response as api.GroupLicensesListResponse);
    });
  });

  unittest.group('resource-GrouplicenseusersResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).grouplicenseusers;
      final arg_enterpriseId = 'foo';
      final arg_groupLicenseId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/groupLicenses/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/groupLicenses/'),
        );
        pathOffset += 15;
        index = path.indexOf('/users', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_groupLicenseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/users'),
        );
        pathOffset += 6;

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
        final resp = convert.json.encode(buildGroupLicenseUsersListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_enterpriseId, arg_groupLicenseId,
          $fields: arg_$fields);
      checkGroupLicenseUsersListResponse(
          response as api.GroupLicenseUsersListResponse);
    });
  });

  unittest.group('resource-InstallsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).installs;
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
      final arg_deviceId = 'foo';
      final arg_installId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/devices/'),
        );
        pathOffset += 9;
        index = path.indexOf('/installs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deviceId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/installs/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_installId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(
          arg_enterpriseId, arg_userId, arg_deviceId, arg_installId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).installs;
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
      final arg_deviceId = 'foo';
      final arg_installId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/devices/'),
        );
        pathOffset += 9;
        index = path.indexOf('/installs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deviceId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/installs/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_installId'),
        );

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
        final resp = convert.json.encode(buildInstall());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_enterpriseId, arg_userId, arg_deviceId, arg_installId,
          $fields: arg_$fields);
      checkInstall(response as api.Install);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).installs;
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
      final arg_deviceId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/devices/'),
        );
        pathOffset += 9;
        index = path.indexOf('/installs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deviceId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/installs'),
        );
        pathOffset += 9;

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
        final resp = convert.json.encode(buildInstallsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_enterpriseId, arg_userId, arg_deviceId,
          $fields: arg_$fields);
      checkInstallsListResponse(response as api.InstallsListResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).installs;
      final arg_request = buildInstall();
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
      final arg_deviceId = 'foo';
      final arg_installId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Install.fromJson(json as core.Map<core.String, core.dynamic>);
        checkInstall(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/devices/'),
        );
        pathOffset += 9;
        index = path.indexOf('/installs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deviceId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/installs/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_installId'),
        );

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
        final resp = convert.json.encode(buildInstall());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_enterpriseId,
          arg_userId, arg_deviceId, arg_installId,
          $fields: arg_$fields);
      checkInstall(response as api.Install);
    });
  });

  unittest.group('resource-ManagedconfigurationsfordeviceResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).managedconfigurationsfordevice;
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
      final arg_deviceId = 'foo';
      final arg_managedConfigurationForDeviceId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/devices/'),
        );
        pathOffset += 9;
        index = path.indexOf('/managedConfigurationsForDevice/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deviceId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('/managedConfigurationsForDevice/'),
        );
        pathOffset += 32;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedConfigurationForDeviceId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_enterpriseId, arg_userId, arg_deviceId,
          arg_managedConfigurationForDeviceId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).managedconfigurationsfordevice;
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
      final arg_deviceId = 'foo';
      final arg_managedConfigurationForDeviceId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/devices/'),
        );
        pathOffset += 9;
        index = path.indexOf('/managedConfigurationsForDevice/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deviceId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('/managedConfigurationsForDevice/'),
        );
        pathOffset += 32;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedConfigurationForDeviceId'),
        );

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
        final resp = convert.json.encode(buildManagedConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_enterpriseId, arg_userId, arg_deviceId,
          arg_managedConfigurationForDeviceId,
          $fields: arg_$fields);
      checkManagedConfiguration(response as api.ManagedConfiguration);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).managedconfigurationsfordevice;
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
      final arg_deviceId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/devices/'),
        );
        pathOffset += 9;
        index = path.indexOf('/managedConfigurationsForDevice', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deviceId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals('/managedConfigurationsForDevice'),
        );
        pathOffset += 31;

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
        final resp = convert.json
            .encode(buildManagedConfigurationsForDeviceListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_enterpriseId, arg_userId, arg_deviceId,
          $fields: arg_$fields);
      checkManagedConfigurationsForDeviceListResponse(
          response as api.ManagedConfigurationsForDeviceListResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).managedconfigurationsfordevice;
      final arg_request = buildManagedConfiguration();
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
      final arg_deviceId = 'foo';
      final arg_managedConfigurationForDeviceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ManagedConfiguration.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkManagedConfiguration(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/devices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/devices/'),
        );
        pathOffset += 9;
        index = path.indexOf('/managedConfigurationsForDevice/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deviceId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('/managedConfigurationsForDevice/'),
        );
        pathOffset += 32;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedConfigurationForDeviceId'),
        );

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
        final resp = convert.json.encode(buildManagedConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_enterpriseId,
          arg_userId, arg_deviceId, arg_managedConfigurationForDeviceId,
          $fields: arg_$fields);
      checkManagedConfiguration(response as api.ManagedConfiguration);
    });
  });

  unittest.group('resource-ManagedconfigurationsforuserResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).managedconfigurationsforuser;
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
      final arg_managedConfigurationForUserId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/managedConfigurationsForUser/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('/managedConfigurationsForUser/'),
        );
        pathOffset += 30;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedConfigurationForUserId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(
          arg_enterpriseId, arg_userId, arg_managedConfigurationForUserId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).managedconfigurationsforuser;
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
      final arg_managedConfigurationForUserId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/managedConfigurationsForUser/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('/managedConfigurationsForUser/'),
        );
        pathOffset += 30;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedConfigurationForUserId'),
        );

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
        final resp = convert.json.encode(buildManagedConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_enterpriseId, arg_userId, arg_managedConfigurationForUserId,
          $fields: arg_$fields);
      checkManagedConfiguration(response as api.ManagedConfiguration);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).managedconfigurationsforuser;
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/managedConfigurationsForUser', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('/managedConfigurationsForUser'),
        );
        pathOffset += 29;

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
        final resp = convert.json
            .encode(buildManagedConfigurationsForUserListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_enterpriseId, arg_userId, $fields: arg_$fields);
      checkManagedConfigurationsForUserListResponse(
          response as api.ManagedConfigurationsForUserListResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).managedconfigurationsforuser;
      final arg_request = buildManagedConfiguration();
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
      final arg_managedConfigurationForUserId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ManagedConfiguration.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkManagedConfiguration(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/managedConfigurationsForUser/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('/managedConfigurationsForUser/'),
        );
        pathOffset += 30;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_managedConfigurationForUserId'),
        );

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
        final resp = convert.json.encode(buildManagedConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_enterpriseId,
          arg_userId, arg_managedConfigurationForUserId,
          $fields: arg_$fields);
      checkManagedConfiguration(response as api.ManagedConfiguration);
    });
  });

  unittest.group('resource-ManagedconfigurationssettingsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).managedconfigurationssettings;
      final arg_enterpriseId = 'foo';
      final arg_productId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/products/'),
        );
        pathOffset += 10;
        index = path.indexOf('/managedConfigurationsSettings', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('/managedConfigurationsSettings'),
        );
        pathOffset += 30;

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
        final resp = convert.json
            .encode(buildManagedConfigurationsSettingsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_enterpriseId, arg_productId, $fields: arg_$fields);
      checkManagedConfigurationsSettingsListResponse(
          response as api.ManagedConfigurationsSettingsListResponse);
    });
  });

  unittest.group('resource-PermissionsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).permissions;
      final arg_permissionId = 'foo';
      final arg_language = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/permissions/'),
        );
        pathOffset += 33;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_permissionId'),
        );

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
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPermission());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_permissionId,
          language: arg_language, $fields: arg_$fields);
      checkPermission(response as api.Permission);
    });
  });

  unittest.group('resource-ProductsResource', () {
    unittest.test('method--approve', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).products;
      final arg_request = buildProductsApproveRequest();
      final arg_enterpriseId = 'foo';
      final arg_productId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProductsApproveRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProductsApproveRequest(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/products/'),
        );
        pathOffset += 10;
        index = path.indexOf('/approve', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/approve'),
        );
        pathOffset += 8;

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.approve(arg_request, arg_enterpriseId, arg_productId,
          $fields: arg_$fields);
    });

    unittest.test('method--generateApprovalUrl', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).products;
      final arg_enterpriseId = 'foo';
      final arg_productId = 'foo';
      final arg_languageCode = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/products/'),
        );
        pathOffset += 10;
        index = path.indexOf('/generateApprovalUrl', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/generateApprovalUrl'),
        );
        pathOffset += 20;

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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildProductsGenerateApprovalUrlResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generateApprovalUrl(
          arg_enterpriseId, arg_productId,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkProductsGenerateApprovalUrlResponse(
          response as api.ProductsGenerateApprovalUrlResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).products;
      final arg_enterpriseId = 'foo';
      final arg_productId = 'foo';
      final arg_language = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/products/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );

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
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_enterpriseId, arg_productId,
          language: arg_language, $fields: arg_$fields);
      checkProduct(response as api.Product);
    });

    unittest.test('method--getAppRestrictionsSchema', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).products;
      final arg_enterpriseId = 'foo';
      final arg_productId = 'foo';
      final arg_language = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/products/'),
        );
        pathOffset += 10;
        index = path.indexOf('/appRestrictionsSchema', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('/appRestrictionsSchema'),
        );
        pathOffset += 22;

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
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAppRestrictionsSchema());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getAppRestrictionsSchema(
          arg_enterpriseId, arg_productId,
          language: arg_language, $fields: arg_$fields);
      checkAppRestrictionsSchema(response as api.AppRestrictionsSchema);
    });

    unittest.test('method--getPermissions', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).products;
      final arg_enterpriseId = 'foo';
      final arg_productId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/products/'),
        );
        pathOffset += 10;
        index = path.indexOf('/permissions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/permissions'),
        );
        pathOffset += 12;

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
        final resp = convert.json.encode(buildProductPermissions());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getPermissions(arg_enterpriseId, arg_productId,
          $fields: arg_$fields);
      checkProductPermissions(response as api.ProductPermissions);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).products;
      final arg_enterpriseId = 'foo';
      final arg_approved = true;
      final arg_language = 'foo';
      final arg_maxResults = 42;
      final arg_query = 'foo';
      final arg_token = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/products', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/products'),
        );
        pathOffset += 9;

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
          queryMap['approved']!.first,
          unittest.equals('$arg_approved'),
        );
        unittest.expect(
          queryMap['language']!.first,
          unittest.equals(arg_language),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['token']!.first,
          unittest.equals(arg_token),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProductsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_enterpriseId,
          approved: arg_approved,
          language: arg_language,
          maxResults: arg_maxResults,
          query: arg_query,
          token: arg_token,
          $fields: arg_$fields);
      checkProductsListResponse(response as api.ProductsListResponse);
    });

    unittest.test('method--unapprove', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).products;
      final arg_enterpriseId = 'foo';
      final arg_productId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/products/'),
        );
        pathOffset += 10;
        index = path.indexOf('/unapprove', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/unapprove'),
        );
        pathOffset += 10;

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.unapprove(arg_enterpriseId, arg_productId,
          $fields: arg_$fields);
    });
  });

  unittest.group('resource-ServiceaccountkeysResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).serviceaccountkeys;
      final arg_enterpriseId = 'foo';
      final arg_keyId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/serviceAccountKeys/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/serviceAccountKeys/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_keyId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_enterpriseId, arg_keyId, $fields: arg_$fields);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).serviceaccountkeys;
      final arg_request = buildServiceAccountKey();
      final arg_enterpriseId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ServiceAccountKey.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServiceAccountKey(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/serviceAccountKeys', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/serviceAccountKeys'),
        );
        pathOffset += 19;

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
        final resp = convert.json.encode(buildServiceAccountKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_enterpriseId, $fields: arg_$fields);
      checkServiceAccountKey(response as api.ServiceAccountKey);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).serviceaccountkeys;
      final arg_enterpriseId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/serviceAccountKeys', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/serviceAccountKeys'),
        );
        pathOffset += 19;

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
        final resp = convert.json.encode(buildServiceAccountKeysListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_enterpriseId, $fields: arg_$fields);
      checkServiceAccountKeysListResponse(
          response as api.ServiceAccountKeysListResponse);
    });
  });

  unittest.group('resource-StorelayoutclustersResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).storelayoutclusters;
      final arg_enterpriseId = 'foo';
      final arg_pageId = 'foo';
      final arg_clusterId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/storeLayout/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/storeLayout/pages/'),
        );
        pathOffset += 19;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_pageId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_enterpriseId, arg_pageId, arg_clusterId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).storelayoutclusters;
      final arg_enterpriseId = 'foo';
      final arg_pageId = 'foo';
      final arg_clusterId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/storeLayout/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/storeLayout/pages/'),
        );
        pathOffset += 19;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_pageId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );

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
        final resp = convert.json.encode(buildStoreCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_enterpriseId, arg_pageId, arg_clusterId,
          $fields: arg_$fields);
      checkStoreCluster(response as api.StoreCluster);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).storelayoutclusters;
      final arg_request = buildStoreCluster();
      final arg_enterpriseId = 'foo';
      final arg_pageId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StoreCluster.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStoreCluster(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/storeLayout/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/storeLayout/pages/'),
        );
        pathOffset += 19;
        index = path.indexOf('/clusters', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_pageId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/clusters'),
        );
        pathOffset += 9;

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
        final resp = convert.json.encode(buildStoreCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(
          arg_request, arg_enterpriseId, arg_pageId,
          $fields: arg_$fields);
      checkStoreCluster(response as api.StoreCluster);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).storelayoutclusters;
      final arg_enterpriseId = 'foo';
      final arg_pageId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/storeLayout/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/storeLayout/pages/'),
        );
        pathOffset += 19;
        index = path.indexOf('/clusters', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_pageId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/clusters'),
        );
        pathOffset += 9;

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
            convert.json.encode(buildStoreLayoutClustersListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_enterpriseId, arg_pageId, $fields: arg_$fields);
      checkStoreLayoutClustersListResponse(
          response as api.StoreLayoutClustersListResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).storelayoutclusters;
      final arg_request = buildStoreCluster();
      final arg_enterpriseId = 'foo';
      final arg_pageId = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StoreCluster.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStoreCluster(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/storeLayout/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/storeLayout/pages/'),
        );
        pathOffset += 19;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_pageId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );

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
        final resp = convert.json.encode(buildStoreCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_enterpriseId, arg_pageId, arg_clusterId,
          $fields: arg_$fields);
      checkStoreCluster(response as api.StoreCluster);
    });
  });

  unittest.group('resource-StorelayoutpagesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).storelayoutpages;
      final arg_enterpriseId = 'foo';
      final arg_pageId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/storeLayout/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/storeLayout/pages/'),
        );
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_pageId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_enterpriseId, arg_pageId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).storelayoutpages;
      final arg_enterpriseId = 'foo';
      final arg_pageId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/storeLayout/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/storeLayout/pages/'),
        );
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_pageId'),
        );

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
        final resp = convert.json.encode(buildStorePage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_enterpriseId, arg_pageId, $fields: arg_$fields);
      checkStorePage(response as api.StorePage);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).storelayoutpages;
      final arg_request = buildStorePage();
      final arg_enterpriseId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.StorePage.fromJson(json as core.Map<core.String, core.dynamic>);
        checkStorePage(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/storeLayout/pages', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/storeLayout/pages'),
        );
        pathOffset += 18;

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
        final resp = convert.json.encode(buildStorePage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_enterpriseId, $fields: arg_$fields);
      checkStorePage(response as api.StorePage);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).storelayoutpages;
      final arg_enterpriseId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/storeLayout/pages', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/storeLayout/pages'),
        );
        pathOffset += 18;

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
        final resp = convert.json.encode(buildStoreLayoutPagesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_enterpriseId, $fields: arg_$fields);
      checkStoreLayoutPagesListResponse(
          response as api.StoreLayoutPagesListResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).storelayoutpages;
      final arg_request = buildStorePage();
      final arg_enterpriseId = 'foo';
      final arg_pageId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.StorePage.fromJson(json as core.Map<core.String, core.dynamic>);
        checkStorePage(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/storeLayout/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/storeLayout/pages/'),
        );
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_pageId'),
        );

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
        final resp = convert.json.encode(buildStorePage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_enterpriseId, arg_pageId,
          $fields: arg_$fields);
      checkStorePage(response as api.StorePage);
    });
  });

  unittest.group('resource-UsersResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).users;
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_enterpriseId, arg_userId, $fields: arg_$fields);
    });

    unittest.test('method--generateAuthenticationToken', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).users;
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/authenticationToken', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/authenticationToken'),
        );
        pathOffset += 20;

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
        final resp = convert.json.encode(buildAuthenticationToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generateAuthenticationToken(
          arg_enterpriseId, arg_userId,
          $fields: arg_$fields);
      checkAuthenticationToken(response as api.AuthenticationToken);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).users;
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );

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
        final resp = convert.json.encode(buildUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_enterpriseId, arg_userId, $fields: arg_$fields);
      checkUser(response as api.User);
    });

    unittest.test('method--getAvailableProductSet', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).users;
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/availableProductSet', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/availableProductSet'),
        );
        pathOffset += 20;

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
        final resp = convert.json.encode(buildProductSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getAvailableProductSet(
          arg_enterpriseId, arg_userId,
          $fields: arg_$fields);
      checkProductSet(response as api.ProductSet);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).users;
      final arg_request = buildUser();
      final arg_enterpriseId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.User.fromJson(json as core.Map<core.String, core.dynamic>);
        checkUser(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/users'),
        );
        pathOffset += 6;

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
        final resp = convert.json.encode(buildUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_enterpriseId, $fields: arg_$fields);
      checkUser(response as api.User);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).users;
      final arg_enterpriseId = 'foo';
      final arg_email = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/users'),
        );
        pathOffset += 6;

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
          queryMap['email']!.first,
          unittest.equals(arg_email),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUsersListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_enterpriseId, arg_email, $fields: arg_$fields);
      checkUsersListResponse(response as api.UsersListResponse);
    });

    unittest.test('method--revokeDeviceAccess', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).users;
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/deviceAccess', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/deviceAccess'),
        );
        pathOffset += 13;

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.revokeDeviceAccess(arg_enterpriseId, arg_userId,
          $fields: arg_$fields);
    });

    unittest.test('method--setAvailableProductSet', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).users;
      final arg_request = buildProductSet();
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProductSet.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProductSet(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        index = path.indexOf('/availableProductSet', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/availableProductSet'),
        );
        pathOffset += 20;

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
        final resp = convert.json.encode(buildProductSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setAvailableProductSet(
          arg_request, arg_enterpriseId, arg_userId,
          $fields: arg_$fields);
      checkProductSet(response as api.ProductSet);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).users;
      final arg_request = buildUser();
      final arg_enterpriseId = 'foo';
      final arg_userId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.User.fromJson(json as core.Map<core.String, core.dynamic>);
        checkUser(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/users/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/users/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );

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
        final resp = convert.json.encode(buildUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_enterpriseId, arg_userId,
          $fields: arg_$fields);
      checkUser(response as api.User);
    });
  });

  unittest.group('resource-WebappsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).webapps;
      final arg_enterpriseId = 'foo';
      final arg_webAppId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/webApps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/webApps/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webAppId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_enterpriseId, arg_webAppId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).webapps;
      final arg_enterpriseId = 'foo';
      final arg_webAppId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/webApps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/webApps/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webAppId'),
        );

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
        final resp = convert.json.encode(buildWebApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_enterpriseId, arg_webAppId, $fields: arg_$fields);
      checkWebApp(response as api.WebApp);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).webapps;
      final arg_request = buildWebApp();
      final arg_enterpriseId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.WebApp.fromJson(json as core.Map<core.String, core.dynamic>);
        checkWebApp(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/webApps', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/webApps'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildWebApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_enterpriseId, $fields: arg_$fields);
      checkWebApp(response as api.WebApp);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).webapps;
      final arg_enterpriseId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/webApps', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/webApps'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildWebAppsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_enterpriseId, $fields: arg_$fields);
      checkWebAppsListResponse(response as api.WebAppsListResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AndroidEnterpriseApi(mock).webapps;
      final arg_request = buildWebApp();
      final arg_enterpriseId = 'foo';
      final arg_webAppId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.WebApp.fromJson(json as core.Map<core.String, core.dynamic>);
        checkWebApp(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidenterprise/v1/enterprises/'),
        );
        pathOffset += 33;
        index = path.indexOf('/webApps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_enterpriseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/webApps/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_webAppId'),
        );

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
        final resp = convert.json.encode(buildWebApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_enterpriseId, arg_webAppId,
          $fields: arg_$fields);
      checkWebApp(response as api.WebApp);
    });
  });
}
