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

import 'package:googleapis/admin/directory_v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAlias = 0;
api.Alias buildAlias() {
  final o = api.Alias();
  buildCounterAlias++;
  if (buildCounterAlias < 3) {
    o.alias = 'foo';
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.primaryEmail = 'foo';
  }
  buildCounterAlias--;
  return o;
}

void checkAlias(api.Alias o) {
  buildCounterAlias++;
  if (buildCounterAlias < 3) {
    unittest.expect(
      o.alias!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primaryEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterAlias--;
}

core.List<core.Object?> buildUnnamed0() => [
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    ];

void checkUnnamed0(core.List<core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map;
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
  var casted2 = (o[1]) as core.Map;
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

core.int buildCounterAliases = 0;
api.Aliases buildAliases() {
  final o = api.Aliases();
  buildCounterAliases++;
  if (buildCounterAliases < 3) {
    o.aliases = buildUnnamed0();
    o.etag = 'foo';
    o.kind = 'foo';
  }
  buildCounterAliases--;
  return o;
}

void checkAliases(api.Aliases o) {
  buildCounterAliases++;
  if (buildCounterAliases < 3) {
    checkUnnamed0(o.aliases!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterAliases--;
}

core.int buildCounterAsp = 0;
api.Asp buildAsp() {
  final o = api.Asp();
  buildCounterAsp++;
  if (buildCounterAsp < 3) {
    o.codeId = 42;
    o.creationTime = 'foo';
    o.etag = 'foo';
    o.kind = 'foo';
    o.lastTimeUsed = 'foo';
    o.name = 'foo';
    o.userKey = 'foo';
  }
  buildCounterAsp--;
  return o;
}

void checkAsp(api.Asp o) {
  buildCounterAsp++;
  if (buildCounterAsp < 3) {
    unittest.expect(
      o.codeId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastTimeUsed!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterAsp--;
}

core.List<api.Asp> buildUnnamed1() => [
      buildAsp(),
      buildAsp(),
    ];

void checkUnnamed1(core.List<api.Asp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAsp(o[0]);
  checkAsp(o[1]);
}

core.int buildCounterAsps = 0;
api.Asps buildAsps() {
  final o = api.Asps();
  buildCounterAsps++;
  if (buildCounterAsps < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed1();
    o.kind = 'foo';
  }
  buildCounterAsps--;
  return o;
}

void checkAsps(api.Asps o) {
  buildCounterAsps++;
  if (buildCounterAsps < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterAsps--;
}

core.int buildCounterAuxiliaryMessage = 0;
api.AuxiliaryMessage buildAuxiliaryMessage() {
  final o = api.AuxiliaryMessage();
  buildCounterAuxiliaryMessage++;
  if (buildCounterAuxiliaryMessage < 3) {
    o.auxiliaryMessage = 'foo';
    o.fieldMask = 'foo';
    o.severity = 'foo';
  }
  buildCounterAuxiliaryMessage--;
  return o;
}

void checkAuxiliaryMessage(api.AuxiliaryMessage o) {
  buildCounterAuxiliaryMessage++;
  if (buildCounterAuxiliaryMessage < 3) {
    unittest.expect(
      o.auxiliaryMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fieldMask!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuxiliaryMessage--;
}

core.List<api.CreatePrinterRequest> buildUnnamed2() => [
      buildCreatePrinterRequest(),
      buildCreatePrinterRequest(),
    ];

void checkUnnamed2(core.List<api.CreatePrinterRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreatePrinterRequest(o[0]);
  checkCreatePrinterRequest(o[1]);
}

core.int buildCounterBatchCreatePrintersRequest = 0;
api.BatchCreatePrintersRequest buildBatchCreatePrintersRequest() {
  final o = api.BatchCreatePrintersRequest();
  buildCounterBatchCreatePrintersRequest++;
  if (buildCounterBatchCreatePrintersRequest < 3) {
    o.requests = buildUnnamed2();
  }
  buildCounterBatchCreatePrintersRequest--;
  return o;
}

void checkBatchCreatePrintersRequest(api.BatchCreatePrintersRequest o) {
  buildCounterBatchCreatePrintersRequest++;
  if (buildCounterBatchCreatePrintersRequest < 3) {
    checkUnnamed2(o.requests!);
  }
  buildCounterBatchCreatePrintersRequest--;
}

core.List<api.FailureInfo> buildUnnamed3() => [
      buildFailureInfo(),
      buildFailureInfo(),
    ];

void checkUnnamed3(core.List<api.FailureInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFailureInfo(o[0]);
  checkFailureInfo(o[1]);
}

core.List<api.Printer> buildUnnamed4() => [
      buildPrinter(),
      buildPrinter(),
    ];

void checkUnnamed4(core.List<api.Printer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrinter(o[0]);
  checkPrinter(o[1]);
}

core.int buildCounterBatchCreatePrintersResponse = 0;
api.BatchCreatePrintersResponse buildBatchCreatePrintersResponse() {
  final o = api.BatchCreatePrintersResponse();
  buildCounterBatchCreatePrintersResponse++;
  if (buildCounterBatchCreatePrintersResponse < 3) {
    o.failures = buildUnnamed3();
    o.printers = buildUnnamed4();
  }
  buildCounterBatchCreatePrintersResponse--;
  return o;
}

void checkBatchCreatePrintersResponse(api.BatchCreatePrintersResponse o) {
  buildCounterBatchCreatePrintersResponse++;
  if (buildCounterBatchCreatePrintersResponse < 3) {
    checkUnnamed3(o.failures!);
    checkUnnamed4(o.printers!);
  }
  buildCounterBatchCreatePrintersResponse--;
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

core.int buildCounterBatchDeletePrintersRequest = 0;
api.BatchDeletePrintersRequest buildBatchDeletePrintersRequest() {
  final o = api.BatchDeletePrintersRequest();
  buildCounterBatchDeletePrintersRequest++;
  if (buildCounterBatchDeletePrintersRequest < 3) {
    o.printerIds = buildUnnamed5();
  }
  buildCounterBatchDeletePrintersRequest--;
  return o;
}

void checkBatchDeletePrintersRequest(api.BatchDeletePrintersRequest o) {
  buildCounterBatchDeletePrintersRequest++;
  if (buildCounterBatchDeletePrintersRequest < 3) {
    checkUnnamed5(o.printerIds!);
  }
  buildCounterBatchDeletePrintersRequest--;
}

core.List<api.FailureInfo> buildUnnamed6() => [
      buildFailureInfo(),
      buildFailureInfo(),
    ];

void checkUnnamed6(core.List<api.FailureInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFailureInfo(o[0]);
  checkFailureInfo(o[1]);
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

core.int buildCounterBatchDeletePrintersResponse = 0;
api.BatchDeletePrintersResponse buildBatchDeletePrintersResponse() {
  final o = api.BatchDeletePrintersResponse();
  buildCounterBatchDeletePrintersResponse++;
  if (buildCounterBatchDeletePrintersResponse < 3) {
    o.failedPrinters = buildUnnamed6();
    o.printerIds = buildUnnamed7();
  }
  buildCounterBatchDeletePrintersResponse--;
  return o;
}

void checkBatchDeletePrintersResponse(api.BatchDeletePrintersResponse o) {
  buildCounterBatchDeletePrintersResponse++;
  if (buildCounterBatchDeletePrintersResponse < 3) {
    checkUnnamed6(o.failedPrinters!);
    checkUnnamed7(o.printerIds!);
  }
  buildCounterBatchDeletePrintersResponse--;
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

core.int buildCounterBuilding = 0;
api.Building buildBuilding() {
  final o = api.Building();
  buildCounterBuilding++;
  if (buildCounterBuilding < 3) {
    o.address = buildBuildingAddress();
    o.buildingId = 'foo';
    o.buildingName = 'foo';
    o.coordinates = buildBuildingCoordinates();
    o.description = 'foo';
    o.etags = 'foo';
    o.floorNames = buildUnnamed8();
    o.kind = 'foo';
  }
  buildCounterBuilding--;
  return o;
}

void checkBuilding(api.Building o) {
  buildCounterBuilding++;
  if (buildCounterBuilding < 3) {
    checkBuildingAddress(o.address!);
    unittest.expect(
      o.buildingId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buildingName!,
      unittest.equals('foo'),
    );
    checkBuildingCoordinates(o.coordinates!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etags!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.floorNames!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuilding--;
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

core.int buildCounterBuildingAddress = 0;
api.BuildingAddress buildBuildingAddress() {
  final o = api.BuildingAddress();
  buildCounterBuildingAddress++;
  if (buildCounterBuildingAddress < 3) {
    o.addressLines = buildUnnamed9();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.postalCode = 'foo';
    o.regionCode = 'foo';
    o.sublocality = 'foo';
  }
  buildCounterBuildingAddress--;
  return o;
}

void checkBuildingAddress(api.BuildingAddress o) {
  buildCounterBuildingAddress++;
  if (buildCounterBuildingAddress < 3) {
    checkUnnamed9(o.addressLines!);
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
      o.postalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sublocality!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuildingAddress--;
}

core.int buildCounterBuildingCoordinates = 0;
api.BuildingCoordinates buildBuildingCoordinates() {
  final o = api.BuildingCoordinates();
  buildCounterBuildingCoordinates++;
  if (buildCounterBuildingCoordinates < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterBuildingCoordinates--;
  return o;
}

void checkBuildingCoordinates(api.BuildingCoordinates o) {
  buildCounterBuildingCoordinates++;
  if (buildCounterBuildingCoordinates < 3) {
    unittest.expect(
      o.latitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.longitude!,
      unittest.equals(42.0),
    );
  }
  buildCounterBuildingCoordinates--;
}

core.List<api.Building> buildUnnamed10() => [
      buildBuilding(),
      buildBuilding(),
    ];

void checkUnnamed10(core.List<api.Building> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuilding(o[0]);
  checkBuilding(o[1]);
}

core.int buildCounterBuildings = 0;
api.Buildings buildBuildings() {
  final o = api.Buildings();
  buildCounterBuildings++;
  if (buildCounterBuildings < 3) {
    o.buildings = buildUnnamed10();
    o.etag = 'foo';
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterBuildings--;
  return o;
}

void checkBuildings(api.Buildings o) {
  buildCounterBuildings++;
  if (buildCounterBuildings < 3) {
    checkUnnamed10(o.buildings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuildings--;
}

core.int buildCounterCalendarResource = 0;
api.CalendarResource buildCalendarResource() {
  final o = api.CalendarResource();
  buildCounterCalendarResource++;
  if (buildCounterCalendarResource < 3) {
    o.buildingId = 'foo';
    o.capacity = 42;
    o.etags = 'foo';
    o.featureInstances = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.floorName = 'foo';
    o.floorSection = 'foo';
    o.generatedResourceName = 'foo';
    o.kind = 'foo';
    o.resourceCategory = 'foo';
    o.resourceDescription = 'foo';
    o.resourceEmail = 'foo';
    o.resourceId = 'foo';
    o.resourceName = 'foo';
    o.resourceType = 'foo';
    o.userVisibleDescription = 'foo';
  }
  buildCounterCalendarResource--;
  return o;
}

void checkCalendarResource(api.CalendarResource o) {
  buildCounterCalendarResource++;
  if (buildCounterCalendarResource < 3) {
    unittest.expect(
      o.buildingId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.capacity!,
      unittest.equals(42),
    );
    unittest.expect(
      o.etags!,
      unittest.equals('foo'),
    );
    var casted3 = (o.featureInstances!) as core.Map;
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
    unittest.expect(
      o.floorName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.floorSection!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.generatedResourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceCategory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userVisibleDescription!,
      unittest.equals('foo'),
    );
  }
  buildCounterCalendarResource--;
}

core.List<api.CalendarResource> buildUnnamed11() => [
      buildCalendarResource(),
      buildCalendarResource(),
    ];

void checkUnnamed11(core.List<api.CalendarResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCalendarResource(o[0]);
  checkCalendarResource(o[1]);
}

core.int buildCounterCalendarResources = 0;
api.CalendarResources buildCalendarResources() {
  final o = api.CalendarResources();
  buildCounterCalendarResources++;
  if (buildCounterCalendarResources < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed11();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterCalendarResources--;
  return o;
}

void checkCalendarResources(api.CalendarResources o) {
  buildCounterCalendarResources++;
  if (buildCounterCalendarResources < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterCalendarResources--;
}

core.Map<core.String, core.String> buildUnnamed12() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed12(core.Map<core.String, core.String> o) {
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

core.int buildCounterChannel = 0;
api.Channel buildChannel() {
  final o = api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.address = 'foo';
    o.expiration = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.params = buildUnnamed12();
    o.payload = true;
    o.resourceId = 'foo';
    o.resourceUri = 'foo';
    o.token = 'foo';
    o.type = 'foo';
  }
  buildCounterChannel--;
  return o;
}

void checkChannel(api.Channel o) {
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expiration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.params!);
    unittest.expect(o.payload!, unittest.isTrue);
    unittest.expect(
      o.resourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterChannel--;
}

core.int buildCounterChromeOsDeviceActiveTimeRanges = 0;
api.ChromeOsDeviceActiveTimeRanges buildChromeOsDeviceActiveTimeRanges() {
  final o = api.ChromeOsDeviceActiveTimeRanges();
  buildCounterChromeOsDeviceActiveTimeRanges++;
  if (buildCounterChromeOsDeviceActiveTimeRanges < 3) {
    o.activeTime = 42;
    o.date = core.DateTime.parse('2002-02-27T14:01:02Z');
  }
  buildCounterChromeOsDeviceActiveTimeRanges--;
  return o;
}

void checkChromeOsDeviceActiveTimeRanges(api.ChromeOsDeviceActiveTimeRanges o) {
  buildCounterChromeOsDeviceActiveTimeRanges++;
  if (buildCounterChromeOsDeviceActiveTimeRanges < 3) {
    unittest.expect(
      o.activeTime!,
      unittest.equals(42),
    );
    unittest.expect(
      o.date!,
      unittest.equals(core.DateTime.parse('2002-02-27T00:00:00')),
    );
  }
  buildCounterChromeOsDeviceActiveTimeRanges--;
}

core.List<api.ChromeOsDeviceActiveTimeRanges> buildUnnamed13() => [
      buildChromeOsDeviceActiveTimeRanges(),
      buildChromeOsDeviceActiveTimeRanges(),
    ];

void checkUnnamed13(core.List<api.ChromeOsDeviceActiveTimeRanges> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceActiveTimeRanges(o[0]);
  checkChromeOsDeviceActiveTimeRanges(o[1]);
}

core.int buildCounterChromeOsDeviceCpuInfoLogicalCpusCStates = 0;
api.ChromeOsDeviceCpuInfoLogicalCpusCStates
    buildChromeOsDeviceCpuInfoLogicalCpusCStates() {
  final o = api.ChromeOsDeviceCpuInfoLogicalCpusCStates();
  buildCounterChromeOsDeviceCpuInfoLogicalCpusCStates++;
  if (buildCounterChromeOsDeviceCpuInfoLogicalCpusCStates < 3) {
    o.displayName = 'foo';
    o.sessionDuration = 'foo';
  }
  buildCounterChromeOsDeviceCpuInfoLogicalCpusCStates--;
  return o;
}

void checkChromeOsDeviceCpuInfoLogicalCpusCStates(
    api.ChromeOsDeviceCpuInfoLogicalCpusCStates o) {
  buildCounterChromeOsDeviceCpuInfoLogicalCpusCStates++;
  if (buildCounterChromeOsDeviceCpuInfoLogicalCpusCStates < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sessionDuration!,
      unittest.equals('foo'),
    );
  }
  buildCounterChromeOsDeviceCpuInfoLogicalCpusCStates--;
}

core.List<api.ChromeOsDeviceCpuInfoLogicalCpusCStates> buildUnnamed14() => [
      buildChromeOsDeviceCpuInfoLogicalCpusCStates(),
      buildChromeOsDeviceCpuInfoLogicalCpusCStates(),
    ];

void checkUnnamed14(core.List<api.ChromeOsDeviceCpuInfoLogicalCpusCStates> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceCpuInfoLogicalCpusCStates(o[0]);
  checkChromeOsDeviceCpuInfoLogicalCpusCStates(o[1]);
}

core.int buildCounterChromeOsDeviceCpuInfoLogicalCpus = 0;
api.ChromeOsDeviceCpuInfoLogicalCpus buildChromeOsDeviceCpuInfoLogicalCpus() {
  final o = api.ChromeOsDeviceCpuInfoLogicalCpus();
  buildCounterChromeOsDeviceCpuInfoLogicalCpus++;
  if (buildCounterChromeOsDeviceCpuInfoLogicalCpus < 3) {
    o.cStates = buildUnnamed14();
    o.currentScalingFrequencyKhz = 42;
    o.idleDuration = 'foo';
    o.maxScalingFrequencyKhz = 42;
  }
  buildCounterChromeOsDeviceCpuInfoLogicalCpus--;
  return o;
}

void checkChromeOsDeviceCpuInfoLogicalCpus(
    api.ChromeOsDeviceCpuInfoLogicalCpus o) {
  buildCounterChromeOsDeviceCpuInfoLogicalCpus++;
  if (buildCounterChromeOsDeviceCpuInfoLogicalCpus < 3) {
    checkUnnamed14(o.cStates!);
    unittest.expect(
      o.currentScalingFrequencyKhz!,
      unittest.equals(42),
    );
    unittest.expect(
      o.idleDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxScalingFrequencyKhz!,
      unittest.equals(42),
    );
  }
  buildCounterChromeOsDeviceCpuInfoLogicalCpus--;
}

core.List<api.ChromeOsDeviceCpuInfoLogicalCpus> buildUnnamed15() => [
      buildChromeOsDeviceCpuInfoLogicalCpus(),
      buildChromeOsDeviceCpuInfoLogicalCpus(),
    ];

void checkUnnamed15(core.List<api.ChromeOsDeviceCpuInfoLogicalCpus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceCpuInfoLogicalCpus(o[0]);
  checkChromeOsDeviceCpuInfoLogicalCpus(o[1]);
}

core.int buildCounterChromeOsDeviceCpuInfo = 0;
api.ChromeOsDeviceCpuInfo buildChromeOsDeviceCpuInfo() {
  final o = api.ChromeOsDeviceCpuInfo();
  buildCounterChromeOsDeviceCpuInfo++;
  if (buildCounterChromeOsDeviceCpuInfo < 3) {
    o.architecture = 'foo';
    o.logicalCpus = buildUnnamed15();
    o.maxClockSpeedKhz = 42;
    o.model = 'foo';
  }
  buildCounterChromeOsDeviceCpuInfo--;
  return o;
}

void checkChromeOsDeviceCpuInfo(api.ChromeOsDeviceCpuInfo o) {
  buildCounterChromeOsDeviceCpuInfo++;
  if (buildCounterChromeOsDeviceCpuInfo < 3) {
    unittest.expect(
      o.architecture!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.logicalCpus!);
    unittest.expect(
      o.maxClockSpeedKhz!,
      unittest.equals(42),
    );
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
  }
  buildCounterChromeOsDeviceCpuInfo--;
}

core.List<api.ChromeOsDeviceCpuInfo> buildUnnamed16() => [
      buildChromeOsDeviceCpuInfo(),
      buildChromeOsDeviceCpuInfo(),
    ];

void checkUnnamed16(core.List<api.ChromeOsDeviceCpuInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceCpuInfo(o[0]);
  checkChromeOsDeviceCpuInfo(o[1]);
}

core.int buildCounterChromeOsDeviceCpuStatusReportsCpuTemperatureInfo = 0;
api.ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo
    buildChromeOsDeviceCpuStatusReportsCpuTemperatureInfo() {
  final o = api.ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo();
  buildCounterChromeOsDeviceCpuStatusReportsCpuTemperatureInfo++;
  if (buildCounterChromeOsDeviceCpuStatusReportsCpuTemperatureInfo < 3) {
    o.label = 'foo';
    o.temperature = 42;
  }
  buildCounterChromeOsDeviceCpuStatusReportsCpuTemperatureInfo--;
  return o;
}

void checkChromeOsDeviceCpuStatusReportsCpuTemperatureInfo(
    api.ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo o) {
  buildCounterChromeOsDeviceCpuStatusReportsCpuTemperatureInfo++;
  if (buildCounterChromeOsDeviceCpuStatusReportsCpuTemperatureInfo < 3) {
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.temperature!,
      unittest.equals(42),
    );
  }
  buildCounterChromeOsDeviceCpuStatusReportsCpuTemperatureInfo--;
}

core.List<api.ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo>
    buildUnnamed17() => [
          buildChromeOsDeviceCpuStatusReportsCpuTemperatureInfo(),
          buildChromeOsDeviceCpuStatusReportsCpuTemperatureInfo(),
        ];

void checkUnnamed17(
    core.List<api.ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceCpuStatusReportsCpuTemperatureInfo(o[0]);
  checkChromeOsDeviceCpuStatusReportsCpuTemperatureInfo(o[1]);
}

core.List<core.int> buildUnnamed18() => [
      42,
      42,
    ];

void checkUnnamed18(core.List<core.int> o) {
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

core.int buildCounterChromeOsDeviceCpuStatusReports = 0;
api.ChromeOsDeviceCpuStatusReports buildChromeOsDeviceCpuStatusReports() {
  final o = api.ChromeOsDeviceCpuStatusReports();
  buildCounterChromeOsDeviceCpuStatusReports++;
  if (buildCounterChromeOsDeviceCpuStatusReports < 3) {
    o.cpuTemperatureInfo = buildUnnamed17();
    o.cpuUtilizationPercentageInfo = buildUnnamed18();
    o.reportTime = core.DateTime.parse('2002-02-27T14:01:02Z');
  }
  buildCounterChromeOsDeviceCpuStatusReports--;
  return o;
}

void checkChromeOsDeviceCpuStatusReports(api.ChromeOsDeviceCpuStatusReports o) {
  buildCounterChromeOsDeviceCpuStatusReports++;
  if (buildCounterChromeOsDeviceCpuStatusReports < 3) {
    checkUnnamed17(o.cpuTemperatureInfo!);
    checkUnnamed18(o.cpuUtilizationPercentageInfo!);
    unittest.expect(
      o.reportTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
  }
  buildCounterChromeOsDeviceCpuStatusReports--;
}

core.List<api.ChromeOsDeviceCpuStatusReports> buildUnnamed19() => [
      buildChromeOsDeviceCpuStatusReports(),
      buildChromeOsDeviceCpuStatusReports(),
    ];

void checkUnnamed19(core.List<api.ChromeOsDeviceCpuStatusReports> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceCpuStatusReports(o[0]);
  checkChromeOsDeviceCpuStatusReports(o[1]);
}

core.int buildCounterChromeOsDeviceDeviceFiles = 0;
api.ChromeOsDeviceDeviceFiles buildChromeOsDeviceDeviceFiles() {
  final o = api.ChromeOsDeviceDeviceFiles();
  buildCounterChromeOsDeviceDeviceFiles++;
  if (buildCounterChromeOsDeviceDeviceFiles < 3) {
    o.createTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.downloadUrl = 'foo';
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterChromeOsDeviceDeviceFiles--;
  return o;
}

void checkChromeOsDeviceDeviceFiles(api.ChromeOsDeviceDeviceFiles o) {
  buildCounterChromeOsDeviceDeviceFiles++;
  if (buildCounterChromeOsDeviceDeviceFiles < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.downloadUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterChromeOsDeviceDeviceFiles--;
}

core.List<api.ChromeOsDeviceDeviceFiles> buildUnnamed20() => [
      buildChromeOsDeviceDeviceFiles(),
      buildChromeOsDeviceDeviceFiles(),
    ];

void checkUnnamed20(core.List<api.ChromeOsDeviceDeviceFiles> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceDeviceFiles(o[0]);
  checkChromeOsDeviceDeviceFiles(o[1]);
}

core.int buildCounterChromeOsDeviceDiskVolumeReportsVolumeInfo = 0;
api.ChromeOsDeviceDiskVolumeReportsVolumeInfo
    buildChromeOsDeviceDiskVolumeReportsVolumeInfo() {
  final o = api.ChromeOsDeviceDiskVolumeReportsVolumeInfo();
  buildCounterChromeOsDeviceDiskVolumeReportsVolumeInfo++;
  if (buildCounterChromeOsDeviceDiskVolumeReportsVolumeInfo < 3) {
    o.storageFree = 'foo';
    o.storageTotal = 'foo';
    o.volumeId = 'foo';
  }
  buildCounterChromeOsDeviceDiskVolumeReportsVolumeInfo--;
  return o;
}

void checkChromeOsDeviceDiskVolumeReportsVolumeInfo(
    api.ChromeOsDeviceDiskVolumeReportsVolumeInfo o) {
  buildCounterChromeOsDeviceDiskVolumeReportsVolumeInfo++;
  if (buildCounterChromeOsDeviceDiskVolumeReportsVolumeInfo < 3) {
    unittest.expect(
      o.storageFree!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageTotal!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.volumeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterChromeOsDeviceDiskVolumeReportsVolumeInfo--;
}

core.List<api.ChromeOsDeviceDiskVolumeReportsVolumeInfo> buildUnnamed21() => [
      buildChromeOsDeviceDiskVolumeReportsVolumeInfo(),
      buildChromeOsDeviceDiskVolumeReportsVolumeInfo(),
    ];

void checkUnnamed21(
    core.List<api.ChromeOsDeviceDiskVolumeReportsVolumeInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceDiskVolumeReportsVolumeInfo(o[0]);
  checkChromeOsDeviceDiskVolumeReportsVolumeInfo(o[1]);
}

core.int buildCounterChromeOsDeviceDiskVolumeReports = 0;
api.ChromeOsDeviceDiskVolumeReports buildChromeOsDeviceDiskVolumeReports() {
  final o = api.ChromeOsDeviceDiskVolumeReports();
  buildCounterChromeOsDeviceDiskVolumeReports++;
  if (buildCounterChromeOsDeviceDiskVolumeReports < 3) {
    o.volumeInfo = buildUnnamed21();
  }
  buildCounterChromeOsDeviceDiskVolumeReports--;
  return o;
}

void checkChromeOsDeviceDiskVolumeReports(
    api.ChromeOsDeviceDiskVolumeReports o) {
  buildCounterChromeOsDeviceDiskVolumeReports++;
  if (buildCounterChromeOsDeviceDiskVolumeReports < 3) {
    checkUnnamed21(o.volumeInfo!);
  }
  buildCounterChromeOsDeviceDiskVolumeReports--;
}

core.List<api.ChromeOsDeviceDiskVolumeReports> buildUnnamed22() => [
      buildChromeOsDeviceDiskVolumeReports(),
      buildChromeOsDeviceDiskVolumeReports(),
    ];

void checkUnnamed22(core.List<api.ChromeOsDeviceDiskVolumeReports> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceDiskVolumeReports(o[0]);
  checkChromeOsDeviceDiskVolumeReports(o[1]);
}

core.int buildCounterChromeOsDeviceLastKnownNetwork = 0;
api.ChromeOsDeviceLastKnownNetwork buildChromeOsDeviceLastKnownNetwork() {
  final o = api.ChromeOsDeviceLastKnownNetwork();
  buildCounterChromeOsDeviceLastKnownNetwork++;
  if (buildCounterChromeOsDeviceLastKnownNetwork < 3) {
    o.ipAddress = 'foo';
    o.wanIpAddress = 'foo';
  }
  buildCounterChromeOsDeviceLastKnownNetwork--;
  return o;
}

void checkChromeOsDeviceLastKnownNetwork(api.ChromeOsDeviceLastKnownNetwork o) {
  buildCounterChromeOsDeviceLastKnownNetwork++;
  if (buildCounterChromeOsDeviceLastKnownNetwork < 3) {
    unittest.expect(
      o.ipAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.wanIpAddress!,
      unittest.equals('foo'),
    );
  }
  buildCounterChromeOsDeviceLastKnownNetwork--;
}

core.List<api.ChromeOsDeviceLastKnownNetwork> buildUnnamed23() => [
      buildChromeOsDeviceLastKnownNetwork(),
      buildChromeOsDeviceLastKnownNetwork(),
    ];

void checkUnnamed23(core.List<api.ChromeOsDeviceLastKnownNetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceLastKnownNetwork(o[0]);
  checkChromeOsDeviceLastKnownNetwork(o[1]);
}

core.int buildCounterChromeOsDeviceRecentUsers = 0;
api.ChromeOsDeviceRecentUsers buildChromeOsDeviceRecentUsers() {
  final o = api.ChromeOsDeviceRecentUsers();
  buildCounterChromeOsDeviceRecentUsers++;
  if (buildCounterChromeOsDeviceRecentUsers < 3) {
    o.email = 'foo';
    o.type = 'foo';
  }
  buildCounterChromeOsDeviceRecentUsers--;
  return o;
}

void checkChromeOsDeviceRecentUsers(api.ChromeOsDeviceRecentUsers o) {
  buildCounterChromeOsDeviceRecentUsers++;
  if (buildCounterChromeOsDeviceRecentUsers < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterChromeOsDeviceRecentUsers--;
}

core.List<api.ChromeOsDeviceRecentUsers> buildUnnamed24() => [
      buildChromeOsDeviceRecentUsers(),
      buildChromeOsDeviceRecentUsers(),
    ];

void checkUnnamed24(core.List<api.ChromeOsDeviceRecentUsers> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceRecentUsers(o[0]);
  checkChromeOsDeviceRecentUsers(o[1]);
}

core.int buildCounterChromeOsDeviceScreenshotFiles = 0;
api.ChromeOsDeviceScreenshotFiles buildChromeOsDeviceScreenshotFiles() {
  final o = api.ChromeOsDeviceScreenshotFiles();
  buildCounterChromeOsDeviceScreenshotFiles++;
  if (buildCounterChromeOsDeviceScreenshotFiles < 3) {
    o.createTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.downloadUrl = 'foo';
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterChromeOsDeviceScreenshotFiles--;
  return o;
}

void checkChromeOsDeviceScreenshotFiles(api.ChromeOsDeviceScreenshotFiles o) {
  buildCounterChromeOsDeviceScreenshotFiles++;
  if (buildCounterChromeOsDeviceScreenshotFiles < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.downloadUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterChromeOsDeviceScreenshotFiles--;
}

core.List<api.ChromeOsDeviceScreenshotFiles> buildUnnamed25() => [
      buildChromeOsDeviceScreenshotFiles(),
      buildChromeOsDeviceScreenshotFiles(),
    ];

void checkUnnamed25(core.List<api.ChromeOsDeviceScreenshotFiles> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceScreenshotFiles(o[0]);
  checkChromeOsDeviceScreenshotFiles(o[1]);
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

core.int buildCounterChromeOsDeviceSystemRamFreeReports = 0;
api.ChromeOsDeviceSystemRamFreeReports
    buildChromeOsDeviceSystemRamFreeReports() {
  final o = api.ChromeOsDeviceSystemRamFreeReports();
  buildCounterChromeOsDeviceSystemRamFreeReports++;
  if (buildCounterChromeOsDeviceSystemRamFreeReports < 3) {
    o.reportTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.systemRamFreeInfo = buildUnnamed26();
  }
  buildCounterChromeOsDeviceSystemRamFreeReports--;
  return o;
}

void checkChromeOsDeviceSystemRamFreeReports(
    api.ChromeOsDeviceSystemRamFreeReports o) {
  buildCounterChromeOsDeviceSystemRamFreeReports++;
  if (buildCounterChromeOsDeviceSystemRamFreeReports < 3) {
    unittest.expect(
      o.reportTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    checkUnnamed26(o.systemRamFreeInfo!);
  }
  buildCounterChromeOsDeviceSystemRamFreeReports--;
}

core.List<api.ChromeOsDeviceSystemRamFreeReports> buildUnnamed27() => [
      buildChromeOsDeviceSystemRamFreeReports(),
      buildChromeOsDeviceSystemRamFreeReports(),
    ];

void checkUnnamed27(core.List<api.ChromeOsDeviceSystemRamFreeReports> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceSystemRamFreeReports(o[0]);
  checkChromeOsDeviceSystemRamFreeReports(o[1]);
}

core.int buildCounterChromeOsDeviceTpmVersionInfo = 0;
api.ChromeOsDeviceTpmVersionInfo buildChromeOsDeviceTpmVersionInfo() {
  final o = api.ChromeOsDeviceTpmVersionInfo();
  buildCounterChromeOsDeviceTpmVersionInfo++;
  if (buildCounterChromeOsDeviceTpmVersionInfo < 3) {
    o.family = 'foo';
    o.firmwareVersion = 'foo';
    o.manufacturer = 'foo';
    o.specLevel = 'foo';
    o.tpmModel = 'foo';
    o.vendorSpecific = 'foo';
  }
  buildCounterChromeOsDeviceTpmVersionInfo--;
  return o;
}

void checkChromeOsDeviceTpmVersionInfo(api.ChromeOsDeviceTpmVersionInfo o) {
  buildCounterChromeOsDeviceTpmVersionInfo++;
  if (buildCounterChromeOsDeviceTpmVersionInfo < 3) {
    unittest.expect(
      o.family!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firmwareVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.manufacturer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.specLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tpmModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vendorSpecific!,
      unittest.equals('foo'),
    );
  }
  buildCounterChromeOsDeviceTpmVersionInfo--;
}

core.int buildCounterChromeOsDevice = 0;
api.ChromeOsDevice buildChromeOsDevice() {
  final o = api.ChromeOsDevice();
  buildCounterChromeOsDevice++;
  if (buildCounterChromeOsDevice < 3) {
    o.activeTimeRanges = buildUnnamed13();
    o.annotatedAssetId = 'foo';
    o.annotatedLocation = 'foo';
    o.annotatedUser = 'foo';
    o.autoUpdateExpiration = 'foo';
    o.bootMode = 'foo';
    o.cpuInfo = buildUnnamed16();
    o.cpuStatusReports = buildUnnamed19();
    o.deviceFiles = buildUnnamed20();
    o.deviceId = 'foo';
    o.diskVolumeReports = buildUnnamed22();
    o.dockMacAddress = 'foo';
    o.etag = 'foo';
    o.ethernetMacAddress = 'foo';
    o.ethernetMacAddress0 = 'foo';
    o.firmwareVersion = 'foo';
    o.kind = 'foo';
    o.lastEnrollmentTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.lastKnownNetwork = buildUnnamed23();
    o.lastSync = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.macAddress = 'foo';
    o.manufactureDate = 'foo';
    o.meid = 'foo';
    o.model = 'foo';
    o.notes = 'foo';
    o.orderNumber = 'foo';
    o.orgUnitId = 'foo';
    o.orgUnitPath = 'foo';
    o.osVersion = 'foo';
    o.platformVersion = 'foo';
    o.recentUsers = buildUnnamed24();
    o.screenshotFiles = buildUnnamed25();
    o.serialNumber = 'foo';
    o.status = 'foo';
    o.supportEndDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.systemRamFreeReports = buildUnnamed27();
    o.systemRamTotal = 'foo';
    o.tpmVersionInfo = buildChromeOsDeviceTpmVersionInfo();
    o.willAutoRenew = true;
  }
  buildCounterChromeOsDevice--;
  return o;
}

void checkChromeOsDevice(api.ChromeOsDevice o) {
  buildCounterChromeOsDevice++;
  if (buildCounterChromeOsDevice < 3) {
    checkUnnamed13(o.activeTimeRanges!);
    unittest.expect(
      o.annotatedAssetId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.annotatedLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.annotatedUser!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.autoUpdateExpiration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bootMode!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.cpuInfo!);
    checkUnnamed19(o.cpuStatusReports!);
    checkUnnamed20(o.deviceFiles!);
    unittest.expect(
      o.deviceId!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.diskVolumeReports!);
    unittest.expect(
      o.dockMacAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ethernetMacAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ethernetMacAddress0!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firmwareVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastEnrollmentTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    checkUnnamed23(o.lastKnownNetwork!);
    unittest.expect(
      o.lastSync!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.macAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.manufactureDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.meid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orgUnitId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orgUnitPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.platformVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.recentUsers!);
    checkUnnamed25(o.screenshotFiles!);
    unittest.expect(
      o.serialNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.supportEndDate!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    checkUnnamed27(o.systemRamFreeReports!);
    unittest.expect(
      o.systemRamTotal!,
      unittest.equals('foo'),
    );
    checkChromeOsDeviceTpmVersionInfo(o.tpmVersionInfo!);
    unittest.expect(o.willAutoRenew!, unittest.isTrue);
  }
  buildCounterChromeOsDevice--;
}

core.int buildCounterChromeOsDeviceAction = 0;
api.ChromeOsDeviceAction buildChromeOsDeviceAction() {
  final o = api.ChromeOsDeviceAction();
  buildCounterChromeOsDeviceAction++;
  if (buildCounterChromeOsDeviceAction < 3) {
    o.action = 'foo';
    o.deprovisionReason = 'foo';
  }
  buildCounterChromeOsDeviceAction--;
  return o;
}

void checkChromeOsDeviceAction(api.ChromeOsDeviceAction o) {
  buildCounterChromeOsDeviceAction++;
  if (buildCounterChromeOsDeviceAction < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deprovisionReason!,
      unittest.equals('foo'),
    );
  }
  buildCounterChromeOsDeviceAction--;
}

core.List<api.ChromeOsDevice> buildUnnamed28() => [
      buildChromeOsDevice(),
      buildChromeOsDevice(),
    ];

void checkUnnamed28(core.List<api.ChromeOsDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDevice(o[0]);
  checkChromeOsDevice(o[1]);
}

core.int buildCounterChromeOsDevices = 0;
api.ChromeOsDevices buildChromeOsDevices() {
  final o = api.ChromeOsDevices();
  buildCounterChromeOsDevices++;
  if (buildCounterChromeOsDevices < 3) {
    o.chromeosdevices = buildUnnamed28();
    o.etag = 'foo';
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterChromeOsDevices--;
  return o;
}

void checkChromeOsDevices(api.ChromeOsDevices o) {
  buildCounterChromeOsDevices++;
  if (buildCounterChromeOsDevices < 3) {
    checkUnnamed28(o.chromeosdevices!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterChromeOsDevices--;
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

core.int buildCounterChromeOsMoveDevicesToOu = 0;
api.ChromeOsMoveDevicesToOu buildChromeOsMoveDevicesToOu() {
  final o = api.ChromeOsMoveDevicesToOu();
  buildCounterChromeOsMoveDevicesToOu++;
  if (buildCounterChromeOsMoveDevicesToOu < 3) {
    o.deviceIds = buildUnnamed29();
  }
  buildCounterChromeOsMoveDevicesToOu--;
  return o;
}

void checkChromeOsMoveDevicesToOu(api.ChromeOsMoveDevicesToOu o) {
  buildCounterChromeOsMoveDevicesToOu++;
  if (buildCounterChromeOsMoveDevicesToOu < 3) {
    checkUnnamed29(o.deviceIds!);
  }
  buildCounterChromeOsMoveDevicesToOu--;
}

core.int buildCounterCreatePrinterRequest = 0;
api.CreatePrinterRequest buildCreatePrinterRequest() {
  final o = api.CreatePrinterRequest();
  buildCounterCreatePrinterRequest++;
  if (buildCounterCreatePrinterRequest < 3) {
    o.parent = 'foo';
    o.printer = buildPrinter();
  }
  buildCounterCreatePrinterRequest--;
  return o;
}

void checkCreatePrinterRequest(api.CreatePrinterRequest o) {
  buildCounterCreatePrinterRequest++;
  if (buildCounterCreatePrinterRequest < 3) {
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    checkPrinter(o.printer!);
  }
  buildCounterCreatePrinterRequest--;
}

core.int buildCounterCustomer = 0;
api.Customer buildCustomer() {
  final o = api.Customer();
  buildCounterCustomer++;
  if (buildCounterCustomer < 3) {
    o.alternateEmail = 'foo';
    o.customerCreationTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.customerDomain = 'foo';
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.language = 'foo';
    o.phoneNumber = 'foo';
    o.postalAddress = buildCustomerPostalAddress();
  }
  buildCounterCustomer--;
  return o;
}

void checkCustomer(api.Customer o) {
  buildCounterCustomer++;
  if (buildCounterCustomer < 3) {
    unittest.expect(
      o.alternateEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerCreationTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.customerDomain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    checkCustomerPostalAddress(o.postalAddress!);
  }
  buildCounterCustomer--;
}

core.int buildCounterCustomerPostalAddress = 0;
api.CustomerPostalAddress buildCustomerPostalAddress() {
  final o = api.CustomerPostalAddress();
  buildCounterCustomerPostalAddress++;
  if (buildCounterCustomerPostalAddress < 3) {
    o.addressLine1 = 'foo';
    o.addressLine2 = 'foo';
    o.addressLine3 = 'foo';
    o.contactName = 'foo';
    o.countryCode = 'foo';
    o.locality = 'foo';
    o.organizationName = 'foo';
    o.postalCode = 'foo';
    o.region = 'foo';
  }
  buildCounterCustomerPostalAddress--;
  return o;
}

void checkCustomerPostalAddress(api.CustomerPostalAddress o) {
  buildCounterCustomerPostalAddress++;
  if (buildCounterCustomerPostalAddress < 3) {
    unittest.expect(
      o.addressLine1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.addressLine2!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.addressLine3!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contactName!,
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
      o.organizationName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomerPostalAddress--;
}

core.int buildCounterDirectoryChromeosdevicesCommand = 0;
api.DirectoryChromeosdevicesCommand buildDirectoryChromeosdevicesCommand() {
  final o = api.DirectoryChromeosdevicesCommand();
  buildCounterDirectoryChromeosdevicesCommand++;
  if (buildCounterDirectoryChromeosdevicesCommand < 3) {
    o.commandExpireTime = 'foo';
    o.commandId = 'foo';
    o.commandResult = buildDirectoryChromeosdevicesCommandResult();
    o.issueTime = 'foo';
    o.payload = 'foo';
    o.state = 'foo';
    o.type = 'foo';
  }
  buildCounterDirectoryChromeosdevicesCommand--;
  return o;
}

void checkDirectoryChromeosdevicesCommand(
    api.DirectoryChromeosdevicesCommand o) {
  buildCounterDirectoryChromeosdevicesCommand++;
  if (buildCounterDirectoryChromeosdevicesCommand < 3) {
    unittest.expect(
      o.commandExpireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.commandId!,
      unittest.equals('foo'),
    );
    checkDirectoryChromeosdevicesCommandResult(o.commandResult!);
    unittest.expect(
      o.issueTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.payload!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterDirectoryChromeosdevicesCommand--;
}

core.int buildCounterDirectoryChromeosdevicesCommandResult = 0;
api.DirectoryChromeosdevicesCommandResult
    buildDirectoryChromeosdevicesCommandResult() {
  final o = api.DirectoryChromeosdevicesCommandResult();
  buildCounterDirectoryChromeosdevicesCommandResult++;
  if (buildCounterDirectoryChromeosdevicesCommandResult < 3) {
    o.errorMessage = 'foo';
    o.executeTime = 'foo';
    o.result = 'foo';
  }
  buildCounterDirectoryChromeosdevicesCommandResult--;
  return o;
}

void checkDirectoryChromeosdevicesCommandResult(
    api.DirectoryChromeosdevicesCommandResult o) {
  buildCounterDirectoryChromeosdevicesCommandResult++;
  if (buildCounterDirectoryChromeosdevicesCommandResult < 3) {
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.executeTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.result!,
      unittest.equals('foo'),
    );
  }
  buildCounterDirectoryChromeosdevicesCommandResult--;
}

core.int buildCounterDirectoryChromeosdevicesIssueCommandRequest = 0;
api.DirectoryChromeosdevicesIssueCommandRequest
    buildDirectoryChromeosdevicesIssueCommandRequest() {
  final o = api.DirectoryChromeosdevicesIssueCommandRequest();
  buildCounterDirectoryChromeosdevicesIssueCommandRequest++;
  if (buildCounterDirectoryChromeosdevicesIssueCommandRequest < 3) {
    o.commandType = 'foo';
    o.payload = 'foo';
  }
  buildCounterDirectoryChromeosdevicesIssueCommandRequest--;
  return o;
}

void checkDirectoryChromeosdevicesIssueCommandRequest(
    api.DirectoryChromeosdevicesIssueCommandRequest o) {
  buildCounterDirectoryChromeosdevicesIssueCommandRequest++;
  if (buildCounterDirectoryChromeosdevicesIssueCommandRequest < 3) {
    unittest.expect(
      o.commandType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.payload!,
      unittest.equals('foo'),
    );
  }
  buildCounterDirectoryChromeosdevicesIssueCommandRequest--;
}

core.int buildCounterDirectoryChromeosdevicesIssueCommandResponse = 0;
api.DirectoryChromeosdevicesIssueCommandResponse
    buildDirectoryChromeosdevicesIssueCommandResponse() {
  final o = api.DirectoryChromeosdevicesIssueCommandResponse();
  buildCounterDirectoryChromeosdevicesIssueCommandResponse++;
  if (buildCounterDirectoryChromeosdevicesIssueCommandResponse < 3) {
    o.commandId = 'foo';
  }
  buildCounterDirectoryChromeosdevicesIssueCommandResponse--;
  return o;
}

void checkDirectoryChromeosdevicesIssueCommandResponse(
    api.DirectoryChromeosdevicesIssueCommandResponse o) {
  buildCounterDirectoryChromeosdevicesIssueCommandResponse++;
  if (buildCounterDirectoryChromeosdevicesIssueCommandResponse < 3) {
    unittest.expect(
      o.commandId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDirectoryChromeosdevicesIssueCommandResponse--;
}

core.int buildCounterDomainAlias = 0;
api.DomainAlias buildDomainAlias() {
  final o = api.DomainAlias();
  buildCounterDomainAlias++;
  if (buildCounterDomainAlias < 3) {
    o.creationTime = 'foo';
    o.domainAliasName = 'foo';
    o.etag = 'foo';
    o.kind = 'foo';
    o.parentDomainName = 'foo';
    o.verified = true;
  }
  buildCounterDomainAlias--;
  return o;
}

void checkDomainAlias(api.DomainAlias o) {
  buildCounterDomainAlias++;
  if (buildCounterDomainAlias < 3) {
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.domainAliasName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parentDomainName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.verified!, unittest.isTrue);
  }
  buildCounterDomainAlias--;
}

core.List<api.DomainAlias> buildUnnamed30() => [
      buildDomainAlias(),
      buildDomainAlias(),
    ];

void checkUnnamed30(core.List<api.DomainAlias> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomainAlias(o[0]);
  checkDomainAlias(o[1]);
}

core.int buildCounterDomainAliases = 0;
api.DomainAliases buildDomainAliases() {
  final o = api.DomainAliases();
  buildCounterDomainAliases++;
  if (buildCounterDomainAliases < 3) {
    o.domainAliases = buildUnnamed30();
    o.etag = 'foo';
    o.kind = 'foo';
  }
  buildCounterDomainAliases--;
  return o;
}

void checkDomainAliases(api.DomainAliases o) {
  buildCounterDomainAliases++;
  if (buildCounterDomainAliases < 3) {
    checkUnnamed30(o.domainAliases!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterDomainAliases--;
}

core.List<api.DomainAlias> buildUnnamed31() => [
      buildDomainAlias(),
      buildDomainAlias(),
    ];

void checkUnnamed31(core.List<api.DomainAlias> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomainAlias(o[0]);
  checkDomainAlias(o[1]);
}

core.int buildCounterDomains = 0;
api.Domains buildDomains() {
  final o = api.Domains();
  buildCounterDomains++;
  if (buildCounterDomains < 3) {
    o.creationTime = 'foo';
    o.domainAliases = buildUnnamed31();
    o.domainName = 'foo';
    o.etag = 'foo';
    o.isPrimary = true;
    o.kind = 'foo';
    o.verified = true;
  }
  buildCounterDomains--;
  return o;
}

void checkDomains(api.Domains o) {
  buildCounterDomains++;
  if (buildCounterDomains < 3) {
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.domainAliases!);
    unittest.expect(
      o.domainName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isPrimary!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.verified!, unittest.isTrue);
  }
  buildCounterDomains--;
}

core.List<api.Domains> buildUnnamed32() => [
      buildDomains(),
      buildDomains(),
    ];

void checkUnnamed32(core.List<api.Domains> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomains(o[0]);
  checkDomains(o[1]);
}

core.int buildCounterDomains2 = 0;
api.Domains2 buildDomains2() {
  final o = api.Domains2();
  buildCounterDomains2++;
  if (buildCounterDomains2 < 3) {
    o.domains = buildUnnamed32();
    o.etag = 'foo';
    o.kind = 'foo';
  }
  buildCounterDomains2--;
  return o;
}

void checkDomains2(api.Domains2 o) {
  buildCounterDomains2++;
  if (buildCounterDomains2 < 3) {
    checkUnnamed32(o.domains!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterDomains2--;
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

core.int buildCounterFailureInfo = 0;
api.FailureInfo buildFailureInfo() {
  final o = api.FailureInfo();
  buildCounterFailureInfo++;
  if (buildCounterFailureInfo < 3) {
    o.errorCode = 'foo';
    o.errorMessage = 'foo';
    o.printer = buildPrinter();
    o.printerId = 'foo';
  }
  buildCounterFailureInfo--;
  return o;
}

void checkFailureInfo(api.FailureInfo o) {
  buildCounterFailureInfo++;
  if (buildCounterFailureInfo < 3) {
    unittest.expect(
      o.errorCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    checkPrinter(o.printer!);
    unittest.expect(
      o.printerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterFailureInfo--;
}

core.int buildCounterFeature = 0;
api.Feature buildFeature() {
  final o = api.Feature();
  buildCounterFeature++;
  if (buildCounterFeature < 3) {
    o.etags = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterFeature--;
  return o;
}

void checkFeature(api.Feature o) {
  buildCounterFeature++;
  if (buildCounterFeature < 3) {
    unittest.expect(
      o.etags!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterFeature--;
}

core.int buildCounterFeatureRename = 0;
api.FeatureRename buildFeatureRename() {
  final o = api.FeatureRename();
  buildCounterFeatureRename++;
  if (buildCounterFeatureRename < 3) {
    o.newName = 'foo';
  }
  buildCounterFeatureRename--;
  return o;
}

void checkFeatureRename(api.FeatureRename o) {
  buildCounterFeatureRename++;
  if (buildCounterFeatureRename < 3) {
    unittest.expect(
      o.newName!,
      unittest.equals('foo'),
    );
  }
  buildCounterFeatureRename--;
}

core.List<api.Feature> buildUnnamed33() => [
      buildFeature(),
      buildFeature(),
    ];

void checkUnnamed33(core.List<api.Feature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeature(o[0]);
  checkFeature(o[1]);
}

core.int buildCounterFeatures = 0;
api.Features buildFeatures() {
  final o = api.Features();
  buildCounterFeatures++;
  if (buildCounterFeatures < 3) {
    o.etag = 'foo';
    o.features = buildUnnamed33();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterFeatures--;
  return o;
}

void checkFeatures(api.Features o) {
  buildCounterFeatures++;
  if (buildCounterFeatures < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed33(o.features!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterFeatures--;
}

core.List<core.String> buildUnnamed34() => [
      'foo',
      'foo',
    ];

void checkUnnamed34(core.List<core.String> o) {
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

core.int buildCounterGroup = 0;
api.Group buildGroup() {
  final o = api.Group();
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    o.adminCreated = true;
    o.aliases = buildUnnamed34();
    o.description = 'foo';
    o.directMembersCount = 'foo';
    o.email = 'foo';
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.nonEditableAliases = buildUnnamed35();
  }
  buildCounterGroup--;
  return o;
}

void checkGroup(api.Group o) {
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    unittest.expect(o.adminCreated!, unittest.isTrue);
    checkUnnamed34(o.aliases!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.directMembersCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed35(o.nonEditableAliases!);
  }
  buildCounterGroup--;
}

core.List<api.Group> buildUnnamed36() => [
      buildGroup(),
      buildGroup(),
    ];

void checkUnnamed36(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.int buildCounterGroups = 0;
api.Groups buildGroups() {
  final o = api.Groups();
  buildCounterGroups++;
  if (buildCounterGroups < 3) {
    o.etag = 'foo';
    o.groups = buildUnnamed36();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterGroups--;
  return o;
}

void checkGroups(api.Groups o) {
  buildCounterGroups++;
  if (buildCounterGroups < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.groups!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGroups--;
}

core.List<api.PrinterModel> buildUnnamed37() => [
      buildPrinterModel(),
      buildPrinterModel(),
    ];

void checkUnnamed37(core.List<api.PrinterModel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrinterModel(o[0]);
  checkPrinterModel(o[1]);
}

core.int buildCounterListPrinterModelsResponse = 0;
api.ListPrinterModelsResponse buildListPrinterModelsResponse() {
  final o = api.ListPrinterModelsResponse();
  buildCounterListPrinterModelsResponse++;
  if (buildCounterListPrinterModelsResponse < 3) {
    o.nextPageToken = 'foo';
    o.printerModels = buildUnnamed37();
  }
  buildCounterListPrinterModelsResponse--;
  return o;
}

void checkListPrinterModelsResponse(api.ListPrinterModelsResponse o) {
  buildCounterListPrinterModelsResponse++;
  if (buildCounterListPrinterModelsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.printerModels!);
  }
  buildCounterListPrinterModelsResponse--;
}

core.List<api.Printer> buildUnnamed38() => [
      buildPrinter(),
      buildPrinter(),
    ];

void checkUnnamed38(core.List<api.Printer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrinter(o[0]);
  checkPrinter(o[1]);
}

core.int buildCounterListPrintersResponse = 0;
api.ListPrintersResponse buildListPrintersResponse() {
  final o = api.ListPrintersResponse();
  buildCounterListPrintersResponse++;
  if (buildCounterListPrintersResponse < 3) {
    o.nextPageToken = 'foo';
    o.printers = buildUnnamed38();
  }
  buildCounterListPrintersResponse--;
  return o;
}

void checkListPrintersResponse(api.ListPrintersResponse o) {
  buildCounterListPrintersResponse++;
  if (buildCounterListPrintersResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed38(o.printers!);
  }
  buildCounterListPrintersResponse--;
}

core.int buildCounterMember = 0;
api.Member buildMember() {
  final o = api.Member();
  buildCounterMember++;
  if (buildCounterMember < 3) {
    o.deliverySettings = 'foo';
    o.email = 'foo';
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.role = 'foo';
    o.status = 'foo';
    o.type = 'foo';
  }
  buildCounterMember--;
  return o;
}

void checkMember(api.Member o) {
  buildCounterMember++;
  if (buildCounterMember < 3) {
    unittest.expect(
      o.deliverySettings!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterMember--;
}

core.List<api.Member> buildUnnamed39() => [
      buildMember(),
      buildMember(),
    ];

void checkUnnamed39(core.List<api.Member> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMember(o[0]);
  checkMember(o[1]);
}

core.int buildCounterMembers = 0;
api.Members buildMembers() {
  final o = api.Members();
  buildCounterMembers++;
  if (buildCounterMembers < 3) {
    o.etag = 'foo';
    o.kind = 'foo';
    o.members = buildUnnamed39();
    o.nextPageToken = 'foo';
  }
  buildCounterMembers--;
  return o;
}

void checkMembers(api.Members o) {
  buildCounterMembers++;
  if (buildCounterMembers < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.members!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterMembers--;
}

core.int buildCounterMembersHasMember = 0;
api.MembersHasMember buildMembersHasMember() {
  final o = api.MembersHasMember();
  buildCounterMembersHasMember++;
  if (buildCounterMembersHasMember < 3) {
    o.isMember = true;
  }
  buildCounterMembersHasMember--;
  return o;
}

void checkMembersHasMember(api.MembersHasMember o) {
  buildCounterMembersHasMember++;
  if (buildCounterMembersHasMember < 3) {
    unittest.expect(o.isMember!, unittest.isTrue);
  }
  buildCounterMembersHasMember--;
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

core.int buildCounterMobileDeviceApplications = 0;
api.MobileDeviceApplications buildMobileDeviceApplications() {
  final o = api.MobileDeviceApplications();
  buildCounterMobileDeviceApplications++;
  if (buildCounterMobileDeviceApplications < 3) {
    o.displayName = 'foo';
    o.packageName = 'foo';
    o.permission = buildUnnamed40();
    o.versionCode = 42;
    o.versionName = 'foo';
  }
  buildCounterMobileDeviceApplications--;
  return o;
}

void checkMobileDeviceApplications(api.MobileDeviceApplications o) {
  buildCounterMobileDeviceApplications++;
  if (buildCounterMobileDeviceApplications < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    checkUnnamed40(o.permission!);
    unittest.expect(
      o.versionCode!,
      unittest.equals(42),
    );
    unittest.expect(
      o.versionName!,
      unittest.equals('foo'),
    );
  }
  buildCounterMobileDeviceApplications--;
}

core.List<api.MobileDeviceApplications> buildUnnamed41() => [
      buildMobileDeviceApplications(),
      buildMobileDeviceApplications(),
    ];

void checkUnnamed41(core.List<api.MobileDeviceApplications> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMobileDeviceApplications(o[0]);
  checkMobileDeviceApplications(o[1]);
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

core.List<core.String> buildUnnamed44() => [
      'foo',
      'foo',
    ];

void checkUnnamed44(core.List<core.String> o) {
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

core.int buildCounterMobileDevice = 0;
api.MobileDevice buildMobileDevice() {
  final o = api.MobileDevice();
  buildCounterMobileDevice++;
  if (buildCounterMobileDevice < 3) {
    o.adbStatus = true;
    o.applications = buildUnnamed41();
    o.basebandVersion = 'foo';
    o.bootloaderVersion = 'foo';
    o.brand = 'foo';
    o.buildNumber = 'foo';
    o.defaultLanguage = 'foo';
    o.developerOptionsStatus = true;
    o.deviceCompromisedStatus = 'foo';
    o.deviceId = 'foo';
    o.devicePasswordStatus = 'foo';
    o.email = buildUnnamed42();
    o.encryptionStatus = 'foo';
    o.etag = 'foo';
    o.firstSync = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.hardware = 'foo';
    o.hardwareId = 'foo';
    o.imei = 'foo';
    o.kernelVersion = 'foo';
    o.kind = 'foo';
    o.lastSync = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.managedAccountIsOnOwnerProfile = true;
    o.manufacturer = 'foo';
    o.meid = 'foo';
    o.model = 'foo';
    o.name = buildUnnamed43();
    o.networkOperator = 'foo';
    o.os = 'foo';
    o.otherAccountsInfo = buildUnnamed44();
    o.privilege = 'foo';
    o.releaseVersion = 'foo';
    o.resourceId = 'foo';
    o.securityPatchLevel = 'foo';
    o.serialNumber = 'foo';
    o.status = 'foo';
    o.supportsWorkProfile = true;
    o.type = 'foo';
    o.unknownSourcesStatus = true;
    o.userAgent = 'foo';
    o.wifiMacAddress = 'foo';
  }
  buildCounterMobileDevice--;
  return o;
}

void checkMobileDevice(api.MobileDevice o) {
  buildCounterMobileDevice++;
  if (buildCounterMobileDevice < 3) {
    unittest.expect(o.adbStatus!, unittest.isTrue);
    checkUnnamed41(o.applications!);
    unittest.expect(
      o.basebandVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bootloaderVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.brand!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buildNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultLanguage!,
      unittest.equals('foo'),
    );
    unittest.expect(o.developerOptionsStatus!, unittest.isTrue);
    unittest.expect(
      o.deviceCompromisedStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.devicePasswordStatus!,
      unittest.equals('foo'),
    );
    checkUnnamed42(o.email!);
    unittest.expect(
      o.encryptionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firstSync!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(
      o.hardware!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hardwareId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imei!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kernelVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastSync!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    unittest.expect(o.managedAccountIsOnOwnerProfile!, unittest.isTrue);
    unittest.expect(
      o.manufacturer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.meid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
    checkUnnamed43(o.name!);
    unittest.expect(
      o.networkOperator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.os!,
      unittest.equals('foo'),
    );
    checkUnnamed44(o.otherAccountsInfo!);
    unittest.expect(
      o.privilege!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.releaseVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.securityPatchLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serialNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(o.supportsWorkProfile!, unittest.isTrue);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(o.unknownSourcesStatus!, unittest.isTrue);
    unittest.expect(
      o.userAgent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.wifiMacAddress!,
      unittest.equals('foo'),
    );
  }
  buildCounterMobileDevice--;
}

core.int buildCounterMobileDeviceAction = 0;
api.MobileDeviceAction buildMobileDeviceAction() {
  final o = api.MobileDeviceAction();
  buildCounterMobileDeviceAction++;
  if (buildCounterMobileDeviceAction < 3) {
    o.action = 'foo';
  }
  buildCounterMobileDeviceAction--;
  return o;
}

void checkMobileDeviceAction(api.MobileDeviceAction o) {
  buildCounterMobileDeviceAction++;
  if (buildCounterMobileDeviceAction < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
  }
  buildCounterMobileDeviceAction--;
}

core.List<api.MobileDevice> buildUnnamed45() => [
      buildMobileDevice(),
      buildMobileDevice(),
    ];

void checkUnnamed45(core.List<api.MobileDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMobileDevice(o[0]);
  checkMobileDevice(o[1]);
}

core.int buildCounterMobileDevices = 0;
api.MobileDevices buildMobileDevices() {
  final o = api.MobileDevices();
  buildCounterMobileDevices++;
  if (buildCounterMobileDevices < 3) {
    o.etag = 'foo';
    o.kind = 'foo';
    o.mobiledevices = buildUnnamed45();
    o.nextPageToken = 'foo';
  }
  buildCounterMobileDevices--;
  return o;
}

void checkMobileDevices(api.MobileDevices o) {
  buildCounterMobileDevices++;
  if (buildCounterMobileDevices < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed45(o.mobiledevices!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterMobileDevices--;
}

core.int buildCounterOrgUnit = 0;
api.OrgUnit buildOrgUnit() {
  final o = api.OrgUnit();
  buildCounterOrgUnit++;
  if (buildCounterOrgUnit < 3) {
    o.blockInheritance = true;
    o.description = 'foo';
    o.etag = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.orgUnitId = 'foo';
    o.orgUnitPath = 'foo';
    o.parentOrgUnitId = 'foo';
    o.parentOrgUnitPath = 'foo';
  }
  buildCounterOrgUnit--;
  return o;
}

void checkOrgUnit(api.OrgUnit o) {
  buildCounterOrgUnit++;
  if (buildCounterOrgUnit < 3) {
    unittest.expect(o.blockInheritance!, unittest.isTrue);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orgUnitId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orgUnitPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parentOrgUnitId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parentOrgUnitPath!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrgUnit--;
}

core.List<api.OrgUnit> buildUnnamed46() => [
      buildOrgUnit(),
      buildOrgUnit(),
    ];

void checkUnnamed46(core.List<api.OrgUnit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrgUnit(o[0]);
  checkOrgUnit(o[1]);
}

core.int buildCounterOrgUnits = 0;
api.OrgUnits buildOrgUnits() {
  final o = api.OrgUnits();
  buildCounterOrgUnits++;
  if (buildCounterOrgUnits < 3) {
    o.etag = 'foo';
    o.kind = 'foo';
    o.organizationUnits = buildUnnamed46();
  }
  buildCounterOrgUnits--;
  return o;
}

void checkOrgUnits(api.OrgUnits o) {
  buildCounterOrgUnits++;
  if (buildCounterOrgUnits < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed46(o.organizationUnits!);
  }
  buildCounterOrgUnits--;
}

core.List<api.AuxiliaryMessage> buildUnnamed47() => [
      buildAuxiliaryMessage(),
      buildAuxiliaryMessage(),
    ];

void checkUnnamed47(core.List<api.AuxiliaryMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuxiliaryMessage(o[0]);
  checkAuxiliaryMessage(o[1]);
}

core.int buildCounterPrinter = 0;
api.Printer buildPrinter() {
  final o = api.Printer();
  buildCounterPrinter++;
  if (buildCounterPrinter < 3) {
    o.auxiliaryMessages = buildUnnamed47();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.id = 'foo';
    o.makeAndModel = 'foo';
    o.name = 'foo';
    o.orgUnitId = 'foo';
    o.uri = 'foo';
    o.useDriverlessConfig = true;
  }
  buildCounterPrinter--;
  return o;
}

void checkPrinter(api.Printer o) {
  buildCounterPrinter++;
  if (buildCounterPrinter < 3) {
    checkUnnamed47(o.auxiliaryMessages!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
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
      o.makeAndModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orgUnitId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
    unittest.expect(o.useDriverlessConfig!, unittest.isTrue);
  }
  buildCounterPrinter--;
}

core.int buildCounterPrinterModel = 0;
api.PrinterModel buildPrinterModel() {
  final o = api.PrinterModel();
  buildCounterPrinterModel++;
  if (buildCounterPrinterModel < 3) {
    o.displayName = 'foo';
    o.makeAndModel = 'foo';
    o.manufacturer = 'foo';
  }
  buildCounterPrinterModel--;
  return o;
}

void checkPrinterModel(api.PrinterModel o) {
  buildCounterPrinterModel++;
  if (buildCounterPrinterModel < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.makeAndModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.manufacturer!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrinterModel--;
}

core.List<api.Privilege> buildUnnamed48() => [
      buildPrivilege(),
      buildPrivilege(),
    ];

void checkUnnamed48(core.List<api.Privilege> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrivilege(o[0]);
  checkPrivilege(o[1]);
}

core.int buildCounterPrivilege = 0;
api.Privilege buildPrivilege() {
  final o = api.Privilege();
  buildCounterPrivilege++;
  if (buildCounterPrivilege < 3) {
    o.childPrivileges = buildUnnamed48();
    o.etag = 'foo';
    o.isOuScopable = true;
    o.kind = 'foo';
    o.privilegeName = 'foo';
    o.serviceId = 'foo';
    o.serviceName = 'foo';
  }
  buildCounterPrivilege--;
  return o;
}

void checkPrivilege(api.Privilege o) {
  buildCounterPrivilege++;
  if (buildCounterPrivilege < 3) {
    checkUnnamed48(o.childPrivileges!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isOuScopable!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privilegeName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrivilege--;
}

core.List<api.Privilege> buildUnnamed49() => [
      buildPrivilege(),
      buildPrivilege(),
    ];

void checkUnnamed49(core.List<api.Privilege> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrivilege(o[0]);
  checkPrivilege(o[1]);
}

core.int buildCounterPrivileges = 0;
api.Privileges buildPrivileges() {
  final o = api.Privileges();
  buildCounterPrivileges++;
  if (buildCounterPrivileges < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed49();
    o.kind = 'foo';
  }
  buildCounterPrivileges--;
  return o;
}

void checkPrivileges(api.Privileges o) {
  buildCounterPrivileges++;
  if (buildCounterPrivileges < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed49(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrivileges--;
}

core.int buildCounterRoleRolePrivileges = 0;
api.RoleRolePrivileges buildRoleRolePrivileges() {
  final o = api.RoleRolePrivileges();
  buildCounterRoleRolePrivileges++;
  if (buildCounterRoleRolePrivileges < 3) {
    o.privilegeName = 'foo';
    o.serviceId = 'foo';
  }
  buildCounterRoleRolePrivileges--;
  return o;
}

void checkRoleRolePrivileges(api.RoleRolePrivileges o) {
  buildCounterRoleRolePrivileges++;
  if (buildCounterRoleRolePrivileges < 3) {
    unittest.expect(
      o.privilegeName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRoleRolePrivileges--;
}

core.List<api.RoleRolePrivileges> buildUnnamed50() => [
      buildRoleRolePrivileges(),
      buildRoleRolePrivileges(),
    ];

void checkUnnamed50(core.List<api.RoleRolePrivileges> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoleRolePrivileges(o[0]);
  checkRoleRolePrivileges(o[1]);
}

core.int buildCounterRole = 0;
api.Role buildRole() {
  final o = api.Role();
  buildCounterRole++;
  if (buildCounterRole < 3) {
    o.etag = 'foo';
    o.isSuperAdminRole = true;
    o.isSystemRole = true;
    o.kind = 'foo';
    o.roleDescription = 'foo';
    o.roleId = 'foo';
    o.roleName = 'foo';
    o.rolePrivileges = buildUnnamed50();
  }
  buildCounterRole--;
  return o;
}

void checkRole(api.Role o) {
  buildCounterRole++;
  if (buildCounterRole < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isSuperAdminRole!, unittest.isTrue);
    unittest.expect(o.isSystemRole!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.roleDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.roleId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.roleName!,
      unittest.equals('foo'),
    );
    checkUnnamed50(o.rolePrivileges!);
  }
  buildCounterRole--;
}

core.int buildCounterRoleAssignment = 0;
api.RoleAssignment buildRoleAssignment() {
  final o = api.RoleAssignment();
  buildCounterRoleAssignment++;
  if (buildCounterRoleAssignment < 3) {
    o.assignedTo = 'foo';
    o.etag = 'foo';
    o.kind = 'foo';
    o.orgUnitId = 'foo';
    o.roleAssignmentId = 'foo';
    o.roleId = 'foo';
    o.scopeType = 'foo';
  }
  buildCounterRoleAssignment--;
  return o;
}

void checkRoleAssignment(api.RoleAssignment o) {
  buildCounterRoleAssignment++;
  if (buildCounterRoleAssignment < 3) {
    unittest.expect(
      o.assignedTo!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orgUnitId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.roleAssignmentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.roleId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scopeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterRoleAssignment--;
}

core.List<api.RoleAssignment> buildUnnamed51() => [
      buildRoleAssignment(),
      buildRoleAssignment(),
    ];

void checkUnnamed51(core.List<api.RoleAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoleAssignment(o[0]);
  checkRoleAssignment(o[1]);
}

core.int buildCounterRoleAssignments = 0;
api.RoleAssignments buildRoleAssignments() {
  final o = api.RoleAssignments();
  buildCounterRoleAssignments++;
  if (buildCounterRoleAssignments < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed51();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterRoleAssignments--;
  return o;
}

void checkRoleAssignments(api.RoleAssignments o) {
  buildCounterRoleAssignments++;
  if (buildCounterRoleAssignments < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed51(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterRoleAssignments--;
}

core.List<api.Role> buildUnnamed52() => [
      buildRole(),
      buildRole(),
    ];

void checkUnnamed52(core.List<api.Role> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRole(o[0]);
  checkRole(o[1]);
}

core.int buildCounterRoles = 0;
api.Roles buildRoles() {
  final o = api.Roles();
  buildCounterRoles++;
  if (buildCounterRoles < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed52();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterRoles--;
  return o;
}

void checkRoles(api.Roles o) {
  buildCounterRoles++;
  if (buildCounterRoles < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed52(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterRoles--;
}

core.List<api.SchemaFieldSpec> buildUnnamed53() => [
      buildSchemaFieldSpec(),
      buildSchemaFieldSpec(),
    ];

void checkUnnamed53(core.List<api.SchemaFieldSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchemaFieldSpec(o[0]);
  checkSchemaFieldSpec(o[1]);
}

core.int buildCounterSchema = 0;
api.Schema buildSchema() {
  final o = api.Schema();
  buildCounterSchema++;
  if (buildCounterSchema < 3) {
    o.displayName = 'foo';
    o.etag = 'foo';
    o.fields = buildUnnamed53();
    o.kind = 'foo';
    o.schemaId = 'foo';
    o.schemaName = 'foo';
  }
  buildCounterSchema--;
  return o;
}

void checkSchema(api.Schema o) {
  buildCounterSchema++;
  if (buildCounterSchema < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed53(o.fields!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.schemaId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.schemaName!,
      unittest.equals('foo'),
    );
  }
  buildCounterSchema--;
}

core.int buildCounterSchemaFieldSpecNumericIndexingSpec = 0;
api.SchemaFieldSpecNumericIndexingSpec
    buildSchemaFieldSpecNumericIndexingSpec() {
  final o = api.SchemaFieldSpecNumericIndexingSpec();
  buildCounterSchemaFieldSpecNumericIndexingSpec++;
  if (buildCounterSchemaFieldSpecNumericIndexingSpec < 3) {
    o.maxValue = 42.0;
    o.minValue = 42.0;
  }
  buildCounterSchemaFieldSpecNumericIndexingSpec--;
  return o;
}

void checkSchemaFieldSpecNumericIndexingSpec(
    api.SchemaFieldSpecNumericIndexingSpec o) {
  buildCounterSchemaFieldSpecNumericIndexingSpec++;
  if (buildCounterSchemaFieldSpecNumericIndexingSpec < 3) {
    unittest.expect(
      o.maxValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.minValue!,
      unittest.equals(42.0),
    );
  }
  buildCounterSchemaFieldSpecNumericIndexingSpec--;
}

core.int buildCounterSchemaFieldSpec = 0;
api.SchemaFieldSpec buildSchemaFieldSpec() {
  final o = api.SchemaFieldSpec();
  buildCounterSchemaFieldSpec++;
  if (buildCounterSchemaFieldSpec < 3) {
    o.displayName = 'foo';
    o.etag = 'foo';
    o.fieldId = 'foo';
    o.fieldName = 'foo';
    o.fieldType = 'foo';
    o.indexed = true;
    o.kind = 'foo';
    o.multiValued = true;
    o.numericIndexingSpec = buildSchemaFieldSpecNumericIndexingSpec();
    o.readAccessType = 'foo';
  }
  buildCounterSchemaFieldSpec--;
  return o;
}

void checkSchemaFieldSpec(api.SchemaFieldSpec o) {
  buildCounterSchemaFieldSpec++;
  if (buildCounterSchemaFieldSpec < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fieldId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fieldName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fieldType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.indexed!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.multiValued!, unittest.isTrue);
    checkSchemaFieldSpecNumericIndexingSpec(o.numericIndexingSpec!);
    unittest.expect(
      o.readAccessType!,
      unittest.equals('foo'),
    );
  }
  buildCounterSchemaFieldSpec--;
}

core.List<api.Schema> buildUnnamed54() => [
      buildSchema(),
      buildSchema(),
    ];

void checkUnnamed54(core.List<api.Schema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchema(o[0]);
  checkSchema(o[1]);
}

core.int buildCounterSchemas = 0;
api.Schemas buildSchemas() {
  final o = api.Schemas();
  buildCounterSchemas++;
  if (buildCounterSchemas < 3) {
    o.etag = 'foo';
    o.kind = 'foo';
    o.schemas = buildUnnamed54();
  }
  buildCounterSchemas--;
  return o;
}

void checkSchemas(api.Schemas o) {
  buildCounterSchemas++;
  if (buildCounterSchemas < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed54(o.schemas!);
  }
  buildCounterSchemas--;
}

core.List<core.String> buildUnnamed55() => [
      'foo',
      'foo',
    ];

void checkUnnamed55(core.List<core.String> o) {
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

core.int buildCounterToken = 0;
api.Token buildToken() {
  final o = api.Token();
  buildCounterToken++;
  if (buildCounterToken < 3) {
    o.anonymous = true;
    o.clientId = 'foo';
    o.displayText = 'foo';
    o.etag = 'foo';
    o.kind = 'foo';
    o.nativeApp = true;
    o.scopes = buildUnnamed55();
    o.userKey = 'foo';
  }
  buildCounterToken--;
  return o;
}

void checkToken(api.Token o) {
  buildCounterToken++;
  if (buildCounterToken < 3) {
    unittest.expect(o.anonymous!, unittest.isTrue);
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(o.nativeApp!, unittest.isTrue);
    checkUnnamed55(o.scopes!);
    unittest.expect(
      o.userKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterToken--;
}

core.List<api.Token> buildUnnamed56() => [
      buildToken(),
      buildToken(),
    ];

void checkUnnamed56(core.List<api.Token> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkToken(o[0]);
  checkToken(o[1]);
}

core.int buildCounterTokens = 0;
api.Tokens buildTokens() {
  final o = api.Tokens();
  buildCounterTokens++;
  if (buildCounterTokens < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed56();
    o.kind = 'foo';
  }
  buildCounterTokens--;
  return o;
}

void checkTokens(api.Tokens o) {
  buildCounterTokens++;
  if (buildCounterTokens < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed56(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterTokens--;
}

core.List<core.String> buildUnnamed57() => [
      'foo',
      'foo',
    ];

void checkUnnamed57(core.List<core.String> o) {
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

core.Map<core.String, api.UserCustomProperties> buildUnnamed58() => {
      'x': buildUserCustomProperties(),
      'y': buildUserCustomProperties(),
    };

void checkUnnamed58(core.Map<core.String, api.UserCustomProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserCustomProperties(o['x']!);
  checkUserCustomProperties(o['y']!);
}

core.List<core.String> buildUnnamed59() => [
      'foo',
      'foo',
    ];

void checkUnnamed59(core.List<core.String> o) {
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

core.int buildCounterUser = 0;
api.User buildUser() {
  final o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.addresses = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.agreedToTerms = true;
    o.aliases = buildUnnamed57();
    o.archived = true;
    o.changePasswordAtNextLogin = true;
    o.creationTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.customSchemas = buildUnnamed58();
    o.customerId = 'foo';
    o.deletionTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.emails = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.etag = 'foo';
    o.externalIds = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.gender = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.hashFunction = 'foo';
    o.id = 'foo';
    o.ims = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.includeInGlobalAddressList = true;
    o.ipWhitelisted = true;
    o.isAdmin = true;
    o.isDelegatedAdmin = true;
    o.isEnforcedIn2Sv = true;
    o.isEnrolledIn2Sv = true;
    o.isMailboxSetup = true;
    o.keywords = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.kind = 'foo';
    o.languages = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.lastLoginTime = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.locations = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.name = buildUserName();
    o.nonEditableAliases = buildUnnamed59();
    o.notes = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.orgUnitPath = 'foo';
    o.organizations = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.password = 'foo';
    o.phones = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.posixAccounts = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.primaryEmail = 'foo';
    o.recoveryEmail = 'foo';
    o.recoveryPhone = 'foo';
    o.relations = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.sshPublicKeys = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.suspended = true;
    o.suspensionReason = 'foo';
    o.thumbnailPhotoEtag = 'foo';
    o.thumbnailPhotoUrl = 'foo';
    o.websites = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterUser--;
  return o;
}

void checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    var casted4 = (o.addresses!) as core.Map;
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
    unittest.expect(o.agreedToTerms!, unittest.isTrue);
    checkUnnamed57(o.aliases!);
    unittest.expect(o.archived!, unittest.isTrue);
    unittest.expect(o.changePasswordAtNextLogin!, unittest.isTrue);
    unittest.expect(
      o.creationTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    checkUnnamed58(o.customSchemas!);
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deletionTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    var casted5 = (o.emails!) as core.Map;
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
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    var casted6 = (o.externalIds!) as core.Map;
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
    var casted7 = (o.gender!) as core.Map;
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
    unittest.expect(
      o.hashFunction!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    var casted8 = (o.ims!) as core.Map;
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
    unittest.expect(o.includeInGlobalAddressList!, unittest.isTrue);
    unittest.expect(o.ipWhitelisted!, unittest.isTrue);
    unittest.expect(o.isAdmin!, unittest.isTrue);
    unittest.expect(o.isDelegatedAdmin!, unittest.isTrue);
    unittest.expect(o.isEnforcedIn2Sv!, unittest.isTrue);
    unittest.expect(o.isEnrolledIn2Sv!, unittest.isTrue);
    unittest.expect(o.isMailboxSetup!, unittest.isTrue);
    var casted9 = (o.keywords!) as core.Map;
    unittest.expect(casted9, unittest.hasLength(3));
    unittest.expect(
      casted9['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted9['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted9['string'],
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    var casted10 = (o.languages!) as core.Map;
    unittest.expect(casted10, unittest.hasLength(3));
    unittest.expect(
      casted10['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted10['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted10['string'],
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastLoginTime!,
      unittest.equals(core.DateTime.parse('2002-02-27T14:01:02Z')),
    );
    var casted11 = (o.locations!) as core.Map;
    unittest.expect(casted11, unittest.hasLength(3));
    unittest.expect(
      casted11['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted11['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted11['string'],
      unittest.equals('foo'),
    );
    checkUserName(o.name!);
    checkUnnamed59(o.nonEditableAliases!);
    var casted12 = (o.notes!) as core.Map;
    unittest.expect(casted12, unittest.hasLength(3));
    unittest.expect(
      casted12['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted12['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted12['string'],
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orgUnitPath!,
      unittest.equals('foo'),
    );
    var casted13 = (o.organizations!) as core.Map;
    unittest.expect(casted13, unittest.hasLength(3));
    unittest.expect(
      casted13['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted13['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted13['string'],
      unittest.equals('foo'),
    );
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    var casted14 = (o.phones!) as core.Map;
    unittest.expect(casted14, unittest.hasLength(3));
    unittest.expect(
      casted14['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted14['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted14['string'],
      unittest.equals('foo'),
    );
    var casted15 = (o.posixAccounts!) as core.Map;
    unittest.expect(casted15, unittest.hasLength(3));
    unittest.expect(
      casted15['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted15['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted15['string'],
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primaryEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recoveryEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recoveryPhone!,
      unittest.equals('foo'),
    );
    var casted16 = (o.relations!) as core.Map;
    unittest.expect(casted16, unittest.hasLength(3));
    unittest.expect(
      casted16['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted16['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted16['string'],
      unittest.equals('foo'),
    );
    var casted17 = (o.sshPublicKeys!) as core.Map;
    unittest.expect(casted17, unittest.hasLength(3));
    unittest.expect(
      casted17['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted17['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted17['string'],
      unittest.equals('foo'),
    );
    unittest.expect(o.suspended!, unittest.isTrue);
    unittest.expect(
      o.suspensionReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thumbnailPhotoEtag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thumbnailPhotoUrl!,
      unittest.equals('foo'),
    );
    var casted18 = (o.websites!) as core.Map;
    unittest.expect(casted18, unittest.hasLength(3));
    unittest.expect(
      casted18['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted18['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted18['string'],
      unittest.equals('foo'),
    );
  }
  buildCounterUser--;
}

api.UserCustomProperties buildUserCustomProperties() {
  final o = api.UserCustomProperties();
  o['a'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['b'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUserCustomProperties(api.UserCustomProperties o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted19 = (o['a']!) as core.Map;
  unittest.expect(casted19, unittest.hasLength(3));
  unittest.expect(
    casted19['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted19['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted19['string'],
    unittest.equals('foo'),
  );
  var casted20 = (o['b']!) as core.Map;
  unittest.expect(casted20, unittest.hasLength(3));
  unittest.expect(
    casted20['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted20['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted20['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterUserMakeAdmin = 0;
api.UserMakeAdmin buildUserMakeAdmin() {
  final o = api.UserMakeAdmin();
  buildCounterUserMakeAdmin++;
  if (buildCounterUserMakeAdmin < 3) {
    o.status = true;
  }
  buildCounterUserMakeAdmin--;
  return o;
}

void checkUserMakeAdmin(api.UserMakeAdmin o) {
  buildCounterUserMakeAdmin++;
  if (buildCounterUserMakeAdmin < 3) {
    unittest.expect(o.status!, unittest.isTrue);
  }
  buildCounterUserMakeAdmin--;
}

core.int buildCounterUserName = 0;
api.UserName buildUserName() {
  final o = api.UserName();
  buildCounterUserName++;
  if (buildCounterUserName < 3) {
    o.familyName = 'foo';
    o.fullName = 'foo';
    o.givenName = 'foo';
  }
  buildCounterUserName--;
  return o;
}

void checkUserName(api.UserName o) {
  buildCounterUserName++;
  if (buildCounterUserName < 3) {
    unittest.expect(
      o.familyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fullName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.givenName!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserName--;
}

core.int buildCounterUserPhoto = 0;
api.UserPhoto buildUserPhoto() {
  final o = api.UserPhoto();
  buildCounterUserPhoto++;
  if (buildCounterUserPhoto < 3) {
    o.etag = 'foo';
    o.height = 42;
    o.id = 'foo';
    o.kind = 'foo';
    o.mimeType = 'foo';
    o.photoData = 'foo';
    o.primaryEmail = 'foo';
    o.width = 42;
  }
  buildCounterUserPhoto--;
  return o;
}

void checkUserPhoto(api.UserPhoto o) {
  buildCounterUserPhoto++;
  if (buildCounterUserPhoto < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.photoData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primaryEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterUserPhoto--;
}

core.int buildCounterUserUndelete = 0;
api.UserUndelete buildUserUndelete() {
  final o = api.UserUndelete();
  buildCounterUserUndelete++;
  if (buildCounterUserUndelete < 3) {
    o.orgUnitPath = 'foo';
  }
  buildCounterUserUndelete--;
  return o;
}

void checkUserUndelete(api.UserUndelete o) {
  buildCounterUserUndelete++;
  if (buildCounterUserUndelete < 3) {
    unittest.expect(
      o.orgUnitPath!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserUndelete--;
}

core.List<api.User> buildUnnamed60() => [
      buildUser(),
      buildUser(),
    ];

void checkUnnamed60(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
}

core.int buildCounterUsers = 0;
api.Users buildUsers() {
  final o = api.Users();
  buildCounterUsers++;
  if (buildCounterUsers < 3) {
    o.etag = 'foo';
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.triggerEvent = 'foo';
    o.users = buildUnnamed60();
  }
  buildCounterUsers--;
  return o;
}

void checkUsers(api.Users o) {
  buildCounterUsers++;
  if (buildCounterUsers < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerEvent!,
      unittest.equals('foo'),
    );
    checkUnnamed60(o.users!);
  }
  buildCounterUsers--;
}

core.int buildCounterVerificationCode = 0;
api.VerificationCode buildVerificationCode() {
  final o = api.VerificationCode();
  buildCounterVerificationCode++;
  if (buildCounterVerificationCode < 3) {
    o.etag = 'foo';
    o.kind = 'foo';
    o.userId = 'foo';
    o.verificationCode = 'foo';
  }
  buildCounterVerificationCode--;
  return o;
}

void checkVerificationCode(api.VerificationCode o) {
  buildCounterVerificationCode++;
  if (buildCounterVerificationCode < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verificationCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterVerificationCode--;
}

core.List<api.VerificationCode> buildUnnamed61() => [
      buildVerificationCode(),
      buildVerificationCode(),
    ];

void checkUnnamed61(core.List<api.VerificationCode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVerificationCode(o[0]);
  checkVerificationCode(o[1]);
}

core.int buildCounterVerificationCodes = 0;
api.VerificationCodes buildVerificationCodes() {
  final o = api.VerificationCodes();
  buildCounterVerificationCodes++;
  if (buildCounterVerificationCodes < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed61();
    o.kind = 'foo';
  }
  buildCounterVerificationCodes--;
  return o;
}

void checkVerificationCodes(api.VerificationCodes o) {
  buildCounterVerificationCodes++;
  if (buildCounterVerificationCodes < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed61(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterVerificationCodes--;
}

void main() {
  unittest.group('obj-schema-Alias', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAlias();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Alias.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAlias(od);
    });
  });

  unittest.group('obj-schema-Aliases', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAliases();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Aliases.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAliases(od);
    });
  });

  unittest.group('obj-schema-Asp', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAsp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Asp.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAsp(od);
    });
  });

  unittest.group('obj-schema-Asps', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAsps();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Asps.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAsps(od);
    });
  });

  unittest.group('obj-schema-AuxiliaryMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuxiliaryMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuxiliaryMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuxiliaryMessage(od);
    });
  });

  unittest.group('obj-schema-BatchCreatePrintersRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreatePrintersRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreatePrintersRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreatePrintersRequest(od);
    });
  });

  unittest.group('obj-schema-BatchCreatePrintersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreatePrintersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreatePrintersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreatePrintersResponse(od);
    });
  });

  unittest.group('obj-schema-BatchDeletePrintersRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchDeletePrintersRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchDeletePrintersRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchDeletePrintersRequest(od);
    });
  });

  unittest.group('obj-schema-BatchDeletePrintersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchDeletePrintersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchDeletePrintersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchDeletePrintersResponse(od);
    });
  });

  unittest.group('obj-schema-Building', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuilding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Building.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBuilding(od);
    });
  });

  unittest.group('obj-schema-BuildingAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildingAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildingAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuildingAddress(od);
    });
  });

  unittest.group('obj-schema-BuildingCoordinates', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildingCoordinates();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildingCoordinates.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuildingCoordinates(od);
    });
  });

  unittest.group('obj-schema-Buildings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Buildings.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBuildings(od);
    });
  });

  unittest.group('obj-schema-CalendarResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCalendarResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CalendarResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCalendarResource(od);
    });
  });

  unittest.group('obj-schema-CalendarResources', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCalendarResources();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CalendarResources.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCalendarResources(od);
    });
  });

  unittest.group('obj-schema-Channel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Channel.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkChannel(od);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceActiveTimeRanges', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChromeOsDeviceActiveTimeRanges();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChromeOsDeviceActiveTimeRanges.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChromeOsDeviceActiveTimeRanges(od);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceCpuInfoLogicalCpusCStates', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChromeOsDeviceCpuInfoLogicalCpusCStates();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChromeOsDeviceCpuInfoLogicalCpusCStates.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChromeOsDeviceCpuInfoLogicalCpusCStates(od);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceCpuInfoLogicalCpus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChromeOsDeviceCpuInfoLogicalCpus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChromeOsDeviceCpuInfoLogicalCpus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChromeOsDeviceCpuInfoLogicalCpus(od);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceCpuInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChromeOsDeviceCpuInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChromeOsDeviceCpuInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChromeOsDeviceCpuInfo(od);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildChromeOsDeviceCpuStatusReportsCpuTemperatureInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChromeOsDeviceCpuStatusReportsCpuTemperatureInfo(od);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceCpuStatusReports', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChromeOsDeviceCpuStatusReports();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChromeOsDeviceCpuStatusReports.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChromeOsDeviceCpuStatusReports(od);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceDeviceFiles', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChromeOsDeviceDeviceFiles();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChromeOsDeviceDeviceFiles.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChromeOsDeviceDeviceFiles(od);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceDiskVolumeReportsVolumeInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChromeOsDeviceDiskVolumeReportsVolumeInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChromeOsDeviceDiskVolumeReportsVolumeInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChromeOsDeviceDiskVolumeReportsVolumeInfo(od);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceDiskVolumeReports', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChromeOsDeviceDiskVolumeReports();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChromeOsDeviceDiskVolumeReports.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChromeOsDeviceDiskVolumeReports(od);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceLastKnownNetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChromeOsDeviceLastKnownNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChromeOsDeviceLastKnownNetwork.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChromeOsDeviceLastKnownNetwork(od);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceRecentUsers', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChromeOsDeviceRecentUsers();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChromeOsDeviceRecentUsers.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChromeOsDeviceRecentUsers(od);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceScreenshotFiles', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChromeOsDeviceScreenshotFiles();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChromeOsDeviceScreenshotFiles.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChromeOsDeviceScreenshotFiles(od);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceSystemRamFreeReports', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChromeOsDeviceSystemRamFreeReports();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChromeOsDeviceSystemRamFreeReports.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChromeOsDeviceSystemRamFreeReports(od);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceTpmVersionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChromeOsDeviceTpmVersionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChromeOsDeviceTpmVersionInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChromeOsDeviceTpmVersionInfo(od);
    });
  });

  unittest.group('obj-schema-ChromeOsDevice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChromeOsDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChromeOsDevice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChromeOsDevice(od);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChromeOsDeviceAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChromeOsDeviceAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChromeOsDeviceAction(od);
    });
  });

  unittest.group('obj-schema-ChromeOsDevices', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChromeOsDevices();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChromeOsDevices.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChromeOsDevices(od);
    });
  });

  unittest.group('obj-schema-ChromeOsMoveDevicesToOu', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChromeOsMoveDevicesToOu();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChromeOsMoveDevicesToOu.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChromeOsMoveDevicesToOu(od);
    });
  });

  unittest.group('obj-schema-CreatePrinterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreatePrinterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreatePrinterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreatePrinterRequest(od);
    });
  });

  unittest.group('obj-schema-Customer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Customer.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCustomer(od);
    });
  });

  unittest.group('obj-schema-CustomerPostalAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerPostalAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerPostalAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerPostalAddress(od);
    });
  });

  unittest.group('obj-schema-DirectoryChromeosdevicesCommand', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDirectoryChromeosdevicesCommand();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DirectoryChromeosdevicesCommand.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDirectoryChromeosdevicesCommand(od);
    });
  });

  unittest.group('obj-schema-DirectoryChromeosdevicesCommandResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDirectoryChromeosdevicesCommandResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DirectoryChromeosdevicesCommandResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDirectoryChromeosdevicesCommandResult(od);
    });
  });

  unittest.group('obj-schema-DirectoryChromeosdevicesIssueCommandRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDirectoryChromeosdevicesIssueCommandRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DirectoryChromeosdevicesIssueCommandRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDirectoryChromeosdevicesIssueCommandRequest(od);
    });
  });

  unittest.group('obj-schema-DirectoryChromeosdevicesIssueCommandResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDirectoryChromeosdevicesIssueCommandResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DirectoryChromeosdevicesIssueCommandResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDirectoryChromeosdevicesIssueCommandResponse(od);
    });
  });

  unittest.group('obj-schema-DomainAlias', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomainAlias();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DomainAlias.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDomainAlias(od);
    });
  });

  unittest.group('obj-schema-DomainAliases', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomainAliases();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DomainAliases.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDomainAliases(od);
    });
  });

  unittest.group('obj-schema-Domains', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomains();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Domains.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDomains(od);
    });
  });

  unittest.group('obj-schema-Domains2', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomains2();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Domains2.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDomains2(od);
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

  unittest.group('obj-schema-FailureInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFailureInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FailureInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFailureInfo(od);
    });
  });

  unittest.group('obj-schema-Feature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFeature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Feature.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFeature(od);
    });
  });

  unittest.group('obj-schema-FeatureRename', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFeatureRename();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FeatureRename.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFeatureRename(od);
    });
  });

  unittest.group('obj-schema-Features', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFeatures();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Features.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFeatures(od);
    });
  });

  unittest.group('obj-schema-Group', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Group.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGroup(od);
    });
  });

  unittest.group('obj-schema-Groups', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroups();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Groups.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGroups(od);
    });
  });

  unittest.group('obj-schema-ListPrinterModelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPrinterModelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPrinterModelsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPrinterModelsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPrintersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPrintersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPrintersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPrintersResponse(od);
    });
  });

  unittest.group('obj-schema-Member', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMember();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Member.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMember(od);
    });
  });

  unittest.group('obj-schema-Members', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembers();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Members.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMembers(od);
    });
  });

  unittest.group('obj-schema-MembersHasMember', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembersHasMember();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembersHasMember.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembersHasMember(od);
    });
  });

  unittest.group('obj-schema-MobileDeviceApplications', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMobileDeviceApplications();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MobileDeviceApplications.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMobileDeviceApplications(od);
    });
  });

  unittest.group('obj-schema-MobileDevice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMobileDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MobileDevice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMobileDevice(od);
    });
  });

  unittest.group('obj-schema-MobileDeviceAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMobileDeviceAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MobileDeviceAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMobileDeviceAction(od);
    });
  });

  unittest.group('obj-schema-MobileDevices', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMobileDevices();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MobileDevices.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMobileDevices(od);
    });
  });

  unittest.group('obj-schema-OrgUnit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrgUnit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OrgUnit.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOrgUnit(od);
    });
  });

  unittest.group('obj-schema-OrgUnits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrgUnits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OrgUnits.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOrgUnits(od);
    });
  });

  unittest.group('obj-schema-Printer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrinter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Printer.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPrinter(od);
    });
  });

  unittest.group('obj-schema-PrinterModel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrinterModel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrinterModel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrinterModel(od);
    });
  });

  unittest.group('obj-schema-Privilege', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrivilege();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Privilege.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPrivilege(od);
    });
  });

  unittest.group('obj-schema-Privileges', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrivileges();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Privileges.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPrivileges(od);
    });
  });

  unittest.group('obj-schema-RoleRolePrivileges', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRoleRolePrivileges();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RoleRolePrivileges.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRoleRolePrivileges(od);
    });
  });

  unittest.group('obj-schema-Role', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRole();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Role.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRole(od);
    });
  });

  unittest.group('obj-schema-RoleAssignment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRoleAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RoleAssignment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRoleAssignment(od);
    });
  });

  unittest.group('obj-schema-RoleAssignments', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRoleAssignments();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RoleAssignments.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRoleAssignments(od);
    });
  });

  unittest.group('obj-schema-Roles', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRoles();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Roles.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRoles(od);
    });
  });

  unittest.group('obj-schema-Schema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Schema.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSchema(od);
    });
  });

  unittest.group('obj-schema-SchemaFieldSpecNumericIndexingSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchemaFieldSpecNumericIndexingSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchemaFieldSpecNumericIndexingSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSchemaFieldSpecNumericIndexingSpec(od);
    });
  });

  unittest.group('obj-schema-SchemaFieldSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchemaFieldSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchemaFieldSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSchemaFieldSpec(od);
    });
  });

  unittest.group('obj-schema-Schemas', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchemas();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Schemas.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSchemas(od);
    });
  });

  unittest.group('obj-schema-Token', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Token.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkToken(od);
    });
  });

  unittest.group('obj-schema-Tokens', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTokens();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Tokens.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTokens(od);
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

  unittest.group('obj-schema-UserCustomProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserCustomProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserCustomProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserCustomProperties(od);
    });
  });

  unittest.group('obj-schema-UserMakeAdmin', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserMakeAdmin();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserMakeAdmin.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserMakeAdmin(od);
    });
  });

  unittest.group('obj-schema-UserName', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserName();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.UserName.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUserName(od);
    });
  });

  unittest.group('obj-schema-UserPhoto', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserPhoto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.UserPhoto.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUserPhoto(od);
    });
  });

  unittest.group('obj-schema-UserUndelete', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserUndelete();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserUndelete.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserUndelete(od);
    });
  });

  unittest.group('obj-schema-Users', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsers();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Users.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUsers(od);
    });
  });

  unittest.group('obj-schema-VerificationCode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerificationCode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerificationCode.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVerificationCode(od);
    });
  });

  unittest.group('obj-schema-VerificationCodes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerificationCodes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerificationCodes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVerificationCodes(od);
    });
  });

  unittest.group('resource-AspsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).asps;
      final arg_userKey = 'foo';
      final arg_codeId = 42;
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        index = path.indexOf('/asps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/asps/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_codeId'),
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
      await res.delete(arg_userKey, arg_codeId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).asps;
      final arg_userKey = 'foo';
      final arg_codeId = 42;
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        index = path.indexOf('/asps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/asps/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_codeId'),
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
        final resp = convert.json.encode(buildAsp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_userKey, arg_codeId, $fields: arg_$fields);
      checkAsp(response as api.Asp);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).asps;
      final arg_userKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        index = path.indexOf('/asps', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/asps'),
        );
        pathOffset += 5;

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
        final resp = convert.json.encode(buildAsps());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_userKey, $fields: arg_$fields);
      checkAsps(response as api.Asps);
    });
  });

  unittest.group('resource-ChannelsResource', () {
    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).channels;
      final arg_request = buildChannel();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj);

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
          unittest.equals('admin/directory_v1/channels/stop'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.stop(arg_request, $fields: arg_$fields);
    });
  });

  unittest.group('resource-ChromeosdevicesResource', () {
    unittest.test('method--action', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).chromeosdevices;
      final arg_request = buildChromeOsDeviceAction();
      final arg_customerId = 'foo';
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ChromeOsDeviceAction.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkChromeOsDeviceAction(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/devices/chromeos/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/devices/chromeos/'),
        );
        pathOffset += 18;
        index = path.indexOf('/action', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_resourceId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/action'),
        );
        pathOffset += 7;

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
      await res.action(arg_request, arg_customerId, arg_resourceId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).chromeosdevices;
      final arg_customerId = 'foo';
      final arg_deviceId = 'foo';
      final arg_projection = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/devices/chromeos/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/devices/chromeos/'),
        );
        pathOffset += 18;
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
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChromeOsDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_customerId, arg_deviceId,
          projection: arg_projection, $fields: arg_$fields);
      checkChromeOsDevice(response as api.ChromeOsDevice);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).chromeosdevices;
      final arg_customerId = 'foo';
      final arg_includeChildOrgunits = true;
      final arg_maxResults = 42;
      final arg_orderBy = 'foo';
      final arg_orgUnitPath = 'foo';
      final arg_pageToken = 'foo';
      final arg_projection = 'foo';
      final arg_query = 'foo';
      final arg_sortOrder = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/devices/chromeos', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/devices/chromeos'),
        );
        pathOffset += 17;

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
          queryMap['includeChildOrgunits']!.first,
          unittest.equals('$arg_includeChildOrgunits'),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          queryMap['orgUnitPath']!.first,
          unittest.equals(arg_orgUnitPath),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChromeOsDevices());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_customerId,
          includeChildOrgunits: arg_includeChildOrgunits,
          maxResults: arg_maxResults,
          orderBy: arg_orderBy,
          orgUnitPath: arg_orgUnitPath,
          pageToken: arg_pageToken,
          projection: arg_projection,
          query: arg_query,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkChromeOsDevices(response as api.ChromeOsDevices);
    });

    unittest.test('method--moveDevicesToOu', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).chromeosdevices;
      final arg_request = buildChromeOsMoveDevicesToOu();
      final arg_customerId = 'foo';
      final arg_orgUnitPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ChromeOsMoveDevicesToOu.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkChromeOsMoveDevicesToOu(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/devices/chromeos/moveDevicesToOu', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('/devices/chromeos/moveDevicesToOu'),
        );
        pathOffset += 33;

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
          queryMap['orgUnitPath']!.first,
          unittest.equals(arg_orgUnitPath),
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
      await res.moveDevicesToOu(arg_request, arg_customerId, arg_orgUnitPath,
          $fields: arg_$fields);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).chromeosdevices;
      final arg_request = buildChromeOsDevice();
      final arg_customerId = 'foo';
      final arg_deviceId = 'foo';
      final arg_projection = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ChromeOsDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkChromeOsDevice(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/devices/chromeos/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/devices/chromeos/'),
        );
        pathOffset += 18;
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
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChromeOsDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_customerId, arg_deviceId,
          projection: arg_projection, $fields: arg_$fields);
      checkChromeOsDevice(response as api.ChromeOsDevice);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).chromeosdevices;
      final arg_request = buildChromeOsDevice();
      final arg_customerId = 'foo';
      final arg_deviceId = 'foo';
      final arg_projection = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ChromeOsDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkChromeOsDevice(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/devices/chromeos/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/devices/chromeos/'),
        );
        pathOffset += 18;
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
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChromeOsDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_customerId, arg_deviceId,
          projection: arg_projection, $fields: arg_$fields);
      checkChromeOsDevice(response as api.ChromeOsDevice);
    });
  });

  unittest.group('resource-CustomerDevicesChromeosResource', () {
    unittest.test('method--issueCommand', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).customer.devices.chromeos;
      final arg_request = buildDirectoryChromeosdevicesIssueCommandRequest();
      final arg_customerId = 'foo';
      final arg_deviceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DirectoryChromeosdevicesIssueCommandRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDirectoryChromeosdevicesIssueCommandRequest(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/devices/chromeos/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/devices/chromeos/'),
        );
        pathOffset += 18;
        index = path.indexOf(':issueCommand', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deviceId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals(':issueCommand'),
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
        final resp = convert.json
            .encode(buildDirectoryChromeosdevicesIssueCommandResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.issueCommand(
          arg_request, arg_customerId, arg_deviceId,
          $fields: arg_$fields);
      checkDirectoryChromeosdevicesIssueCommandResponse(
          response as api.DirectoryChromeosdevicesIssueCommandResponse);
    });
  });

  unittest.group('resource-CustomerDevicesChromeosCommandsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).customer.devices.chromeos.commands;
      final arg_customerId = 'foo';
      final arg_deviceId = 'foo';
      final arg_commandId = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/devices/chromeos/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/devices/chromeos/'),
        );
        pathOffset += 18;
        index = path.indexOf('/commands/', pathOffset);
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
          unittest.equals('/commands/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_commandId'),
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
        final resp =
            convert.json.encode(buildDirectoryChromeosdevicesCommand());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_customerId, arg_deviceId, arg_commandId,
          $fields: arg_$fields);
      checkDirectoryChromeosdevicesCommand(
          response as api.DirectoryChromeosdevicesCommand);
    });
  });

  unittest.group('resource-CustomersResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).customers;
      final arg_customerKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('admin/directory/v1/customers/'),
        );
        pathOffset += 29;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerKey'),
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
        final resp = convert.json.encode(buildCustomer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_customerKey, $fields: arg_$fields);
      checkCustomer(response as api.Customer);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).customers;
      final arg_request = buildCustomer();
      final arg_customerKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Customer.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCustomer(obj);

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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('admin/directory/v1/customers/'),
        );
        pathOffset += 29;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerKey'),
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
        final resp = convert.json.encode(buildCustomer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_customerKey, $fields: arg_$fields);
      checkCustomer(response as api.Customer);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).customers;
      final arg_request = buildCustomer();
      final arg_customerKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Customer.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCustomer(obj);

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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('admin/directory/v1/customers/'),
        );
        pathOffset += 29;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerKey'),
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
        final resp = convert.json.encode(buildCustomer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_customerKey, $fields: arg_$fields);
      checkCustomer(response as api.Customer);
    });
  });

  unittest.group('resource-CustomersChromePrintersResource', () {
    unittest.test('method--batchCreatePrinters', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).customers.chrome.printers;
      final arg_request = buildBatchCreatePrintersRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchCreatePrintersRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchCreatePrintersRequest(obj);

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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('admin/directory/v1/'),
        );
        pathOffset += 19;
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
        final resp = convert.json.encode(buildBatchCreatePrintersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchCreatePrinters(arg_request, arg_parent,
          $fields: arg_$fields);
      checkBatchCreatePrintersResponse(
          response as api.BatchCreatePrintersResponse);
    });

    unittest.test('method--batchDeletePrinters', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).customers.chrome.printers;
      final arg_request = buildBatchDeletePrintersRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchDeletePrintersRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchDeletePrintersRequest(obj);

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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('admin/directory/v1/'),
        );
        pathOffset += 19;
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
        final resp = convert.json.encode(buildBatchDeletePrintersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchDeletePrinters(arg_request, arg_parent,
          $fields: arg_$fields);
      checkBatchDeletePrintersResponse(
          response as api.BatchDeletePrintersResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).customers.chrome.printers;
      final arg_request = buildPrinter();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Printer.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPrinter(obj);

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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('admin/directory/v1/'),
        );
        pathOffset += 19;
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
        final resp = convert.json.encode(buildPrinter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkPrinter(response as api.Printer);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).customers.chrome.printers;
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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('admin/directory/v1/'),
        );
        pathOffset += 19;
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
      final res = api.DirectoryApi(mock).customers.chrome.printers;
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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('admin/directory/v1/'),
        );
        pathOffset += 19;
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
        final resp = convert.json.encode(buildPrinter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPrinter(response as api.Printer);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).customers.chrome.printers;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orgUnitId = 'foo';
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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('admin/directory/v1/'),
        );
        pathOffset += 19;
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
          queryMap['orgUnitId']!.first,
          unittest.equals(arg_orgUnitId),
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
        final resp = convert.json.encode(buildListPrintersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orgUnitId: arg_orgUnitId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPrintersResponse(response as api.ListPrintersResponse);
    });

    unittest.test('method--listPrinterModels', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).customers.chrome.printers;
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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('admin/directory/v1/'),
        );
        pathOffset += 19;
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
        final resp = convert.json.encode(buildListPrinterModelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listPrinterModels(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPrinterModelsResponse(response as api.ListPrinterModelsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).customers.chrome.printers;
      final arg_request = buildPrinter();
      final arg_name = 'foo';
      final arg_clearMask = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Printer.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPrinter(obj);

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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('admin/directory/v1/'),
        );
        pathOffset += 19;
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
          queryMap['clearMask']!.first,
          unittest.equals(arg_clearMask),
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
        final resp = convert.json.encode(buildPrinter());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          clearMask: arg_clearMask,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkPrinter(response as api.Printer);
    });
  });

  unittest.group('resource-DomainAliasesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).domainAliases;
      final arg_customer = 'foo';
      final arg_domainAliasName = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/domainaliases/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/domainaliases/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_domainAliasName'),
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
      await res.delete(arg_customer, arg_domainAliasName, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).domainAliases;
      final arg_customer = 'foo';
      final arg_domainAliasName = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/domainaliases/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/domainaliases/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_domainAliasName'),
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
        final resp = convert.json.encode(buildDomainAlias());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_customer, arg_domainAliasName,
          $fields: arg_$fields);
      checkDomainAlias(response as api.DomainAlias);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).domainAliases;
      final arg_request = buildDomainAlias();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DomainAlias.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDomainAlias(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/domainaliases', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/domainaliases'),
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
        final resp = convert.json.encode(buildDomainAlias());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_customer, $fields: arg_$fields);
      checkDomainAlias(response as api.DomainAlias);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).domainAliases;
      final arg_customer = 'foo';
      final arg_parentDomainName = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/domainaliases', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/domainaliases'),
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
          queryMap['parentDomainName']!.first,
          unittest.equals(arg_parentDomainName),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDomainAliases());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_customer,
          parentDomainName: arg_parentDomainName, $fields: arg_$fields);
      checkDomainAliases(response as api.DomainAliases);
    });
  });

  unittest.group('resource-DomainsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).domains;
      final arg_customer = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/domains/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/domains/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_domainName'),
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
      await res.delete(arg_customer, arg_domainName, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).domains;
      final arg_customer = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/domains/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/domains/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_domainName'),
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
        final resp = convert.json.encode(buildDomains());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_customer, arg_domainName, $fields: arg_$fields);
      checkDomains(response as api.Domains);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).domains;
      final arg_request = buildDomains();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Domains.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDomains(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/domains', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/domains'),
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
        final resp = convert.json.encode(buildDomains());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_customer, $fields: arg_$fields);
      checkDomains(response as api.Domains);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).domains;
      final arg_customer = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/domains', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/domains'),
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
        final resp = convert.json.encode(buildDomains2());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_customer, $fields: arg_$fields);
      checkDomains2(response as api.Domains2);
    });
  });

  unittest.group('resource-GroupsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).groups;
      final arg_groupKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('admin/directory/v1/groups/'),
        );
        pathOffset += 26;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_groupKey'),
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
      await res.delete(arg_groupKey, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).groups;
      final arg_groupKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('admin/directory/v1/groups/'),
        );
        pathOffset += 26;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_groupKey'),
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
        final resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_groupKey, $fields: arg_$fields);
      checkGroup(response as api.Group);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).groups;
      final arg_request = buildGroup();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroup(obj);

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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/groups'),
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
        final resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkGroup(response as api.Group);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).groups;
      final arg_customer = 'foo';
      final arg_domain = 'foo';
      final arg_maxResults = 42;
      final arg_orderBy = 'foo';
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
      final arg_sortOrder = 'foo';
      final arg_userKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/groups'),
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
          queryMap['customer']!.first,
          unittest.equals(arg_customer),
        );
        unittest.expect(
          queryMap['domain']!.first,
          unittest.equals(arg_domain),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['userKey']!.first,
          unittest.equals(arg_userKey),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGroups());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          customer: arg_customer,
          domain: arg_domain,
          maxResults: arg_maxResults,
          orderBy: arg_orderBy,
          pageToken: arg_pageToken,
          query: arg_query,
          sortOrder: arg_sortOrder,
          userKey: arg_userKey,
          $fields: arg_$fields);
      checkGroups(response as api.Groups);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).groups;
      final arg_request = buildGroup();
      final arg_groupKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroup(obj);

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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('admin/directory/v1/groups/'),
        );
        pathOffset += 26;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_groupKey'),
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
        final resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_groupKey, $fields: arg_$fields);
      checkGroup(response as api.Group);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).groups;
      final arg_request = buildGroup();
      final arg_groupKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroup(obj);

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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('admin/directory/v1/groups/'),
        );
        pathOffset += 26;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_groupKey'),
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
        final resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_groupKey, $fields: arg_$fields);
      checkGroup(response as api.Group);
    });
  });

  unittest.group('resource-GroupsAliasesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).groups.aliases;
      final arg_groupKey = 'foo';
      final arg_alias = 'foo';
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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('admin/directory/v1/groups/'),
        );
        pathOffset += 26;
        index = path.indexOf('/aliases/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_groupKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/aliases/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_alias'),
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
      await res.delete(arg_groupKey, arg_alias, $fields: arg_$fields);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).groups.aliases;
      final arg_request = buildAlias();
      final arg_groupKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Alias.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAlias(obj);

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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('admin/directory/v1/groups/'),
        );
        pathOffset += 26;
        index = path.indexOf('/aliases', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_groupKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/aliases'),
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
        final resp = convert.json.encode(buildAlias());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_groupKey, $fields: arg_$fields);
      checkAlias(response as api.Alias);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).groups.aliases;
      final arg_groupKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('admin/directory/v1/groups/'),
        );
        pathOffset += 26;
        index = path.indexOf('/aliases', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_groupKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/aliases'),
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
        final resp = convert.json.encode(buildAliases());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_groupKey, $fields: arg_$fields);
      checkAliases(response as api.Aliases);
    });
  });

  unittest.group('resource-MembersResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).members;
      final arg_groupKey = 'foo';
      final arg_memberKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('admin/directory/v1/groups/'),
        );
        pathOffset += 26;
        index = path.indexOf('/members/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_groupKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/members/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_memberKey'),
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
      await res.delete(arg_groupKey, arg_memberKey, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).members;
      final arg_groupKey = 'foo';
      final arg_memberKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('admin/directory/v1/groups/'),
        );
        pathOffset += 26;
        index = path.indexOf('/members/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_groupKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/members/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_memberKey'),
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
        final resp = convert.json.encode(buildMember());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_groupKey, arg_memberKey, $fields: arg_$fields);
      checkMember(response as api.Member);
    });

    unittest.test('method--hasMember', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).members;
      final arg_groupKey = 'foo';
      final arg_memberKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('admin/directory/v1/groups/'),
        );
        pathOffset += 26;
        index = path.indexOf('/hasMember/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_groupKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/hasMember/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_memberKey'),
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
        final resp = convert.json.encode(buildMembersHasMember());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.hasMember(arg_groupKey, arg_memberKey,
          $fields: arg_$fields);
      checkMembersHasMember(response as api.MembersHasMember);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).members;
      final arg_request = buildMember();
      final arg_groupKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Member.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMember(obj);

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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('admin/directory/v1/groups/'),
        );
        pathOffset += 26;
        index = path.indexOf('/members', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_groupKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/members'),
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
        final resp = convert.json.encode(buildMember());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_groupKey, $fields: arg_$fields);
      checkMember(response as api.Member);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).members;
      final arg_groupKey = 'foo';
      final arg_includeDerivedMembership = true;
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_roles = 'foo';
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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('admin/directory/v1/groups/'),
        );
        pathOffset += 26;
        index = path.indexOf('/members', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_groupKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/members'),
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
          queryMap['includeDerivedMembership']!.first,
          unittest.equals('$arg_includeDerivedMembership'),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['roles']!.first,
          unittest.equals(arg_roles),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMembers());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_groupKey,
          includeDerivedMembership: arg_includeDerivedMembership,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          roles: arg_roles,
          $fields: arg_$fields);
      checkMembers(response as api.Members);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).members;
      final arg_request = buildMember();
      final arg_groupKey = 'foo';
      final arg_memberKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Member.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMember(obj);

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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('admin/directory/v1/groups/'),
        );
        pathOffset += 26;
        index = path.indexOf('/members/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_groupKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/members/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_memberKey'),
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
        final resp = convert.json.encode(buildMember());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_groupKey, arg_memberKey,
          $fields: arg_$fields);
      checkMember(response as api.Member);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).members;
      final arg_request = buildMember();
      final arg_groupKey = 'foo';
      final arg_memberKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Member.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMember(obj);

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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('admin/directory/v1/groups/'),
        );
        pathOffset += 26;
        index = path.indexOf('/members/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_groupKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/members/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_memberKey'),
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
        final resp = convert.json.encode(buildMember());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_groupKey, arg_memberKey,
          $fields: arg_$fields);
      checkMember(response as api.Member);
    });
  });

  unittest.group('resource-MobiledevicesResource', () {
    unittest.test('method--action', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).mobiledevices;
      final arg_request = buildMobileDeviceAction();
      final arg_customerId = 'foo';
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.MobileDeviceAction.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMobileDeviceAction(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/devices/mobile/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/devices/mobile/'),
        );
        pathOffset += 16;
        index = path.indexOf('/action', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_resourceId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/action'),
        );
        pathOffset += 7;

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
      await res.action(arg_request, arg_customerId, arg_resourceId,
          $fields: arg_$fields);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).mobiledevices;
      final arg_customerId = 'foo';
      final arg_resourceId = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/devices/mobile/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/devices/mobile/'),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_resourceId'),
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
      await res.delete(arg_customerId, arg_resourceId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).mobiledevices;
      final arg_customerId = 'foo';
      final arg_resourceId = 'foo';
      final arg_projection = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/devices/mobile/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/devices/mobile/'),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_resourceId'),
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
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMobileDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_customerId, arg_resourceId,
          projection: arg_projection, $fields: arg_$fields);
      checkMobileDevice(response as api.MobileDevice);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).mobiledevices;
      final arg_customerId = 'foo';
      final arg_maxResults = 42;
      final arg_orderBy = 'foo';
      final arg_pageToken = 'foo';
      final arg_projection = 'foo';
      final arg_query = 'foo';
      final arg_sortOrder = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/devices/mobile', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/devices/mobile'),
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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMobileDevices());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_customerId,
          maxResults: arg_maxResults,
          orderBy: arg_orderBy,
          pageToken: arg_pageToken,
          projection: arg_projection,
          query: arg_query,
          sortOrder: arg_sortOrder,
          $fields: arg_$fields);
      checkMobileDevices(response as api.MobileDevices);
    });
  });

  unittest.group('resource-OrgunitsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).orgunits;
      final arg_customerId = 'foo';
      final arg_orgUnitPath = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/orgunits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/orgunits/'),
        );
        pathOffset += 10;
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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_customerId, arg_orgUnitPath, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).orgunits;
      final arg_customerId = 'foo';
      final arg_orgUnitPath = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/orgunits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/orgunits/'),
        );
        pathOffset += 10;
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
        final resp = convert.json.encode(buildOrgUnit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_customerId, arg_orgUnitPath, $fields: arg_$fields);
      checkOrgUnit(response as api.OrgUnit);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).orgunits;
      final arg_request = buildOrgUnit();
      final arg_customerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.OrgUnit.fromJson(json as core.Map<core.String, core.dynamic>);
        checkOrgUnit(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/orgunits', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/orgunits'),
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
        final resp = convert.json.encode(buildOrgUnit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_customerId, $fields: arg_$fields);
      checkOrgUnit(response as api.OrgUnit);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).orgunits;
      final arg_customerId = 'foo';
      final arg_orgUnitPath = 'foo';
      final arg_type = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/orgunits', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/orgunits'),
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
          queryMap['orgUnitPath']!.first,
          unittest.equals(arg_orgUnitPath),
        );
        unittest.expect(
          queryMap['type']!.first,
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOrgUnits());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_customerId,
          orgUnitPath: arg_orgUnitPath, type: arg_type, $fields: arg_$fields);
      checkOrgUnits(response as api.OrgUnits);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).orgunits;
      final arg_request = buildOrgUnit();
      final arg_customerId = 'foo';
      final arg_orgUnitPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.OrgUnit.fromJson(json as core.Map<core.String, core.dynamic>);
        checkOrgUnit(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/orgunits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/orgunits/'),
        );
        pathOffset += 10;
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
        final resp = convert.json.encode(buildOrgUnit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_customerId, arg_orgUnitPath,
          $fields: arg_$fields);
      checkOrgUnit(response as api.OrgUnit);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).orgunits;
      final arg_request = buildOrgUnit();
      final arg_customerId = 'foo';
      final arg_orgUnitPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.OrgUnit.fromJson(json as core.Map<core.String, core.dynamic>);
        checkOrgUnit(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/orgunits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/orgunits/'),
        );
        pathOffset += 10;
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
        final resp = convert.json.encode(buildOrgUnit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_customerId, arg_orgUnitPath,
          $fields: arg_$fields);
      checkOrgUnit(response as api.OrgUnit);
    });
  });

  unittest.group('resource-PrivilegesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).privileges;
      final arg_customer = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/roles/ALL/privileges', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/roles/ALL/privileges'),
        );
        pathOffset += 21;

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
        final resp = convert.json.encode(buildPrivileges());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_customer, $fields: arg_$fields);
      checkPrivileges(response as api.Privileges);
    });
  });

  unittest.group('resource-ResourcesBuildingsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).resources.buildings;
      final arg_customer = 'foo';
      final arg_buildingId = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/resources/buildings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/resources/buildings/'),
        );
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_buildingId'),
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
      await res.delete(arg_customer, arg_buildingId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).resources.buildings;
      final arg_customer = 'foo';
      final arg_buildingId = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/resources/buildings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/resources/buildings/'),
        );
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_buildingId'),
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
        final resp = convert.json.encode(buildBuilding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_customer, arg_buildingId, $fields: arg_$fields);
      checkBuilding(response as api.Building);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).resources.buildings;
      final arg_request = buildBuilding();
      final arg_customer = 'foo';
      final arg_coordinatesSource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Building.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBuilding(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/resources/buildings', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/resources/buildings'),
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
          queryMap['coordinatesSource']!.first,
          unittest.equals(arg_coordinatesSource),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBuilding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_customer,
          coordinatesSource: arg_coordinatesSource, $fields: arg_$fields);
      checkBuilding(response as api.Building);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).resources.buildings;
      final arg_customer = 'foo';
      final arg_maxResults = 42;
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/resources/buildings', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/resources/buildings'),
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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
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
        final resp = convert.json.encode(buildBuildings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_customer,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkBuildings(response as api.Buildings);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).resources.buildings;
      final arg_request = buildBuilding();
      final arg_customer = 'foo';
      final arg_buildingId = 'foo';
      final arg_coordinatesSource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Building.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBuilding(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/resources/buildings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/resources/buildings/'),
        );
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_buildingId'),
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
          queryMap['coordinatesSource']!.first,
          unittest.equals(arg_coordinatesSource),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBuilding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_customer, arg_buildingId,
          coordinatesSource: arg_coordinatesSource, $fields: arg_$fields);
      checkBuilding(response as api.Building);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).resources.buildings;
      final arg_request = buildBuilding();
      final arg_customer = 'foo';
      final arg_buildingId = 'foo';
      final arg_coordinatesSource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Building.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBuilding(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/resources/buildings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/resources/buildings/'),
        );
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_buildingId'),
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
          queryMap['coordinatesSource']!.first,
          unittest.equals(arg_coordinatesSource),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBuilding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_customer, arg_buildingId,
          coordinatesSource: arg_coordinatesSource, $fields: arg_$fields);
      checkBuilding(response as api.Building);
    });
  });

  unittest.group('resource-ResourcesCalendarsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).resources.calendars;
      final arg_customer = 'foo';
      final arg_calendarResourceId = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/resources/calendars/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/resources/calendars/'),
        );
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_calendarResourceId'),
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
      await res.delete(arg_customer, arg_calendarResourceId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).resources.calendars;
      final arg_customer = 'foo';
      final arg_calendarResourceId = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/resources/calendars/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/resources/calendars/'),
        );
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_calendarResourceId'),
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
        final resp = convert.json.encode(buildCalendarResource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_customer, arg_calendarResourceId,
          $fields: arg_$fields);
      checkCalendarResource(response as api.CalendarResource);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).resources.calendars;
      final arg_request = buildCalendarResource();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CalendarResource.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCalendarResource(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/resources/calendars', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/resources/calendars'),
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
        final resp = convert.json.encode(buildCalendarResource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_customer, $fields: arg_$fields);
      checkCalendarResource(response as api.CalendarResource);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).resources.calendars;
      final arg_customer = 'foo';
      final arg_maxResults = 42;
      final arg_orderBy = 'foo';
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/resources/calendars', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/resources/calendars'),
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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
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
        final resp = convert.json.encode(buildCalendarResources());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_customer,
          maxResults: arg_maxResults,
          orderBy: arg_orderBy,
          pageToken: arg_pageToken,
          query: arg_query,
          $fields: arg_$fields);
      checkCalendarResources(response as api.CalendarResources);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).resources.calendars;
      final arg_request = buildCalendarResource();
      final arg_customer = 'foo';
      final arg_calendarResourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CalendarResource.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCalendarResource(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/resources/calendars/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/resources/calendars/'),
        );
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_calendarResourceId'),
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
        final resp = convert.json.encode(buildCalendarResource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_customer, arg_calendarResourceId,
          $fields: arg_$fields);
      checkCalendarResource(response as api.CalendarResource);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).resources.calendars;
      final arg_request = buildCalendarResource();
      final arg_customer = 'foo';
      final arg_calendarResourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CalendarResource.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCalendarResource(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/resources/calendars/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/resources/calendars/'),
        );
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_calendarResourceId'),
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
        final resp = convert.json.encode(buildCalendarResource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_customer, arg_calendarResourceId,
          $fields: arg_$fields);
      checkCalendarResource(response as api.CalendarResource);
    });
  });

  unittest.group('resource-ResourcesFeaturesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).resources.features;
      final arg_customer = 'foo';
      final arg_featureKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/resources/features/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/resources/features/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_featureKey'),
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
      await res.delete(arg_customer, arg_featureKey, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).resources.features;
      final arg_customer = 'foo';
      final arg_featureKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/resources/features/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/resources/features/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_featureKey'),
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
        final resp = convert.json.encode(buildFeature());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_customer, arg_featureKey, $fields: arg_$fields);
      checkFeature(response as api.Feature);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).resources.features;
      final arg_request = buildFeature();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Feature.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFeature(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/resources/features', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/resources/features'),
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
        final resp = convert.json.encode(buildFeature());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_customer, $fields: arg_$fields);
      checkFeature(response as api.Feature);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).resources.features;
      final arg_customer = 'foo';
      final arg_maxResults = 42;
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/resources/features', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/resources/features'),
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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
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
        final resp = convert.json.encode(buildFeatures());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_customer,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkFeatures(response as api.Features);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).resources.features;
      final arg_request = buildFeature();
      final arg_customer = 'foo';
      final arg_featureKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Feature.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFeature(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/resources/features/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/resources/features/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_featureKey'),
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
        final resp = convert.json.encode(buildFeature());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_customer, arg_featureKey,
          $fields: arg_$fields);
      checkFeature(response as api.Feature);
    });

    unittest.test('method--rename', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).resources.features;
      final arg_request = buildFeatureRename();
      final arg_customer = 'foo';
      final arg_oldName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FeatureRename.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFeatureRename(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/resources/features/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/resources/features/'),
        );
        pathOffset += 20;
        index = path.indexOf('/rename', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_oldName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/rename'),
        );
        pathOffset += 7;

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
      await res.rename(arg_request, arg_customer, arg_oldName,
          $fields: arg_$fields);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).resources.features;
      final arg_request = buildFeature();
      final arg_customer = 'foo';
      final arg_featureKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Feature.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFeature(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/resources/features/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/resources/features/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_featureKey'),
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
        final resp = convert.json.encode(buildFeature());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_customer, arg_featureKey,
          $fields: arg_$fields);
      checkFeature(response as api.Feature);
    });
  });

  unittest.group('resource-RoleAssignmentsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).roleAssignments;
      final arg_customer = 'foo';
      final arg_roleAssignmentId = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/roleassignments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/roleassignments/'),
        );
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_roleAssignmentId'),
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
      await res.delete(arg_customer, arg_roleAssignmentId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).roleAssignments;
      final arg_customer = 'foo';
      final arg_roleAssignmentId = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/roleassignments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/roleassignments/'),
        );
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_roleAssignmentId'),
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
        final resp = convert.json.encode(buildRoleAssignment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_customer, arg_roleAssignmentId,
          $fields: arg_$fields);
      checkRoleAssignment(response as api.RoleAssignment);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).roleAssignments;
      final arg_request = buildRoleAssignment();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RoleAssignment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRoleAssignment(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/roleassignments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/roleassignments'),
        );
        pathOffset += 16;

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
        final resp = convert.json.encode(buildRoleAssignment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_customer, $fields: arg_$fields);
      checkRoleAssignment(response as api.RoleAssignment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).roleAssignments;
      final arg_customer = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_roleId = 'foo';
      final arg_userKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/roleassignments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/roleassignments'),
        );
        pathOffset += 16;

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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['roleId']!.first,
          unittest.equals(arg_roleId),
        );
        unittest.expect(
          queryMap['userKey']!.first,
          unittest.equals(arg_userKey),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRoleAssignments());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_customer,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          roleId: arg_roleId,
          userKey: arg_userKey,
          $fields: arg_$fields);
      checkRoleAssignments(response as api.RoleAssignments);
    });
  });

  unittest.group('resource-RolesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).roles;
      final arg_customer = 'foo';
      final arg_roleId = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/roles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/roles/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_roleId'),
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
      await res.delete(arg_customer, arg_roleId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).roles;
      final arg_customer = 'foo';
      final arg_roleId = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/roles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/roles/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_roleId'),
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
        final resp = convert.json.encode(buildRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_customer, arg_roleId, $fields: arg_$fields);
      checkRole(response as api.Role);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).roles;
      final arg_request = buildRole();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Role.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRole(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/roles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/roles'),
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
        final resp = convert.json.encode(buildRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_customer, $fields: arg_$fields);
      checkRole(response as api.Role);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).roles;
      final arg_customer = 'foo';
      final arg_maxResults = 42;
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/roles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/roles'),
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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
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
        final resp = convert.json.encode(buildRoles());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_customer,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkRoles(response as api.Roles);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).roles;
      final arg_request = buildRole();
      final arg_customer = 'foo';
      final arg_roleId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Role.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRole(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/roles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/roles/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_roleId'),
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
        final resp = convert.json.encode(buildRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_customer, arg_roleId,
          $fields: arg_$fields);
      checkRole(response as api.Role);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).roles;
      final arg_request = buildRole();
      final arg_customer = 'foo';
      final arg_roleId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Role.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRole(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/roles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customer'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/roles/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_roleId'),
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
        final resp = convert.json.encode(buildRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_customer, arg_roleId,
          $fields: arg_$fields);
      checkRole(response as api.Role);
    });
  });

  unittest.group('resource-SchemasResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).schemas;
      final arg_customerId = 'foo';
      final arg_schemaKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/schemas/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/schemas/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_schemaKey'),
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
      await res.delete(arg_customerId, arg_schemaKey, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).schemas;
      final arg_customerId = 'foo';
      final arg_schemaKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/schemas/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/schemas/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_schemaKey'),
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
        final resp = convert.json.encode(buildSchema());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_customerId, arg_schemaKey, $fields: arg_$fields);
      checkSchema(response as api.Schema);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).schemas;
      final arg_request = buildSchema();
      final arg_customerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Schema.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSchema(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/schemas', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/schemas'),
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
        final resp = convert.json.encode(buildSchema());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_customerId, $fields: arg_$fields);
      checkSchema(response as api.Schema);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).schemas;
      final arg_customerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/schemas', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/schemas'),
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
        final resp = convert.json.encode(buildSchemas());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_customerId, $fields: arg_$fields);
      checkSchemas(response as api.Schemas);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).schemas;
      final arg_request = buildSchema();
      final arg_customerId = 'foo';
      final arg_schemaKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Schema.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSchema(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/schemas/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/schemas/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_schemaKey'),
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
        final resp = convert.json.encode(buildSchema());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_customerId, arg_schemaKey,
          $fields: arg_$fields);
      checkSchema(response as api.Schema);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).schemas;
      final arg_request = buildSchema();
      final arg_customerId = 'foo';
      final arg_schemaKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Schema.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSchema(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('admin/directory/v1/customer/'),
        );
        pathOffset += 28;
        index = path.indexOf('/schemas/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_customerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/schemas/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_schemaKey'),
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
        final resp = convert.json.encode(buildSchema());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_customerId, arg_schemaKey,
          $fields: arg_$fields);
      checkSchema(response as api.Schema);
    });
  });

  unittest.group('resource-TokensResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).tokens;
      final arg_userKey = 'foo';
      final arg_clientId = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tokens/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clientId'),
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
      await res.delete(arg_userKey, arg_clientId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).tokens;
      final arg_userKey = 'foo';
      final arg_clientId = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tokens/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clientId'),
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
        final resp = convert.json.encode(buildToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_userKey, arg_clientId, $fields: arg_$fields);
      checkToken(response as api.Token);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).tokens;
      final arg_userKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        index = path.indexOf('/tokens', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/tokens'),
        );
        pathOffset += 7;

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
        final resp = convert.json.encode(buildTokens());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_userKey, $fields: arg_$fields);
      checkTokens(response as api.Tokens);
    });
  });

  unittest.group('resource-TwoStepVerificationResource', () {
    unittest.test('method--turnOff', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).twoStepVerification;
      final arg_userKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        index = path.indexOf('/twoStepVerification/turnOff', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('/twoStepVerification/turnOff'),
        );
        pathOffset += 28;

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
      await res.turnOff(arg_userKey, $fields: arg_$fields);
    });
  });

  unittest.group('resource-UsersResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).users;
      final arg_userKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
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
      await res.delete(arg_userKey, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).users;
      final arg_userKey = 'foo';
      final arg_customFieldMask = 'foo';
      final arg_projection = 'foo';
      final arg_viewType = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
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
          queryMap['customFieldMask']!.first,
          unittest.equals(arg_customFieldMask),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['viewType']!.first,
          unittest.equals(arg_viewType),
        );
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
      final response = await res.get(arg_userKey,
          customFieldMask: arg_customFieldMask,
          projection: arg_projection,
          viewType: arg_viewType,
          $fields: arg_$fields);
      checkUser(response as api.User);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).users;
      final arg_request = buildUser();
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
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('admin/directory/v1/users'),
        );
        pathOffset += 24;

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
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkUser(response as api.User);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).users;
      final arg_customFieldMask = 'foo';
      final arg_customer = 'foo';
      final arg_domain = 'foo';
      final arg_event = 'foo';
      final arg_maxResults = 42;
      final arg_orderBy = 'foo';
      final arg_pageToken = 'foo';
      final arg_projection = 'foo';
      final arg_query = 'foo';
      final arg_showDeleted = 'foo';
      final arg_sortOrder = 'foo';
      final arg_viewType = 'foo';
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
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('admin/directory/v1/users'),
        );
        pathOffset += 24;

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
          queryMap['customFieldMask']!.first,
          unittest.equals(arg_customFieldMask),
        );
        unittest.expect(
          queryMap['customer']!.first,
          unittest.equals(arg_customer),
        );
        unittest.expect(
          queryMap['domain']!.first,
          unittest.equals(arg_domain),
        );
        unittest.expect(
          queryMap['event']!.first,
          unittest.equals(arg_event),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['showDeleted']!.first,
          unittest.equals(arg_showDeleted),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['viewType']!.first,
          unittest.equals(arg_viewType),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUsers());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          customFieldMask: arg_customFieldMask,
          customer: arg_customer,
          domain: arg_domain,
          event: arg_event,
          maxResults: arg_maxResults,
          orderBy: arg_orderBy,
          pageToken: arg_pageToken,
          projection: arg_projection,
          query: arg_query,
          showDeleted: arg_showDeleted,
          sortOrder: arg_sortOrder,
          viewType: arg_viewType,
          $fields: arg_$fields);
      checkUsers(response as api.Users);
    });

    unittest.test('method--makeAdmin', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).users;
      final arg_request = buildUserMakeAdmin();
      final arg_userKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UserMakeAdmin.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUserMakeAdmin(obj);

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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        index = path.indexOf('/makeAdmin', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/makeAdmin'),
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
      await res.makeAdmin(arg_request, arg_userKey, $fields: arg_$fields);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).users;
      final arg_request = buildUser();
      final arg_userKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
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
          await res.patch(arg_request, arg_userKey, $fields: arg_$fields);
      checkUser(response as api.User);
    });

    unittest.test('method--signOut', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).users;
      final arg_userKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        index = path.indexOf('/signOut', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/signOut'),
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
      await res.signOut(arg_userKey, $fields: arg_$fields);
    });

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).users;
      final arg_request = buildUserUndelete();
      final arg_userKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UserUndelete.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUserUndelete(obj);

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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        index = path.indexOf('/undelete', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/undelete'),
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
      await res.undelete(arg_request, arg_userKey, $fields: arg_$fields);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).users;
      final arg_request = buildUser();
      final arg_userKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
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
          await res.update(arg_request, arg_userKey, $fields: arg_$fields);
      checkUser(response as api.User);
    });

    unittest.test('method--watch', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).users;
      final arg_request = buildChannel();
      final arg_customFieldMask = 'foo';
      final arg_customer = 'foo';
      final arg_domain = 'foo';
      final arg_event = 'foo';
      final arg_maxResults = 42;
      final arg_orderBy = 'foo';
      final arg_pageToken = 'foo';
      final arg_projection = 'foo';
      final arg_query = 'foo';
      final arg_showDeleted = 'foo';
      final arg_sortOrder = 'foo';
      final arg_viewType = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj);

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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('admin/directory/v1/users/watch'),
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
          queryMap['customFieldMask']!.first,
          unittest.equals(arg_customFieldMask),
        );
        unittest.expect(
          queryMap['customer']!.first,
          unittest.equals(arg_customer),
        );
        unittest.expect(
          queryMap['domain']!.first,
          unittest.equals(arg_domain),
        );
        unittest.expect(
          queryMap['event']!.first,
          unittest.equals(arg_event),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['showDeleted']!.first,
          unittest.equals(arg_showDeleted),
        );
        unittest.expect(
          queryMap['sortOrder']!.first,
          unittest.equals(arg_sortOrder),
        );
        unittest.expect(
          queryMap['viewType']!.first,
          unittest.equals(arg_viewType),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.watch(arg_request,
          customFieldMask: arg_customFieldMask,
          customer: arg_customer,
          domain: arg_domain,
          event: arg_event,
          maxResults: arg_maxResults,
          orderBy: arg_orderBy,
          pageToken: arg_pageToken,
          projection: arg_projection,
          query: arg_query,
          showDeleted: arg_showDeleted,
          sortOrder: arg_sortOrder,
          viewType: arg_viewType,
          $fields: arg_$fields);
      checkChannel(response as api.Channel);
    });
  });

  unittest.group('resource-UsersAliasesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).users.aliases;
      final arg_userKey = 'foo';
      final arg_alias = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        index = path.indexOf('/aliases/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/aliases/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_alias'),
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
      await res.delete(arg_userKey, arg_alias, $fields: arg_$fields);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).users.aliases;
      final arg_request = buildAlias();
      final arg_userKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Alias.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAlias(obj);

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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        index = path.indexOf('/aliases', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/aliases'),
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
        final resp = convert.json.encode(buildAlias());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_userKey, $fields: arg_$fields);
      checkAlias(response as api.Alias);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).users.aliases;
      final arg_userKey = 'foo';
      final arg_event = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        index = path.indexOf('/aliases', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/aliases'),
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
          queryMap['event']!.first,
          unittest.equals(arg_event),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAliases());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_userKey, event: arg_event, $fields: arg_$fields);
      checkAliases(response as api.Aliases);
    });

    unittest.test('method--watch', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).users.aliases;
      final arg_request = buildChannel();
      final arg_userKey = 'foo';
      final arg_event = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj);

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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        index = path.indexOf('/aliases/watch', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/aliases/watch'),
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
          queryMap['event']!.first,
          unittest.equals(arg_event),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.watch(arg_request, arg_userKey,
          event: arg_event, $fields: arg_$fields);
      checkChannel(response as api.Channel);
    });
  });

  unittest.group('resource-UsersPhotosResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).users.photos;
      final arg_userKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        index = path.indexOf('/photos/thumbnail', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/photos/thumbnail'),
        );
        pathOffset += 17;

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
      await res.delete(arg_userKey, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).users.photos;
      final arg_userKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        index = path.indexOf('/photos/thumbnail', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/photos/thumbnail'),
        );
        pathOffset += 17;

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
        final resp = convert.json.encode(buildUserPhoto());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_userKey, $fields: arg_$fields);
      checkUserPhoto(response as api.UserPhoto);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).users.photos;
      final arg_request = buildUserPhoto();
      final arg_userKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.UserPhoto.fromJson(json as core.Map<core.String, core.dynamic>);
        checkUserPhoto(obj);

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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        index = path.indexOf('/photos/thumbnail', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/photos/thumbnail'),
        );
        pathOffset += 17;

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
        final resp = convert.json.encode(buildUserPhoto());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_userKey, $fields: arg_$fields);
      checkUserPhoto(response as api.UserPhoto);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).users.photos;
      final arg_request = buildUserPhoto();
      final arg_userKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.UserPhoto.fromJson(json as core.Map<core.String, core.dynamic>);
        checkUserPhoto(obj);

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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        index = path.indexOf('/photos/thumbnail', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/photos/thumbnail'),
        );
        pathOffset += 17;

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
        final resp = convert.json.encode(buildUserPhoto());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_userKey, $fields: arg_$fields);
      checkUserPhoto(response as api.UserPhoto);
    });
  });

  unittest.group('resource-VerificationCodesResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).verificationCodes;
      final arg_userKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        index = path.indexOf('/verificationCodes/generate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('/verificationCodes/generate'),
        );
        pathOffset += 27;

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
      await res.generate(arg_userKey, $fields: arg_$fields);
    });

    unittest.test('method--invalidate', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).verificationCodes;
      final arg_userKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        index = path.indexOf('/verificationCodes/invalidate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('/verificationCodes/invalidate'),
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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.invalidate(arg_userKey, $fields: arg_$fields);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DirectoryApi(mock).verificationCodes;
      final arg_userKey = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('admin/directory/v1/users/'),
        );
        pathOffset += 25;
        index = path.indexOf('/verificationCodes', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userKey'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/verificationCodes'),
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
        final resp = convert.json.encode(buildVerificationCodes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_userKey, $fields: arg_$fields);
      checkVerificationCodes(response as api.VerificationCodes);
    });
  });
}
