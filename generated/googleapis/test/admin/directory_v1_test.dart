// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/admin/directory_v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterAlias = 0;
api.Alias buildAlias() {
  var o = api.Alias();
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
    unittest.expect(o.alias, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.primaryEmail, unittest.equals('foo'));
  }
  buildCounterAlias--;
}

core.List<core.Object> buildUnnamed1593() {
  var o = <core.Object>[];
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  o.add({
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  });
  return o;
}

void checkUnnamed1593(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o[1]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.int buildCounterAliases = 0;
api.Aliases buildAliases() {
  var o = api.Aliases();
  buildCounterAliases++;
  if (buildCounterAliases < 3) {
    o.aliases = buildUnnamed1593();
    o.etag = 'foo';
    o.kind = 'foo';
  }
  buildCounterAliases--;
  return o;
}

void checkAliases(api.Aliases o) {
  buildCounterAliases++;
  if (buildCounterAliases < 3) {
    checkUnnamed1593(o.aliases);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAliases--;
}

core.int buildCounterAsp = 0;
api.Asp buildAsp() {
  var o = api.Asp();
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
    unittest.expect(o.codeId, unittest.equals(42));
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastTimeUsed, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.userKey, unittest.equals('foo'));
  }
  buildCounterAsp--;
}

core.List<api.Asp> buildUnnamed1594() {
  var o = <api.Asp>[];
  o.add(buildAsp());
  o.add(buildAsp());
  return o;
}

void checkUnnamed1594(core.List<api.Asp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAsp(o[0] as api.Asp);
  checkAsp(o[1] as api.Asp);
}

core.int buildCounterAsps = 0;
api.Asps buildAsps() {
  var o = api.Asps();
  buildCounterAsps++;
  if (buildCounterAsps < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed1594();
    o.kind = 'foo';
  }
  buildCounterAsps--;
  return o;
}

void checkAsps(api.Asps o) {
  buildCounterAsps++;
  if (buildCounterAsps < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1594(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAsps--;
}

core.List<core.String> buildUnnamed1595() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1595(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBuilding = 0;
api.Building buildBuilding() {
  var o = api.Building();
  buildCounterBuilding++;
  if (buildCounterBuilding < 3) {
    o.address = buildBuildingAddress();
    o.buildingId = 'foo';
    o.buildingName = 'foo';
    o.coordinates = buildBuildingCoordinates();
    o.description = 'foo';
    o.etags = 'foo';
    o.floorNames = buildUnnamed1595();
    o.kind = 'foo';
  }
  buildCounterBuilding--;
  return o;
}

void checkBuilding(api.Building o) {
  buildCounterBuilding++;
  if (buildCounterBuilding < 3) {
    checkBuildingAddress(o.address as api.BuildingAddress);
    unittest.expect(o.buildingId, unittest.equals('foo'));
    unittest.expect(o.buildingName, unittest.equals('foo'));
    checkBuildingCoordinates(o.coordinates as api.BuildingCoordinates);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etags, unittest.equals('foo'));
    checkUnnamed1595(o.floorNames);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBuilding--;
}

core.List<core.String> buildUnnamed1596() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1596(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBuildingAddress = 0;
api.BuildingAddress buildBuildingAddress() {
  var o = api.BuildingAddress();
  buildCounterBuildingAddress++;
  if (buildCounterBuildingAddress < 3) {
    o.addressLines = buildUnnamed1596();
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
    checkUnnamed1596(o.addressLines);
    unittest.expect(o.administrativeArea, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.regionCode, unittest.equals('foo'));
    unittest.expect(o.sublocality, unittest.equals('foo'));
  }
  buildCounterBuildingAddress--;
}

core.int buildCounterBuildingCoordinates = 0;
api.BuildingCoordinates buildBuildingCoordinates() {
  var o = api.BuildingCoordinates();
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
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
  }
  buildCounterBuildingCoordinates--;
}

core.List<api.Building> buildUnnamed1597() {
  var o = <api.Building>[];
  o.add(buildBuilding());
  o.add(buildBuilding());
  return o;
}

void checkUnnamed1597(core.List<api.Building> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuilding(o[0] as api.Building);
  checkBuilding(o[1] as api.Building);
}

core.int buildCounterBuildings = 0;
api.Buildings buildBuildings() {
  var o = api.Buildings();
  buildCounterBuildings++;
  if (buildCounterBuildings < 3) {
    o.buildings = buildUnnamed1597();
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
    checkUnnamed1597(o.buildings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterBuildings--;
}

core.int buildCounterCalendarResource = 0;
api.CalendarResource buildCalendarResource() {
  var o = api.CalendarResource();
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
    unittest.expect(o.buildingId, unittest.equals('foo'));
    unittest.expect(o.capacity, unittest.equals(42));
    unittest.expect(o.etags, unittest.equals('foo'));
    var casted3 = (o.featureInstances) as core.Map;
    unittest.expect(casted3, unittest.hasLength(3));
    unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted3['bool'], unittest.equals(true));
    unittest.expect(casted3['string'], unittest.equals('foo'));
    unittest.expect(o.floorName, unittest.equals('foo'));
    unittest.expect(o.floorSection, unittest.equals('foo'));
    unittest.expect(o.generatedResourceName, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.resourceCategory, unittest.equals('foo'));
    unittest.expect(o.resourceDescription, unittest.equals('foo'));
    unittest.expect(o.resourceEmail, unittest.equals('foo'));
    unittest.expect(o.resourceId, unittest.equals('foo'));
    unittest.expect(o.resourceName, unittest.equals('foo'));
    unittest.expect(o.resourceType, unittest.equals('foo'));
    unittest.expect(o.userVisibleDescription, unittest.equals('foo'));
  }
  buildCounterCalendarResource--;
}

core.List<api.CalendarResource> buildUnnamed1598() {
  var o = <api.CalendarResource>[];
  o.add(buildCalendarResource());
  o.add(buildCalendarResource());
  return o;
}

void checkUnnamed1598(core.List<api.CalendarResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCalendarResource(o[0] as api.CalendarResource);
  checkCalendarResource(o[1] as api.CalendarResource);
}

core.int buildCounterCalendarResources = 0;
api.CalendarResources buildCalendarResources() {
  var o = api.CalendarResources();
  buildCounterCalendarResources++;
  if (buildCounterCalendarResources < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed1598();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterCalendarResources--;
  return o;
}

void checkCalendarResources(api.CalendarResources o) {
  buildCounterCalendarResources++;
  if (buildCounterCalendarResources < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1598(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterCalendarResources--;
}

core.Map<core.String, core.String> buildUnnamed1599() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1599(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterChannel = 0;
api.Channel buildChannel() {
  var o = api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.address = 'foo';
    o.expiration = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.params = buildUnnamed1599();
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
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.expiration, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1599(o.params);
    unittest.expect(o.payload, unittest.isTrue);
    unittest.expect(o.resourceId, unittest.equals('foo'));
    unittest.expect(o.resourceUri, unittest.equals('foo'));
    unittest.expect(o.token, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterChannel--;
}

core.int buildCounterChromeOsDeviceActiveTimeRanges = 0;
api.ChromeOsDeviceActiveTimeRanges buildChromeOsDeviceActiveTimeRanges() {
  var o = api.ChromeOsDeviceActiveTimeRanges();
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
    unittest.expect(o.activeTime, unittest.equals(42));
    unittest.expect(
        o.date, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
  }
  buildCounterChromeOsDeviceActiveTimeRanges--;
}

core.List<api.ChromeOsDeviceActiveTimeRanges> buildUnnamed1600() {
  var o = <api.ChromeOsDeviceActiveTimeRanges>[];
  o.add(buildChromeOsDeviceActiveTimeRanges());
  o.add(buildChromeOsDeviceActiveTimeRanges());
  return o;
}

void checkUnnamed1600(core.List<api.ChromeOsDeviceActiveTimeRanges> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceActiveTimeRanges(
      o[0] as api.ChromeOsDeviceActiveTimeRanges);
  checkChromeOsDeviceActiveTimeRanges(
      o[1] as api.ChromeOsDeviceActiveTimeRanges);
}

core.int buildCounterChromeOsDeviceCpuStatusReportsCpuTemperatureInfo = 0;
api.ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo
    buildChromeOsDeviceCpuStatusReportsCpuTemperatureInfo() {
  var o = api.ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo();
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
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.temperature, unittest.equals(42));
  }
  buildCounterChromeOsDeviceCpuStatusReportsCpuTemperatureInfo--;
}

core.List<api.ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo>
    buildUnnamed1601() {
  var o = <api.ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo>[];
  o.add(buildChromeOsDeviceCpuStatusReportsCpuTemperatureInfo());
  o.add(buildChromeOsDeviceCpuStatusReportsCpuTemperatureInfo());
  return o;
}

void checkUnnamed1601(
    core.List<api.ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceCpuStatusReportsCpuTemperatureInfo(
      o[0] as api.ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo);
  checkChromeOsDeviceCpuStatusReportsCpuTemperatureInfo(
      o[1] as api.ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo);
}

core.List<core.int> buildUnnamed1602() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed1602(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterChromeOsDeviceCpuStatusReports = 0;
api.ChromeOsDeviceCpuStatusReports buildChromeOsDeviceCpuStatusReports() {
  var o = api.ChromeOsDeviceCpuStatusReports();
  buildCounterChromeOsDeviceCpuStatusReports++;
  if (buildCounterChromeOsDeviceCpuStatusReports < 3) {
    o.cpuTemperatureInfo = buildUnnamed1601();
    o.cpuUtilizationPercentageInfo = buildUnnamed1602();
    o.reportTime = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterChromeOsDeviceCpuStatusReports--;
  return o;
}

void checkChromeOsDeviceCpuStatusReports(api.ChromeOsDeviceCpuStatusReports o) {
  buildCounterChromeOsDeviceCpuStatusReports++;
  if (buildCounterChromeOsDeviceCpuStatusReports < 3) {
    checkUnnamed1601(o.cpuTemperatureInfo);
    checkUnnamed1602(o.cpuUtilizationPercentageInfo);
    unittest.expect(o.reportTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterChromeOsDeviceCpuStatusReports--;
}

core.List<api.ChromeOsDeviceCpuStatusReports> buildUnnamed1603() {
  var o = <api.ChromeOsDeviceCpuStatusReports>[];
  o.add(buildChromeOsDeviceCpuStatusReports());
  o.add(buildChromeOsDeviceCpuStatusReports());
  return o;
}

void checkUnnamed1603(core.List<api.ChromeOsDeviceCpuStatusReports> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceCpuStatusReports(
      o[0] as api.ChromeOsDeviceCpuStatusReports);
  checkChromeOsDeviceCpuStatusReports(
      o[1] as api.ChromeOsDeviceCpuStatusReports);
}

core.int buildCounterChromeOsDeviceDeviceFiles = 0;
api.ChromeOsDeviceDeviceFiles buildChromeOsDeviceDeviceFiles() {
  var o = api.ChromeOsDeviceDeviceFiles();
  buildCounterChromeOsDeviceDeviceFiles++;
  if (buildCounterChromeOsDeviceDeviceFiles < 3) {
    o.createTime = core.DateTime.parse("2002-02-27T14:01:02");
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
    unittest.expect(o.createTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.downloadUrl, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterChromeOsDeviceDeviceFiles--;
}

core.List<api.ChromeOsDeviceDeviceFiles> buildUnnamed1604() {
  var o = <api.ChromeOsDeviceDeviceFiles>[];
  o.add(buildChromeOsDeviceDeviceFiles());
  o.add(buildChromeOsDeviceDeviceFiles());
  return o;
}

void checkUnnamed1604(core.List<api.ChromeOsDeviceDeviceFiles> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceDeviceFiles(o[0] as api.ChromeOsDeviceDeviceFiles);
  checkChromeOsDeviceDeviceFiles(o[1] as api.ChromeOsDeviceDeviceFiles);
}

core.int buildCounterChromeOsDeviceDiskVolumeReportsVolumeInfo = 0;
api.ChromeOsDeviceDiskVolumeReportsVolumeInfo
    buildChromeOsDeviceDiskVolumeReportsVolumeInfo() {
  var o = api.ChromeOsDeviceDiskVolumeReportsVolumeInfo();
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
    unittest.expect(o.storageFree, unittest.equals('foo'));
    unittest.expect(o.storageTotal, unittest.equals('foo'));
    unittest.expect(o.volumeId, unittest.equals('foo'));
  }
  buildCounterChromeOsDeviceDiskVolumeReportsVolumeInfo--;
}

core.List<api.ChromeOsDeviceDiskVolumeReportsVolumeInfo> buildUnnamed1605() {
  var o = <api.ChromeOsDeviceDiskVolumeReportsVolumeInfo>[];
  o.add(buildChromeOsDeviceDiskVolumeReportsVolumeInfo());
  o.add(buildChromeOsDeviceDiskVolumeReportsVolumeInfo());
  return o;
}

void checkUnnamed1605(
    core.List<api.ChromeOsDeviceDiskVolumeReportsVolumeInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceDiskVolumeReportsVolumeInfo(
      o[0] as api.ChromeOsDeviceDiskVolumeReportsVolumeInfo);
  checkChromeOsDeviceDiskVolumeReportsVolumeInfo(
      o[1] as api.ChromeOsDeviceDiskVolumeReportsVolumeInfo);
}

core.int buildCounterChromeOsDeviceDiskVolumeReports = 0;
api.ChromeOsDeviceDiskVolumeReports buildChromeOsDeviceDiskVolumeReports() {
  var o = api.ChromeOsDeviceDiskVolumeReports();
  buildCounterChromeOsDeviceDiskVolumeReports++;
  if (buildCounterChromeOsDeviceDiskVolumeReports < 3) {
    o.volumeInfo = buildUnnamed1605();
  }
  buildCounterChromeOsDeviceDiskVolumeReports--;
  return o;
}

void checkChromeOsDeviceDiskVolumeReports(
    api.ChromeOsDeviceDiskVolumeReports o) {
  buildCounterChromeOsDeviceDiskVolumeReports++;
  if (buildCounterChromeOsDeviceDiskVolumeReports < 3) {
    checkUnnamed1605(o.volumeInfo);
  }
  buildCounterChromeOsDeviceDiskVolumeReports--;
}

core.List<api.ChromeOsDeviceDiskVolumeReports> buildUnnamed1606() {
  var o = <api.ChromeOsDeviceDiskVolumeReports>[];
  o.add(buildChromeOsDeviceDiskVolumeReports());
  o.add(buildChromeOsDeviceDiskVolumeReports());
  return o;
}

void checkUnnamed1606(core.List<api.ChromeOsDeviceDiskVolumeReports> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceDiskVolumeReports(
      o[0] as api.ChromeOsDeviceDiskVolumeReports);
  checkChromeOsDeviceDiskVolumeReports(
      o[1] as api.ChromeOsDeviceDiskVolumeReports);
}

core.int buildCounterChromeOsDeviceLastKnownNetwork = 0;
api.ChromeOsDeviceLastKnownNetwork buildChromeOsDeviceLastKnownNetwork() {
  var o = api.ChromeOsDeviceLastKnownNetwork();
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
    unittest.expect(o.ipAddress, unittest.equals('foo'));
    unittest.expect(o.wanIpAddress, unittest.equals('foo'));
  }
  buildCounterChromeOsDeviceLastKnownNetwork--;
}

core.List<api.ChromeOsDeviceLastKnownNetwork> buildUnnamed1607() {
  var o = <api.ChromeOsDeviceLastKnownNetwork>[];
  o.add(buildChromeOsDeviceLastKnownNetwork());
  o.add(buildChromeOsDeviceLastKnownNetwork());
  return o;
}

void checkUnnamed1607(core.List<api.ChromeOsDeviceLastKnownNetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceLastKnownNetwork(
      o[0] as api.ChromeOsDeviceLastKnownNetwork);
  checkChromeOsDeviceLastKnownNetwork(
      o[1] as api.ChromeOsDeviceLastKnownNetwork);
}

core.int buildCounterChromeOsDeviceRecentUsers = 0;
api.ChromeOsDeviceRecentUsers buildChromeOsDeviceRecentUsers() {
  var o = api.ChromeOsDeviceRecentUsers();
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
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterChromeOsDeviceRecentUsers--;
}

core.List<api.ChromeOsDeviceRecentUsers> buildUnnamed1608() {
  var o = <api.ChromeOsDeviceRecentUsers>[];
  o.add(buildChromeOsDeviceRecentUsers());
  o.add(buildChromeOsDeviceRecentUsers());
  return o;
}

void checkUnnamed1608(core.List<api.ChromeOsDeviceRecentUsers> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceRecentUsers(o[0] as api.ChromeOsDeviceRecentUsers);
  checkChromeOsDeviceRecentUsers(o[1] as api.ChromeOsDeviceRecentUsers);
}

core.List<core.String> buildUnnamed1609() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1609(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterChromeOsDeviceSystemRamFreeReports = 0;
api.ChromeOsDeviceSystemRamFreeReports
    buildChromeOsDeviceSystemRamFreeReports() {
  var o = api.ChromeOsDeviceSystemRamFreeReports();
  buildCounterChromeOsDeviceSystemRamFreeReports++;
  if (buildCounterChromeOsDeviceSystemRamFreeReports < 3) {
    o.reportTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.systemRamFreeInfo = buildUnnamed1609();
  }
  buildCounterChromeOsDeviceSystemRamFreeReports--;
  return o;
}

void checkChromeOsDeviceSystemRamFreeReports(
    api.ChromeOsDeviceSystemRamFreeReports o) {
  buildCounterChromeOsDeviceSystemRamFreeReports++;
  if (buildCounterChromeOsDeviceSystemRamFreeReports < 3) {
    unittest.expect(o.reportTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUnnamed1609(o.systemRamFreeInfo);
  }
  buildCounterChromeOsDeviceSystemRamFreeReports--;
}

core.List<api.ChromeOsDeviceSystemRamFreeReports> buildUnnamed1610() {
  var o = <api.ChromeOsDeviceSystemRamFreeReports>[];
  o.add(buildChromeOsDeviceSystemRamFreeReports());
  o.add(buildChromeOsDeviceSystemRamFreeReports());
  return o;
}

void checkUnnamed1610(core.List<api.ChromeOsDeviceSystemRamFreeReports> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceSystemRamFreeReports(
      o[0] as api.ChromeOsDeviceSystemRamFreeReports);
  checkChromeOsDeviceSystemRamFreeReports(
      o[1] as api.ChromeOsDeviceSystemRamFreeReports);
}

core.int buildCounterChromeOsDeviceTpmVersionInfo = 0;
api.ChromeOsDeviceTpmVersionInfo buildChromeOsDeviceTpmVersionInfo() {
  var o = api.ChromeOsDeviceTpmVersionInfo();
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
    unittest.expect(o.family, unittest.equals('foo'));
    unittest.expect(o.firmwareVersion, unittest.equals('foo'));
    unittest.expect(o.manufacturer, unittest.equals('foo'));
    unittest.expect(o.specLevel, unittest.equals('foo'));
    unittest.expect(o.tpmModel, unittest.equals('foo'));
    unittest.expect(o.vendorSpecific, unittest.equals('foo'));
  }
  buildCounterChromeOsDeviceTpmVersionInfo--;
}

core.int buildCounterChromeOsDevice = 0;
api.ChromeOsDevice buildChromeOsDevice() {
  var o = api.ChromeOsDevice();
  buildCounterChromeOsDevice++;
  if (buildCounterChromeOsDevice < 3) {
    o.activeTimeRanges = buildUnnamed1600();
    o.annotatedAssetId = 'foo';
    o.annotatedLocation = 'foo';
    o.annotatedUser = 'foo';
    o.autoUpdateExpiration = 'foo';
    o.bootMode = 'foo';
    o.cpuStatusReports = buildUnnamed1603();
    o.deviceFiles = buildUnnamed1604();
    o.deviceId = 'foo';
    o.diskVolumeReports = buildUnnamed1606();
    o.dockMacAddress = 'foo';
    o.etag = 'foo';
    o.ethernetMacAddress = 'foo';
    o.ethernetMacAddress0 = 'foo';
    o.firmwareVersion = 'foo';
    o.kind = 'foo';
    o.lastEnrollmentTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.lastKnownNetwork = buildUnnamed1607();
    o.lastSync = core.DateTime.parse("2002-02-27T14:01:02");
    o.macAddress = 'foo';
    o.manufactureDate = 'foo';
    o.meid = 'foo';
    o.model = 'foo';
    o.notes = 'foo';
    o.orderNumber = 'foo';
    o.orgUnitPath = 'foo';
    o.osVersion = 'foo';
    o.platformVersion = 'foo';
    o.recentUsers = buildUnnamed1608();
    o.serialNumber = 'foo';
    o.status = 'foo';
    o.supportEndDate = core.DateTime.parse("2002-02-27T14:01:02");
    o.systemRamFreeReports = buildUnnamed1610();
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
    checkUnnamed1600(o.activeTimeRanges);
    unittest.expect(o.annotatedAssetId, unittest.equals('foo'));
    unittest.expect(o.annotatedLocation, unittest.equals('foo'));
    unittest.expect(o.annotatedUser, unittest.equals('foo'));
    unittest.expect(o.autoUpdateExpiration, unittest.equals('foo'));
    unittest.expect(o.bootMode, unittest.equals('foo'));
    checkUnnamed1603(o.cpuStatusReports);
    checkUnnamed1604(o.deviceFiles);
    unittest.expect(o.deviceId, unittest.equals('foo'));
    checkUnnamed1606(o.diskVolumeReports);
    unittest.expect(o.dockMacAddress, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.ethernetMacAddress, unittest.equals('foo'));
    unittest.expect(o.ethernetMacAddress0, unittest.equals('foo'));
    unittest.expect(o.firmwareVersion, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastEnrollmentTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUnnamed1607(o.lastKnownNetwork);
    unittest.expect(o.lastSync,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.macAddress, unittest.equals('foo'));
    unittest.expect(o.manufactureDate, unittest.equals('foo'));
    unittest.expect(o.meid, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.notes, unittest.equals('foo'));
    unittest.expect(o.orderNumber, unittest.equals('foo'));
    unittest.expect(o.orgUnitPath, unittest.equals('foo'));
    unittest.expect(o.osVersion, unittest.equals('foo'));
    unittest.expect(o.platformVersion, unittest.equals('foo'));
    checkUnnamed1608(o.recentUsers);
    unittest.expect(o.serialNumber, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.supportEndDate,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUnnamed1610(o.systemRamFreeReports);
    unittest.expect(o.systemRamTotal, unittest.equals('foo'));
    checkChromeOsDeviceTpmVersionInfo(
        o.tpmVersionInfo as api.ChromeOsDeviceTpmVersionInfo);
    unittest.expect(o.willAutoRenew, unittest.isTrue);
  }
  buildCounterChromeOsDevice--;
}

core.int buildCounterChromeOsDeviceAction = 0;
api.ChromeOsDeviceAction buildChromeOsDeviceAction() {
  var o = api.ChromeOsDeviceAction();
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
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.deprovisionReason, unittest.equals('foo'));
  }
  buildCounterChromeOsDeviceAction--;
}

core.List<api.ChromeOsDevice> buildUnnamed1611() {
  var o = <api.ChromeOsDevice>[];
  o.add(buildChromeOsDevice());
  o.add(buildChromeOsDevice());
  return o;
}

void checkUnnamed1611(core.List<api.ChromeOsDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDevice(o[0] as api.ChromeOsDevice);
  checkChromeOsDevice(o[1] as api.ChromeOsDevice);
}

core.int buildCounterChromeOsDevices = 0;
api.ChromeOsDevices buildChromeOsDevices() {
  var o = api.ChromeOsDevices();
  buildCounterChromeOsDevices++;
  if (buildCounterChromeOsDevices < 3) {
    o.chromeosdevices = buildUnnamed1611();
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
    checkUnnamed1611(o.chromeosdevices);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterChromeOsDevices--;
}

core.List<core.String> buildUnnamed1612() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1612(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterChromeOsMoveDevicesToOu = 0;
api.ChromeOsMoveDevicesToOu buildChromeOsMoveDevicesToOu() {
  var o = api.ChromeOsMoveDevicesToOu();
  buildCounterChromeOsMoveDevicesToOu++;
  if (buildCounterChromeOsMoveDevicesToOu < 3) {
    o.deviceIds = buildUnnamed1612();
  }
  buildCounterChromeOsMoveDevicesToOu--;
  return o;
}

void checkChromeOsMoveDevicesToOu(api.ChromeOsMoveDevicesToOu o) {
  buildCounterChromeOsMoveDevicesToOu++;
  if (buildCounterChromeOsMoveDevicesToOu < 3) {
    checkUnnamed1612(o.deviceIds);
  }
  buildCounterChromeOsMoveDevicesToOu--;
}

core.int buildCounterCustomer = 0;
api.Customer buildCustomer() {
  var o = api.Customer();
  buildCounterCustomer++;
  if (buildCounterCustomer < 3) {
    o.alternateEmail = 'foo';
    o.customerCreationTime = core.DateTime.parse("2002-02-27T14:01:02");
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
    unittest.expect(o.alternateEmail, unittest.equals('foo'));
    unittest.expect(o.customerCreationTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.customerDomain, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    checkCustomerPostalAddress(o.postalAddress as api.CustomerPostalAddress);
  }
  buildCounterCustomer--;
}

core.int buildCounterCustomerPostalAddress = 0;
api.CustomerPostalAddress buildCustomerPostalAddress() {
  var o = api.CustomerPostalAddress();
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
    unittest.expect(o.addressLine1, unittest.equals('foo'));
    unittest.expect(o.addressLine2, unittest.equals('foo'));
    unittest.expect(o.addressLine3, unittest.equals('foo'));
    unittest.expect(o.contactName, unittest.equals('foo'));
    unittest.expect(o.countryCode, unittest.equals('foo'));
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.organizationName, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
  }
  buildCounterCustomerPostalAddress--;
}

core.int buildCounterDomainAlias = 0;
api.DomainAlias buildDomainAlias() {
  var o = api.DomainAlias();
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
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.domainAliasName, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.parentDomainName, unittest.equals('foo'));
    unittest.expect(o.verified, unittest.isTrue);
  }
  buildCounterDomainAlias--;
}

core.List<api.DomainAlias> buildUnnamed1613() {
  var o = <api.DomainAlias>[];
  o.add(buildDomainAlias());
  o.add(buildDomainAlias());
  return o;
}

void checkUnnamed1613(core.List<api.DomainAlias> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomainAlias(o[0] as api.DomainAlias);
  checkDomainAlias(o[1] as api.DomainAlias);
}

core.int buildCounterDomainAliases = 0;
api.DomainAliases buildDomainAliases() {
  var o = api.DomainAliases();
  buildCounterDomainAliases++;
  if (buildCounterDomainAliases < 3) {
    o.domainAliases = buildUnnamed1613();
    o.etag = 'foo';
    o.kind = 'foo';
  }
  buildCounterDomainAliases--;
  return o;
}

void checkDomainAliases(api.DomainAliases o) {
  buildCounterDomainAliases++;
  if (buildCounterDomainAliases < 3) {
    checkUnnamed1613(o.domainAliases);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDomainAliases--;
}

core.List<api.DomainAlias> buildUnnamed1614() {
  var o = <api.DomainAlias>[];
  o.add(buildDomainAlias());
  o.add(buildDomainAlias());
  return o;
}

void checkUnnamed1614(core.List<api.DomainAlias> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomainAlias(o[0] as api.DomainAlias);
  checkDomainAlias(o[1] as api.DomainAlias);
}

core.int buildCounterDomains = 0;
api.Domains buildDomains() {
  var o = api.Domains();
  buildCounterDomains++;
  if (buildCounterDomains < 3) {
    o.creationTime = 'foo';
    o.domainAliases = buildUnnamed1614();
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
    unittest.expect(o.creationTime, unittest.equals('foo'));
    checkUnnamed1614(o.domainAliases);
    unittest.expect(o.domainName, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.isPrimary, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.verified, unittest.isTrue);
  }
  buildCounterDomains--;
}

core.List<api.Domains> buildUnnamed1615() {
  var o = <api.Domains>[];
  o.add(buildDomains());
  o.add(buildDomains());
  return o;
}

void checkUnnamed1615(core.List<api.Domains> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomains(o[0] as api.Domains);
  checkDomains(o[1] as api.Domains);
}

core.int buildCounterDomains2 = 0;
api.Domains2 buildDomains2() {
  var o = api.Domains2();
  buildCounterDomains2++;
  if (buildCounterDomains2 < 3) {
    o.domains = buildUnnamed1615();
    o.etag = 'foo';
    o.kind = 'foo';
  }
  buildCounterDomains2--;
  return o;
}

void checkDomains2(api.Domains2 o) {
  buildCounterDomains2++;
  if (buildCounterDomains2 < 3) {
    checkUnnamed1615(o.domains);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDomains2--;
}

core.int buildCounterFeature = 0;
api.Feature buildFeature() {
  var o = api.Feature();
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
    unittest.expect(o.etags, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterFeature--;
}

core.int buildCounterFeatureInstance = 0;
api.FeatureInstance buildFeatureInstance() {
  var o = api.FeatureInstance();
  buildCounterFeatureInstance++;
  if (buildCounterFeatureInstance < 3) {
    o.feature = buildFeature();
  }
  buildCounterFeatureInstance--;
  return o;
}

void checkFeatureInstance(api.FeatureInstance o) {
  buildCounterFeatureInstance++;
  if (buildCounterFeatureInstance < 3) {
    checkFeature(o.feature as api.Feature);
  }
  buildCounterFeatureInstance--;
}

core.int buildCounterFeatureRename = 0;
api.FeatureRename buildFeatureRename() {
  var o = api.FeatureRename();
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
    unittest.expect(o.newName, unittest.equals('foo'));
  }
  buildCounterFeatureRename--;
}

core.List<api.Feature> buildUnnamed1616() {
  var o = <api.Feature>[];
  o.add(buildFeature());
  o.add(buildFeature());
  return o;
}

void checkUnnamed1616(core.List<api.Feature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeature(o[0] as api.Feature);
  checkFeature(o[1] as api.Feature);
}

core.int buildCounterFeatures = 0;
api.Features buildFeatures() {
  var o = api.Features();
  buildCounterFeatures++;
  if (buildCounterFeatures < 3) {
    o.etag = 'foo';
    o.features = buildUnnamed1616();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterFeatures--;
  return o;
}

void checkFeatures(api.Features o) {
  buildCounterFeatures++;
  if (buildCounterFeatures < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1616(o.features);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterFeatures--;
}

core.List<core.String> buildUnnamed1617() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1617(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1618() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1618(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGroup = 0;
api.Group buildGroup() {
  var o = api.Group();
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    o.adminCreated = true;
    o.aliases = buildUnnamed1617();
    o.description = 'foo';
    o.directMembersCount = 'foo';
    o.email = 'foo';
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.nonEditableAliases = buildUnnamed1618();
  }
  buildCounterGroup--;
  return o;
}

void checkGroup(api.Group o) {
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    unittest.expect(o.adminCreated, unittest.isTrue);
    checkUnnamed1617(o.aliases);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.directMembersCount, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1618(o.nonEditableAliases);
  }
  buildCounterGroup--;
}

core.List<api.Group> buildUnnamed1619() {
  var o = <api.Group>[];
  o.add(buildGroup());
  o.add(buildGroup());
  return o;
}

void checkUnnamed1619(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0] as api.Group);
  checkGroup(o[1] as api.Group);
}

core.int buildCounterGroups = 0;
api.Groups buildGroups() {
  var o = api.Groups();
  buildCounterGroups++;
  if (buildCounterGroups < 3) {
    o.etag = 'foo';
    o.groups = buildUnnamed1619();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterGroups--;
  return o;
}

void checkGroups(api.Groups o) {
  buildCounterGroups++;
  if (buildCounterGroups < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1619(o.groups);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGroups--;
}

core.int buildCounterMember = 0;
api.Member buildMember() {
  var o = api.Member();
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
    unittest.expect(o.deliverySettings, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterMember--;
}

core.List<api.Member> buildUnnamed1620() {
  var o = <api.Member>[];
  o.add(buildMember());
  o.add(buildMember());
  return o;
}

void checkUnnamed1620(core.List<api.Member> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMember(o[0] as api.Member);
  checkMember(o[1] as api.Member);
}

core.int buildCounterMembers = 0;
api.Members buildMembers() {
  var o = api.Members();
  buildCounterMembers++;
  if (buildCounterMembers < 3) {
    o.etag = 'foo';
    o.kind = 'foo';
    o.members = buildUnnamed1620();
    o.nextPageToken = 'foo';
  }
  buildCounterMembers--;
  return o;
}

void checkMembers(api.Members o) {
  buildCounterMembers++;
  if (buildCounterMembers < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1620(o.members);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterMembers--;
}

core.int buildCounterMembersHasMember = 0;
api.MembersHasMember buildMembersHasMember() {
  var o = api.MembersHasMember();
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
    unittest.expect(o.isMember, unittest.isTrue);
  }
  buildCounterMembersHasMember--;
}

core.List<core.String> buildUnnamed1621() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1621(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMobileDeviceApplications = 0;
api.MobileDeviceApplications buildMobileDeviceApplications() {
  var o = api.MobileDeviceApplications();
  buildCounterMobileDeviceApplications++;
  if (buildCounterMobileDeviceApplications < 3) {
    o.displayName = 'foo';
    o.packageName = 'foo';
    o.permission = buildUnnamed1621();
    o.versionCode = 42;
    o.versionName = 'foo';
  }
  buildCounterMobileDeviceApplications--;
  return o;
}

void checkMobileDeviceApplications(api.MobileDeviceApplications o) {
  buildCounterMobileDeviceApplications++;
  if (buildCounterMobileDeviceApplications < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.packageName, unittest.equals('foo'));
    checkUnnamed1621(o.permission);
    unittest.expect(o.versionCode, unittest.equals(42));
    unittest.expect(o.versionName, unittest.equals('foo'));
  }
  buildCounterMobileDeviceApplications--;
}

core.List<api.MobileDeviceApplications> buildUnnamed1622() {
  var o = <api.MobileDeviceApplications>[];
  o.add(buildMobileDeviceApplications());
  o.add(buildMobileDeviceApplications());
  return o;
}

void checkUnnamed1622(core.List<api.MobileDeviceApplications> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMobileDeviceApplications(o[0] as api.MobileDeviceApplications);
  checkMobileDeviceApplications(o[1] as api.MobileDeviceApplications);
}

core.List<core.String> buildUnnamed1623() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1623(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1624() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1624(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1625() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1625(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMobileDevice = 0;
api.MobileDevice buildMobileDevice() {
  var o = api.MobileDevice();
  buildCounterMobileDevice++;
  if (buildCounterMobileDevice < 3) {
    o.adbStatus = true;
    o.applications = buildUnnamed1622();
    o.basebandVersion = 'foo';
    o.bootloaderVersion = 'foo';
    o.brand = 'foo';
    o.buildNumber = 'foo';
    o.defaultLanguage = 'foo';
    o.developerOptionsStatus = true;
    o.deviceCompromisedStatus = 'foo';
    o.deviceId = 'foo';
    o.devicePasswordStatus = 'foo';
    o.email = buildUnnamed1623();
    o.encryptionStatus = 'foo';
    o.etag = 'foo';
    o.firstSync = core.DateTime.parse("2002-02-27T14:01:02");
    o.hardware = 'foo';
    o.hardwareId = 'foo';
    o.imei = 'foo';
    o.kernelVersion = 'foo';
    o.kind = 'foo';
    o.lastSync = core.DateTime.parse("2002-02-27T14:01:02");
    o.managedAccountIsOnOwnerProfile = true;
    o.manufacturer = 'foo';
    o.meid = 'foo';
    o.model = 'foo';
    o.name = buildUnnamed1624();
    o.networkOperator = 'foo';
    o.os = 'foo';
    o.otherAccountsInfo = buildUnnamed1625();
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
    unittest.expect(o.adbStatus, unittest.isTrue);
    checkUnnamed1622(o.applications);
    unittest.expect(o.basebandVersion, unittest.equals('foo'));
    unittest.expect(o.bootloaderVersion, unittest.equals('foo'));
    unittest.expect(o.brand, unittest.equals('foo'));
    unittest.expect(o.buildNumber, unittest.equals('foo'));
    unittest.expect(o.defaultLanguage, unittest.equals('foo'));
    unittest.expect(o.developerOptionsStatus, unittest.isTrue);
    unittest.expect(o.deviceCompromisedStatus, unittest.equals('foo'));
    unittest.expect(o.deviceId, unittest.equals('foo'));
    unittest.expect(o.devicePasswordStatus, unittest.equals('foo'));
    checkUnnamed1623(o.email);
    unittest.expect(o.encryptionStatus, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.firstSync,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.hardware, unittest.equals('foo'));
    unittest.expect(o.hardwareId, unittest.equals('foo'));
    unittest.expect(o.imei, unittest.equals('foo'));
    unittest.expect(o.kernelVersion, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastSync,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.managedAccountIsOnOwnerProfile, unittest.isTrue);
    unittest.expect(o.manufacturer, unittest.equals('foo'));
    unittest.expect(o.meid, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    checkUnnamed1624(o.name);
    unittest.expect(o.networkOperator, unittest.equals('foo'));
    unittest.expect(o.os, unittest.equals('foo'));
    checkUnnamed1625(o.otherAccountsInfo);
    unittest.expect(o.privilege, unittest.equals('foo'));
    unittest.expect(o.releaseVersion, unittest.equals('foo'));
    unittest.expect(o.resourceId, unittest.equals('foo'));
    unittest.expect(o.securityPatchLevel, unittest.equals('foo'));
    unittest.expect(o.serialNumber, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.supportsWorkProfile, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.unknownSourcesStatus, unittest.isTrue);
    unittest.expect(o.userAgent, unittest.equals('foo'));
    unittest.expect(o.wifiMacAddress, unittest.equals('foo'));
  }
  buildCounterMobileDevice--;
}

core.int buildCounterMobileDeviceAction = 0;
api.MobileDeviceAction buildMobileDeviceAction() {
  var o = api.MobileDeviceAction();
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
    unittest.expect(o.action, unittest.equals('foo'));
  }
  buildCounterMobileDeviceAction--;
}

core.List<api.MobileDevice> buildUnnamed1626() {
  var o = <api.MobileDevice>[];
  o.add(buildMobileDevice());
  o.add(buildMobileDevice());
  return o;
}

void checkUnnamed1626(core.List<api.MobileDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMobileDevice(o[0] as api.MobileDevice);
  checkMobileDevice(o[1] as api.MobileDevice);
}

core.int buildCounterMobileDevices = 0;
api.MobileDevices buildMobileDevices() {
  var o = api.MobileDevices();
  buildCounterMobileDevices++;
  if (buildCounterMobileDevices < 3) {
    o.etag = 'foo';
    o.kind = 'foo';
    o.mobiledevices = buildUnnamed1626();
    o.nextPageToken = 'foo';
  }
  buildCounterMobileDevices--;
  return o;
}

void checkMobileDevices(api.MobileDevices o) {
  buildCounterMobileDevices++;
  if (buildCounterMobileDevices < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1626(o.mobiledevices);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterMobileDevices--;
}

core.int buildCounterOrgUnit = 0;
api.OrgUnit buildOrgUnit() {
  var o = api.OrgUnit();
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
    unittest.expect(o.blockInheritance, unittest.isTrue);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.orgUnitId, unittest.equals('foo'));
    unittest.expect(o.orgUnitPath, unittest.equals('foo'));
    unittest.expect(o.parentOrgUnitId, unittest.equals('foo'));
    unittest.expect(o.parentOrgUnitPath, unittest.equals('foo'));
  }
  buildCounterOrgUnit--;
}

core.List<api.OrgUnit> buildUnnamed1627() {
  var o = <api.OrgUnit>[];
  o.add(buildOrgUnit());
  o.add(buildOrgUnit());
  return o;
}

void checkUnnamed1627(core.List<api.OrgUnit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrgUnit(o[0] as api.OrgUnit);
  checkOrgUnit(o[1] as api.OrgUnit);
}

core.int buildCounterOrgUnits = 0;
api.OrgUnits buildOrgUnits() {
  var o = api.OrgUnits();
  buildCounterOrgUnits++;
  if (buildCounterOrgUnits < 3) {
    o.etag = 'foo';
    o.kind = 'foo';
    o.organizationUnits = buildUnnamed1627();
  }
  buildCounterOrgUnits--;
  return o;
}

void checkOrgUnits(api.OrgUnits o) {
  buildCounterOrgUnits++;
  if (buildCounterOrgUnits < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1627(o.organizationUnits);
  }
  buildCounterOrgUnits--;
}

core.List<api.Privilege> buildUnnamed1628() {
  var o = <api.Privilege>[];
  o.add(buildPrivilege());
  o.add(buildPrivilege());
  return o;
}

void checkUnnamed1628(core.List<api.Privilege> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrivilege(o[0] as api.Privilege);
  checkPrivilege(o[1] as api.Privilege);
}

core.int buildCounterPrivilege = 0;
api.Privilege buildPrivilege() {
  var o = api.Privilege();
  buildCounterPrivilege++;
  if (buildCounterPrivilege < 3) {
    o.childPrivileges = buildUnnamed1628();
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
    checkUnnamed1628(o.childPrivileges);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.isOuScopable, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.privilegeName, unittest.equals('foo'));
    unittest.expect(o.serviceId, unittest.equals('foo'));
    unittest.expect(o.serviceName, unittest.equals('foo'));
  }
  buildCounterPrivilege--;
}

core.List<api.Privilege> buildUnnamed1629() {
  var o = <api.Privilege>[];
  o.add(buildPrivilege());
  o.add(buildPrivilege());
  return o;
}

void checkUnnamed1629(core.List<api.Privilege> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrivilege(o[0] as api.Privilege);
  checkPrivilege(o[1] as api.Privilege);
}

core.int buildCounterPrivileges = 0;
api.Privileges buildPrivileges() {
  var o = api.Privileges();
  buildCounterPrivileges++;
  if (buildCounterPrivileges < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed1629();
    o.kind = 'foo';
  }
  buildCounterPrivileges--;
  return o;
}

void checkPrivileges(api.Privileges o) {
  buildCounterPrivileges++;
  if (buildCounterPrivileges < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1629(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterPrivileges--;
}

core.int buildCounterRoleRolePrivileges = 0;
api.RoleRolePrivileges buildRoleRolePrivileges() {
  var o = api.RoleRolePrivileges();
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
    unittest.expect(o.privilegeName, unittest.equals('foo'));
    unittest.expect(o.serviceId, unittest.equals('foo'));
  }
  buildCounterRoleRolePrivileges--;
}

core.List<api.RoleRolePrivileges> buildUnnamed1630() {
  var o = <api.RoleRolePrivileges>[];
  o.add(buildRoleRolePrivileges());
  o.add(buildRoleRolePrivileges());
  return o;
}

void checkUnnamed1630(core.List<api.RoleRolePrivileges> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoleRolePrivileges(o[0] as api.RoleRolePrivileges);
  checkRoleRolePrivileges(o[1] as api.RoleRolePrivileges);
}

core.int buildCounterRole = 0;
api.Role buildRole() {
  var o = api.Role();
  buildCounterRole++;
  if (buildCounterRole < 3) {
    o.etag = 'foo';
    o.isSuperAdminRole = true;
    o.isSystemRole = true;
    o.kind = 'foo';
    o.roleDescription = 'foo';
    o.roleId = 'foo';
    o.roleName = 'foo';
    o.rolePrivileges = buildUnnamed1630();
  }
  buildCounterRole--;
  return o;
}

void checkRole(api.Role o) {
  buildCounterRole++;
  if (buildCounterRole < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.isSuperAdminRole, unittest.isTrue);
    unittest.expect(o.isSystemRole, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.roleDescription, unittest.equals('foo'));
    unittest.expect(o.roleId, unittest.equals('foo'));
    unittest.expect(o.roleName, unittest.equals('foo'));
    checkUnnamed1630(o.rolePrivileges);
  }
  buildCounterRole--;
}

core.int buildCounterRoleAssignment = 0;
api.RoleAssignment buildRoleAssignment() {
  var o = api.RoleAssignment();
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
    unittest.expect(o.assignedTo, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.orgUnitId, unittest.equals('foo'));
    unittest.expect(o.roleAssignmentId, unittest.equals('foo'));
    unittest.expect(o.roleId, unittest.equals('foo'));
    unittest.expect(o.scopeType, unittest.equals('foo'));
  }
  buildCounterRoleAssignment--;
}

core.List<api.RoleAssignment> buildUnnamed1631() {
  var o = <api.RoleAssignment>[];
  o.add(buildRoleAssignment());
  o.add(buildRoleAssignment());
  return o;
}

void checkUnnamed1631(core.List<api.RoleAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoleAssignment(o[0] as api.RoleAssignment);
  checkRoleAssignment(o[1] as api.RoleAssignment);
}

core.int buildCounterRoleAssignments = 0;
api.RoleAssignments buildRoleAssignments() {
  var o = api.RoleAssignments();
  buildCounterRoleAssignments++;
  if (buildCounterRoleAssignments < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed1631();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterRoleAssignments--;
  return o;
}

void checkRoleAssignments(api.RoleAssignments o) {
  buildCounterRoleAssignments++;
  if (buildCounterRoleAssignments < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1631(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterRoleAssignments--;
}

core.List<api.Role> buildUnnamed1632() {
  var o = <api.Role>[];
  o.add(buildRole());
  o.add(buildRole());
  return o;
}

void checkUnnamed1632(core.List<api.Role> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRole(o[0] as api.Role);
  checkRole(o[1] as api.Role);
}

core.int buildCounterRoles = 0;
api.Roles buildRoles() {
  var o = api.Roles();
  buildCounterRoles++;
  if (buildCounterRoles < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed1632();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterRoles--;
  return o;
}

void checkRoles(api.Roles o) {
  buildCounterRoles++;
  if (buildCounterRoles < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1632(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterRoles--;
}

core.List<api.SchemaFieldSpec> buildUnnamed1633() {
  var o = <api.SchemaFieldSpec>[];
  o.add(buildSchemaFieldSpec());
  o.add(buildSchemaFieldSpec());
  return o;
}

void checkUnnamed1633(core.List<api.SchemaFieldSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchemaFieldSpec(o[0] as api.SchemaFieldSpec);
  checkSchemaFieldSpec(o[1] as api.SchemaFieldSpec);
}

core.int buildCounterSchema = 0;
api.Schema buildSchema() {
  var o = api.Schema();
  buildCounterSchema++;
  if (buildCounterSchema < 3) {
    o.displayName = 'foo';
    o.etag = 'foo';
    o.fields = buildUnnamed1633();
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
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1633(o.fields);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.schemaId, unittest.equals('foo'));
    unittest.expect(o.schemaName, unittest.equals('foo'));
  }
  buildCounterSchema--;
}

core.int buildCounterSchemaFieldSpecNumericIndexingSpec = 0;
api.SchemaFieldSpecNumericIndexingSpec
    buildSchemaFieldSpecNumericIndexingSpec() {
  var o = api.SchemaFieldSpecNumericIndexingSpec();
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
    unittest.expect(o.maxValue, unittest.equals(42.0));
    unittest.expect(o.minValue, unittest.equals(42.0));
  }
  buildCounterSchemaFieldSpecNumericIndexingSpec--;
}

core.int buildCounterSchemaFieldSpec = 0;
api.SchemaFieldSpec buildSchemaFieldSpec() {
  var o = api.SchemaFieldSpec();
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
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.fieldId, unittest.equals('foo'));
    unittest.expect(o.fieldName, unittest.equals('foo'));
    unittest.expect(o.fieldType, unittest.equals('foo'));
    unittest.expect(o.indexed, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.multiValued, unittest.isTrue);
    checkSchemaFieldSpecNumericIndexingSpec(
        o.numericIndexingSpec as api.SchemaFieldSpecNumericIndexingSpec);
    unittest.expect(o.readAccessType, unittest.equals('foo'));
  }
  buildCounterSchemaFieldSpec--;
}

core.List<api.Schema> buildUnnamed1634() {
  var o = <api.Schema>[];
  o.add(buildSchema());
  o.add(buildSchema());
  return o;
}

void checkUnnamed1634(core.List<api.Schema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchema(o[0] as api.Schema);
  checkSchema(o[1] as api.Schema);
}

core.int buildCounterSchemas = 0;
api.Schemas buildSchemas() {
  var o = api.Schemas();
  buildCounterSchemas++;
  if (buildCounterSchemas < 3) {
    o.etag = 'foo';
    o.kind = 'foo';
    o.schemas = buildUnnamed1634();
  }
  buildCounterSchemas--;
  return o;
}

void checkSchemas(api.Schemas o) {
  buildCounterSchemas++;
  if (buildCounterSchemas < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1634(o.schemas);
  }
  buildCounterSchemas--;
}

core.List<core.String> buildUnnamed1635() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1635(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterToken = 0;
api.Token buildToken() {
  var o = api.Token();
  buildCounterToken++;
  if (buildCounterToken < 3) {
    o.anonymous = true;
    o.clientId = 'foo';
    o.displayText = 'foo';
    o.etag = 'foo';
    o.kind = 'foo';
    o.nativeApp = true;
    o.scopes = buildUnnamed1635();
    o.userKey = 'foo';
  }
  buildCounterToken--;
  return o;
}

void checkToken(api.Token o) {
  buildCounterToken++;
  if (buildCounterToken < 3) {
    unittest.expect(o.anonymous, unittest.isTrue);
    unittest.expect(o.clientId, unittest.equals('foo'));
    unittest.expect(o.displayText, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nativeApp, unittest.isTrue);
    checkUnnamed1635(o.scopes);
    unittest.expect(o.userKey, unittest.equals('foo'));
  }
  buildCounterToken--;
}

core.List<api.Token> buildUnnamed1636() {
  var o = <api.Token>[];
  o.add(buildToken());
  o.add(buildToken());
  return o;
}

void checkUnnamed1636(core.List<api.Token> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkToken(o[0] as api.Token);
  checkToken(o[1] as api.Token);
}

core.int buildCounterTokens = 0;
api.Tokens buildTokens() {
  var o = api.Tokens();
  buildCounterTokens++;
  if (buildCounterTokens < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed1636();
    o.kind = 'foo';
  }
  buildCounterTokens--;
  return o;
}

void checkTokens(api.Tokens o) {
  buildCounterTokens++;
  if (buildCounterTokens < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1636(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterTokens--;
}

core.List<core.String> buildUnnamed1637() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1637(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.UserCustomProperties> buildUnnamed1638() {
  var o = <core.String, api.UserCustomProperties>{};
  o['x'] = buildUserCustomProperties();
  o['y'] = buildUserCustomProperties();
  return o;
}

void checkUnnamed1638(core.Map<core.String, api.UserCustomProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserCustomProperties(o['x'] as api.UserCustomProperties);
  checkUserCustomProperties(o['y'] as api.UserCustomProperties);
}

core.List<core.String> buildUnnamed1639() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1639(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUser = 0;
api.User buildUser() {
  var o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.addresses = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.agreedToTerms = true;
    o.aliases = buildUnnamed1637();
    o.archived = true;
    o.changePasswordAtNextLogin = true;
    o.creationTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.customSchemas = buildUnnamed1638();
    o.customerId = 'foo';
    o.deletionTime = core.DateTime.parse("2002-02-27T14:01:02");
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
    o.lastLoginTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.locations = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.name = buildUserName();
    o.nonEditableAliases = buildUnnamed1639();
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
    var casted4 = (o.addresses) as core.Map;
    unittest.expect(casted4, unittest.hasLength(3));
    unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted4['bool'], unittest.equals(true));
    unittest.expect(casted4['string'], unittest.equals('foo'));
    unittest.expect(o.agreedToTerms, unittest.isTrue);
    checkUnnamed1637(o.aliases);
    unittest.expect(o.archived, unittest.isTrue);
    unittest.expect(o.changePasswordAtNextLogin, unittest.isTrue);
    unittest.expect(o.creationTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUnnamed1638(o.customSchemas);
    unittest.expect(o.customerId, unittest.equals('foo'));
    unittest.expect(o.deletionTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    var casted5 = (o.emails) as core.Map;
    unittest.expect(casted5, unittest.hasLength(3));
    unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted5['bool'], unittest.equals(true));
    unittest.expect(casted5['string'], unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    var casted6 = (o.externalIds) as core.Map;
    unittest.expect(casted6, unittest.hasLength(3));
    unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted6['bool'], unittest.equals(true));
    unittest.expect(casted6['string'], unittest.equals('foo'));
    var casted7 = (o.gender) as core.Map;
    unittest.expect(casted7, unittest.hasLength(3));
    unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted7['bool'], unittest.equals(true));
    unittest.expect(casted7['string'], unittest.equals('foo'));
    unittest.expect(o.hashFunction, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    var casted8 = (o.ims) as core.Map;
    unittest.expect(casted8, unittest.hasLength(3));
    unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted8['bool'], unittest.equals(true));
    unittest.expect(casted8['string'], unittest.equals('foo'));
    unittest.expect(o.includeInGlobalAddressList, unittest.isTrue);
    unittest.expect(o.ipWhitelisted, unittest.isTrue);
    unittest.expect(o.isAdmin, unittest.isTrue);
    unittest.expect(o.isDelegatedAdmin, unittest.isTrue);
    unittest.expect(o.isEnforcedIn2Sv, unittest.isTrue);
    unittest.expect(o.isEnrolledIn2Sv, unittest.isTrue);
    unittest.expect(o.isMailboxSetup, unittest.isTrue);
    var casted9 = (o.keywords) as core.Map;
    unittest.expect(casted9, unittest.hasLength(3));
    unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted9['bool'], unittest.equals(true));
    unittest.expect(casted9['string'], unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    var casted10 = (o.languages) as core.Map;
    unittest.expect(casted10, unittest.hasLength(3));
    unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted10['bool'], unittest.equals(true));
    unittest.expect(casted10['string'], unittest.equals('foo'));
    unittest.expect(o.lastLoginTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    var casted11 = (o.locations) as core.Map;
    unittest.expect(casted11, unittest.hasLength(3));
    unittest.expect(casted11['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted11['bool'], unittest.equals(true));
    unittest.expect(casted11['string'], unittest.equals('foo'));
    checkUserName(o.name as api.UserName);
    checkUnnamed1639(o.nonEditableAliases);
    var casted12 = (o.notes) as core.Map;
    unittest.expect(casted12, unittest.hasLength(3));
    unittest.expect(casted12['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted12['bool'], unittest.equals(true));
    unittest.expect(casted12['string'], unittest.equals('foo'));
    unittest.expect(o.orgUnitPath, unittest.equals('foo'));
    var casted13 = (o.organizations) as core.Map;
    unittest.expect(casted13, unittest.hasLength(3));
    unittest.expect(casted13['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted13['bool'], unittest.equals(true));
    unittest.expect(casted13['string'], unittest.equals('foo'));
    unittest.expect(o.password, unittest.equals('foo'));
    var casted14 = (o.phones) as core.Map;
    unittest.expect(casted14, unittest.hasLength(3));
    unittest.expect(casted14['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted14['bool'], unittest.equals(true));
    unittest.expect(casted14['string'], unittest.equals('foo'));
    var casted15 = (o.posixAccounts) as core.Map;
    unittest.expect(casted15, unittest.hasLength(3));
    unittest.expect(casted15['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted15['bool'], unittest.equals(true));
    unittest.expect(casted15['string'], unittest.equals('foo'));
    unittest.expect(o.primaryEmail, unittest.equals('foo'));
    unittest.expect(o.recoveryEmail, unittest.equals('foo'));
    unittest.expect(o.recoveryPhone, unittest.equals('foo'));
    var casted16 = (o.relations) as core.Map;
    unittest.expect(casted16, unittest.hasLength(3));
    unittest.expect(casted16['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted16['bool'], unittest.equals(true));
    unittest.expect(casted16['string'], unittest.equals('foo'));
    var casted17 = (o.sshPublicKeys) as core.Map;
    unittest.expect(casted17, unittest.hasLength(3));
    unittest.expect(casted17['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted17['bool'], unittest.equals(true));
    unittest.expect(casted17['string'], unittest.equals('foo'));
    unittest.expect(o.suspended, unittest.isTrue);
    unittest.expect(o.suspensionReason, unittest.equals('foo'));
    unittest.expect(o.thumbnailPhotoEtag, unittest.equals('foo'));
    unittest.expect(o.thumbnailPhotoUrl, unittest.equals('foo'));
    var casted18 = (o.websites) as core.Map;
    unittest.expect(casted18, unittest.hasLength(3));
    unittest.expect(casted18['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted18['bool'], unittest.equals(true));
    unittest.expect(casted18['string'], unittest.equals('foo'));
  }
  buildCounterUser--;
}

core.int buildCounterUserAbout = 0;
api.UserAbout buildUserAbout() {
  var o = api.UserAbout();
  buildCounterUserAbout++;
  if (buildCounterUserAbout < 3) {
    o.contentType = 'foo';
    o.value = 'foo';
  }
  buildCounterUserAbout--;
  return o;
}

void checkUserAbout(api.UserAbout o) {
  buildCounterUserAbout++;
  if (buildCounterUserAbout < 3) {
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUserAbout--;
}

core.int buildCounterUserAddress = 0;
api.UserAddress buildUserAddress() {
  var o = api.UserAddress();
  buildCounterUserAddress++;
  if (buildCounterUserAddress < 3) {
    o.country = 'foo';
    o.countryCode = 'foo';
    o.customType = 'foo';
    o.extendedAddress = 'foo';
    o.formatted = 'foo';
    o.locality = 'foo';
    o.poBox = 'foo';
    o.postalCode = 'foo';
    o.primary = true;
    o.region = 'foo';
    o.sourceIsStructured = true;
    o.streetAddress = 'foo';
    o.type = 'foo';
  }
  buildCounterUserAddress--;
  return o;
}

void checkUserAddress(api.UserAddress o) {
  buildCounterUserAddress++;
  if (buildCounterUserAddress < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.countryCode, unittest.equals('foo'));
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.extendedAddress, unittest.equals('foo'));
    unittest.expect(o.formatted, unittest.equals('foo'));
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.poBox, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.sourceIsStructured, unittest.isTrue);
    unittest.expect(o.streetAddress, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterUserAddress--;
}

api.UserCustomProperties buildUserCustomProperties() {
  var o = api.UserCustomProperties();
  o["a"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["b"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUserCustomProperties(api.UserCustomProperties o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted19 = (o["a"]) as core.Map;
  unittest.expect(casted19, unittest.hasLength(3));
  unittest.expect(casted19['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted19['bool'], unittest.equals(true));
  unittest.expect(casted19['string'], unittest.equals('foo'));
  var casted20 = (o["b"]) as core.Map;
  unittest.expect(casted20, unittest.hasLength(3));
  unittest.expect(casted20['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted20['bool'], unittest.equals(true));
  unittest.expect(casted20['string'], unittest.equals('foo'));
}

core.int buildCounterUserEmail = 0;
api.UserEmail buildUserEmail() {
  var o = api.UserEmail();
  buildCounterUserEmail++;
  if (buildCounterUserEmail < 3) {
    o.address = 'foo';
    o.customType = 'foo';
    o.primary = true;
    o.type = 'foo';
  }
  buildCounterUserEmail--;
  return o;
}

void checkUserEmail(api.UserEmail o) {
  buildCounterUserEmail++;
  if (buildCounterUserEmail < 3) {
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterUserEmail--;
}

core.int buildCounterUserExternalId = 0;
api.UserExternalId buildUserExternalId() {
  var o = api.UserExternalId();
  buildCounterUserExternalId++;
  if (buildCounterUserExternalId < 3) {
    o.customType = 'foo';
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterUserExternalId--;
  return o;
}

void checkUserExternalId(api.UserExternalId o) {
  buildCounterUserExternalId++;
  if (buildCounterUserExternalId < 3) {
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUserExternalId--;
}

core.int buildCounterUserGender = 0;
api.UserGender buildUserGender() {
  var o = api.UserGender();
  buildCounterUserGender++;
  if (buildCounterUserGender < 3) {
    o.addressMeAs = 'foo';
    o.customGender = 'foo';
    o.type = 'foo';
  }
  buildCounterUserGender--;
  return o;
}

void checkUserGender(api.UserGender o) {
  buildCounterUserGender++;
  if (buildCounterUserGender < 3) {
    unittest.expect(o.addressMeAs, unittest.equals('foo'));
    unittest.expect(o.customGender, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterUserGender--;
}

core.int buildCounterUserIm = 0;
api.UserIm buildUserIm() {
  var o = api.UserIm();
  buildCounterUserIm++;
  if (buildCounterUserIm < 3) {
    o.customProtocol = 'foo';
    o.customType = 'foo';
    o.im = 'foo';
    o.primary = true;
    o.protocol = 'foo';
    o.type = 'foo';
  }
  buildCounterUserIm--;
  return o;
}

void checkUserIm(api.UserIm o) {
  buildCounterUserIm++;
  if (buildCounterUserIm < 3) {
    unittest.expect(o.customProtocol, unittest.equals('foo'));
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.im, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.protocol, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterUserIm--;
}

core.int buildCounterUserKeyword = 0;
api.UserKeyword buildUserKeyword() {
  var o = api.UserKeyword();
  buildCounterUserKeyword++;
  if (buildCounterUserKeyword < 3) {
    o.customType = 'foo';
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterUserKeyword--;
  return o;
}

void checkUserKeyword(api.UserKeyword o) {
  buildCounterUserKeyword++;
  if (buildCounterUserKeyword < 3) {
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUserKeyword--;
}

core.int buildCounterUserLanguage = 0;
api.UserLanguage buildUserLanguage() {
  var o = api.UserLanguage();
  buildCounterUserLanguage++;
  if (buildCounterUserLanguage < 3) {
    o.customLanguage = 'foo';
    o.languageCode = 'foo';
  }
  buildCounterUserLanguage--;
  return o;
}

void checkUserLanguage(api.UserLanguage o) {
  buildCounterUserLanguage++;
  if (buildCounterUserLanguage < 3) {
    unittest.expect(o.customLanguage, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterUserLanguage--;
}

core.int buildCounterUserLocation = 0;
api.UserLocation buildUserLocation() {
  var o = api.UserLocation();
  buildCounterUserLocation++;
  if (buildCounterUserLocation < 3) {
    o.area = 'foo';
    o.buildingId = 'foo';
    o.customType = 'foo';
    o.deskCode = 'foo';
    o.floorName = 'foo';
    o.floorSection = 'foo';
    o.type = 'foo';
  }
  buildCounterUserLocation--;
  return o;
}

void checkUserLocation(api.UserLocation o) {
  buildCounterUserLocation++;
  if (buildCounterUserLocation < 3) {
    unittest.expect(o.area, unittest.equals('foo'));
    unittest.expect(o.buildingId, unittest.equals('foo'));
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.deskCode, unittest.equals('foo'));
    unittest.expect(o.floorName, unittest.equals('foo'));
    unittest.expect(o.floorSection, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterUserLocation--;
}

core.int buildCounterUserMakeAdmin = 0;
api.UserMakeAdmin buildUserMakeAdmin() {
  var o = api.UserMakeAdmin();
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
    unittest.expect(o.status, unittest.isTrue);
  }
  buildCounterUserMakeAdmin--;
}

core.int buildCounterUserName = 0;
api.UserName buildUserName() {
  var o = api.UserName();
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
    unittest.expect(o.familyName, unittest.equals('foo'));
    unittest.expect(o.fullName, unittest.equals('foo'));
    unittest.expect(o.givenName, unittest.equals('foo'));
  }
  buildCounterUserName--;
}

core.int buildCounterUserOrganization = 0;
api.UserOrganization buildUserOrganization() {
  var o = api.UserOrganization();
  buildCounterUserOrganization++;
  if (buildCounterUserOrganization < 3) {
    o.costCenter = 'foo';
    o.customType = 'foo';
    o.department = 'foo';
    o.description = 'foo';
    o.domain = 'foo';
    o.fullTimeEquivalent = 42;
    o.location = 'foo';
    o.name = 'foo';
    o.primary = true;
    o.symbol = 'foo';
    o.title = 'foo';
    o.type = 'foo';
  }
  buildCounterUserOrganization--;
  return o;
}

void checkUserOrganization(api.UserOrganization o) {
  buildCounterUserOrganization++;
  if (buildCounterUserOrganization < 3) {
    unittest.expect(o.costCenter, unittest.equals('foo'));
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.department, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.fullTimeEquivalent, unittest.equals(42));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.symbol, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterUserOrganization--;
}

core.int buildCounterUserPhone = 0;
api.UserPhone buildUserPhone() {
  var o = api.UserPhone();
  buildCounterUserPhone++;
  if (buildCounterUserPhone < 3) {
    o.customType = 'foo';
    o.primary = true;
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterUserPhone--;
  return o;
}

void checkUserPhone(api.UserPhone o) {
  buildCounterUserPhone++;
  if (buildCounterUserPhone < 3) {
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUserPhone--;
}

core.int buildCounterUserPhoto = 0;
api.UserPhoto buildUserPhoto() {
  var o = api.UserPhoto();
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
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.photoData, unittest.equals('foo'));
    unittest.expect(o.primaryEmail, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterUserPhoto--;
}

core.int buildCounterUserPosixAccount = 0;
api.UserPosixAccount buildUserPosixAccount() {
  var o = api.UserPosixAccount();
  buildCounterUserPosixAccount++;
  if (buildCounterUserPosixAccount < 3) {
    o.accountId = 'foo';
    o.gecos = 'foo';
    o.gid = 'foo';
    o.homeDirectory = 'foo';
    o.operatingSystemType = 'foo';
    o.primary = true;
    o.shell = 'foo';
    o.systemId = 'foo';
    o.uid = 'foo';
    o.username = 'foo';
  }
  buildCounterUserPosixAccount--;
  return o;
}

void checkUserPosixAccount(api.UserPosixAccount o) {
  buildCounterUserPosixAccount++;
  if (buildCounterUserPosixAccount < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.gecos, unittest.equals('foo'));
    unittest.expect(o.gid, unittest.equals('foo'));
    unittest.expect(o.homeDirectory, unittest.equals('foo'));
    unittest.expect(o.operatingSystemType, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.shell, unittest.equals('foo'));
    unittest.expect(o.systemId, unittest.equals('foo'));
    unittest.expect(o.uid, unittest.equals('foo'));
    unittest.expect(o.username, unittest.equals('foo'));
  }
  buildCounterUserPosixAccount--;
}

core.int buildCounterUserRelation = 0;
api.UserRelation buildUserRelation() {
  var o = api.UserRelation();
  buildCounterUserRelation++;
  if (buildCounterUserRelation < 3) {
    o.customType = 'foo';
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterUserRelation--;
  return o;
}

void checkUserRelation(api.UserRelation o) {
  buildCounterUserRelation++;
  if (buildCounterUserRelation < 3) {
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUserRelation--;
}

core.int buildCounterUserSshPublicKey = 0;
api.UserSshPublicKey buildUserSshPublicKey() {
  var o = api.UserSshPublicKey();
  buildCounterUserSshPublicKey++;
  if (buildCounterUserSshPublicKey < 3) {
    o.expirationTimeUsec = 'foo';
    o.fingerprint = 'foo';
    o.key = 'foo';
  }
  buildCounterUserSshPublicKey--;
  return o;
}

void checkUserSshPublicKey(api.UserSshPublicKey o) {
  buildCounterUserSshPublicKey++;
  if (buildCounterUserSshPublicKey < 3) {
    unittest.expect(o.expirationTimeUsec, unittest.equals('foo'));
    unittest.expect(o.fingerprint, unittest.equals('foo'));
    unittest.expect(o.key, unittest.equals('foo'));
  }
  buildCounterUserSshPublicKey--;
}

core.int buildCounterUserUndelete = 0;
api.UserUndelete buildUserUndelete() {
  var o = api.UserUndelete();
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
    unittest.expect(o.orgUnitPath, unittest.equals('foo'));
  }
  buildCounterUserUndelete--;
}

core.int buildCounterUserWebsite = 0;
api.UserWebsite buildUserWebsite() {
  var o = api.UserWebsite();
  buildCounterUserWebsite++;
  if (buildCounterUserWebsite < 3) {
    o.customType = 'foo';
    o.primary = true;
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterUserWebsite--;
  return o;
}

void checkUserWebsite(api.UserWebsite o) {
  buildCounterUserWebsite++;
  if (buildCounterUserWebsite < 3) {
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUserWebsite--;
}

core.List<api.User> buildUnnamed1640() {
  var o = <api.User>[];
  o.add(buildUser());
  o.add(buildUser());
  return o;
}

void checkUnnamed1640(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0] as api.User);
  checkUser(o[1] as api.User);
}

core.int buildCounterUsers = 0;
api.Users buildUsers() {
  var o = api.Users();
  buildCounterUsers++;
  if (buildCounterUsers < 3) {
    o.etag = 'foo';
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.triggerEvent = 'foo';
    o.users = buildUnnamed1640();
  }
  buildCounterUsers--;
  return o;
}

void checkUsers(api.Users o) {
  buildCounterUsers++;
  if (buildCounterUsers < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.triggerEvent, unittest.equals('foo'));
    checkUnnamed1640(o.users);
  }
  buildCounterUsers--;
}

core.int buildCounterVerificationCode = 0;
api.VerificationCode buildVerificationCode() {
  var o = api.VerificationCode();
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
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
    unittest.expect(o.verificationCode, unittest.equals('foo'));
  }
  buildCounterVerificationCode--;
}

core.List<api.VerificationCode> buildUnnamed1641() {
  var o = <api.VerificationCode>[];
  o.add(buildVerificationCode());
  o.add(buildVerificationCode());
  return o;
}

void checkUnnamed1641(core.List<api.VerificationCode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVerificationCode(o[0] as api.VerificationCode);
  checkVerificationCode(o[1] as api.VerificationCode);
}

core.int buildCounterVerificationCodes = 0;
api.VerificationCodes buildVerificationCodes() {
  var o = api.VerificationCodes();
  buildCounterVerificationCodes++;
  if (buildCounterVerificationCodes < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed1641();
    o.kind = 'foo';
  }
  buildCounterVerificationCodes--;
  return o;
}

void checkVerificationCodes(api.VerificationCodes o) {
  buildCounterVerificationCodes++;
  if (buildCounterVerificationCodes < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1641(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterVerificationCodes--;
}

void main() {
  unittest.group('obj-schema-Alias', () {
    unittest.test('to-json--from-json', () {
      var o = buildAlias();
      var od = api.Alias.fromJson(o.toJson());
      checkAlias(od as api.Alias);
    });
  });

  unittest.group('obj-schema-Aliases', () {
    unittest.test('to-json--from-json', () {
      var o = buildAliases();
      var od = api.Aliases.fromJson(o.toJson());
      checkAliases(od as api.Aliases);
    });
  });

  unittest.group('obj-schema-Asp', () {
    unittest.test('to-json--from-json', () {
      var o = buildAsp();
      var od = api.Asp.fromJson(o.toJson());
      checkAsp(od as api.Asp);
    });
  });

  unittest.group('obj-schema-Asps', () {
    unittest.test('to-json--from-json', () {
      var o = buildAsps();
      var od = api.Asps.fromJson(o.toJson());
      checkAsps(od as api.Asps);
    });
  });

  unittest.group('obj-schema-Building', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuilding();
      var od = api.Building.fromJson(o.toJson());
      checkBuilding(od as api.Building);
    });
  });

  unittest.group('obj-schema-BuildingAddress', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildingAddress();
      var od = api.BuildingAddress.fromJson(o.toJson());
      checkBuildingAddress(od as api.BuildingAddress);
    });
  });

  unittest.group('obj-schema-BuildingCoordinates', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildingCoordinates();
      var od = api.BuildingCoordinates.fromJson(o.toJson());
      checkBuildingCoordinates(od as api.BuildingCoordinates);
    });
  });

  unittest.group('obj-schema-Buildings', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildings();
      var od = api.Buildings.fromJson(o.toJson());
      checkBuildings(od as api.Buildings);
    });
  });

  unittest.group('obj-schema-CalendarResource', () {
    unittest.test('to-json--from-json', () {
      var o = buildCalendarResource();
      var od = api.CalendarResource.fromJson(o.toJson());
      checkCalendarResource(od as api.CalendarResource);
    });
  });

  unittest.group('obj-schema-CalendarResources', () {
    unittest.test('to-json--from-json', () {
      var o = buildCalendarResources();
      var od = api.CalendarResources.fromJson(o.toJson());
      checkCalendarResources(od as api.CalendarResources);
    });
  });

  unittest.group('obj-schema-Channel', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannel();
      var od = api.Channel.fromJson(o.toJson());
      checkChannel(od as api.Channel);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceActiveTimeRanges', () {
    unittest.test('to-json--from-json', () {
      var o = buildChromeOsDeviceActiveTimeRanges();
      var od = api.ChromeOsDeviceActiveTimeRanges.fromJson(o.toJson());
      checkChromeOsDeviceActiveTimeRanges(
          od as api.ChromeOsDeviceActiveTimeRanges);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildChromeOsDeviceCpuStatusReportsCpuTemperatureInfo();
      var od = api.ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo.fromJson(
          o.toJson());
      checkChromeOsDeviceCpuStatusReportsCpuTemperatureInfo(
          od as api.ChromeOsDeviceCpuStatusReportsCpuTemperatureInfo);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceCpuStatusReports', () {
    unittest.test('to-json--from-json', () {
      var o = buildChromeOsDeviceCpuStatusReports();
      var od = api.ChromeOsDeviceCpuStatusReports.fromJson(o.toJson());
      checkChromeOsDeviceCpuStatusReports(
          od as api.ChromeOsDeviceCpuStatusReports);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceDeviceFiles', () {
    unittest.test('to-json--from-json', () {
      var o = buildChromeOsDeviceDeviceFiles();
      var od = api.ChromeOsDeviceDeviceFiles.fromJson(o.toJson());
      checkChromeOsDeviceDeviceFiles(od as api.ChromeOsDeviceDeviceFiles);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceDiskVolumeReportsVolumeInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildChromeOsDeviceDiskVolumeReportsVolumeInfo();
      var od =
          api.ChromeOsDeviceDiskVolumeReportsVolumeInfo.fromJson(o.toJson());
      checkChromeOsDeviceDiskVolumeReportsVolumeInfo(
          od as api.ChromeOsDeviceDiskVolumeReportsVolumeInfo);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceDiskVolumeReports', () {
    unittest.test('to-json--from-json', () {
      var o = buildChromeOsDeviceDiskVolumeReports();
      var od = api.ChromeOsDeviceDiskVolumeReports.fromJson(o.toJson());
      checkChromeOsDeviceDiskVolumeReports(
          od as api.ChromeOsDeviceDiskVolumeReports);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceLastKnownNetwork', () {
    unittest.test('to-json--from-json', () {
      var o = buildChromeOsDeviceLastKnownNetwork();
      var od = api.ChromeOsDeviceLastKnownNetwork.fromJson(o.toJson());
      checkChromeOsDeviceLastKnownNetwork(
          od as api.ChromeOsDeviceLastKnownNetwork);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceRecentUsers', () {
    unittest.test('to-json--from-json', () {
      var o = buildChromeOsDeviceRecentUsers();
      var od = api.ChromeOsDeviceRecentUsers.fromJson(o.toJson());
      checkChromeOsDeviceRecentUsers(od as api.ChromeOsDeviceRecentUsers);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceSystemRamFreeReports', () {
    unittest.test('to-json--from-json', () {
      var o = buildChromeOsDeviceSystemRamFreeReports();
      var od = api.ChromeOsDeviceSystemRamFreeReports.fromJson(o.toJson());
      checkChromeOsDeviceSystemRamFreeReports(
          od as api.ChromeOsDeviceSystemRamFreeReports);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceTpmVersionInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildChromeOsDeviceTpmVersionInfo();
      var od = api.ChromeOsDeviceTpmVersionInfo.fromJson(o.toJson());
      checkChromeOsDeviceTpmVersionInfo(od as api.ChromeOsDeviceTpmVersionInfo);
    });
  });

  unittest.group('obj-schema-ChromeOsDevice', () {
    unittest.test('to-json--from-json', () {
      var o = buildChromeOsDevice();
      var od = api.ChromeOsDevice.fromJson(o.toJson());
      checkChromeOsDevice(od as api.ChromeOsDevice);
    });
  });

  unittest.group('obj-schema-ChromeOsDeviceAction', () {
    unittest.test('to-json--from-json', () {
      var o = buildChromeOsDeviceAction();
      var od = api.ChromeOsDeviceAction.fromJson(o.toJson());
      checkChromeOsDeviceAction(od as api.ChromeOsDeviceAction);
    });
  });

  unittest.group('obj-schema-ChromeOsDevices', () {
    unittest.test('to-json--from-json', () {
      var o = buildChromeOsDevices();
      var od = api.ChromeOsDevices.fromJson(o.toJson());
      checkChromeOsDevices(od as api.ChromeOsDevices);
    });
  });

  unittest.group('obj-schema-ChromeOsMoveDevicesToOu', () {
    unittest.test('to-json--from-json', () {
      var o = buildChromeOsMoveDevicesToOu();
      var od = api.ChromeOsMoveDevicesToOu.fromJson(o.toJson());
      checkChromeOsMoveDevicesToOu(od as api.ChromeOsMoveDevicesToOu);
    });
  });

  unittest.group('obj-schema-Customer', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomer();
      var od = api.Customer.fromJson(o.toJson());
      checkCustomer(od as api.Customer);
    });
  });

  unittest.group('obj-schema-CustomerPostalAddress', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomerPostalAddress();
      var od = api.CustomerPostalAddress.fromJson(o.toJson());
      checkCustomerPostalAddress(od as api.CustomerPostalAddress);
    });
  });

  unittest.group('obj-schema-DomainAlias', () {
    unittest.test('to-json--from-json', () {
      var o = buildDomainAlias();
      var od = api.DomainAlias.fromJson(o.toJson());
      checkDomainAlias(od as api.DomainAlias);
    });
  });

  unittest.group('obj-schema-DomainAliases', () {
    unittest.test('to-json--from-json', () {
      var o = buildDomainAliases();
      var od = api.DomainAliases.fromJson(o.toJson());
      checkDomainAliases(od as api.DomainAliases);
    });
  });

  unittest.group('obj-schema-Domains', () {
    unittest.test('to-json--from-json', () {
      var o = buildDomains();
      var od = api.Domains.fromJson(o.toJson());
      checkDomains(od as api.Domains);
    });
  });

  unittest.group('obj-schema-Domains2', () {
    unittest.test('to-json--from-json', () {
      var o = buildDomains2();
      var od = api.Domains2.fromJson(o.toJson());
      checkDomains2(od as api.Domains2);
    });
  });

  unittest.group('obj-schema-Feature', () {
    unittest.test('to-json--from-json', () {
      var o = buildFeature();
      var od = api.Feature.fromJson(o.toJson());
      checkFeature(od as api.Feature);
    });
  });

  unittest.group('obj-schema-FeatureInstance', () {
    unittest.test('to-json--from-json', () {
      var o = buildFeatureInstance();
      var od = api.FeatureInstance.fromJson(o.toJson());
      checkFeatureInstance(od as api.FeatureInstance);
    });
  });

  unittest.group('obj-schema-FeatureRename', () {
    unittest.test('to-json--from-json', () {
      var o = buildFeatureRename();
      var od = api.FeatureRename.fromJson(o.toJson());
      checkFeatureRename(od as api.FeatureRename);
    });
  });

  unittest.group('obj-schema-Features', () {
    unittest.test('to-json--from-json', () {
      var o = buildFeatures();
      var od = api.Features.fromJson(o.toJson());
      checkFeatures(od as api.Features);
    });
  });

  unittest.group('obj-schema-Group', () {
    unittest.test('to-json--from-json', () {
      var o = buildGroup();
      var od = api.Group.fromJson(o.toJson());
      checkGroup(od as api.Group);
    });
  });

  unittest.group('obj-schema-Groups', () {
    unittest.test('to-json--from-json', () {
      var o = buildGroups();
      var od = api.Groups.fromJson(o.toJson());
      checkGroups(od as api.Groups);
    });
  });

  unittest.group('obj-schema-Member', () {
    unittest.test('to-json--from-json', () {
      var o = buildMember();
      var od = api.Member.fromJson(o.toJson());
      checkMember(od as api.Member);
    });
  });

  unittest.group('obj-schema-Members', () {
    unittest.test('to-json--from-json', () {
      var o = buildMembers();
      var od = api.Members.fromJson(o.toJson());
      checkMembers(od as api.Members);
    });
  });

  unittest.group('obj-schema-MembersHasMember', () {
    unittest.test('to-json--from-json', () {
      var o = buildMembersHasMember();
      var od = api.MembersHasMember.fromJson(o.toJson());
      checkMembersHasMember(od as api.MembersHasMember);
    });
  });

  unittest.group('obj-schema-MobileDeviceApplications', () {
    unittest.test('to-json--from-json', () {
      var o = buildMobileDeviceApplications();
      var od = api.MobileDeviceApplications.fromJson(o.toJson());
      checkMobileDeviceApplications(od as api.MobileDeviceApplications);
    });
  });

  unittest.group('obj-schema-MobileDevice', () {
    unittest.test('to-json--from-json', () {
      var o = buildMobileDevice();
      var od = api.MobileDevice.fromJson(o.toJson());
      checkMobileDevice(od as api.MobileDevice);
    });
  });

  unittest.group('obj-schema-MobileDeviceAction', () {
    unittest.test('to-json--from-json', () {
      var o = buildMobileDeviceAction();
      var od = api.MobileDeviceAction.fromJson(o.toJson());
      checkMobileDeviceAction(od as api.MobileDeviceAction);
    });
  });

  unittest.group('obj-schema-MobileDevices', () {
    unittest.test('to-json--from-json', () {
      var o = buildMobileDevices();
      var od = api.MobileDevices.fromJson(o.toJson());
      checkMobileDevices(od as api.MobileDevices);
    });
  });

  unittest.group('obj-schema-OrgUnit', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrgUnit();
      var od = api.OrgUnit.fromJson(o.toJson());
      checkOrgUnit(od as api.OrgUnit);
    });
  });

  unittest.group('obj-schema-OrgUnits', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrgUnits();
      var od = api.OrgUnits.fromJson(o.toJson());
      checkOrgUnits(od as api.OrgUnits);
    });
  });

  unittest.group('obj-schema-Privilege', () {
    unittest.test('to-json--from-json', () {
      var o = buildPrivilege();
      var od = api.Privilege.fromJson(o.toJson());
      checkPrivilege(od as api.Privilege);
    });
  });

  unittest.group('obj-schema-Privileges', () {
    unittest.test('to-json--from-json', () {
      var o = buildPrivileges();
      var od = api.Privileges.fromJson(o.toJson());
      checkPrivileges(od as api.Privileges);
    });
  });

  unittest.group('obj-schema-RoleRolePrivileges', () {
    unittest.test('to-json--from-json', () {
      var o = buildRoleRolePrivileges();
      var od = api.RoleRolePrivileges.fromJson(o.toJson());
      checkRoleRolePrivileges(od as api.RoleRolePrivileges);
    });
  });

  unittest.group('obj-schema-Role', () {
    unittest.test('to-json--from-json', () {
      var o = buildRole();
      var od = api.Role.fromJson(o.toJson());
      checkRole(od as api.Role);
    });
  });

  unittest.group('obj-schema-RoleAssignment', () {
    unittest.test('to-json--from-json', () {
      var o = buildRoleAssignment();
      var od = api.RoleAssignment.fromJson(o.toJson());
      checkRoleAssignment(od as api.RoleAssignment);
    });
  });

  unittest.group('obj-schema-RoleAssignments', () {
    unittest.test('to-json--from-json', () {
      var o = buildRoleAssignments();
      var od = api.RoleAssignments.fromJson(o.toJson());
      checkRoleAssignments(od as api.RoleAssignments);
    });
  });

  unittest.group('obj-schema-Roles', () {
    unittest.test('to-json--from-json', () {
      var o = buildRoles();
      var od = api.Roles.fromJson(o.toJson());
      checkRoles(od as api.Roles);
    });
  });

  unittest.group('obj-schema-Schema', () {
    unittest.test('to-json--from-json', () {
      var o = buildSchema();
      var od = api.Schema.fromJson(o.toJson());
      checkSchema(od as api.Schema);
    });
  });

  unittest.group('obj-schema-SchemaFieldSpecNumericIndexingSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildSchemaFieldSpecNumericIndexingSpec();
      var od = api.SchemaFieldSpecNumericIndexingSpec.fromJson(o.toJson());
      checkSchemaFieldSpecNumericIndexingSpec(
          od as api.SchemaFieldSpecNumericIndexingSpec);
    });
  });

  unittest.group('obj-schema-SchemaFieldSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildSchemaFieldSpec();
      var od = api.SchemaFieldSpec.fromJson(o.toJson());
      checkSchemaFieldSpec(od as api.SchemaFieldSpec);
    });
  });

  unittest.group('obj-schema-Schemas', () {
    unittest.test('to-json--from-json', () {
      var o = buildSchemas();
      var od = api.Schemas.fromJson(o.toJson());
      checkSchemas(od as api.Schemas);
    });
  });

  unittest.group('obj-schema-Token', () {
    unittest.test('to-json--from-json', () {
      var o = buildToken();
      var od = api.Token.fromJson(o.toJson());
      checkToken(od as api.Token);
    });
  });

  unittest.group('obj-schema-Tokens', () {
    unittest.test('to-json--from-json', () {
      var o = buildTokens();
      var od = api.Tokens.fromJson(o.toJson());
      checkTokens(od as api.Tokens);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () {
      var o = buildUser();
      var od = api.User.fromJson(o.toJson());
      checkUser(od as api.User);
    });
  });

  unittest.group('obj-schema-UserAbout', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserAbout();
      var od = api.UserAbout.fromJson(o.toJson());
      checkUserAbout(od as api.UserAbout);
    });
  });

  unittest.group('obj-schema-UserAddress', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserAddress();
      var od = api.UserAddress.fromJson(o.toJson());
      checkUserAddress(od as api.UserAddress);
    });
  });

  unittest.group('obj-schema-UserCustomProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserCustomProperties();
      var od = api.UserCustomProperties.fromJson(o.toJson());
      checkUserCustomProperties(od as api.UserCustomProperties);
    });
  });

  unittest.group('obj-schema-UserEmail', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserEmail();
      var od = api.UserEmail.fromJson(o.toJson());
      checkUserEmail(od as api.UserEmail);
    });
  });

  unittest.group('obj-schema-UserExternalId', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserExternalId();
      var od = api.UserExternalId.fromJson(o.toJson());
      checkUserExternalId(od as api.UserExternalId);
    });
  });

  unittest.group('obj-schema-UserGender', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserGender();
      var od = api.UserGender.fromJson(o.toJson());
      checkUserGender(od as api.UserGender);
    });
  });

  unittest.group('obj-schema-UserIm', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserIm();
      var od = api.UserIm.fromJson(o.toJson());
      checkUserIm(od as api.UserIm);
    });
  });

  unittest.group('obj-schema-UserKeyword', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserKeyword();
      var od = api.UserKeyword.fromJson(o.toJson());
      checkUserKeyword(od as api.UserKeyword);
    });
  });

  unittest.group('obj-schema-UserLanguage', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserLanguage();
      var od = api.UserLanguage.fromJson(o.toJson());
      checkUserLanguage(od as api.UserLanguage);
    });
  });

  unittest.group('obj-schema-UserLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserLocation();
      var od = api.UserLocation.fromJson(o.toJson());
      checkUserLocation(od as api.UserLocation);
    });
  });

  unittest.group('obj-schema-UserMakeAdmin', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserMakeAdmin();
      var od = api.UserMakeAdmin.fromJson(o.toJson());
      checkUserMakeAdmin(od as api.UserMakeAdmin);
    });
  });

  unittest.group('obj-schema-UserName', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserName();
      var od = api.UserName.fromJson(o.toJson());
      checkUserName(od as api.UserName);
    });
  });

  unittest.group('obj-schema-UserOrganization', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserOrganization();
      var od = api.UserOrganization.fromJson(o.toJson());
      checkUserOrganization(od as api.UserOrganization);
    });
  });

  unittest.group('obj-schema-UserPhone', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserPhone();
      var od = api.UserPhone.fromJson(o.toJson());
      checkUserPhone(od as api.UserPhone);
    });
  });

  unittest.group('obj-schema-UserPhoto', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserPhoto();
      var od = api.UserPhoto.fromJson(o.toJson());
      checkUserPhoto(od as api.UserPhoto);
    });
  });

  unittest.group('obj-schema-UserPosixAccount', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserPosixAccount();
      var od = api.UserPosixAccount.fromJson(o.toJson());
      checkUserPosixAccount(od as api.UserPosixAccount);
    });
  });

  unittest.group('obj-schema-UserRelation', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserRelation();
      var od = api.UserRelation.fromJson(o.toJson());
      checkUserRelation(od as api.UserRelation);
    });
  });

  unittest.group('obj-schema-UserSshPublicKey', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserSshPublicKey();
      var od = api.UserSshPublicKey.fromJson(o.toJson());
      checkUserSshPublicKey(od as api.UserSshPublicKey);
    });
  });

  unittest.group('obj-schema-UserUndelete', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserUndelete();
      var od = api.UserUndelete.fromJson(o.toJson());
      checkUserUndelete(od as api.UserUndelete);
    });
  });

  unittest.group('obj-schema-UserWebsite', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserWebsite();
      var od = api.UserWebsite.fromJson(o.toJson());
      checkUserWebsite(od as api.UserWebsite);
    });
  });

  unittest.group('obj-schema-Users', () {
    unittest.test('to-json--from-json', () {
      var o = buildUsers();
      var od = api.Users.fromJson(o.toJson());
      checkUsers(od as api.Users);
    });
  });

  unittest.group('obj-schema-VerificationCode', () {
    unittest.test('to-json--from-json', () {
      var o = buildVerificationCode();
      var od = api.VerificationCode.fromJson(o.toJson());
      checkVerificationCode(od as api.VerificationCode);
    });
  });

  unittest.group('obj-schema-VerificationCodes', () {
    unittest.test('to-json--from-json', () {
      var o = buildVerificationCodes();
      var od = api.VerificationCodes.fromJson(o.toJson());
      checkVerificationCodes(od as api.VerificationCodes);
    });
  });

  unittest.group('resource-AspsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).asps;
      var arg_userKey = 'foo';
      var arg_codeId = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        index = path.indexOf('/asps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/asps/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_codeId'));

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
          .delete(arg_userKey, arg_codeId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).asps;
      var arg_userKey = 'foo';
      var arg_codeId = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        index = path.indexOf('/asps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/asps/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_codeId'));

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
        var resp = convert.json.encode(buildAsp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_userKey, arg_codeId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAsp(response as api.Asp);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).asps;
      var arg_userKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        index = path.indexOf('/asps', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/asps"));
        pathOffset += 5;

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
        var resp = convert.json.encode(buildAsps());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAsps(response as api.Asps);
      })));
    });
  });

  unittest.group('resource-ChannelsResourceApi', () {
    unittest.test('method--stop', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).channels;
      var arg_request = buildChannel();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj as api.Channel);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("admin/directory_v1/channels/stop"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .stop(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group('resource-ChromeosdevicesResourceApi', () {
    unittest.test('method--action', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).chromeosdevices;
      var arg_request = buildChromeOsDeviceAction();
      var arg_customerId = 'foo';
      var arg_resourceId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ChromeOsDeviceAction.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkChromeOsDeviceAction(obj as api.ChromeOsDeviceAction);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/devices/chromeos/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/devices/chromeos/"));
        pathOffset += 18;
        index = path.indexOf('/action', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_resourceId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/action"));
        pathOffset += 7;

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
          .action(arg_request, arg_customerId, arg_resourceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).chromeosdevices;
      var arg_customerId = 'foo';
      var arg_deviceId = 'foo';
      var arg_projection = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/devices/chromeos/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/devices/chromeos/"));
        pathOffset += 18;
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
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChromeOsDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customerId, arg_deviceId,
              projection: arg_projection, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChromeOsDevice(response as api.ChromeOsDevice);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).chromeosdevices;
      var arg_customerId = 'foo';
      var arg_maxResults = 42;
      var arg_orderBy = 'foo';
      var arg_orgUnitPath = 'foo';
      var arg_pageToken = 'foo';
      var arg_projection = 'foo';
      var arg_query = 'foo';
      var arg_sortOrder = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/devices/chromeos', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/devices/chromeos"));
        pathOffset += 17;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["orgUnitPath"].first, unittest.equals(arg_orgUnitPath));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChromeOsDevices());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customerId,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              orgUnitPath: arg_orgUnitPath,
              pageToken: arg_pageToken,
              projection: arg_projection,
              query: arg_query,
              sortOrder: arg_sortOrder,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChromeOsDevices(response as api.ChromeOsDevices);
      })));
    });

    unittest.test('method--moveDevicesToOu', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).chromeosdevices;
      var arg_request = buildChromeOsMoveDevicesToOu();
      var arg_customerId = 'foo';
      var arg_orgUnitPath = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ChromeOsMoveDevicesToOu.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkChromeOsMoveDevicesToOu(obj as api.ChromeOsMoveDevicesToOu);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/devices/chromeos/moveDevicesToOu', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("/devices/chromeos/moveDevicesToOu"));
        pathOffset += 33;

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
            queryMap["orgUnitPath"].first, unittest.equals(arg_orgUnitPath));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .moveDevicesToOu(arg_request, arg_customerId, arg_orgUnitPath,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).chromeosdevices;
      var arg_request = buildChromeOsDevice();
      var arg_customerId = 'foo';
      var arg_deviceId = 'foo';
      var arg_projection = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ChromeOsDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkChromeOsDevice(obj as api.ChromeOsDevice);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/devices/chromeos/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/devices/chromeos/"));
        pathOffset += 18;
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
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChromeOsDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_customerId, arg_deviceId,
              projection: arg_projection, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChromeOsDevice(response as api.ChromeOsDevice);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).chromeosdevices;
      var arg_request = buildChromeOsDevice();
      var arg_customerId = 'foo';
      var arg_deviceId = 'foo';
      var arg_projection = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ChromeOsDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkChromeOsDevice(obj as api.ChromeOsDevice);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/devices/chromeos/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/devices/chromeos/"));
        pathOffset += 18;
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
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChromeOsDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_customerId, arg_deviceId,
              projection: arg_projection, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChromeOsDevice(response as api.ChromeOsDevice);
      })));
    });
  });

  unittest.group('resource-CustomersResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).customers;
      var arg_customerKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("admin/directory/v1/customers/"));
        pathOffset += 29;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_customerKey'));

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
        var resp = convert.json.encode(buildCustomer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customerKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCustomer(response as api.Customer);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).customers;
      var arg_request = buildCustomer();
      var arg_customerKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Customer.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCustomer(obj as api.Customer);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("admin/directory/v1/customers/"));
        pathOffset += 29;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_customerKey'));

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
        var resp = convert.json.encode(buildCustomer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_customerKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCustomer(response as api.Customer);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).customers;
      var arg_request = buildCustomer();
      var arg_customerKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Customer.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCustomer(obj as api.Customer);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("admin/directory/v1/customers/"));
        pathOffset += 29;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_customerKey'));

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
        var resp = convert.json.encode(buildCustomer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_customerKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCustomer(response as api.Customer);
      })));
    });
  });

  unittest.group('resource-DomainAliasesResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).domainAliases;
      var arg_customer = 'foo';
      var arg_domainAliasName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/domainaliases/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/domainaliases/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_domainAliasName'));

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
          .delete(arg_customer, arg_domainAliasName, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).domainAliases;
      var arg_customer = 'foo';
      var arg_domainAliasName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/domainaliases/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/domainaliases/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_domainAliasName'));

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
        var resp = convert.json.encode(buildDomainAlias());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customer, arg_domainAliasName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDomainAlias(response as api.DomainAlias);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).domainAliases;
      var arg_request = buildDomainAlias();
      var arg_customer = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DomainAlias.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDomainAlias(obj as api.DomainAlias);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/domainaliases', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/domainaliases"));
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
        var resp = convert.json.encode(buildDomainAlias());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDomainAlias(response as api.DomainAlias);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).domainAliases;
      var arg_customer = 'foo';
      var arg_parentDomainName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/domainaliases', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/domainaliases"));
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
        unittest.expect(queryMap["parentDomainName"].first,
            unittest.equals(arg_parentDomainName));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDomainAliases());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customer,
              parentDomainName: arg_parentDomainName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDomainAliases(response as api.DomainAliases);
      })));
    });
  });

  unittest.group('resource-DomainsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).domains;
      var arg_customer = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/domains/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/domains/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_domainName'));

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
          .delete(arg_customer, arg_domainName, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).domains;
      var arg_customer = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/domains/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/domains/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_domainName'));

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
        var resp = convert.json.encode(buildDomains());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customer, arg_domainName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDomains(response as api.Domains);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).domains;
      var arg_request = buildDomains();
      var arg_customer = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Domains.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDomains(obj as api.Domains);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/domains', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/domains"));
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
        var resp = convert.json.encode(buildDomains());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDomains(response as api.Domains);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).domains;
      var arg_customer = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/domains', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/domains"));
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
        var resp = convert.json.encode(buildDomains2());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDomains2(response as api.Domains2);
      })));
    });
  });

  unittest.group('resource-GroupsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).groups;
      var arg_groupKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("admin/directory/v1/groups/"));
        pathOffset += 26;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_groupKey'));

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
          .delete(arg_groupKey, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).groups;
      var arg_groupKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("admin/directory/v1/groups/"));
        pathOffset += 26;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_groupKey'));

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
        var resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_groupKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroup(response as api.Group);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).groups;
      var arg_request = buildGroup();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroup(obj as api.Group);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/groups"));
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
        var resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroup(response as api.Group);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).groups;
      var arg_customer = 'foo';
      var arg_domain = 'foo';
      var arg_maxResults = 42;
      var arg_orderBy = 'foo';
      var arg_pageToken = 'foo';
      var arg_query = 'foo';
      var arg_sortOrder = 'foo';
      var arg_userKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/groups"));
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
        unittest.expect(
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["domain"].first, unittest.equals(arg_domain));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(
            queryMap["userKey"].first, unittest.equals(arg_userKey));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGroups());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              customer: arg_customer,
              domain: arg_domain,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              query: arg_query,
              sortOrder: arg_sortOrder,
              userKey: arg_userKey,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroups(response as api.Groups);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).groups;
      var arg_request = buildGroup();
      var arg_groupKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroup(obj as api.Group);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("admin/directory/v1/groups/"));
        pathOffset += 26;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_groupKey'));

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
        var resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_groupKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroup(response as api.Group);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).groups;
      var arg_request = buildGroup();
      var arg_groupKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroup(obj as api.Group);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("admin/directory/v1/groups/"));
        pathOffset += 26;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_groupKey'));

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
        var resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_groupKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroup(response as api.Group);
      })));
    });
  });

  unittest.group('resource-GroupsAliasesResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).groups.aliases;
      var arg_groupKey = 'foo';
      var arg_alias = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("admin/directory/v1/groups/"));
        pathOffset += 26;
        index = path.indexOf('/aliases/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_groupKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/aliases/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_alias'));

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
          .delete(arg_groupKey, arg_alias, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).groups.aliases;
      var arg_request = buildAlias();
      var arg_groupKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Alias.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAlias(obj as api.Alias);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("admin/directory/v1/groups/"));
        pathOffset += 26;
        index = path.indexOf('/aliases', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_groupKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/aliases"));
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
        var resp = convert.json.encode(buildAlias());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_groupKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAlias(response as api.Alias);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).groups.aliases;
      var arg_groupKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("admin/directory/v1/groups/"));
        pathOffset += 26;
        index = path.indexOf('/aliases', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_groupKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/aliases"));
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
        var resp = convert.json.encode(buildAliases());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_groupKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAliases(response as api.Aliases);
      })));
    });
  });

  unittest.group('resource-MembersResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).members;
      var arg_groupKey = 'foo';
      var arg_memberKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("admin/directory/v1/groups/"));
        pathOffset += 26;
        index = path.indexOf('/members/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_groupKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/members/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_memberKey'));

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
          .delete(arg_groupKey, arg_memberKey, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).members;
      var arg_groupKey = 'foo';
      var arg_memberKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("admin/directory/v1/groups/"));
        pathOffset += 26;
        index = path.indexOf('/members/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_groupKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/members/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_memberKey'));

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
        var resp = convert.json.encode(buildMember());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_groupKey, arg_memberKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMember(response as api.Member);
      })));
    });

    unittest.test('method--hasMember', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).members;
      var arg_groupKey = 'foo';
      var arg_memberKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("admin/directory/v1/groups/"));
        pathOffset += 26;
        index = path.indexOf('/hasMember/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_groupKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/hasMember/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_memberKey'));

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
        var resp = convert.json.encode(buildMembersHasMember());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .hasMember(arg_groupKey, arg_memberKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMembersHasMember(response as api.MembersHasMember);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).members;
      var arg_request = buildMember();
      var arg_groupKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Member.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMember(obj as api.Member);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("admin/directory/v1/groups/"));
        pathOffset += 26;
        index = path.indexOf('/members', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_groupKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/members"));
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
        var resp = convert.json.encode(buildMember());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_groupKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMember(response as api.Member);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).members;
      var arg_groupKey = 'foo';
      var arg_includeDerivedMembership = true;
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_roles = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("admin/directory/v1/groups/"));
        pathOffset += 26;
        index = path.indexOf('/members', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_groupKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/members"));
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
        unittest.expect(queryMap["includeDerivedMembership"].first,
            unittest.equals("$arg_includeDerivedMembership"));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["roles"].first, unittest.equals(arg_roles));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMembers());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_groupKey,
              includeDerivedMembership: arg_includeDerivedMembership,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              roles: arg_roles,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMembers(response as api.Members);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).members;
      var arg_request = buildMember();
      var arg_groupKey = 'foo';
      var arg_memberKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Member.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMember(obj as api.Member);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("admin/directory/v1/groups/"));
        pathOffset += 26;
        index = path.indexOf('/members/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_groupKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/members/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_memberKey'));

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
        var resp = convert.json.encode(buildMember());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_groupKey, arg_memberKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMember(response as api.Member);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).members;
      var arg_request = buildMember();
      var arg_groupKey = 'foo';
      var arg_memberKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Member.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMember(obj as api.Member);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("admin/directory/v1/groups/"));
        pathOffset += 26;
        index = path.indexOf('/members/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_groupKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/members/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_memberKey'));

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
        var resp = convert.json.encode(buildMember());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_groupKey, arg_memberKey,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMember(response as api.Member);
      })));
    });
  });

  unittest.group('resource-MobiledevicesResourceApi', () {
    unittest.test('method--action', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).mobiledevices;
      var arg_request = buildMobileDeviceAction();
      var arg_customerId = 'foo';
      var arg_resourceId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.MobileDeviceAction.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMobileDeviceAction(obj as api.MobileDeviceAction);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/devices/mobile/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/devices/mobile/"));
        pathOffset += 16;
        index = path.indexOf('/action', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_resourceId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/action"));
        pathOffset += 7;

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
          .action(arg_request, arg_customerId, arg_resourceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).mobiledevices;
      var arg_customerId = 'foo';
      var arg_resourceId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/devices/mobile/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/devices/mobile/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          .delete(arg_customerId, arg_resourceId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).mobiledevices;
      var arg_customerId = 'foo';
      var arg_resourceId = 'foo';
      var arg_projection = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/devices/mobile/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/devices/mobile/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMobileDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customerId, arg_resourceId,
              projection: arg_projection, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMobileDevice(response as api.MobileDevice);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).mobiledevices;
      var arg_customerId = 'foo';
      var arg_maxResults = 42;
      var arg_orderBy = 'foo';
      var arg_pageToken = 'foo';
      var arg_projection = 'foo';
      var arg_query = 'foo';
      var arg_sortOrder = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/devices/mobile', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/devices/mobile"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMobileDevices());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customerId,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              projection: arg_projection,
              query: arg_query,
              sortOrder: arg_sortOrder,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMobileDevices(response as api.MobileDevices);
      })));
    });
  });

  unittest.group('resource-OrgunitsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).orgunits;
      var arg_customerId = 'foo';
      var arg_orgUnitPath = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/orgunits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/orgunits/"));
        pathOffset += 10;
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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_customerId, arg_orgUnitPath, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).orgunits;
      var arg_customerId = 'foo';
      var arg_orgUnitPath = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/orgunits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/orgunits/"));
        pathOffset += 10;
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
        var resp = convert.json.encode(buildOrgUnit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customerId, arg_orgUnitPath, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrgUnit(response as api.OrgUnit);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).orgunits;
      var arg_request = buildOrgUnit();
      var arg_customerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.OrgUnit.fromJson(json as core.Map<core.String, core.dynamic>);
        checkOrgUnit(obj as api.OrgUnit);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/orgunits', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/orgunits"));
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
        var resp = convert.json.encode(buildOrgUnit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_customerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrgUnit(response as api.OrgUnit);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).orgunits;
      var arg_customerId = 'foo';
      var arg_orgUnitPath = 'foo';
      var arg_type = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/orgunits', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/orgunits"));
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
            queryMap["orgUnitPath"].first, unittest.equals(arg_orgUnitPath));
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOrgUnits());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customerId,
              orgUnitPath: arg_orgUnitPath,
              type: arg_type,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrgUnits(response as api.OrgUnits);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).orgunits;
      var arg_request = buildOrgUnit();
      var arg_customerId = 'foo';
      var arg_orgUnitPath = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.OrgUnit.fromJson(json as core.Map<core.String, core.dynamic>);
        checkOrgUnit(obj as api.OrgUnit);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/orgunits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/orgunits/"));
        pathOffset += 10;
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
        var resp = convert.json.encode(buildOrgUnit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_customerId, arg_orgUnitPath,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrgUnit(response as api.OrgUnit);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).orgunits;
      var arg_request = buildOrgUnit();
      var arg_customerId = 'foo';
      var arg_orgUnitPath = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.OrgUnit.fromJson(json as core.Map<core.String, core.dynamic>);
        checkOrgUnit(obj as api.OrgUnit);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/orgunits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/orgunits/"));
        pathOffset += 10;
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
        var resp = convert.json.encode(buildOrgUnit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_customerId, arg_orgUnitPath,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrgUnit(response as api.OrgUnit);
      })));
    });
  });

  unittest.group('resource-PrivilegesResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).privileges;
      var arg_customer = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/roles/ALL/privileges', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/roles/ALL/privileges"));
        pathOffset += 21;

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
        var resp = convert.json.encode(buildPrivileges());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPrivileges(response as api.Privileges);
      })));
    });
  });

  unittest.group('resource-ResourcesBuildingsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).resources.buildings;
      var arg_customer = 'foo';
      var arg_buildingId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/resources/buildings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/resources/buildings/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_buildingId'));

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
          .delete(arg_customer, arg_buildingId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).resources.buildings;
      var arg_customer = 'foo';
      var arg_buildingId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/resources/buildings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/resources/buildings/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_buildingId'));

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
        var resp = convert.json.encode(buildBuilding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customer, arg_buildingId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBuilding(response as api.Building);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).resources.buildings;
      var arg_request = buildBuilding();
      var arg_customer = 'foo';
      var arg_coordinatesSource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Building.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBuilding(obj as api.Building);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/resources/buildings', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/resources/buildings"));
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
        unittest.expect(queryMap["coordinatesSource"].first,
            unittest.equals(arg_coordinatesSource));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBuilding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_customer,
              coordinatesSource: arg_coordinatesSource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBuilding(response as api.Building);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).resources.buildings;
      var arg_customer = 'foo';
      var arg_maxResults = 42;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/resources/buildings', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/resources/buildings"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBuildings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customer,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBuildings(response as api.Buildings);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).resources.buildings;
      var arg_request = buildBuilding();
      var arg_customer = 'foo';
      var arg_buildingId = 'foo';
      var arg_coordinatesSource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Building.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBuilding(obj as api.Building);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/resources/buildings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/resources/buildings/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_buildingId'));

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
        unittest.expect(queryMap["coordinatesSource"].first,
            unittest.equals(arg_coordinatesSource));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBuilding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_customer, arg_buildingId,
              coordinatesSource: arg_coordinatesSource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBuilding(response as api.Building);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).resources.buildings;
      var arg_request = buildBuilding();
      var arg_customer = 'foo';
      var arg_buildingId = 'foo';
      var arg_coordinatesSource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Building.fromJson(json as core.Map<core.String, core.dynamic>);
        checkBuilding(obj as api.Building);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/resources/buildings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/resources/buildings/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_buildingId'));

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
        unittest.expect(queryMap["coordinatesSource"].first,
            unittest.equals(arg_coordinatesSource));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBuilding());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_customer, arg_buildingId,
              coordinatesSource: arg_coordinatesSource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBuilding(response as api.Building);
      })));
    });
  });

  unittest.group('resource-ResourcesCalendarsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).resources.calendars;
      var arg_customer = 'foo';
      var arg_calendarResourceId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/resources/calendars/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/resources/calendars/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_calendarResourceId'));

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
          .delete(arg_customer, arg_calendarResourceId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).resources.calendars;
      var arg_customer = 'foo';
      var arg_calendarResourceId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/resources/calendars/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/resources/calendars/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_calendarResourceId'));

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
        var resp = convert.json.encode(buildCalendarResource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customer, arg_calendarResourceId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCalendarResource(response as api.CalendarResource);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).resources.calendars;
      var arg_request = buildCalendarResource();
      var arg_customer = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CalendarResource.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCalendarResource(obj as api.CalendarResource);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/resources/calendars', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/resources/calendars"));
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
        var resp = convert.json.encode(buildCalendarResource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCalendarResource(response as api.CalendarResource);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).resources.calendars;
      var arg_customer = 'foo';
      var arg_maxResults = 42;
      var arg_orderBy = 'foo';
      var arg_pageToken = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/resources/calendars', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/resources/calendars"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCalendarResources());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customer,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              query: arg_query,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCalendarResources(response as api.CalendarResources);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).resources.calendars;
      var arg_request = buildCalendarResource();
      var arg_customer = 'foo';
      var arg_calendarResourceId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CalendarResource.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCalendarResource(obj as api.CalendarResource);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/resources/calendars/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/resources/calendars/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_calendarResourceId'));

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
        var resp = convert.json.encode(buildCalendarResource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_customer, arg_calendarResourceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCalendarResource(response as api.CalendarResource);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).resources.calendars;
      var arg_request = buildCalendarResource();
      var arg_customer = 'foo';
      var arg_calendarResourceId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CalendarResource.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCalendarResource(obj as api.CalendarResource);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/resources/calendars/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/resources/calendars/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_calendarResourceId'));

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
        var resp = convert.json.encode(buildCalendarResource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_customer, arg_calendarResourceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCalendarResource(response as api.CalendarResource);
      })));
    });
  });

  unittest.group('resource-ResourcesFeaturesResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).resources.features;
      var arg_customer = 'foo';
      var arg_featureKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/resources/features/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/resources/features/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_featureKey'));

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
          .delete(arg_customer, arg_featureKey, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).resources.features;
      var arg_customer = 'foo';
      var arg_featureKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/resources/features/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/resources/features/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_featureKey'));

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
        var resp = convert.json.encode(buildFeature());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customer, arg_featureKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFeature(response as api.Feature);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).resources.features;
      var arg_request = buildFeature();
      var arg_customer = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Feature.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFeature(obj as api.Feature);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/resources/features', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/resources/features"));
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
        var resp = convert.json.encode(buildFeature());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFeature(response as api.Feature);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).resources.features;
      var arg_customer = 'foo';
      var arg_maxResults = 42;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/resources/features', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/resources/features"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFeatures());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customer,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFeatures(response as api.Features);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).resources.features;
      var arg_request = buildFeature();
      var arg_customer = 'foo';
      var arg_featureKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Feature.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFeature(obj as api.Feature);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/resources/features/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/resources/features/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_featureKey'));

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
        var resp = convert.json.encode(buildFeature());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_customer, arg_featureKey,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFeature(response as api.Feature);
      })));
    });

    unittest.test('method--rename', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).resources.features;
      var arg_request = buildFeatureRename();
      var arg_customer = 'foo';
      var arg_oldName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FeatureRename.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFeatureRename(obj as api.FeatureRename);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/resources/features/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/resources/features/"));
        pathOffset += 20;
        index = path.indexOf('/rename', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_oldName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/rename"));
        pathOffset += 7;

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
          .rename(arg_request, arg_customer, arg_oldName, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).resources.features;
      var arg_request = buildFeature();
      var arg_customer = 'foo';
      var arg_featureKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Feature.fromJson(json as core.Map<core.String, core.dynamic>);
        checkFeature(obj as api.Feature);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/resources/features/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/resources/features/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_featureKey'));

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
        var resp = convert.json.encode(buildFeature());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_customer, arg_featureKey,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFeature(response as api.Feature);
      })));
    });
  });

  unittest.group('resource-RoleAssignmentsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).roleAssignments;
      var arg_customer = 'foo';
      var arg_roleAssignmentId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/roleassignments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/roleassignments/"));
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_roleAssignmentId'));

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
          .delete(arg_customer, arg_roleAssignmentId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).roleAssignments;
      var arg_customer = 'foo';
      var arg_roleAssignmentId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/roleassignments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/roleassignments/"));
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_roleAssignmentId'));

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
        var resp = convert.json.encode(buildRoleAssignment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customer, arg_roleAssignmentId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRoleAssignment(response as api.RoleAssignment);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).roleAssignments;
      var arg_request = buildRoleAssignment();
      var arg_customer = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RoleAssignment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRoleAssignment(obj as api.RoleAssignment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/roleassignments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/roleassignments"));
        pathOffset += 16;

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
        var resp = convert.json.encode(buildRoleAssignment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRoleAssignment(response as api.RoleAssignment);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).roleAssignments;
      var arg_customer = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_roleId = 'foo';
      var arg_userKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/roleassignments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/roleassignments"));
        pathOffset += 16;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["roleId"].first, unittest.equals(arg_roleId));
        unittest.expect(
            queryMap["userKey"].first, unittest.equals(arg_userKey));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRoleAssignments());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customer,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              roleId: arg_roleId,
              userKey: arg_userKey,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRoleAssignments(response as api.RoleAssignments);
      })));
    });
  });

  unittest.group('resource-RolesResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).roles;
      var arg_customer = 'foo';
      var arg_roleId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/roles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/roles/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_roleId'));

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
          .delete(arg_customer, arg_roleId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).roles;
      var arg_customer = 'foo';
      var arg_roleId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/roles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/roles/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_roleId'));

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
        var resp = convert.json.encode(buildRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customer, arg_roleId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRole(response as api.Role);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).roles;
      var arg_request = buildRole();
      var arg_customer = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Role.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRole(obj as api.Role);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/roles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/roles"));
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
        var resp = convert.json.encode(buildRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_customer, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRole(response as api.Role);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).roles;
      var arg_customer = 'foo';
      var arg_maxResults = 42;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/roles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/roles"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRoles());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customer,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRoles(response as api.Roles);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).roles;
      var arg_request = buildRole();
      var arg_customer = 'foo';
      var arg_roleId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Role.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRole(obj as api.Role);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/roles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/roles/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_roleId'));

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
        var resp = convert.json.encode(buildRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_customer, arg_roleId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRole(response as api.Role);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).roles;
      var arg_request = buildRole();
      var arg_customer = 'foo';
      var arg_roleId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Role.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRole(obj as api.Role);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/roles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customer'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/roles/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_roleId'));

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
        var resp = convert.json.encode(buildRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_customer, arg_roleId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRole(response as api.Role);
      })));
    });
  });

  unittest.group('resource-SchemasResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).schemas;
      var arg_customerId = 'foo';
      var arg_schemaKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/schemas/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/schemas/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_schemaKey'));

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
          .delete(arg_customerId, arg_schemaKey, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).schemas;
      var arg_customerId = 'foo';
      var arg_schemaKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/schemas/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/schemas/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_schemaKey'));

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
        var resp = convert.json.encode(buildSchema());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_customerId, arg_schemaKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSchema(response as api.Schema);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).schemas;
      var arg_request = buildSchema();
      var arg_customerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Schema.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSchema(obj as api.Schema);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/schemas', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/schemas"));
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
        var resp = convert.json.encode(buildSchema());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_customerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSchema(response as api.Schema);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).schemas;
      var arg_customerId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/schemas', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/schemas"));
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
        var resp = convert.json.encode(buildSchemas());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_customerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSchemas(response as api.Schemas);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).schemas;
      var arg_request = buildSchema();
      var arg_customerId = 'foo';
      var arg_schemaKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Schema.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSchema(obj as api.Schema);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/schemas/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/schemas/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_schemaKey'));

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
        var resp = convert.json.encode(buildSchema());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_customerId, arg_schemaKey,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSchema(response as api.Schema);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).schemas;
      var arg_request = buildSchema();
      var arg_customerId = 'foo';
      var arg_schemaKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Schema.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSchema(obj as api.Schema);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("admin/directory/v1/customer/"));
        pathOffset += 28;
        index = path.indexOf('/schemas/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_customerId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/schemas/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_schemaKey'));

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
        var resp = convert.json.encode(buildSchema());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_customerId, arg_schemaKey,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSchema(response as api.Schema);
      })));
    });
  });

  unittest.group('resource-TokensResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).tokens;
      var arg_userKey = 'foo';
      var arg_clientId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tokens/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_clientId'));

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
          .delete(arg_userKey, arg_clientId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).tokens;
      var arg_userKey = 'foo';
      var arg_clientId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tokens/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_clientId'));

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
        var resp = convert.json.encode(buildToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_userKey, arg_clientId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkToken(response as api.Token);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).tokens;
      var arg_userKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        index = path.indexOf('/tokens', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/tokens"));
        pathOffset += 7;

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
        var resp = convert.json.encode(buildTokens());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTokens(response as api.Tokens);
      })));
    });
  });

  unittest.group('resource-TwoStepVerificationResourceApi', () {
    unittest.test('method--turnOff', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).twoStepVerification;
      var arg_userKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        index = path.indexOf('/twoStepVerification/turnOff', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("/twoStepVerification/turnOff"));
        pathOffset += 28;

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
          .turnOff(arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group('resource-UsersResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).users;
      var arg_userKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));

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
          .delete(arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).users;
      var arg_userKey = 'foo';
      var arg_customFieldMask = 'foo';
      var arg_projection = 'foo';
      var arg_viewType = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));

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
        unittest.expect(queryMap["customFieldMask"].first,
            unittest.equals(arg_customFieldMask));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(
            queryMap["viewType"].first, unittest.equals(arg_viewType));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_userKey,
              customFieldMask: arg_customFieldMask,
              projection: arg_projection,
              viewType: arg_viewType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUser(response as api.User);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).users;
      var arg_request = buildUser();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("admin/directory/v1/users"));
        pathOffset += 24;

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
          .insert(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUser(response as api.User);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).users;
      var arg_customFieldMask = 'foo';
      var arg_customer = 'foo';
      var arg_domain = 'foo';
      var arg_maxResults = 42;
      var arg_orderBy = 'foo';
      var arg_pageToken = 'foo';
      var arg_projection = 'foo';
      var arg_query = 'foo';
      var arg_showDeleted = 'foo';
      var arg_sortOrder = 'foo';
      var arg_viewType = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("admin/directory/v1/users"));
        pathOffset += 24;

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
        unittest.expect(queryMap["customFieldMask"].first,
            unittest.equals(arg_customFieldMask));
        unittest.expect(
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["domain"].first, unittest.equals(arg_domain));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(
            queryMap["showDeleted"].first, unittest.equals(arg_showDeleted));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(
            queryMap["viewType"].first, unittest.equals(arg_viewType));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildUsers());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              customFieldMask: arg_customFieldMask,
              customer: arg_customer,
              domain: arg_domain,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              projection: arg_projection,
              query: arg_query,
              showDeleted: arg_showDeleted,
              sortOrder: arg_sortOrder,
              viewType: arg_viewType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUsers(response as api.Users);
      })));
    });

    unittest.test('method--makeAdmin', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).users;
      var arg_request = buildUserMakeAdmin();
      var arg_userKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UserMakeAdmin.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUserMakeAdmin(obj as api.UserMakeAdmin);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        index = path.indexOf('/makeAdmin', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/makeAdmin"));
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
          .makeAdmin(arg_request, arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).users;
      var arg_request = buildUser();
      var arg_userKey = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));

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
          .patch(arg_request, arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUser(response as api.User);
      })));
    });

    unittest.test('method--signOut', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).users;
      var arg_userKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        index = path.indexOf('/signOut', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/signOut"));
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
          .signOut(arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--undelete', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).users;
      var arg_request = buildUserUndelete();
      var arg_userKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UserUndelete.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUserUndelete(obj as api.UserUndelete);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        index = path.indexOf('/undelete', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/undelete"));
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
          .undelete(arg_request, arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).users;
      var arg_request = buildUser();
      var arg_userKey = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));

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
          .update(arg_request, arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUser(response as api.User);
      })));
    });

    unittest.test('method--watch', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).users;
      var arg_request = buildChannel();
      var arg_customFieldMask = 'foo';
      var arg_customer = 'foo';
      var arg_domain = 'foo';
      var arg_event = 'foo';
      var arg_maxResults = 42;
      var arg_orderBy = 'foo';
      var arg_pageToken = 'foo';
      var arg_projection = 'foo';
      var arg_query = 'foo';
      var arg_showDeleted = 'foo';
      var arg_sortOrder = 'foo';
      var arg_viewType = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj as api.Channel);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("admin/directory/v1/users/watch"));
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
        unittest.expect(queryMap["customFieldMask"].first,
            unittest.equals(arg_customFieldMask));
        unittest.expect(
            queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["domain"].first, unittest.equals(arg_domain));
        unittest.expect(queryMap["event"].first, unittest.equals(arg_event));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(
            queryMap["showDeleted"].first, unittest.equals(arg_showDeleted));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(
            queryMap["viewType"].first, unittest.equals(arg_viewType));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .watch(arg_request,
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
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannel(response as api.Channel);
      })));
    });
  });

  unittest.group('resource-UsersAliasesResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).users.aliases;
      var arg_userKey = 'foo';
      var arg_alias = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        index = path.indexOf('/aliases/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/aliases/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_alias'));

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
          .delete(arg_userKey, arg_alias, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).users.aliases;
      var arg_request = buildAlias();
      var arg_userKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Alias.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAlias(obj as api.Alias);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        index = path.indexOf('/aliases', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/aliases"));
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
        var resp = convert.json.encode(buildAlias());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAlias(response as api.Alias);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).users.aliases;
      var arg_userKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        index = path.indexOf('/aliases', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/aliases"));
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
        var resp = convert.json.encode(buildAliases());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAliases(response as api.Aliases);
      })));
    });

    unittest.test('method--watch', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).users.aliases;
      var arg_request = buildChannel();
      var arg_userKey = 'foo';
      var arg_event = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Channel.fromJson(json as core.Map<core.String, core.dynamic>);
        checkChannel(obj as api.Channel);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        index = path.indexOf('/aliases/watch', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/aliases/watch"));
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
        unittest.expect(queryMap["event"].first, unittest.equals(arg_event));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .watch(arg_request, arg_userKey,
              event: arg_event, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChannel(response as api.Channel);
      })));
    });
  });

  unittest.group('resource-UsersPhotosResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).users.photos;
      var arg_userKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        index = path.indexOf('/photos/thumbnail', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/photos/thumbnail"));
        pathOffset += 17;

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
          .delete(arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).users.photos;
      var arg_userKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        index = path.indexOf('/photos/thumbnail', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/photos/thumbnail"));
        pathOffset += 17;

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
        var resp = convert.json.encode(buildUserPhoto());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUserPhoto(response as api.UserPhoto);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).users.photos;
      var arg_request = buildUserPhoto();
      var arg_userKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.UserPhoto.fromJson(json as core.Map<core.String, core.dynamic>);
        checkUserPhoto(obj as api.UserPhoto);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        index = path.indexOf('/photos/thumbnail', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/photos/thumbnail"));
        pathOffset += 17;

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
        var resp = convert.json.encode(buildUserPhoto());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUserPhoto(response as api.UserPhoto);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).users.photos;
      var arg_request = buildUserPhoto();
      var arg_userKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.UserPhoto.fromJson(json as core.Map<core.String, core.dynamic>);
        checkUserPhoto(obj as api.UserPhoto);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        index = path.indexOf('/photos/thumbnail', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/photos/thumbnail"));
        pathOffset += 17;

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
        var resp = convert.json.encode(buildUserPhoto());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUserPhoto(response as api.UserPhoto);
      })));
    });
  });

  unittest.group('resource-VerificationCodesResourceApi', () {
    unittest.test('method--generate', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).verificationCodes;
      var arg_userKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        index = path.indexOf('/verificationCodes/generate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 27),
            unittest.equals("/verificationCodes/generate"));
        pathOffset += 27;

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
          .generate(arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--invalidate', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).verificationCodes;
      var arg_userKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        index = path.indexOf('/verificationCodes/invalidate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("/verificationCodes/invalidate"));
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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .invalidate(arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DirectoryApi(mock).verificationCodes;
      var arg_userKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("admin/directory/v1/users/"));
        pathOffset += 25;
        index = path.indexOf('/verificationCodes', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_userKey'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/verificationCodes"));
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
        var resp = convert.json.encode(buildVerificationCodes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_userKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVerificationCodes(response as api.VerificationCodes);
      })));
    });
  });
}
