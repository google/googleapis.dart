// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

import 'package:googleapis/devicerun/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCatalogAndroidDeviceDetails = 0;
api.CatalogAndroidDeviceDetails buildCatalogAndroidDeviceDetails() {
  final o = api.CatalogAndroidDeviceDetails();
  buildCounterCatalogAndroidDeviceDetails++;
  if (buildCounterCatalogAndroidDeviceDetails < 3) {
    o.buildType = 'foo';
    o.supportedAbis = buildUnnamed0();
  }
  buildCounterCatalogAndroidDeviceDetails--;
  return o;
}

void checkCatalogAndroidDeviceDetails(api.CatalogAndroidDeviceDetails o) {
  buildCounterCatalogAndroidDeviceDetails++;
  if (buildCounterCatalogAndroidDeviceDetails < 3) {
    unittest.expect(o.buildType!, unittest.equals('foo'));
    checkUnnamed0(o.supportedAbis!);
  }
  buildCounterCatalogAndroidDeviceDetails--;
}

core.int buildCounterCatalogAndroidxTestOrchestratorDetails = 0;
api.CatalogAndroidxTestOrchestratorDetails
buildCatalogAndroidxTestOrchestratorDetails() {
  final o = api.CatalogAndroidxTestOrchestratorDetails();
  buildCounterCatalogAndroidxTestOrchestratorDetails++;
  if (buildCounterCatalogAndroidxTestOrchestratorDetails < 3) {}
  buildCounterCatalogAndroidxTestOrchestratorDetails--;
  return o;
}

void checkCatalogAndroidxTestOrchestratorDetails(
  api.CatalogAndroidxTestOrchestratorDetails o,
) {
  buildCounterCatalogAndroidxTestOrchestratorDetails++;
  if (buildCounterCatalogAndroidxTestOrchestratorDetails < 3) {}
  buildCounterCatalogAndroidxTestOrchestratorDetails--;
}

core.int buildCounterCatalogAutomationSupport = 0;
api.CatalogAutomationSupport buildCatalogAutomationSupport() {
  final o = api.CatalogAutomationSupport();
  buildCounterCatalogAutomationSupport++;
  if (buildCounterCatalogAutomationSupport < 3) {}
  buildCounterCatalogAutomationSupport--;
  return o;
}

void checkCatalogAutomationSupport(api.CatalogAutomationSupport o) {
  buildCounterCatalogAutomationSupport++;
  if (buildCounterCatalogAutomationSupport < 3) {}
  buildCounterCatalogAutomationSupport--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed2() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed2(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.CatalogSupportedProduct> buildUnnamed3() => [
  buildCatalogSupportedProduct(),
  buildCatalogSupportedProduct(),
];

void checkUnnamed3(core.List<api.CatalogSupportedProduct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCatalogSupportedProduct(o[0]);
  checkCatalogSupportedProduct(o[1]);
}

core.int buildCounterCatalogDevice = 0;
api.CatalogDevice buildCatalogDevice() {
  final o = api.CatalogDevice();
  buildCounterCatalogDevice++;
  if (buildCounterCatalogDevice < 3) {
    o.accessDeniedReasons = buildUnnamed1();
    o.androidDetails = buildCatalogAndroidDeviceDetails();
    o.availability = buildCatalogDeviceAvailability();
    o.displayName = 'foo';
    o.formFactor = 'foo';
    o.hardwareType = 'foo';
    o.iosDetails = buildCatalogIosDeviceDetails();
    o.labInfo = buildCatalogLabInfo();
    o.labels = buildUnnamed2();
    o.lifecycle = buildCatalogLifecycle();
    o.manufacturer = 'foo';
    o.modelCode = 'foo';
    o.name = 'foo';
    o.osVersion = 'foo';
    o.platform = 'foo';
    o.primaryScreen = buildCatalogScreenMetrics();
    o.supportedProducts = buildUnnamed3();
  }
  buildCounterCatalogDevice--;
  return o;
}

void checkCatalogDevice(api.CatalogDevice o) {
  buildCounterCatalogDevice++;
  if (buildCounterCatalogDevice < 3) {
    checkUnnamed1(o.accessDeniedReasons!);
    checkCatalogAndroidDeviceDetails(o.androidDetails!);
    checkCatalogDeviceAvailability(o.availability!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.formFactor!, unittest.equals('foo'));
    unittest.expect(o.hardwareType!, unittest.equals('foo'));
    checkCatalogIosDeviceDetails(o.iosDetails!);
    checkCatalogLabInfo(o.labInfo!);
    checkUnnamed2(o.labels!);
    checkCatalogLifecycle(o.lifecycle!);
    unittest.expect(o.manufacturer!, unittest.equals('foo'));
    unittest.expect(o.modelCode!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.osVersion!, unittest.equals('foo'));
    unittest.expect(o.platform!, unittest.equals('foo'));
    checkCatalogScreenMetrics(o.primaryScreen!);
    checkUnnamed3(o.supportedProducts!);
  }
  buildCounterCatalogDevice--;
}

core.int buildCounterCatalogDeviceAvailability = 0;
api.CatalogDeviceAvailability buildCatalogDeviceAvailability() {
  final o = api.CatalogDeviceAvailability();
  buildCounterCatalogDeviceAvailability++;
  if (buildCounterCatalogDeviceAvailability < 3) {
    o.available = 'foo';
    o.capacity = 'foo';
  }
  buildCounterCatalogDeviceAvailability--;
  return o;
}

void checkCatalogDeviceAvailability(api.CatalogDeviceAvailability o) {
  buildCounterCatalogDeviceAvailability++;
  if (buildCounterCatalogDeviceAvailability < 3) {
    unittest.expect(o.available!, unittest.equals('foo'));
    unittest.expect(o.capacity!, unittest.equals('foo'));
  }
  buildCounterCatalogDeviceAvailability--;
}

core.int buildCounterCatalogDeviceStreamingSupport = 0;
api.CatalogDeviceStreamingSupport buildCatalogDeviceStreamingSupport() {
  final o = api.CatalogDeviceStreamingSupport();
  buildCounterCatalogDeviceStreamingSupport++;
  if (buildCounterCatalogDeviceStreamingSupport < 3) {
    o.minimumAndroidStudioVersion = 'foo';
  }
  buildCounterCatalogDeviceStreamingSupport--;
  return o;
}

void checkCatalogDeviceStreamingSupport(api.CatalogDeviceStreamingSupport o) {
  buildCounterCatalogDeviceStreamingSupport++;
  if (buildCounterCatalogDeviceStreamingSupport < 3) {
    unittest.expect(o.minimumAndroidStudioVersion!, unittest.equals('foo'));
  }
  buildCounterCatalogDeviceStreamingSupport--;
}

core.int buildCounterCatalogIosDeviceDetails = 0;
api.CatalogIosDeviceDetails buildCatalogIosDeviceDetails() {
  final o = api.CatalogIosDeviceDetails();
  buildCounterCatalogIosDeviceDetails++;
  if (buildCounterCatalogIosDeviceDetails < 3) {}
  buildCounterCatalogIosDeviceDetails--;
  return o;
}

void checkCatalogIosDeviceDetails(api.CatalogIosDeviceDetails o) {
  buildCounterCatalogIosDeviceDetails++;
  if (buildCounterCatalogIosDeviceDetails < 3) {}
  buildCounterCatalogIosDeviceDetails--;
}

core.int buildCounterCatalogLabInfo = 0;
api.CatalogLabInfo buildCatalogLabInfo() {
  final o = api.CatalogLabInfo();
  buildCounterCatalogLabInfo++;
  if (buildCounterCatalogLabInfo < 3) {
    o.displayName = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterCatalogLabInfo--;
  return o;
}

void checkCatalogLabInfo(api.CatalogLabInfo o) {
  buildCounterCatalogLabInfo++;
  if (buildCounterCatalogLabInfo < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
  }
  buildCounterCatalogLabInfo--;
}

core.int buildCounterCatalogLifecycle = 0;
api.CatalogLifecycle buildCatalogLifecycle() {
  final o = api.CatalogLifecycle();
  buildCounterCatalogLifecycle++;
  if (buildCounterCatalogLifecycle < 3) {
    o.removalDate = buildDate();
    o.state = 'foo';
  }
  buildCounterCatalogLifecycle--;
  return o;
}

void checkCatalogLifecycle(api.CatalogLifecycle o) {
  buildCounterCatalogLifecycle++;
  if (buildCounterCatalogLifecycle < 3) {
    checkDate(o.removalDate!);
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterCatalogLifecycle--;
}

core.List<api.CatalogDevice> buildUnnamed4() => [
  buildCatalogDevice(),
  buildCatalogDevice(),
];

void checkUnnamed4(core.List<api.CatalogDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCatalogDevice(o[0]);
  checkCatalogDevice(o[1]);
}

core.int buildCounterCatalogListDevicesResponse = 0;
api.CatalogListDevicesResponse buildCatalogListDevicesResponse() {
  final o = api.CatalogListDevicesResponse();
  buildCounterCatalogListDevicesResponse++;
  if (buildCounterCatalogListDevicesResponse < 3) {
    o.devices = buildUnnamed4();
    o.nextPageToken = 'foo';
  }
  buildCounterCatalogListDevicesResponse--;
  return o;
}

void checkCatalogListDevicesResponse(api.CatalogListDevicesResponse o) {
  buildCounterCatalogListDevicesResponse++;
  if (buildCounterCatalogListDevicesResponse < 3) {
    checkUnnamed4(o.devices!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterCatalogListDevicesResponse--;
}

core.List<api.CatalogSoftwareVersion> buildUnnamed5() => [
  buildCatalogSoftwareVersion(),
  buildCatalogSoftwareVersion(),
];

void checkUnnamed5(core.List<api.CatalogSoftwareVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCatalogSoftwareVersion(o[0]);
  checkCatalogSoftwareVersion(o[1]);
}

core.int buildCounterCatalogListSoftwareVersionsResponse = 0;
api.CatalogListSoftwareVersionsResponse
buildCatalogListSoftwareVersionsResponse() {
  final o = api.CatalogListSoftwareVersionsResponse();
  buildCounterCatalogListSoftwareVersionsResponse++;
  if (buildCounterCatalogListSoftwareVersionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.softwareVersions = buildUnnamed5();
  }
  buildCounterCatalogListSoftwareVersionsResponse--;
  return o;
}

void checkCatalogListSoftwareVersionsResponse(
  api.CatalogListSoftwareVersionsResponse o,
) {
  buildCounterCatalogListSoftwareVersionsResponse++;
  if (buildCounterCatalogListSoftwareVersionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed5(o.softwareVersions!);
  }
  buildCounterCatalogListSoftwareVersionsResponse--;
}

core.int buildCounterCatalogScreenMetrics = 0;
api.CatalogScreenMetrics buildCatalogScreenMetrics() {
  final o = api.CatalogScreenMetrics();
  buildCounterCatalogScreenMetrics++;
  if (buildCounterCatalogScreenMetrics < 3) {
    o.densityDpi = 42;
    o.heightPx = 42;
    o.widthPx = 42;
  }
  buildCounterCatalogScreenMetrics--;
  return o;
}

void checkCatalogScreenMetrics(api.CatalogScreenMetrics o) {
  buildCounterCatalogScreenMetrics++;
  if (buildCounterCatalogScreenMetrics < 3) {
    unittest.expect(o.densityDpi!, unittest.equals(42));
    unittest.expect(o.heightPx!, unittest.equals(42));
    unittest.expect(o.widthPx!, unittest.equals(42));
  }
  buildCounterCatalogScreenMetrics--;
}

core.int buildCounterCatalogSoftwareVersion = 0;
api.CatalogSoftwareVersion buildCatalogSoftwareVersion() {
  final o = api.CatalogSoftwareVersion();
  buildCounterCatalogSoftwareVersion++;
  if (buildCounterCatalogSoftwareVersion < 3) {
    o.androidxTestOrchestratorDetails =
        buildCatalogAndroidxTestOrchestratorDetails();
    o.displayName = 'foo';
    o.isDefault = true;
    o.lifecycle = buildCatalogLifecycle();
    o.name = 'foo';
    o.softwareType = 'foo';
    o.version = 'foo';
    o.xcodeDetails = buildCatalogXcodeDetails();
  }
  buildCounterCatalogSoftwareVersion--;
  return o;
}

void checkCatalogSoftwareVersion(api.CatalogSoftwareVersion o) {
  buildCounterCatalogSoftwareVersion++;
  if (buildCounterCatalogSoftwareVersion < 3) {
    checkCatalogAndroidxTestOrchestratorDetails(
      o.androidxTestOrchestratorDetails!,
    );
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.isDefault!, unittest.isTrue);
    checkCatalogLifecycle(o.lifecycle!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.softwareType!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
    checkCatalogXcodeDetails(o.xcodeDetails!);
  }
  buildCounterCatalogSoftwareVersion--;
}

core.int buildCounterCatalogSupportedProduct = 0;
api.CatalogSupportedProduct buildCatalogSupportedProduct() {
  final o = api.CatalogSupportedProduct();
  buildCounterCatalogSupportedProduct++;
  if (buildCounterCatalogSupportedProduct < 3) {
    o.automation = buildCatalogAutomationSupport();
    o.deviceStreaming = buildCatalogDeviceStreamingSupport();
  }
  buildCounterCatalogSupportedProduct--;
  return o;
}

void checkCatalogSupportedProduct(api.CatalogSupportedProduct o) {
  buildCounterCatalogSupportedProduct++;
  if (buildCounterCatalogSupportedProduct < 3) {
    checkCatalogAutomationSupport(o.automation!);
    checkCatalogDeviceStreamingSupport(o.deviceStreaming!);
  }
  buildCounterCatalogSupportedProduct--;
}

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCatalogXcodeDetails = 0;
api.CatalogXcodeDetails buildCatalogXcodeDetails() {
  final o = api.CatalogXcodeDetails();
  buildCounterCatalogXcodeDetails++;
  if (buildCounterCatalogXcodeDetails < 3) {
    o.supportedIosVersions = buildUnnamed6();
  }
  buildCounterCatalogXcodeDetails--;
  return o;
}

void checkCatalogXcodeDetails(api.CatalogXcodeDetails o) {
  buildCounterCatalogXcodeDetails++;
  if (buildCounterCatalogXcodeDetails < 3) {
    checkUnnamed6(o.supportedIosVersions!);
  }
  buildCounterCatalogXcodeDetails--;
}

core.int buildCounterDate = 0;
api.Date buildDate() {
  final o = api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

void checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(o.day!, unittest.equals(42));
    unittest.expect(o.month!, unittest.equals(42));
    unittest.expect(o.year!, unittest.equals(42));
  }
  buildCounterDate--;
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

core.int buildCounterGoogleLongrunningCancelOperationRequest = 0;
api.GoogleLongrunningCancelOperationRequest
buildGoogleLongrunningCancelOperationRequest() {
  final o = api.GoogleLongrunningCancelOperationRequest();
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
  return o;
}

void checkGoogleLongrunningCancelOperationRequest(
  api.GoogleLongrunningCancelOperationRequest o,
) {
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed7() => [
  buildGoogleLongrunningOperation(),
  buildGoogleLongrunningOperation(),
];

void checkUnnamed7(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
buildGoogleLongrunningListOperationsResponse() {
  final o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed7();
    o.unreachable = buildUnnamed8();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
  api.GoogleLongrunningListOperationsResponse o,
) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed7(o.operations!);
    checkUnnamed8(o.unreachable!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed9() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed9(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed10() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed10(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed9();
    o.name = 'foo';
    o.response = buildUnnamed10();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed9(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed10(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.Map<core.String, core.Object?> buildUnnamed11() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed11(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed12() => [
  buildUnnamed11(),
  buildUnnamed11(),
];

void checkUnnamed12(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed11(o[0]);
  checkUnnamed11(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed12();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed12(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.List<api.Location> buildUnnamed13() => [buildLocation(), buildLocation()];

void checkUnnamed13(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed13();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed13(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed14() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed14(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed15() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed15(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed14();
    o.locationId = 'foo';
    o.metadata = buildUnnamed15();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed14(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed15(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-CatalogAndroidDeviceDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCatalogAndroidDeviceDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CatalogAndroidDeviceDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCatalogAndroidDeviceDetails(od);
    });
  });

  unittest.group('obj-schema-CatalogAndroidxTestOrchestratorDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCatalogAndroidxTestOrchestratorDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CatalogAndroidxTestOrchestratorDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCatalogAndroidxTestOrchestratorDetails(od);
    });
  });

  unittest.group('obj-schema-CatalogAutomationSupport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCatalogAutomationSupport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CatalogAutomationSupport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCatalogAutomationSupport(od);
    });
  });

  unittest.group('obj-schema-CatalogDevice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCatalogDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CatalogDevice.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCatalogDevice(od);
    });
  });

  unittest.group('obj-schema-CatalogDeviceAvailability', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCatalogDeviceAvailability();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CatalogDeviceAvailability.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCatalogDeviceAvailability(od);
    });
  });

  unittest.group('obj-schema-CatalogDeviceStreamingSupport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCatalogDeviceStreamingSupport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CatalogDeviceStreamingSupport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCatalogDeviceStreamingSupport(od);
    });
  });

  unittest.group('obj-schema-CatalogIosDeviceDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCatalogIosDeviceDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CatalogIosDeviceDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCatalogIosDeviceDetails(od);
    });
  });

  unittest.group('obj-schema-CatalogLabInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCatalogLabInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CatalogLabInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCatalogLabInfo(od);
    });
  });

  unittest.group('obj-schema-CatalogLifecycle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCatalogLifecycle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CatalogLifecycle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCatalogLifecycle(od);
    });
  });

  unittest.group('obj-schema-CatalogListDevicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCatalogListDevicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CatalogListDevicesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCatalogListDevicesResponse(od);
    });
  });

  unittest.group('obj-schema-CatalogListSoftwareVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCatalogListSoftwareVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CatalogListSoftwareVersionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCatalogListSoftwareVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-CatalogScreenMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCatalogScreenMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CatalogScreenMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCatalogScreenMetrics(od);
    });
  });

  unittest.group('obj-schema-CatalogSoftwareVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCatalogSoftwareVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CatalogSoftwareVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCatalogSoftwareVersion(od);
    });
  });

  unittest.group('obj-schema-CatalogSupportedProduct', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCatalogSupportedProduct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CatalogSupportedProduct.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCatalogSupportedProduct(od);
    });
  });

  unittest.group('obj-schema-CatalogXcodeDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCatalogXcodeDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CatalogXcodeDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCatalogXcodeDetails(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Date.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDate(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Empty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningCancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningCancelOperationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningListOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Location.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocation(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeviceRunApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeviceRunApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed16();
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['extraLocationTypes']!,
            unittest.equals(arg_extraLocationTypes),
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListLocationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        extraLocationTypes: arg_extraLocationTypes,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDevicesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeviceRunApi(mock).projects.locations.devices;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCatalogDevice());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCatalogDevice(response as api.CatalogDevice);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeviceRunApi(mock).projects.locations.devices;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCatalogListDevicesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkCatalogListDevicesResponse(
        response as api.CatalogListDevicesResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DeviceRunApi(mock).projects.locations.operations;
      final arg_request = buildGoogleLongrunningCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleLongrunningCancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleLongrunningCancelOperationRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DeviceRunApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeviceRunApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeviceRunApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_returnPartialSuccess = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleLongrunningListOperationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningListOperationsResponse(
        response as api.GoogleLongrunningListOperationsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsSoftwareVersionsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeviceRunApi(mock).projects.locations.softwareVersions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCatalogSoftwareVersion());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCatalogSoftwareVersion(response as api.CatalogSoftwareVersion);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeviceRunApi(mock).projects.locations.softwareVersions;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildCatalogListSoftwareVersionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkCatalogListSoftwareVersionsResponse(
        response as api.CatalogListSoftwareVersionsResponse,
      );
    });
  });
}
