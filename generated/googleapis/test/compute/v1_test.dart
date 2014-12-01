library googleapis.compute.v1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;
import 'package:googleapis/common/common.dart' as common;
import 'package:googleapis/src/common_internal.dart' as common_internal;
import '../common/common_internal_test.dart' as common_test;

import 'package:googleapis/compute/v1.dart' as api;



core.int buildCounterAccessConfig = 0;
buildAccessConfig() {
  var o = new api.AccessConfig();
  buildCounterAccessConfig++;
  if (buildCounterAccessConfig < 3) {
    o.kind = "foo";
    o.name = "foo";
    o.natIP = "foo";
    o.type = "foo";
  }
  buildCounterAccessConfig--;
  return o;
}

checkAccessConfig(api.AccessConfig o) {
  buildCounterAccessConfig++;
  if (buildCounterAccessConfig < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.natIP, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAccessConfig--;
}

buildUnnamed465() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed465(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAddress = 0;
buildAddress() {
  var o = new api.Address();
  buildCounterAddress++;
  if (buildCounterAddress < 3) {
    o.address = "foo";
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.region = "foo";
    o.selfLink = "foo";
    o.status = "foo";
    o.users = buildUnnamed465();
  }
  buildCounterAddress--;
  return o;
}

checkAddress(api.Address o) {
  buildCounterAddress++;
  if (buildCounterAddress < 3) {
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    checkUnnamed465(o.users);
  }
  buildCounterAddress--;
}

buildUnnamed466() {
  var o = new core.Map<core.String, api.AddressesScopedList>();
  o["x"] = buildAddressesScopedList();
  o["y"] = buildAddressesScopedList();
  return o;
}

checkUnnamed466(core.Map<core.String, api.AddressesScopedList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAddressesScopedList(o["x"]);
  checkAddressesScopedList(o["y"]);
}

core.int buildCounterAddressAggregatedList = 0;
buildAddressAggregatedList() {
  var o = new api.AddressAggregatedList();
  buildCounterAddressAggregatedList++;
  if (buildCounterAddressAggregatedList < 3) {
    o.id = "foo";
    o.items = buildUnnamed466();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterAddressAggregatedList--;
  return o;
}

checkAddressAggregatedList(api.AddressAggregatedList o) {
  buildCounterAddressAggregatedList++;
  if (buildCounterAddressAggregatedList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed466(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterAddressAggregatedList--;
}

buildUnnamed467() {
  var o = new core.List<api.Address>();
  o.add(buildAddress());
  o.add(buildAddress());
  return o;
}

checkUnnamed467(core.List<api.Address> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAddress(o[0]);
  checkAddress(o[1]);
}

core.int buildCounterAddressList = 0;
buildAddressList() {
  var o = new api.AddressList();
  buildCounterAddressList++;
  if (buildCounterAddressList < 3) {
    o.id = "foo";
    o.items = buildUnnamed467();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterAddressList--;
  return o;
}

checkAddressList(api.AddressList o) {
  buildCounterAddressList++;
  if (buildCounterAddressList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed467(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterAddressList--;
}

buildUnnamed468() {
  var o = new core.List<api.Address>();
  o.add(buildAddress());
  o.add(buildAddress());
  return o;
}

checkUnnamed468(core.List<api.Address> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAddress(o[0]);
  checkAddress(o[1]);
}

core.int buildCounterAddressesScopedListWarningData = 0;
buildAddressesScopedListWarningData() {
  var o = new api.AddressesScopedListWarningData();
  buildCounterAddressesScopedListWarningData++;
  if (buildCounterAddressesScopedListWarningData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterAddressesScopedListWarningData--;
  return o;
}

checkAddressesScopedListWarningData(api.AddressesScopedListWarningData o) {
  buildCounterAddressesScopedListWarningData++;
  if (buildCounterAddressesScopedListWarningData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterAddressesScopedListWarningData--;
}

buildUnnamed469() {
  var o = new core.List<api.AddressesScopedListWarningData>();
  o.add(buildAddressesScopedListWarningData());
  o.add(buildAddressesScopedListWarningData());
  return o;
}

checkUnnamed469(core.List<api.AddressesScopedListWarningData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAddressesScopedListWarningData(o[0]);
  checkAddressesScopedListWarningData(o[1]);
}

core.int buildCounterAddressesScopedListWarning = 0;
buildAddressesScopedListWarning() {
  var o = new api.AddressesScopedListWarning();
  buildCounterAddressesScopedListWarning++;
  if (buildCounterAddressesScopedListWarning < 3) {
    o.code = "foo";
    o.data = buildUnnamed469();
    o.message = "foo";
  }
  buildCounterAddressesScopedListWarning--;
  return o;
}

checkAddressesScopedListWarning(api.AddressesScopedListWarning o) {
  buildCounterAddressesScopedListWarning++;
  if (buildCounterAddressesScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed469(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterAddressesScopedListWarning--;
}

core.int buildCounterAddressesScopedList = 0;
buildAddressesScopedList() {
  var o = new api.AddressesScopedList();
  buildCounterAddressesScopedList++;
  if (buildCounterAddressesScopedList < 3) {
    o.addresses = buildUnnamed468();
    o.warning = buildAddressesScopedListWarning();
  }
  buildCounterAddressesScopedList--;
  return o;
}

checkAddressesScopedList(api.AddressesScopedList o) {
  buildCounterAddressesScopedList++;
  if (buildCounterAddressesScopedList < 3) {
    checkUnnamed468(o.addresses);
    checkAddressesScopedListWarning(o.warning);
  }
  buildCounterAddressesScopedList--;
}

buildUnnamed470() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed470(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAttachedDisk = 0;
buildAttachedDisk() {
  var o = new api.AttachedDisk();
  buildCounterAttachedDisk++;
  if (buildCounterAttachedDisk < 3) {
    o.autoDelete = true;
    o.boot = true;
    o.deviceName = "foo";
    o.index = 42;
    o.initializeParams = buildAttachedDiskInitializeParams();
    o.interface = "foo";
    o.kind = "foo";
    o.licenses = buildUnnamed470();
    o.mode = "foo";
    o.source = "foo";
    o.type = "foo";
  }
  buildCounterAttachedDisk--;
  return o;
}

checkAttachedDisk(api.AttachedDisk o) {
  buildCounterAttachedDisk++;
  if (buildCounterAttachedDisk < 3) {
    unittest.expect(o.autoDelete, unittest.isTrue);
    unittest.expect(o.boot, unittest.isTrue);
    unittest.expect(o.deviceName, unittest.equals('foo'));
    unittest.expect(o.index, unittest.equals(42));
    checkAttachedDiskInitializeParams(o.initializeParams);
    unittest.expect(o.interface, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed470(o.licenses);
    unittest.expect(o.mode, unittest.equals('foo'));
    unittest.expect(o.source, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAttachedDisk--;
}

core.int buildCounterAttachedDiskInitializeParams = 0;
buildAttachedDiskInitializeParams() {
  var o = new api.AttachedDiskInitializeParams();
  buildCounterAttachedDiskInitializeParams++;
  if (buildCounterAttachedDiskInitializeParams < 3) {
    o.diskName = "foo";
    o.diskSizeGb = "foo";
    o.diskType = "foo";
    o.sourceImage = "foo";
  }
  buildCounterAttachedDiskInitializeParams--;
  return o;
}

checkAttachedDiskInitializeParams(api.AttachedDiskInitializeParams o) {
  buildCounterAttachedDiskInitializeParams++;
  if (buildCounterAttachedDiskInitializeParams < 3) {
    unittest.expect(o.diskName, unittest.equals('foo'));
    unittest.expect(o.diskSizeGb, unittest.equals('foo'));
    unittest.expect(o.diskType, unittest.equals('foo'));
    unittest.expect(o.sourceImage, unittest.equals('foo'));
  }
  buildCounterAttachedDiskInitializeParams--;
}

core.int buildCounterBackend = 0;
buildBackend() {
  var o = new api.Backend();
  buildCounterBackend++;
  if (buildCounterBackend < 3) {
    o.balancingMode = "foo";
    o.capacityScaler = 42.0;
    o.description = "foo";
    o.group = "foo";
    o.maxRate = 42;
    o.maxRatePerInstance = 42.0;
    o.maxUtilization = 42.0;
  }
  buildCounterBackend--;
  return o;
}

checkBackend(api.Backend o) {
  buildCounterBackend++;
  if (buildCounterBackend < 3) {
    unittest.expect(o.balancingMode, unittest.equals('foo'));
    unittest.expect(o.capacityScaler, unittest.equals(42.0));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.group, unittest.equals('foo'));
    unittest.expect(o.maxRate, unittest.equals(42));
    unittest.expect(o.maxRatePerInstance, unittest.equals(42.0));
    unittest.expect(o.maxUtilization, unittest.equals(42.0));
  }
  buildCounterBackend--;
}

buildUnnamed471() {
  var o = new core.List<api.Backend>();
  o.add(buildBackend());
  o.add(buildBackend());
  return o;
}

checkUnnamed471(core.List<api.Backend> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackend(o[0]);
  checkBackend(o[1]);
}

buildUnnamed472() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed472(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBackendService = 0;
buildBackendService() {
  var o = new api.BackendService();
  buildCounterBackendService++;
  if (buildCounterBackendService < 3) {
    o.backends = buildUnnamed471();
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.fingerprint = "foo";
    o.healthChecks = buildUnnamed472();
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.port = 42;
    o.portName = "foo";
    o.protocol = "foo";
    o.selfLink = "foo";
    o.timeoutSec = 42;
  }
  buildCounterBackendService--;
  return o;
}

checkBackendService(api.BackendService o) {
  buildCounterBackendService++;
  if (buildCounterBackendService < 3) {
    checkUnnamed471(o.backends);
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.fingerprint, unittest.equals('foo'));
    checkUnnamed472(o.healthChecks);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.port, unittest.equals(42));
    unittest.expect(o.portName, unittest.equals('foo'));
    unittest.expect(o.protocol, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.timeoutSec, unittest.equals(42));
  }
  buildCounterBackendService--;
}

buildUnnamed473() {
  var o = new core.List<api.HealthStatus>();
  o.add(buildHealthStatus());
  o.add(buildHealthStatus());
  return o;
}

checkUnnamed473(core.List<api.HealthStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHealthStatus(o[0]);
  checkHealthStatus(o[1]);
}

core.int buildCounterBackendServiceGroupHealth = 0;
buildBackendServiceGroupHealth() {
  var o = new api.BackendServiceGroupHealth();
  buildCounterBackendServiceGroupHealth++;
  if (buildCounterBackendServiceGroupHealth < 3) {
    o.healthStatus = buildUnnamed473();
    o.kind = "foo";
  }
  buildCounterBackendServiceGroupHealth--;
  return o;
}

checkBackendServiceGroupHealth(api.BackendServiceGroupHealth o) {
  buildCounterBackendServiceGroupHealth++;
  if (buildCounterBackendServiceGroupHealth < 3) {
    checkUnnamed473(o.healthStatus);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBackendServiceGroupHealth--;
}

buildUnnamed474() {
  var o = new core.List<api.BackendService>();
  o.add(buildBackendService());
  o.add(buildBackendService());
  return o;
}

checkUnnamed474(core.List<api.BackendService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackendService(o[0]);
  checkBackendService(o[1]);
}

core.int buildCounterBackendServiceList = 0;
buildBackendServiceList() {
  var o = new api.BackendServiceList();
  buildCounterBackendServiceList++;
  if (buildCounterBackendServiceList < 3) {
    o.id = "foo";
    o.items = buildUnnamed474();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterBackendServiceList--;
  return o;
}

checkBackendServiceList(api.BackendServiceList o) {
  buildCounterBackendServiceList++;
  if (buildCounterBackendServiceList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed474(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterBackendServiceList--;
}

core.int buildCounterDeprecationStatus = 0;
buildDeprecationStatus() {
  var o = new api.DeprecationStatus();
  buildCounterDeprecationStatus++;
  if (buildCounterDeprecationStatus < 3) {
    o.deleted = "foo";
    o.deprecated = "foo";
    o.obsolete = "foo";
    o.replacement = "foo";
    o.state = "foo";
  }
  buildCounterDeprecationStatus--;
  return o;
}

checkDeprecationStatus(api.DeprecationStatus o) {
  buildCounterDeprecationStatus++;
  if (buildCounterDeprecationStatus < 3) {
    unittest.expect(o.deleted, unittest.equals('foo'));
    unittest.expect(o.deprecated, unittest.equals('foo'));
    unittest.expect(o.obsolete, unittest.equals('foo'));
    unittest.expect(o.replacement, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterDeprecationStatus--;
}

buildUnnamed475() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed475(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDisk = 0;
buildDisk() {
  var o = new api.Disk();
  buildCounterDisk++;
  if (buildCounterDisk < 3) {
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.licenses = buildUnnamed475();
    o.name = "foo";
    o.options = "foo";
    o.selfLink = "foo";
    o.sizeGb = "foo";
    o.sourceImage = "foo";
    o.sourceImageId = "foo";
    o.sourceSnapshot = "foo";
    o.sourceSnapshotId = "foo";
    o.status = "foo";
    o.type = "foo";
    o.zone = "foo";
  }
  buildCounterDisk--;
  return o;
}

checkDisk(api.Disk o) {
  buildCounterDisk++;
  if (buildCounterDisk < 3) {
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed475(o.licenses);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.options, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.sizeGb, unittest.equals('foo'));
    unittest.expect(o.sourceImage, unittest.equals('foo'));
    unittest.expect(o.sourceImageId, unittest.equals('foo'));
    unittest.expect(o.sourceSnapshot, unittest.equals('foo'));
    unittest.expect(o.sourceSnapshotId, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterDisk--;
}

buildUnnamed476() {
  var o = new core.Map<core.String, api.DisksScopedList>();
  o["x"] = buildDisksScopedList();
  o["y"] = buildDisksScopedList();
  return o;
}

checkUnnamed476(core.Map<core.String, api.DisksScopedList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisksScopedList(o["x"]);
  checkDisksScopedList(o["y"]);
}

core.int buildCounterDiskAggregatedList = 0;
buildDiskAggregatedList() {
  var o = new api.DiskAggregatedList();
  buildCounterDiskAggregatedList++;
  if (buildCounterDiskAggregatedList < 3) {
    o.id = "foo";
    o.items = buildUnnamed476();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterDiskAggregatedList--;
  return o;
}

checkDiskAggregatedList(api.DiskAggregatedList o) {
  buildCounterDiskAggregatedList++;
  if (buildCounterDiskAggregatedList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed476(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterDiskAggregatedList--;
}

buildUnnamed477() {
  var o = new core.List<api.Disk>();
  o.add(buildDisk());
  o.add(buildDisk());
  return o;
}

checkUnnamed477(core.List<api.Disk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisk(o[0]);
  checkDisk(o[1]);
}

core.int buildCounterDiskList = 0;
buildDiskList() {
  var o = new api.DiskList();
  buildCounterDiskList++;
  if (buildCounterDiskList < 3) {
    o.id = "foo";
    o.items = buildUnnamed477();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterDiskList--;
  return o;
}

checkDiskList(api.DiskList o) {
  buildCounterDiskList++;
  if (buildCounterDiskList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed477(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterDiskList--;
}

core.int buildCounterDiskType = 0;
buildDiskType() {
  var o = new api.DiskType();
  buildCounterDiskType++;
  if (buildCounterDiskType < 3) {
    o.creationTimestamp = "foo";
    o.defaultDiskSizeGb = "foo";
    o.deprecated = buildDeprecationStatus();
    o.description = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.selfLink = "foo";
    o.validDiskSize = "foo";
    o.zone = "foo";
  }
  buildCounterDiskType--;
  return o;
}

checkDiskType(api.DiskType o) {
  buildCounterDiskType++;
  if (buildCounterDiskType < 3) {
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.defaultDiskSizeGb, unittest.equals('foo'));
    checkDeprecationStatus(o.deprecated);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.validDiskSize, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterDiskType--;
}

buildUnnamed478() {
  var o = new core.Map<core.String, api.DiskTypesScopedList>();
  o["x"] = buildDiskTypesScopedList();
  o["y"] = buildDiskTypesScopedList();
  return o;
}

checkUnnamed478(core.Map<core.String, api.DiskTypesScopedList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDiskTypesScopedList(o["x"]);
  checkDiskTypesScopedList(o["y"]);
}

core.int buildCounterDiskTypeAggregatedList = 0;
buildDiskTypeAggregatedList() {
  var o = new api.DiskTypeAggregatedList();
  buildCounterDiskTypeAggregatedList++;
  if (buildCounterDiskTypeAggregatedList < 3) {
    o.id = "foo";
    o.items = buildUnnamed478();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterDiskTypeAggregatedList--;
  return o;
}

checkDiskTypeAggregatedList(api.DiskTypeAggregatedList o) {
  buildCounterDiskTypeAggregatedList++;
  if (buildCounterDiskTypeAggregatedList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed478(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterDiskTypeAggregatedList--;
}

buildUnnamed479() {
  var o = new core.List<api.DiskType>();
  o.add(buildDiskType());
  o.add(buildDiskType());
  return o;
}

checkUnnamed479(core.List<api.DiskType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDiskType(o[0]);
  checkDiskType(o[1]);
}

core.int buildCounterDiskTypeList = 0;
buildDiskTypeList() {
  var o = new api.DiskTypeList();
  buildCounterDiskTypeList++;
  if (buildCounterDiskTypeList < 3) {
    o.id = "foo";
    o.items = buildUnnamed479();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterDiskTypeList--;
  return o;
}

checkDiskTypeList(api.DiskTypeList o) {
  buildCounterDiskTypeList++;
  if (buildCounterDiskTypeList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed479(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterDiskTypeList--;
}

buildUnnamed480() {
  var o = new core.List<api.DiskType>();
  o.add(buildDiskType());
  o.add(buildDiskType());
  return o;
}

checkUnnamed480(core.List<api.DiskType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDiskType(o[0]);
  checkDiskType(o[1]);
}

core.int buildCounterDiskTypesScopedListWarningData = 0;
buildDiskTypesScopedListWarningData() {
  var o = new api.DiskTypesScopedListWarningData();
  buildCounterDiskTypesScopedListWarningData++;
  if (buildCounterDiskTypesScopedListWarningData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterDiskTypesScopedListWarningData--;
  return o;
}

checkDiskTypesScopedListWarningData(api.DiskTypesScopedListWarningData o) {
  buildCounterDiskTypesScopedListWarningData++;
  if (buildCounterDiskTypesScopedListWarningData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterDiskTypesScopedListWarningData--;
}

buildUnnamed481() {
  var o = new core.List<api.DiskTypesScopedListWarningData>();
  o.add(buildDiskTypesScopedListWarningData());
  o.add(buildDiskTypesScopedListWarningData());
  return o;
}

checkUnnamed481(core.List<api.DiskTypesScopedListWarningData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDiskTypesScopedListWarningData(o[0]);
  checkDiskTypesScopedListWarningData(o[1]);
}

core.int buildCounterDiskTypesScopedListWarning = 0;
buildDiskTypesScopedListWarning() {
  var o = new api.DiskTypesScopedListWarning();
  buildCounterDiskTypesScopedListWarning++;
  if (buildCounterDiskTypesScopedListWarning < 3) {
    o.code = "foo";
    o.data = buildUnnamed481();
    o.message = "foo";
  }
  buildCounterDiskTypesScopedListWarning--;
  return o;
}

checkDiskTypesScopedListWarning(api.DiskTypesScopedListWarning o) {
  buildCounterDiskTypesScopedListWarning++;
  if (buildCounterDiskTypesScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed481(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterDiskTypesScopedListWarning--;
}

core.int buildCounterDiskTypesScopedList = 0;
buildDiskTypesScopedList() {
  var o = new api.DiskTypesScopedList();
  buildCounterDiskTypesScopedList++;
  if (buildCounterDiskTypesScopedList < 3) {
    o.diskTypes = buildUnnamed480();
    o.warning = buildDiskTypesScopedListWarning();
  }
  buildCounterDiskTypesScopedList--;
  return o;
}

checkDiskTypesScopedList(api.DiskTypesScopedList o) {
  buildCounterDiskTypesScopedList++;
  if (buildCounterDiskTypesScopedList < 3) {
    checkUnnamed480(o.diskTypes);
    checkDiskTypesScopedListWarning(o.warning);
  }
  buildCounterDiskTypesScopedList--;
}

buildUnnamed482() {
  var o = new core.List<api.Disk>();
  o.add(buildDisk());
  o.add(buildDisk());
  return o;
}

checkUnnamed482(core.List<api.Disk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisk(o[0]);
  checkDisk(o[1]);
}

core.int buildCounterDisksScopedListWarningData = 0;
buildDisksScopedListWarningData() {
  var o = new api.DisksScopedListWarningData();
  buildCounterDisksScopedListWarningData++;
  if (buildCounterDisksScopedListWarningData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterDisksScopedListWarningData--;
  return o;
}

checkDisksScopedListWarningData(api.DisksScopedListWarningData o) {
  buildCounterDisksScopedListWarningData++;
  if (buildCounterDisksScopedListWarningData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterDisksScopedListWarningData--;
}

buildUnnamed483() {
  var o = new core.List<api.DisksScopedListWarningData>();
  o.add(buildDisksScopedListWarningData());
  o.add(buildDisksScopedListWarningData());
  return o;
}

checkUnnamed483(core.List<api.DisksScopedListWarningData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisksScopedListWarningData(o[0]);
  checkDisksScopedListWarningData(o[1]);
}

core.int buildCounterDisksScopedListWarning = 0;
buildDisksScopedListWarning() {
  var o = new api.DisksScopedListWarning();
  buildCounterDisksScopedListWarning++;
  if (buildCounterDisksScopedListWarning < 3) {
    o.code = "foo";
    o.data = buildUnnamed483();
    o.message = "foo";
  }
  buildCounterDisksScopedListWarning--;
  return o;
}

checkDisksScopedListWarning(api.DisksScopedListWarning o) {
  buildCounterDisksScopedListWarning++;
  if (buildCounterDisksScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed483(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterDisksScopedListWarning--;
}

core.int buildCounterDisksScopedList = 0;
buildDisksScopedList() {
  var o = new api.DisksScopedList();
  buildCounterDisksScopedList++;
  if (buildCounterDisksScopedList < 3) {
    o.disks = buildUnnamed482();
    o.warning = buildDisksScopedListWarning();
  }
  buildCounterDisksScopedList--;
  return o;
}

checkDisksScopedList(api.DisksScopedList o) {
  buildCounterDisksScopedList++;
  if (buildCounterDisksScopedList < 3) {
    checkUnnamed482(o.disks);
    checkDisksScopedListWarning(o.warning);
  }
  buildCounterDisksScopedList--;
}

buildUnnamed484() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed484(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFirewallAllowed = 0;
buildFirewallAllowed() {
  var o = new api.FirewallAllowed();
  buildCounterFirewallAllowed++;
  if (buildCounterFirewallAllowed < 3) {
    o.IPProtocol = "foo";
    o.ports = buildUnnamed484();
  }
  buildCounterFirewallAllowed--;
  return o;
}

checkFirewallAllowed(api.FirewallAllowed o) {
  buildCounterFirewallAllowed++;
  if (buildCounterFirewallAllowed < 3) {
    unittest.expect(o.IPProtocol, unittest.equals('foo'));
    checkUnnamed484(o.ports);
  }
  buildCounterFirewallAllowed--;
}

buildUnnamed485() {
  var o = new core.List<api.FirewallAllowed>();
  o.add(buildFirewallAllowed());
  o.add(buildFirewallAllowed());
  return o;
}

checkUnnamed485(core.List<api.FirewallAllowed> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFirewallAllowed(o[0]);
  checkFirewallAllowed(o[1]);
}

buildUnnamed486() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed486(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed487() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed487(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed488() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed488(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFirewall = 0;
buildFirewall() {
  var o = new api.Firewall();
  buildCounterFirewall++;
  if (buildCounterFirewall < 3) {
    o.allowed = buildUnnamed485();
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.network = "foo";
    o.selfLink = "foo";
    o.sourceRanges = buildUnnamed486();
    o.sourceTags = buildUnnamed487();
    o.targetTags = buildUnnamed488();
  }
  buildCounterFirewall--;
  return o;
}

checkFirewall(api.Firewall o) {
  buildCounterFirewall++;
  if (buildCounterFirewall < 3) {
    checkUnnamed485(o.allowed);
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkUnnamed486(o.sourceRanges);
    checkUnnamed487(o.sourceTags);
    checkUnnamed488(o.targetTags);
  }
  buildCounterFirewall--;
}

buildUnnamed489() {
  var o = new core.List<api.Firewall>();
  o.add(buildFirewall());
  o.add(buildFirewall());
  return o;
}

checkUnnamed489(core.List<api.Firewall> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFirewall(o[0]);
  checkFirewall(o[1]);
}

core.int buildCounterFirewallList = 0;
buildFirewallList() {
  var o = new api.FirewallList();
  buildCounterFirewallList++;
  if (buildCounterFirewallList < 3) {
    o.id = "foo";
    o.items = buildUnnamed489();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterFirewallList--;
  return o;
}

checkFirewallList(api.FirewallList o) {
  buildCounterFirewallList++;
  if (buildCounterFirewallList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed489(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterFirewallList--;
}

core.int buildCounterForwardingRule = 0;
buildForwardingRule() {
  var o = new api.ForwardingRule();
  buildCounterForwardingRule++;
  if (buildCounterForwardingRule < 3) {
    o.IPAddress = "foo";
    o.IPProtocol = "foo";
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.portRange = "foo";
    o.region = "foo";
    o.selfLink = "foo";
    o.target = "foo";
  }
  buildCounterForwardingRule--;
  return o;
}

checkForwardingRule(api.ForwardingRule o) {
  buildCounterForwardingRule++;
  if (buildCounterForwardingRule < 3) {
    unittest.expect(o.IPAddress, unittest.equals('foo'));
    unittest.expect(o.IPProtocol, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.portRange, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
  }
  buildCounterForwardingRule--;
}

buildUnnamed490() {
  var o = new core.Map<core.String, api.ForwardingRulesScopedList>();
  o["x"] = buildForwardingRulesScopedList();
  o["y"] = buildForwardingRulesScopedList();
  return o;
}

checkUnnamed490(core.Map<core.String, api.ForwardingRulesScopedList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkForwardingRulesScopedList(o["x"]);
  checkForwardingRulesScopedList(o["y"]);
}

core.int buildCounterForwardingRuleAggregatedList = 0;
buildForwardingRuleAggregatedList() {
  var o = new api.ForwardingRuleAggregatedList();
  buildCounterForwardingRuleAggregatedList++;
  if (buildCounterForwardingRuleAggregatedList < 3) {
    o.id = "foo";
    o.items = buildUnnamed490();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterForwardingRuleAggregatedList--;
  return o;
}

checkForwardingRuleAggregatedList(api.ForwardingRuleAggregatedList o) {
  buildCounterForwardingRuleAggregatedList++;
  if (buildCounterForwardingRuleAggregatedList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed490(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterForwardingRuleAggregatedList--;
}

buildUnnamed491() {
  var o = new core.List<api.ForwardingRule>();
  o.add(buildForwardingRule());
  o.add(buildForwardingRule());
  return o;
}

checkUnnamed491(core.List<api.ForwardingRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkForwardingRule(o[0]);
  checkForwardingRule(o[1]);
}

core.int buildCounterForwardingRuleList = 0;
buildForwardingRuleList() {
  var o = new api.ForwardingRuleList();
  buildCounterForwardingRuleList++;
  if (buildCounterForwardingRuleList < 3) {
    o.id = "foo";
    o.items = buildUnnamed491();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterForwardingRuleList--;
  return o;
}

checkForwardingRuleList(api.ForwardingRuleList o) {
  buildCounterForwardingRuleList++;
  if (buildCounterForwardingRuleList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed491(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterForwardingRuleList--;
}

buildUnnamed492() {
  var o = new core.List<api.ForwardingRule>();
  o.add(buildForwardingRule());
  o.add(buildForwardingRule());
  return o;
}

checkUnnamed492(core.List<api.ForwardingRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkForwardingRule(o[0]);
  checkForwardingRule(o[1]);
}

core.int buildCounterForwardingRulesScopedListWarningData = 0;
buildForwardingRulesScopedListWarningData() {
  var o = new api.ForwardingRulesScopedListWarningData();
  buildCounterForwardingRulesScopedListWarningData++;
  if (buildCounterForwardingRulesScopedListWarningData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterForwardingRulesScopedListWarningData--;
  return o;
}

checkForwardingRulesScopedListWarningData(api.ForwardingRulesScopedListWarningData o) {
  buildCounterForwardingRulesScopedListWarningData++;
  if (buildCounterForwardingRulesScopedListWarningData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterForwardingRulesScopedListWarningData--;
}

buildUnnamed493() {
  var o = new core.List<api.ForwardingRulesScopedListWarningData>();
  o.add(buildForwardingRulesScopedListWarningData());
  o.add(buildForwardingRulesScopedListWarningData());
  return o;
}

checkUnnamed493(core.List<api.ForwardingRulesScopedListWarningData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkForwardingRulesScopedListWarningData(o[0]);
  checkForwardingRulesScopedListWarningData(o[1]);
}

core.int buildCounterForwardingRulesScopedListWarning = 0;
buildForwardingRulesScopedListWarning() {
  var o = new api.ForwardingRulesScopedListWarning();
  buildCounterForwardingRulesScopedListWarning++;
  if (buildCounterForwardingRulesScopedListWarning < 3) {
    o.code = "foo";
    o.data = buildUnnamed493();
    o.message = "foo";
  }
  buildCounterForwardingRulesScopedListWarning--;
  return o;
}

checkForwardingRulesScopedListWarning(api.ForwardingRulesScopedListWarning o) {
  buildCounterForwardingRulesScopedListWarning++;
  if (buildCounterForwardingRulesScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed493(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterForwardingRulesScopedListWarning--;
}

core.int buildCounterForwardingRulesScopedList = 0;
buildForwardingRulesScopedList() {
  var o = new api.ForwardingRulesScopedList();
  buildCounterForwardingRulesScopedList++;
  if (buildCounterForwardingRulesScopedList < 3) {
    o.forwardingRules = buildUnnamed492();
    o.warning = buildForwardingRulesScopedListWarning();
  }
  buildCounterForwardingRulesScopedList--;
  return o;
}

checkForwardingRulesScopedList(api.ForwardingRulesScopedList o) {
  buildCounterForwardingRulesScopedList++;
  if (buildCounterForwardingRulesScopedList < 3) {
    checkUnnamed492(o.forwardingRules);
    checkForwardingRulesScopedListWarning(o.warning);
  }
  buildCounterForwardingRulesScopedList--;
}

core.int buildCounterHealthCheckReference = 0;
buildHealthCheckReference() {
  var o = new api.HealthCheckReference();
  buildCounterHealthCheckReference++;
  if (buildCounterHealthCheckReference < 3) {
    o.healthCheck = "foo";
  }
  buildCounterHealthCheckReference--;
  return o;
}

checkHealthCheckReference(api.HealthCheckReference o) {
  buildCounterHealthCheckReference++;
  if (buildCounterHealthCheckReference < 3) {
    unittest.expect(o.healthCheck, unittest.equals('foo'));
  }
  buildCounterHealthCheckReference--;
}

core.int buildCounterHealthStatus = 0;
buildHealthStatus() {
  var o = new api.HealthStatus();
  buildCounterHealthStatus++;
  if (buildCounterHealthStatus < 3) {
    o.healthState = "foo";
    o.instance = "foo";
    o.ipAddress = "foo";
    o.port = 42;
  }
  buildCounterHealthStatus--;
  return o;
}

checkHealthStatus(api.HealthStatus o) {
  buildCounterHealthStatus++;
  if (buildCounterHealthStatus < 3) {
    unittest.expect(o.healthState, unittest.equals('foo'));
    unittest.expect(o.instance, unittest.equals('foo'));
    unittest.expect(o.ipAddress, unittest.equals('foo'));
    unittest.expect(o.port, unittest.equals(42));
  }
  buildCounterHealthStatus--;
}

buildUnnamed494() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed494(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterHostRule = 0;
buildHostRule() {
  var o = new api.HostRule();
  buildCounterHostRule++;
  if (buildCounterHostRule < 3) {
    o.description = "foo";
    o.hosts = buildUnnamed494();
    o.pathMatcher = "foo";
  }
  buildCounterHostRule--;
  return o;
}

checkHostRule(api.HostRule o) {
  buildCounterHostRule++;
  if (buildCounterHostRule < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed494(o.hosts);
    unittest.expect(o.pathMatcher, unittest.equals('foo'));
  }
  buildCounterHostRule--;
}

core.int buildCounterHttpHealthCheck = 0;
buildHttpHealthCheck() {
  var o = new api.HttpHealthCheck();
  buildCounterHttpHealthCheck++;
  if (buildCounterHttpHealthCheck < 3) {
    o.checkIntervalSec = 42;
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.healthyThreshold = 42;
    o.host = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.port = 42;
    o.requestPath = "foo";
    o.selfLink = "foo";
    o.timeoutSec = 42;
    o.unhealthyThreshold = 42;
  }
  buildCounterHttpHealthCheck--;
  return o;
}

checkHttpHealthCheck(api.HttpHealthCheck o) {
  buildCounterHttpHealthCheck++;
  if (buildCounterHttpHealthCheck < 3) {
    unittest.expect(o.checkIntervalSec, unittest.equals(42));
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.healthyThreshold, unittest.equals(42));
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.port, unittest.equals(42));
    unittest.expect(o.requestPath, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.timeoutSec, unittest.equals(42));
    unittest.expect(o.unhealthyThreshold, unittest.equals(42));
  }
  buildCounterHttpHealthCheck--;
}

buildUnnamed495() {
  var o = new core.List<api.HttpHealthCheck>();
  o.add(buildHttpHealthCheck());
  o.add(buildHttpHealthCheck());
  return o;
}

checkUnnamed495(core.List<api.HttpHealthCheck> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpHealthCheck(o[0]);
  checkHttpHealthCheck(o[1]);
}

core.int buildCounterHttpHealthCheckList = 0;
buildHttpHealthCheckList() {
  var o = new api.HttpHealthCheckList();
  buildCounterHttpHealthCheckList++;
  if (buildCounterHttpHealthCheckList < 3) {
    o.id = "foo";
    o.items = buildUnnamed495();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterHttpHealthCheckList--;
  return o;
}

checkHttpHealthCheckList(api.HttpHealthCheckList o) {
  buildCounterHttpHealthCheckList++;
  if (buildCounterHttpHealthCheckList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed495(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterHttpHealthCheckList--;
}

buildUnnamed496() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed496(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterImageRawDisk = 0;
buildImageRawDisk() {
  var o = new api.ImageRawDisk();
  buildCounterImageRawDisk++;
  if (buildCounterImageRawDisk < 3) {
    o.containerType = "foo";
    o.sha1Checksum = "foo";
    o.source = "foo";
  }
  buildCounterImageRawDisk--;
  return o;
}

checkImageRawDisk(api.ImageRawDisk o) {
  buildCounterImageRawDisk++;
  if (buildCounterImageRawDisk < 3) {
    unittest.expect(o.containerType, unittest.equals('foo'));
    unittest.expect(o.sha1Checksum, unittest.equals('foo'));
    unittest.expect(o.source, unittest.equals('foo'));
  }
  buildCounterImageRawDisk--;
}

core.int buildCounterImage = 0;
buildImage() {
  var o = new api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.archiveSizeBytes = "foo";
    o.creationTimestamp = "foo";
    o.deprecated = buildDeprecationStatus();
    o.description = "foo";
    o.diskSizeGb = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.licenses = buildUnnamed496();
    o.name = "foo";
    o.rawDisk = buildImageRawDisk();
    o.selfLink = "foo";
    o.sourceDisk = "foo";
    o.sourceDiskId = "foo";
    o.sourceType = "foo";
    o.status = "foo";
  }
  buildCounterImage--;
  return o;
}

checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    unittest.expect(o.archiveSizeBytes, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    checkDeprecationStatus(o.deprecated);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.diskSizeGb, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed496(o.licenses);
    unittest.expect(o.name, unittest.equals('foo'));
    checkImageRawDisk(o.rawDisk);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.sourceDisk, unittest.equals('foo'));
    unittest.expect(o.sourceDiskId, unittest.equals('foo'));
    unittest.expect(o.sourceType, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterImage--;
}

buildUnnamed497() {
  var o = new core.List<api.Image>();
  o.add(buildImage());
  o.add(buildImage());
  return o;
}

checkUnnamed497(core.List<api.Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImage(o[0]);
  checkImage(o[1]);
}

core.int buildCounterImageList = 0;
buildImageList() {
  var o = new api.ImageList();
  buildCounterImageList++;
  if (buildCounterImageList < 3) {
    o.id = "foo";
    o.items = buildUnnamed497();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterImageList--;
  return o;
}

checkImageList(api.ImageList o) {
  buildCounterImageList++;
  if (buildCounterImageList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed497(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterImageList--;
}

buildUnnamed498() {
  var o = new core.List<api.AttachedDisk>();
  o.add(buildAttachedDisk());
  o.add(buildAttachedDisk());
  return o;
}

checkUnnamed498(core.List<api.AttachedDisk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachedDisk(o[0]);
  checkAttachedDisk(o[1]);
}

buildUnnamed499() {
  var o = new core.List<api.NetworkInterface>();
  o.add(buildNetworkInterface());
  o.add(buildNetworkInterface());
  return o;
}

checkUnnamed499(core.List<api.NetworkInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkInterface(o[0]);
  checkNetworkInterface(o[1]);
}

buildUnnamed500() {
  var o = new core.List<api.ServiceAccount>();
  o.add(buildServiceAccount());
  o.add(buildServiceAccount());
  return o;
}

checkUnnamed500(core.List<api.ServiceAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceAccount(o[0]);
  checkServiceAccount(o[1]);
}

core.int buildCounterInstance = 0;
buildInstance() {
  var o = new api.Instance();
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    o.canIpForward = true;
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.disks = buildUnnamed498();
    o.id = "foo";
    o.kind = "foo";
    o.machineType = "foo";
    o.metadata = buildMetadata();
    o.name = "foo";
    o.networkInterfaces = buildUnnamed499();
    o.scheduling = buildScheduling();
    o.selfLink = "foo";
    o.serviceAccounts = buildUnnamed500();
    o.status = "foo";
    o.statusMessage = "foo";
    o.tags = buildTags();
    o.zone = "foo";
  }
  buildCounterInstance--;
  return o;
}

checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    unittest.expect(o.canIpForward, unittest.isTrue);
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed498(o.disks);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.machineType, unittest.equals('foo'));
    checkMetadata(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed499(o.networkInterfaces);
    checkScheduling(o.scheduling);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkUnnamed500(o.serviceAccounts);
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    checkTags(o.tags);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterInstance--;
}

buildUnnamed501() {
  var o = new core.Map<core.String, api.InstancesScopedList>();
  o["x"] = buildInstancesScopedList();
  o["y"] = buildInstancesScopedList();
  return o;
}

checkUnnamed501(core.Map<core.String, api.InstancesScopedList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstancesScopedList(o["x"]);
  checkInstancesScopedList(o["y"]);
}

core.int buildCounterInstanceAggregatedList = 0;
buildInstanceAggregatedList() {
  var o = new api.InstanceAggregatedList();
  buildCounterInstanceAggregatedList++;
  if (buildCounterInstanceAggregatedList < 3) {
    o.id = "foo";
    o.items = buildUnnamed501();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterInstanceAggregatedList--;
  return o;
}

checkInstanceAggregatedList(api.InstanceAggregatedList o) {
  buildCounterInstanceAggregatedList++;
  if (buildCounterInstanceAggregatedList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed501(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterInstanceAggregatedList--;
}

buildUnnamed502() {
  var o = new core.List<api.Instance>();
  o.add(buildInstance());
  o.add(buildInstance());
  return o;
}

checkUnnamed502(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
}

core.int buildCounterInstanceList = 0;
buildInstanceList() {
  var o = new api.InstanceList();
  buildCounterInstanceList++;
  if (buildCounterInstanceList < 3) {
    o.id = "foo";
    o.items = buildUnnamed502();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterInstanceList--;
  return o;
}

checkInstanceList(api.InstanceList o) {
  buildCounterInstanceList++;
  if (buildCounterInstanceList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed502(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterInstanceList--;
}

buildUnnamed503() {
  var o = new core.List<api.AttachedDisk>();
  o.add(buildAttachedDisk());
  o.add(buildAttachedDisk());
  return o;
}

checkUnnamed503(core.List<api.AttachedDisk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachedDisk(o[0]);
  checkAttachedDisk(o[1]);
}

buildUnnamed504() {
  var o = new core.List<api.NetworkInterface>();
  o.add(buildNetworkInterface());
  o.add(buildNetworkInterface());
  return o;
}

checkUnnamed504(core.List<api.NetworkInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkInterface(o[0]);
  checkNetworkInterface(o[1]);
}

buildUnnamed505() {
  var o = new core.List<api.ServiceAccount>();
  o.add(buildServiceAccount());
  o.add(buildServiceAccount());
  return o;
}

checkUnnamed505(core.List<api.ServiceAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceAccount(o[0]);
  checkServiceAccount(o[1]);
}

core.int buildCounterInstanceProperties = 0;
buildInstanceProperties() {
  var o = new api.InstanceProperties();
  buildCounterInstanceProperties++;
  if (buildCounterInstanceProperties < 3) {
    o.canIpForward = true;
    o.description = "foo";
    o.disks = buildUnnamed503();
    o.machineType = "foo";
    o.metadata = buildMetadata();
    o.networkInterfaces = buildUnnamed504();
    o.scheduling = buildScheduling();
    o.serviceAccounts = buildUnnamed505();
    o.tags = buildTags();
  }
  buildCounterInstanceProperties--;
  return o;
}

checkInstanceProperties(api.InstanceProperties o) {
  buildCounterInstanceProperties++;
  if (buildCounterInstanceProperties < 3) {
    unittest.expect(o.canIpForward, unittest.isTrue);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed503(o.disks);
    unittest.expect(o.machineType, unittest.equals('foo'));
    checkMetadata(o.metadata);
    checkUnnamed504(o.networkInterfaces);
    checkScheduling(o.scheduling);
    checkUnnamed505(o.serviceAccounts);
    checkTags(o.tags);
  }
  buildCounterInstanceProperties--;
}

core.int buildCounterInstanceReference = 0;
buildInstanceReference() {
  var o = new api.InstanceReference();
  buildCounterInstanceReference++;
  if (buildCounterInstanceReference < 3) {
    o.instance = "foo";
  }
  buildCounterInstanceReference--;
  return o;
}

checkInstanceReference(api.InstanceReference o) {
  buildCounterInstanceReference++;
  if (buildCounterInstanceReference < 3) {
    unittest.expect(o.instance, unittest.equals('foo'));
  }
  buildCounterInstanceReference--;
}

core.int buildCounterInstanceTemplate = 0;
buildInstanceTemplate() {
  var o = new api.InstanceTemplate();
  buildCounterInstanceTemplate++;
  if (buildCounterInstanceTemplate < 3) {
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.properties = buildInstanceProperties();
    o.selfLink = "foo";
  }
  buildCounterInstanceTemplate--;
  return o;
}

checkInstanceTemplate(api.InstanceTemplate o) {
  buildCounterInstanceTemplate++;
  if (buildCounterInstanceTemplate < 3) {
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkInstanceProperties(o.properties);
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterInstanceTemplate--;
}

buildUnnamed506() {
  var o = new core.List<api.InstanceTemplate>();
  o.add(buildInstanceTemplate());
  o.add(buildInstanceTemplate());
  return o;
}

checkUnnamed506(core.List<api.InstanceTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceTemplate(o[0]);
  checkInstanceTemplate(o[1]);
}

core.int buildCounterInstanceTemplateList = 0;
buildInstanceTemplateList() {
  var o = new api.InstanceTemplateList();
  buildCounterInstanceTemplateList++;
  if (buildCounterInstanceTemplateList < 3) {
    o.id = "foo";
    o.items = buildUnnamed506();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterInstanceTemplateList--;
  return o;
}

checkInstanceTemplateList(api.InstanceTemplateList o) {
  buildCounterInstanceTemplateList++;
  if (buildCounterInstanceTemplateList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed506(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterInstanceTemplateList--;
}

buildUnnamed507() {
  var o = new core.List<api.Instance>();
  o.add(buildInstance());
  o.add(buildInstance());
  return o;
}

checkUnnamed507(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
}

core.int buildCounterInstancesScopedListWarningData = 0;
buildInstancesScopedListWarningData() {
  var o = new api.InstancesScopedListWarningData();
  buildCounterInstancesScopedListWarningData++;
  if (buildCounterInstancesScopedListWarningData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterInstancesScopedListWarningData--;
  return o;
}

checkInstancesScopedListWarningData(api.InstancesScopedListWarningData o) {
  buildCounterInstancesScopedListWarningData++;
  if (buildCounterInstancesScopedListWarningData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterInstancesScopedListWarningData--;
}

buildUnnamed508() {
  var o = new core.List<api.InstancesScopedListWarningData>();
  o.add(buildInstancesScopedListWarningData());
  o.add(buildInstancesScopedListWarningData());
  return o;
}

checkUnnamed508(core.List<api.InstancesScopedListWarningData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstancesScopedListWarningData(o[0]);
  checkInstancesScopedListWarningData(o[1]);
}

core.int buildCounterInstancesScopedListWarning = 0;
buildInstancesScopedListWarning() {
  var o = new api.InstancesScopedListWarning();
  buildCounterInstancesScopedListWarning++;
  if (buildCounterInstancesScopedListWarning < 3) {
    o.code = "foo";
    o.data = buildUnnamed508();
    o.message = "foo";
  }
  buildCounterInstancesScopedListWarning--;
  return o;
}

checkInstancesScopedListWarning(api.InstancesScopedListWarning o) {
  buildCounterInstancesScopedListWarning++;
  if (buildCounterInstancesScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed508(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterInstancesScopedListWarning--;
}

core.int buildCounterInstancesScopedList = 0;
buildInstancesScopedList() {
  var o = new api.InstancesScopedList();
  buildCounterInstancesScopedList++;
  if (buildCounterInstancesScopedList < 3) {
    o.instances = buildUnnamed507();
    o.warning = buildInstancesScopedListWarning();
  }
  buildCounterInstancesScopedList--;
  return o;
}

checkInstancesScopedList(api.InstancesScopedList o) {
  buildCounterInstancesScopedList++;
  if (buildCounterInstancesScopedList < 3) {
    checkUnnamed507(o.instances);
    checkInstancesScopedListWarning(o.warning);
  }
  buildCounterInstancesScopedList--;
}

core.int buildCounterLicense = 0;
buildLicense() {
  var o = new api.License();
  buildCounterLicense++;
  if (buildCounterLicense < 3) {
    o.chargesUseFee = true;
    o.kind = "foo";
    o.name = "foo";
    o.selfLink = "foo";
  }
  buildCounterLicense--;
  return o;
}

checkLicense(api.License o) {
  buildCounterLicense++;
  if (buildCounterLicense < 3) {
    unittest.expect(o.chargesUseFee, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterLicense--;
}

core.int buildCounterMachineTypeScratchDisks = 0;
buildMachineTypeScratchDisks() {
  var o = new api.MachineTypeScratchDisks();
  buildCounterMachineTypeScratchDisks++;
  if (buildCounterMachineTypeScratchDisks < 3) {
    o.diskGb = 42;
  }
  buildCounterMachineTypeScratchDisks--;
  return o;
}

checkMachineTypeScratchDisks(api.MachineTypeScratchDisks o) {
  buildCounterMachineTypeScratchDisks++;
  if (buildCounterMachineTypeScratchDisks < 3) {
    unittest.expect(o.diskGb, unittest.equals(42));
  }
  buildCounterMachineTypeScratchDisks--;
}

buildUnnamed509() {
  var o = new core.List<api.MachineTypeScratchDisks>();
  o.add(buildMachineTypeScratchDisks());
  o.add(buildMachineTypeScratchDisks());
  return o;
}

checkUnnamed509(core.List<api.MachineTypeScratchDisks> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMachineTypeScratchDisks(o[0]);
  checkMachineTypeScratchDisks(o[1]);
}

core.int buildCounterMachineType = 0;
buildMachineType() {
  var o = new api.MachineType();
  buildCounterMachineType++;
  if (buildCounterMachineType < 3) {
    o.creationTimestamp = "foo";
    o.deprecated = buildDeprecationStatus();
    o.description = "foo";
    o.guestCpus = 42;
    o.id = "foo";
    o.imageSpaceGb = 42;
    o.kind = "foo";
    o.maximumPersistentDisks = 42;
    o.maximumPersistentDisksSizeGb = "foo";
    o.memoryMb = 42;
    o.name = "foo";
    o.scratchDisks = buildUnnamed509();
    o.selfLink = "foo";
    o.zone = "foo";
  }
  buildCounterMachineType--;
  return o;
}

checkMachineType(api.MachineType o) {
  buildCounterMachineType++;
  if (buildCounterMachineType < 3) {
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    checkDeprecationStatus(o.deprecated);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.guestCpus, unittest.equals(42));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.imageSpaceGb, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.maximumPersistentDisks, unittest.equals(42));
    unittest.expect(o.maximumPersistentDisksSizeGb, unittest.equals('foo'));
    unittest.expect(o.memoryMb, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed509(o.scratchDisks);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterMachineType--;
}

buildUnnamed510() {
  var o = new core.Map<core.String, api.MachineTypesScopedList>();
  o["x"] = buildMachineTypesScopedList();
  o["y"] = buildMachineTypesScopedList();
  return o;
}

checkUnnamed510(core.Map<core.String, api.MachineTypesScopedList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMachineTypesScopedList(o["x"]);
  checkMachineTypesScopedList(o["y"]);
}

core.int buildCounterMachineTypeAggregatedList = 0;
buildMachineTypeAggregatedList() {
  var o = new api.MachineTypeAggregatedList();
  buildCounterMachineTypeAggregatedList++;
  if (buildCounterMachineTypeAggregatedList < 3) {
    o.id = "foo";
    o.items = buildUnnamed510();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterMachineTypeAggregatedList--;
  return o;
}

checkMachineTypeAggregatedList(api.MachineTypeAggregatedList o) {
  buildCounterMachineTypeAggregatedList++;
  if (buildCounterMachineTypeAggregatedList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed510(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterMachineTypeAggregatedList--;
}

buildUnnamed511() {
  var o = new core.List<api.MachineType>();
  o.add(buildMachineType());
  o.add(buildMachineType());
  return o;
}

checkUnnamed511(core.List<api.MachineType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMachineType(o[0]);
  checkMachineType(o[1]);
}

core.int buildCounterMachineTypeList = 0;
buildMachineTypeList() {
  var o = new api.MachineTypeList();
  buildCounterMachineTypeList++;
  if (buildCounterMachineTypeList < 3) {
    o.id = "foo";
    o.items = buildUnnamed511();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterMachineTypeList--;
  return o;
}

checkMachineTypeList(api.MachineTypeList o) {
  buildCounterMachineTypeList++;
  if (buildCounterMachineTypeList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed511(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterMachineTypeList--;
}

buildUnnamed512() {
  var o = new core.List<api.MachineType>();
  o.add(buildMachineType());
  o.add(buildMachineType());
  return o;
}

checkUnnamed512(core.List<api.MachineType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMachineType(o[0]);
  checkMachineType(o[1]);
}

core.int buildCounterMachineTypesScopedListWarningData = 0;
buildMachineTypesScopedListWarningData() {
  var o = new api.MachineTypesScopedListWarningData();
  buildCounterMachineTypesScopedListWarningData++;
  if (buildCounterMachineTypesScopedListWarningData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterMachineTypesScopedListWarningData--;
  return o;
}

checkMachineTypesScopedListWarningData(api.MachineTypesScopedListWarningData o) {
  buildCounterMachineTypesScopedListWarningData++;
  if (buildCounterMachineTypesScopedListWarningData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterMachineTypesScopedListWarningData--;
}

buildUnnamed513() {
  var o = new core.List<api.MachineTypesScopedListWarningData>();
  o.add(buildMachineTypesScopedListWarningData());
  o.add(buildMachineTypesScopedListWarningData());
  return o;
}

checkUnnamed513(core.List<api.MachineTypesScopedListWarningData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMachineTypesScopedListWarningData(o[0]);
  checkMachineTypesScopedListWarningData(o[1]);
}

core.int buildCounterMachineTypesScopedListWarning = 0;
buildMachineTypesScopedListWarning() {
  var o = new api.MachineTypesScopedListWarning();
  buildCounterMachineTypesScopedListWarning++;
  if (buildCounterMachineTypesScopedListWarning < 3) {
    o.code = "foo";
    o.data = buildUnnamed513();
    o.message = "foo";
  }
  buildCounterMachineTypesScopedListWarning--;
  return o;
}

checkMachineTypesScopedListWarning(api.MachineTypesScopedListWarning o) {
  buildCounterMachineTypesScopedListWarning++;
  if (buildCounterMachineTypesScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed513(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterMachineTypesScopedListWarning--;
}

core.int buildCounterMachineTypesScopedList = 0;
buildMachineTypesScopedList() {
  var o = new api.MachineTypesScopedList();
  buildCounterMachineTypesScopedList++;
  if (buildCounterMachineTypesScopedList < 3) {
    o.machineTypes = buildUnnamed512();
    o.warning = buildMachineTypesScopedListWarning();
  }
  buildCounterMachineTypesScopedList--;
  return o;
}

checkMachineTypesScopedList(api.MachineTypesScopedList o) {
  buildCounterMachineTypesScopedList++;
  if (buildCounterMachineTypesScopedList < 3) {
    checkUnnamed512(o.machineTypes);
    checkMachineTypesScopedListWarning(o.warning);
  }
  buildCounterMachineTypesScopedList--;
}

core.int buildCounterMetadataItems = 0;
buildMetadataItems() {
  var o = new api.MetadataItems();
  buildCounterMetadataItems++;
  if (buildCounterMetadataItems < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterMetadataItems--;
  return o;
}

checkMetadataItems(api.MetadataItems o) {
  buildCounterMetadataItems++;
  if (buildCounterMetadataItems < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterMetadataItems--;
}

buildUnnamed514() {
  var o = new core.List<api.MetadataItems>();
  o.add(buildMetadataItems());
  o.add(buildMetadataItems());
  return o;
}

checkUnnamed514(core.List<api.MetadataItems> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetadataItems(o[0]);
  checkMetadataItems(o[1]);
}

core.int buildCounterMetadata = 0;
buildMetadata() {
  var o = new api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.fingerprint = "foo";
    o.items = buildUnnamed514();
    o.kind = "foo";
  }
  buildCounterMetadata--;
  return o;
}

checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    unittest.expect(o.fingerprint, unittest.equals('foo'));
    checkUnnamed514(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterMetadata--;
}

core.int buildCounterNetwork = 0;
buildNetwork() {
  var o = new api.Network();
  buildCounterNetwork++;
  if (buildCounterNetwork < 3) {
    o.IPv4Range = "foo";
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.gatewayIPv4 = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.selfLink = "foo";
  }
  buildCounterNetwork--;
  return o;
}

checkNetwork(api.Network o) {
  buildCounterNetwork++;
  if (buildCounterNetwork < 3) {
    unittest.expect(o.IPv4Range, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.gatewayIPv4, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterNetwork--;
}

buildUnnamed515() {
  var o = new core.List<api.AccessConfig>();
  o.add(buildAccessConfig());
  o.add(buildAccessConfig());
  return o;
}

checkUnnamed515(core.List<api.AccessConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessConfig(o[0]);
  checkAccessConfig(o[1]);
}

core.int buildCounterNetworkInterface = 0;
buildNetworkInterface() {
  var o = new api.NetworkInterface();
  buildCounterNetworkInterface++;
  if (buildCounterNetworkInterface < 3) {
    o.accessConfigs = buildUnnamed515();
    o.name = "foo";
    o.network = "foo";
    o.networkIP = "foo";
  }
  buildCounterNetworkInterface--;
  return o;
}

checkNetworkInterface(api.NetworkInterface o) {
  buildCounterNetworkInterface++;
  if (buildCounterNetworkInterface < 3) {
    checkUnnamed515(o.accessConfigs);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.networkIP, unittest.equals('foo'));
  }
  buildCounterNetworkInterface--;
}

buildUnnamed516() {
  var o = new core.List<api.Network>();
  o.add(buildNetwork());
  o.add(buildNetwork());
  return o;
}

checkUnnamed516(core.List<api.Network> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetwork(o[0]);
  checkNetwork(o[1]);
}

core.int buildCounterNetworkList = 0;
buildNetworkList() {
  var o = new api.NetworkList();
  buildCounterNetworkList++;
  if (buildCounterNetworkList < 3) {
    o.id = "foo";
    o.items = buildUnnamed516();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterNetworkList--;
  return o;
}

checkNetworkList(api.NetworkList o) {
  buildCounterNetworkList++;
  if (buildCounterNetworkList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed516(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterNetworkList--;
}

core.int buildCounterOperationErrorErrors = 0;
buildOperationErrorErrors() {
  var o = new api.OperationErrorErrors();
  buildCounterOperationErrorErrors++;
  if (buildCounterOperationErrorErrors < 3) {
    o.code = "foo";
    o.location = "foo";
    o.message = "foo";
  }
  buildCounterOperationErrorErrors--;
  return o;
}

checkOperationErrorErrors(api.OperationErrorErrors o) {
  buildCounterOperationErrorErrors++;
  if (buildCounterOperationErrorErrors < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterOperationErrorErrors--;
}

buildUnnamed517() {
  var o = new core.List<api.OperationErrorErrors>();
  o.add(buildOperationErrorErrors());
  o.add(buildOperationErrorErrors());
  return o;
}

checkUnnamed517(core.List<api.OperationErrorErrors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationErrorErrors(o[0]);
  checkOperationErrorErrors(o[1]);
}

core.int buildCounterOperationError = 0;
buildOperationError() {
  var o = new api.OperationError();
  buildCounterOperationError++;
  if (buildCounterOperationError < 3) {
    o.errors = buildUnnamed517();
  }
  buildCounterOperationError--;
  return o;
}

checkOperationError(api.OperationError o) {
  buildCounterOperationError++;
  if (buildCounterOperationError < 3) {
    checkUnnamed517(o.errors);
  }
  buildCounterOperationError--;
}

core.int buildCounterOperationWarningsData = 0;
buildOperationWarningsData() {
  var o = new api.OperationWarningsData();
  buildCounterOperationWarningsData++;
  if (buildCounterOperationWarningsData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterOperationWarningsData--;
  return o;
}

checkOperationWarningsData(api.OperationWarningsData o) {
  buildCounterOperationWarningsData++;
  if (buildCounterOperationWarningsData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterOperationWarningsData--;
}

buildUnnamed518() {
  var o = new core.List<api.OperationWarningsData>();
  o.add(buildOperationWarningsData());
  o.add(buildOperationWarningsData());
  return o;
}

checkUnnamed518(core.List<api.OperationWarningsData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationWarningsData(o[0]);
  checkOperationWarningsData(o[1]);
}

core.int buildCounterOperationWarnings = 0;
buildOperationWarnings() {
  var o = new api.OperationWarnings();
  buildCounterOperationWarnings++;
  if (buildCounterOperationWarnings < 3) {
    o.code = "foo";
    o.data = buildUnnamed518();
    o.message = "foo";
  }
  buildCounterOperationWarnings--;
  return o;
}

checkOperationWarnings(api.OperationWarnings o) {
  buildCounterOperationWarnings++;
  if (buildCounterOperationWarnings < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed518(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterOperationWarnings--;
}

buildUnnamed519() {
  var o = new core.List<api.OperationWarnings>();
  o.add(buildOperationWarnings());
  o.add(buildOperationWarnings());
  return o;
}

checkUnnamed519(core.List<api.OperationWarnings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationWarnings(o[0]);
  checkOperationWarnings(o[1]);
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.clientOperationId = "foo";
    o.creationTimestamp = "foo";
    o.endTime = "foo";
    o.error = buildOperationError();
    o.httpErrorMessage = "foo";
    o.httpErrorStatusCode = 42;
    o.id = "foo";
    o.insertTime = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.operationType = "foo";
    o.progress = 42;
    o.region = "foo";
    o.selfLink = "foo";
    o.startTime = "foo";
    o.status = "foo";
    o.statusMessage = "foo";
    o.targetId = "foo";
    o.targetLink = "foo";
    o.user = "foo";
    o.warnings = buildUnnamed519();
    o.zone = "foo";
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.clientOperationId, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkOperationError(o.error);
    unittest.expect(o.httpErrorMessage, unittest.equals('foo'));
    unittest.expect(o.httpErrorStatusCode, unittest.equals(42));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.insertTime, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.operationType, unittest.equals('foo'));
    unittest.expect(o.progress, unittest.equals(42));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    unittest.expect(o.targetId, unittest.equals('foo'));
    unittest.expect(o.targetLink, unittest.equals('foo'));
    unittest.expect(o.user, unittest.equals('foo'));
    checkUnnamed519(o.warnings);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterOperation--;
}

buildUnnamed520() {
  var o = new core.Map<core.String, api.OperationsScopedList>();
  o["x"] = buildOperationsScopedList();
  o["y"] = buildOperationsScopedList();
  return o;
}

checkUnnamed520(core.Map<core.String, api.OperationsScopedList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationsScopedList(o["x"]);
  checkOperationsScopedList(o["y"]);
}

core.int buildCounterOperationAggregatedList = 0;
buildOperationAggregatedList() {
  var o = new api.OperationAggregatedList();
  buildCounterOperationAggregatedList++;
  if (buildCounterOperationAggregatedList < 3) {
    o.id = "foo";
    o.items = buildUnnamed520();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterOperationAggregatedList--;
  return o;
}

checkOperationAggregatedList(api.OperationAggregatedList o) {
  buildCounterOperationAggregatedList++;
  if (buildCounterOperationAggregatedList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed520(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterOperationAggregatedList--;
}

buildUnnamed521() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed521(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterOperationList = 0;
buildOperationList() {
  var o = new api.OperationList();
  buildCounterOperationList++;
  if (buildCounterOperationList < 3) {
    o.id = "foo";
    o.items = buildUnnamed521();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterOperationList--;
  return o;
}

checkOperationList(api.OperationList o) {
  buildCounterOperationList++;
  if (buildCounterOperationList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed521(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterOperationList--;
}

buildUnnamed522() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed522(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterOperationsScopedListWarningData = 0;
buildOperationsScopedListWarningData() {
  var o = new api.OperationsScopedListWarningData();
  buildCounterOperationsScopedListWarningData++;
  if (buildCounterOperationsScopedListWarningData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterOperationsScopedListWarningData--;
  return o;
}

checkOperationsScopedListWarningData(api.OperationsScopedListWarningData o) {
  buildCounterOperationsScopedListWarningData++;
  if (buildCounterOperationsScopedListWarningData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterOperationsScopedListWarningData--;
}

buildUnnamed523() {
  var o = new core.List<api.OperationsScopedListWarningData>();
  o.add(buildOperationsScopedListWarningData());
  o.add(buildOperationsScopedListWarningData());
  return o;
}

checkUnnamed523(core.List<api.OperationsScopedListWarningData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationsScopedListWarningData(o[0]);
  checkOperationsScopedListWarningData(o[1]);
}

core.int buildCounterOperationsScopedListWarning = 0;
buildOperationsScopedListWarning() {
  var o = new api.OperationsScopedListWarning();
  buildCounterOperationsScopedListWarning++;
  if (buildCounterOperationsScopedListWarning < 3) {
    o.code = "foo";
    o.data = buildUnnamed523();
    o.message = "foo";
  }
  buildCounterOperationsScopedListWarning--;
  return o;
}

checkOperationsScopedListWarning(api.OperationsScopedListWarning o) {
  buildCounterOperationsScopedListWarning++;
  if (buildCounterOperationsScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed523(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterOperationsScopedListWarning--;
}

core.int buildCounterOperationsScopedList = 0;
buildOperationsScopedList() {
  var o = new api.OperationsScopedList();
  buildCounterOperationsScopedList++;
  if (buildCounterOperationsScopedList < 3) {
    o.operations = buildUnnamed522();
    o.warning = buildOperationsScopedListWarning();
  }
  buildCounterOperationsScopedList--;
  return o;
}

checkOperationsScopedList(api.OperationsScopedList o) {
  buildCounterOperationsScopedList++;
  if (buildCounterOperationsScopedList < 3) {
    checkUnnamed522(o.operations);
    checkOperationsScopedListWarning(o.warning);
  }
  buildCounterOperationsScopedList--;
}

buildUnnamed524() {
  var o = new core.List<api.PathRule>();
  o.add(buildPathRule());
  o.add(buildPathRule());
  return o;
}

checkUnnamed524(core.List<api.PathRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPathRule(o[0]);
  checkPathRule(o[1]);
}

core.int buildCounterPathMatcher = 0;
buildPathMatcher() {
  var o = new api.PathMatcher();
  buildCounterPathMatcher++;
  if (buildCounterPathMatcher < 3) {
    o.defaultService = "foo";
    o.description = "foo";
    o.name = "foo";
    o.pathRules = buildUnnamed524();
  }
  buildCounterPathMatcher--;
  return o;
}

checkPathMatcher(api.PathMatcher o) {
  buildCounterPathMatcher++;
  if (buildCounterPathMatcher < 3) {
    unittest.expect(o.defaultService, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed524(o.pathRules);
  }
  buildCounterPathMatcher--;
}

buildUnnamed525() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed525(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPathRule = 0;
buildPathRule() {
  var o = new api.PathRule();
  buildCounterPathRule++;
  if (buildCounterPathRule < 3) {
    o.paths = buildUnnamed525();
    o.service = "foo";
  }
  buildCounterPathRule--;
  return o;
}

checkPathRule(api.PathRule o) {
  buildCounterPathRule++;
  if (buildCounterPathRule < 3) {
    checkUnnamed525(o.paths);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterPathRule--;
}

buildUnnamed526() {
  var o = new core.List<api.Quota>();
  o.add(buildQuota());
  o.add(buildQuota());
  return o;
}

checkUnnamed526(core.List<api.Quota> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuota(o[0]);
  checkQuota(o[1]);
}

core.int buildCounterProject = 0;
buildProject() {
  var o = new api.Project();
  buildCounterProject++;
  if (buildCounterProject < 3) {
    o.commonInstanceMetadata = buildMetadata();
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.quotas = buildUnnamed526();
    o.selfLink = "foo";
    o.usageExportLocation = buildUsageExportLocation();
  }
  buildCounterProject--;
  return o;
}

checkProject(api.Project o) {
  buildCounterProject++;
  if (buildCounterProject < 3) {
    checkMetadata(o.commonInstanceMetadata);
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed526(o.quotas);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkUsageExportLocation(o.usageExportLocation);
  }
  buildCounterProject--;
}

core.int buildCounterQuota = 0;
buildQuota() {
  var o = new api.Quota();
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    o.limit = 42.0;
    o.metric = "foo";
    o.usage = 42.0;
  }
  buildCounterQuota--;
  return o;
}

checkQuota(api.Quota o) {
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    unittest.expect(o.limit, unittest.equals(42.0));
    unittest.expect(o.metric, unittest.equals('foo'));
    unittest.expect(o.usage, unittest.equals(42.0));
  }
  buildCounterQuota--;
}

buildUnnamed527() {
  var o = new core.List<api.Quota>();
  o.add(buildQuota());
  o.add(buildQuota());
  return o;
}

checkUnnamed527(core.List<api.Quota> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuota(o[0]);
  checkQuota(o[1]);
}

buildUnnamed528() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed528(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRegion = 0;
buildRegion() {
  var o = new api.Region();
  buildCounterRegion++;
  if (buildCounterRegion < 3) {
    o.creationTimestamp = "foo";
    o.deprecated = buildDeprecationStatus();
    o.description = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.quotas = buildUnnamed527();
    o.selfLink = "foo";
    o.status = "foo";
    o.zones = buildUnnamed528();
  }
  buildCounterRegion--;
  return o;
}

checkRegion(api.Region o) {
  buildCounterRegion++;
  if (buildCounterRegion < 3) {
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    checkDeprecationStatus(o.deprecated);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed527(o.quotas);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    checkUnnamed528(o.zones);
  }
  buildCounterRegion--;
}

buildUnnamed529() {
  var o = new core.List<api.Region>();
  o.add(buildRegion());
  o.add(buildRegion());
  return o;
}

checkUnnamed529(core.List<api.Region> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegion(o[0]);
  checkRegion(o[1]);
}

core.int buildCounterRegionList = 0;
buildRegionList() {
  var o = new api.RegionList();
  buildCounterRegionList++;
  if (buildCounterRegionList < 3) {
    o.id = "foo";
    o.items = buildUnnamed529();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterRegionList--;
  return o;
}

checkRegionList(api.RegionList o) {
  buildCounterRegionList++;
  if (buildCounterRegionList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed529(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterRegionList--;
}

core.int buildCounterResourceGroupReference = 0;
buildResourceGroupReference() {
  var o = new api.ResourceGroupReference();
  buildCounterResourceGroupReference++;
  if (buildCounterResourceGroupReference < 3) {
    o.group = "foo";
  }
  buildCounterResourceGroupReference--;
  return o;
}

checkResourceGroupReference(api.ResourceGroupReference o) {
  buildCounterResourceGroupReference++;
  if (buildCounterResourceGroupReference < 3) {
    unittest.expect(o.group, unittest.equals('foo'));
  }
  buildCounterResourceGroupReference--;
}

buildUnnamed530() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed530(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRouteWarningsData = 0;
buildRouteWarningsData() {
  var o = new api.RouteWarningsData();
  buildCounterRouteWarningsData++;
  if (buildCounterRouteWarningsData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterRouteWarningsData--;
  return o;
}

checkRouteWarningsData(api.RouteWarningsData o) {
  buildCounterRouteWarningsData++;
  if (buildCounterRouteWarningsData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterRouteWarningsData--;
}

buildUnnamed531() {
  var o = new core.List<api.RouteWarningsData>();
  o.add(buildRouteWarningsData());
  o.add(buildRouteWarningsData());
  return o;
}

checkUnnamed531(core.List<api.RouteWarningsData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRouteWarningsData(o[0]);
  checkRouteWarningsData(o[1]);
}

core.int buildCounterRouteWarnings = 0;
buildRouteWarnings() {
  var o = new api.RouteWarnings();
  buildCounterRouteWarnings++;
  if (buildCounterRouteWarnings < 3) {
    o.code = "foo";
    o.data = buildUnnamed531();
    o.message = "foo";
  }
  buildCounterRouteWarnings--;
  return o;
}

checkRouteWarnings(api.RouteWarnings o) {
  buildCounterRouteWarnings++;
  if (buildCounterRouteWarnings < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed531(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterRouteWarnings--;
}

buildUnnamed532() {
  var o = new core.List<api.RouteWarnings>();
  o.add(buildRouteWarnings());
  o.add(buildRouteWarnings());
  return o;
}

checkUnnamed532(core.List<api.RouteWarnings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRouteWarnings(o[0]);
  checkRouteWarnings(o[1]);
}

core.int buildCounterRoute = 0;
buildRoute() {
  var o = new api.Route();
  buildCounterRoute++;
  if (buildCounterRoute < 3) {
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.destRange = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.network = "foo";
    o.nextHopGateway = "foo";
    o.nextHopInstance = "foo";
    o.nextHopIp = "foo";
    o.nextHopNetwork = "foo";
    o.priority = 42;
    o.selfLink = "foo";
    o.tags = buildUnnamed530();
    o.warnings = buildUnnamed532();
  }
  buildCounterRoute--;
  return o;
}

checkRoute(api.Route o) {
  buildCounterRoute++;
  if (buildCounterRoute < 3) {
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.destRange, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.nextHopGateway, unittest.equals('foo'));
    unittest.expect(o.nextHopInstance, unittest.equals('foo'));
    unittest.expect(o.nextHopIp, unittest.equals('foo'));
    unittest.expect(o.nextHopNetwork, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkUnnamed530(o.tags);
    checkUnnamed532(o.warnings);
  }
  buildCounterRoute--;
}

buildUnnamed533() {
  var o = new core.List<api.Route>();
  o.add(buildRoute());
  o.add(buildRoute());
  return o;
}

checkUnnamed533(core.List<api.Route> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoute(o[0]);
  checkRoute(o[1]);
}

core.int buildCounterRouteList = 0;
buildRouteList() {
  var o = new api.RouteList();
  buildCounterRouteList++;
  if (buildCounterRouteList < 3) {
    o.id = "foo";
    o.items = buildUnnamed533();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterRouteList--;
  return o;
}

checkRouteList(api.RouteList o) {
  buildCounterRouteList++;
  if (buildCounterRouteList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed533(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterRouteList--;
}

core.int buildCounterScheduling = 0;
buildScheduling() {
  var o = new api.Scheduling();
  buildCounterScheduling++;
  if (buildCounterScheduling < 3) {
    o.automaticRestart = true;
    o.onHostMaintenance = "foo";
  }
  buildCounterScheduling--;
  return o;
}

checkScheduling(api.Scheduling o) {
  buildCounterScheduling++;
  if (buildCounterScheduling < 3) {
    unittest.expect(o.automaticRestart, unittest.isTrue);
    unittest.expect(o.onHostMaintenance, unittest.equals('foo'));
  }
  buildCounterScheduling--;
}

core.int buildCounterSerialPortOutput = 0;
buildSerialPortOutput() {
  var o = new api.SerialPortOutput();
  buildCounterSerialPortOutput++;
  if (buildCounterSerialPortOutput < 3) {
    o.contents = "foo";
    o.kind = "foo";
    o.selfLink = "foo";
  }
  buildCounterSerialPortOutput--;
  return o;
}

checkSerialPortOutput(api.SerialPortOutput o) {
  buildCounterSerialPortOutput++;
  if (buildCounterSerialPortOutput < 3) {
    unittest.expect(o.contents, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterSerialPortOutput--;
}

buildUnnamed534() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed534(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterServiceAccount = 0;
buildServiceAccount() {
  var o = new api.ServiceAccount();
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    o.email = "foo";
    o.scopes = buildUnnamed534();
  }
  buildCounterServiceAccount--;
  return o;
}

checkServiceAccount(api.ServiceAccount o) {
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    checkUnnamed534(o.scopes);
  }
  buildCounterServiceAccount--;
}

buildUnnamed535() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed535(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSnapshot = 0;
buildSnapshot() {
  var o = new api.Snapshot();
  buildCounterSnapshot++;
  if (buildCounterSnapshot < 3) {
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.diskSizeGb = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.licenses = buildUnnamed535();
    o.name = "foo";
    o.selfLink = "foo";
    o.sourceDisk = "foo";
    o.sourceDiskId = "foo";
    o.status = "foo";
    o.storageBytes = "foo";
    o.storageBytesStatus = "foo";
  }
  buildCounterSnapshot--;
  return o;
}

checkSnapshot(api.Snapshot o) {
  buildCounterSnapshot++;
  if (buildCounterSnapshot < 3) {
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.diskSizeGb, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed535(o.licenses);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.sourceDisk, unittest.equals('foo'));
    unittest.expect(o.sourceDiskId, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.storageBytes, unittest.equals('foo'));
    unittest.expect(o.storageBytesStatus, unittest.equals('foo'));
  }
  buildCounterSnapshot--;
}

buildUnnamed536() {
  var o = new core.List<api.Snapshot>();
  o.add(buildSnapshot());
  o.add(buildSnapshot());
  return o;
}

checkUnnamed536(core.List<api.Snapshot> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSnapshot(o[0]);
  checkSnapshot(o[1]);
}

core.int buildCounterSnapshotList = 0;
buildSnapshotList() {
  var o = new api.SnapshotList();
  buildCounterSnapshotList++;
  if (buildCounterSnapshotList < 3) {
    o.id = "foo";
    o.items = buildUnnamed536();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterSnapshotList--;
  return o;
}

checkSnapshotList(api.SnapshotList o) {
  buildCounterSnapshotList++;
  if (buildCounterSnapshotList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed536(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterSnapshotList--;
}

buildUnnamed537() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed537(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTags = 0;
buildTags() {
  var o = new api.Tags();
  buildCounterTags++;
  if (buildCounterTags < 3) {
    o.fingerprint = "foo";
    o.items = buildUnnamed537();
  }
  buildCounterTags--;
  return o;
}

checkTags(api.Tags o) {
  buildCounterTags++;
  if (buildCounterTags < 3) {
    unittest.expect(o.fingerprint, unittest.equals('foo'));
    checkUnnamed537(o.items);
  }
  buildCounterTags--;
}

core.int buildCounterTargetHttpProxy = 0;
buildTargetHttpProxy() {
  var o = new api.TargetHttpProxy();
  buildCounterTargetHttpProxy++;
  if (buildCounterTargetHttpProxy < 3) {
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.selfLink = "foo";
    o.urlMap = "foo";
  }
  buildCounterTargetHttpProxy--;
  return o;
}

checkTargetHttpProxy(api.TargetHttpProxy o) {
  buildCounterTargetHttpProxy++;
  if (buildCounterTargetHttpProxy < 3) {
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.urlMap, unittest.equals('foo'));
  }
  buildCounterTargetHttpProxy--;
}

buildUnnamed538() {
  var o = new core.List<api.TargetHttpProxy>();
  o.add(buildTargetHttpProxy());
  o.add(buildTargetHttpProxy());
  return o;
}

checkUnnamed538(core.List<api.TargetHttpProxy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetHttpProxy(o[0]);
  checkTargetHttpProxy(o[1]);
}

core.int buildCounterTargetHttpProxyList = 0;
buildTargetHttpProxyList() {
  var o = new api.TargetHttpProxyList();
  buildCounterTargetHttpProxyList++;
  if (buildCounterTargetHttpProxyList < 3) {
    o.id = "foo";
    o.items = buildUnnamed538();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterTargetHttpProxyList--;
  return o;
}

checkTargetHttpProxyList(api.TargetHttpProxyList o) {
  buildCounterTargetHttpProxyList++;
  if (buildCounterTargetHttpProxyList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed538(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterTargetHttpProxyList--;
}

core.int buildCounterTargetInstance = 0;
buildTargetInstance() {
  var o = new api.TargetInstance();
  buildCounterTargetInstance++;
  if (buildCounterTargetInstance < 3) {
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.id = "foo";
    o.instance = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.natPolicy = "foo";
    o.selfLink = "foo";
    o.zone = "foo";
  }
  buildCounterTargetInstance--;
  return o;
}

checkTargetInstance(api.TargetInstance o) {
  buildCounterTargetInstance++;
  if (buildCounterTargetInstance < 3) {
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.instance, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.natPolicy, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterTargetInstance--;
}

buildUnnamed539() {
  var o = new core.Map<core.String, api.TargetInstancesScopedList>();
  o["x"] = buildTargetInstancesScopedList();
  o["y"] = buildTargetInstancesScopedList();
  return o;
}

checkUnnamed539(core.Map<core.String, api.TargetInstancesScopedList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetInstancesScopedList(o["x"]);
  checkTargetInstancesScopedList(o["y"]);
}

core.int buildCounterTargetInstanceAggregatedList = 0;
buildTargetInstanceAggregatedList() {
  var o = new api.TargetInstanceAggregatedList();
  buildCounterTargetInstanceAggregatedList++;
  if (buildCounterTargetInstanceAggregatedList < 3) {
    o.id = "foo";
    o.items = buildUnnamed539();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterTargetInstanceAggregatedList--;
  return o;
}

checkTargetInstanceAggregatedList(api.TargetInstanceAggregatedList o) {
  buildCounterTargetInstanceAggregatedList++;
  if (buildCounterTargetInstanceAggregatedList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed539(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterTargetInstanceAggregatedList--;
}

buildUnnamed540() {
  var o = new core.List<api.TargetInstance>();
  o.add(buildTargetInstance());
  o.add(buildTargetInstance());
  return o;
}

checkUnnamed540(core.List<api.TargetInstance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetInstance(o[0]);
  checkTargetInstance(o[1]);
}

core.int buildCounterTargetInstanceList = 0;
buildTargetInstanceList() {
  var o = new api.TargetInstanceList();
  buildCounterTargetInstanceList++;
  if (buildCounterTargetInstanceList < 3) {
    o.id = "foo";
    o.items = buildUnnamed540();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterTargetInstanceList--;
  return o;
}

checkTargetInstanceList(api.TargetInstanceList o) {
  buildCounterTargetInstanceList++;
  if (buildCounterTargetInstanceList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed540(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterTargetInstanceList--;
}

buildUnnamed541() {
  var o = new core.List<api.TargetInstance>();
  o.add(buildTargetInstance());
  o.add(buildTargetInstance());
  return o;
}

checkUnnamed541(core.List<api.TargetInstance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetInstance(o[0]);
  checkTargetInstance(o[1]);
}

core.int buildCounterTargetInstancesScopedListWarningData = 0;
buildTargetInstancesScopedListWarningData() {
  var o = new api.TargetInstancesScopedListWarningData();
  buildCounterTargetInstancesScopedListWarningData++;
  if (buildCounterTargetInstancesScopedListWarningData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterTargetInstancesScopedListWarningData--;
  return o;
}

checkTargetInstancesScopedListWarningData(api.TargetInstancesScopedListWarningData o) {
  buildCounterTargetInstancesScopedListWarningData++;
  if (buildCounterTargetInstancesScopedListWarningData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterTargetInstancesScopedListWarningData--;
}

buildUnnamed542() {
  var o = new core.List<api.TargetInstancesScopedListWarningData>();
  o.add(buildTargetInstancesScopedListWarningData());
  o.add(buildTargetInstancesScopedListWarningData());
  return o;
}

checkUnnamed542(core.List<api.TargetInstancesScopedListWarningData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetInstancesScopedListWarningData(o[0]);
  checkTargetInstancesScopedListWarningData(o[1]);
}

core.int buildCounterTargetInstancesScopedListWarning = 0;
buildTargetInstancesScopedListWarning() {
  var o = new api.TargetInstancesScopedListWarning();
  buildCounterTargetInstancesScopedListWarning++;
  if (buildCounterTargetInstancesScopedListWarning < 3) {
    o.code = "foo";
    o.data = buildUnnamed542();
    o.message = "foo";
  }
  buildCounterTargetInstancesScopedListWarning--;
  return o;
}

checkTargetInstancesScopedListWarning(api.TargetInstancesScopedListWarning o) {
  buildCounterTargetInstancesScopedListWarning++;
  if (buildCounterTargetInstancesScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed542(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterTargetInstancesScopedListWarning--;
}

core.int buildCounterTargetInstancesScopedList = 0;
buildTargetInstancesScopedList() {
  var o = new api.TargetInstancesScopedList();
  buildCounterTargetInstancesScopedList++;
  if (buildCounterTargetInstancesScopedList < 3) {
    o.targetInstances = buildUnnamed541();
    o.warning = buildTargetInstancesScopedListWarning();
  }
  buildCounterTargetInstancesScopedList--;
  return o;
}

checkTargetInstancesScopedList(api.TargetInstancesScopedList o) {
  buildCounterTargetInstancesScopedList++;
  if (buildCounterTargetInstancesScopedList < 3) {
    checkUnnamed541(o.targetInstances);
    checkTargetInstancesScopedListWarning(o.warning);
  }
  buildCounterTargetInstancesScopedList--;
}

buildUnnamed543() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed543(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed544() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed544(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTargetPool = 0;
buildTargetPool() {
  var o = new api.TargetPool();
  buildCounterTargetPool++;
  if (buildCounterTargetPool < 3) {
    o.backupPool = "foo";
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.failoverRatio = 42.0;
    o.healthChecks = buildUnnamed543();
    o.id = "foo";
    o.instances = buildUnnamed544();
    o.kind = "foo";
    o.name = "foo";
    o.region = "foo";
    o.selfLink = "foo";
    o.sessionAffinity = "foo";
  }
  buildCounterTargetPool--;
  return o;
}

checkTargetPool(api.TargetPool o) {
  buildCounterTargetPool++;
  if (buildCounterTargetPool < 3) {
    unittest.expect(o.backupPool, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.failoverRatio, unittest.equals(42.0));
    checkUnnamed543(o.healthChecks);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed544(o.instances);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.sessionAffinity, unittest.equals('foo'));
  }
  buildCounterTargetPool--;
}

buildUnnamed545() {
  var o = new core.Map<core.String, api.TargetPoolsScopedList>();
  o["x"] = buildTargetPoolsScopedList();
  o["y"] = buildTargetPoolsScopedList();
  return o;
}

checkUnnamed545(core.Map<core.String, api.TargetPoolsScopedList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetPoolsScopedList(o["x"]);
  checkTargetPoolsScopedList(o["y"]);
}

core.int buildCounterTargetPoolAggregatedList = 0;
buildTargetPoolAggregatedList() {
  var o = new api.TargetPoolAggregatedList();
  buildCounterTargetPoolAggregatedList++;
  if (buildCounterTargetPoolAggregatedList < 3) {
    o.id = "foo";
    o.items = buildUnnamed545();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterTargetPoolAggregatedList--;
  return o;
}

checkTargetPoolAggregatedList(api.TargetPoolAggregatedList o) {
  buildCounterTargetPoolAggregatedList++;
  if (buildCounterTargetPoolAggregatedList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed545(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterTargetPoolAggregatedList--;
}

buildUnnamed546() {
  var o = new core.List<api.HealthStatus>();
  o.add(buildHealthStatus());
  o.add(buildHealthStatus());
  return o;
}

checkUnnamed546(core.List<api.HealthStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHealthStatus(o[0]);
  checkHealthStatus(o[1]);
}

core.int buildCounterTargetPoolInstanceHealth = 0;
buildTargetPoolInstanceHealth() {
  var o = new api.TargetPoolInstanceHealth();
  buildCounterTargetPoolInstanceHealth++;
  if (buildCounterTargetPoolInstanceHealth < 3) {
    o.healthStatus = buildUnnamed546();
    o.kind = "foo";
  }
  buildCounterTargetPoolInstanceHealth--;
  return o;
}

checkTargetPoolInstanceHealth(api.TargetPoolInstanceHealth o) {
  buildCounterTargetPoolInstanceHealth++;
  if (buildCounterTargetPoolInstanceHealth < 3) {
    checkUnnamed546(o.healthStatus);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterTargetPoolInstanceHealth--;
}

buildUnnamed547() {
  var o = new core.List<api.TargetPool>();
  o.add(buildTargetPool());
  o.add(buildTargetPool());
  return o;
}

checkUnnamed547(core.List<api.TargetPool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetPool(o[0]);
  checkTargetPool(o[1]);
}

core.int buildCounterTargetPoolList = 0;
buildTargetPoolList() {
  var o = new api.TargetPoolList();
  buildCounterTargetPoolList++;
  if (buildCounterTargetPoolList < 3) {
    o.id = "foo";
    o.items = buildUnnamed547();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterTargetPoolList--;
  return o;
}

checkTargetPoolList(api.TargetPoolList o) {
  buildCounterTargetPoolList++;
  if (buildCounterTargetPoolList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed547(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterTargetPoolList--;
}

buildUnnamed548() {
  var o = new core.List<api.HealthCheckReference>();
  o.add(buildHealthCheckReference());
  o.add(buildHealthCheckReference());
  return o;
}

checkUnnamed548(core.List<api.HealthCheckReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHealthCheckReference(o[0]);
  checkHealthCheckReference(o[1]);
}

core.int buildCounterTargetPoolsAddHealthCheckRequest = 0;
buildTargetPoolsAddHealthCheckRequest() {
  var o = new api.TargetPoolsAddHealthCheckRequest();
  buildCounterTargetPoolsAddHealthCheckRequest++;
  if (buildCounterTargetPoolsAddHealthCheckRequest < 3) {
    o.healthChecks = buildUnnamed548();
  }
  buildCounterTargetPoolsAddHealthCheckRequest--;
  return o;
}

checkTargetPoolsAddHealthCheckRequest(api.TargetPoolsAddHealthCheckRequest o) {
  buildCounterTargetPoolsAddHealthCheckRequest++;
  if (buildCounterTargetPoolsAddHealthCheckRequest < 3) {
    checkUnnamed548(o.healthChecks);
  }
  buildCounterTargetPoolsAddHealthCheckRequest--;
}

buildUnnamed549() {
  var o = new core.List<api.InstanceReference>();
  o.add(buildInstanceReference());
  o.add(buildInstanceReference());
  return o;
}

checkUnnamed549(core.List<api.InstanceReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceReference(o[0]);
  checkInstanceReference(o[1]);
}

core.int buildCounterTargetPoolsAddInstanceRequest = 0;
buildTargetPoolsAddInstanceRequest() {
  var o = new api.TargetPoolsAddInstanceRequest();
  buildCounterTargetPoolsAddInstanceRequest++;
  if (buildCounterTargetPoolsAddInstanceRequest < 3) {
    o.instances = buildUnnamed549();
  }
  buildCounterTargetPoolsAddInstanceRequest--;
  return o;
}

checkTargetPoolsAddInstanceRequest(api.TargetPoolsAddInstanceRequest o) {
  buildCounterTargetPoolsAddInstanceRequest++;
  if (buildCounterTargetPoolsAddInstanceRequest < 3) {
    checkUnnamed549(o.instances);
  }
  buildCounterTargetPoolsAddInstanceRequest--;
}

buildUnnamed550() {
  var o = new core.List<api.HealthCheckReference>();
  o.add(buildHealthCheckReference());
  o.add(buildHealthCheckReference());
  return o;
}

checkUnnamed550(core.List<api.HealthCheckReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHealthCheckReference(o[0]);
  checkHealthCheckReference(o[1]);
}

core.int buildCounterTargetPoolsRemoveHealthCheckRequest = 0;
buildTargetPoolsRemoveHealthCheckRequest() {
  var o = new api.TargetPoolsRemoveHealthCheckRequest();
  buildCounterTargetPoolsRemoveHealthCheckRequest++;
  if (buildCounterTargetPoolsRemoveHealthCheckRequest < 3) {
    o.healthChecks = buildUnnamed550();
  }
  buildCounterTargetPoolsRemoveHealthCheckRequest--;
  return o;
}

checkTargetPoolsRemoveHealthCheckRequest(api.TargetPoolsRemoveHealthCheckRequest o) {
  buildCounterTargetPoolsRemoveHealthCheckRequest++;
  if (buildCounterTargetPoolsRemoveHealthCheckRequest < 3) {
    checkUnnamed550(o.healthChecks);
  }
  buildCounterTargetPoolsRemoveHealthCheckRequest--;
}

buildUnnamed551() {
  var o = new core.List<api.InstanceReference>();
  o.add(buildInstanceReference());
  o.add(buildInstanceReference());
  return o;
}

checkUnnamed551(core.List<api.InstanceReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceReference(o[0]);
  checkInstanceReference(o[1]);
}

core.int buildCounterTargetPoolsRemoveInstanceRequest = 0;
buildTargetPoolsRemoveInstanceRequest() {
  var o = new api.TargetPoolsRemoveInstanceRequest();
  buildCounterTargetPoolsRemoveInstanceRequest++;
  if (buildCounterTargetPoolsRemoveInstanceRequest < 3) {
    o.instances = buildUnnamed551();
  }
  buildCounterTargetPoolsRemoveInstanceRequest--;
  return o;
}

checkTargetPoolsRemoveInstanceRequest(api.TargetPoolsRemoveInstanceRequest o) {
  buildCounterTargetPoolsRemoveInstanceRequest++;
  if (buildCounterTargetPoolsRemoveInstanceRequest < 3) {
    checkUnnamed551(o.instances);
  }
  buildCounterTargetPoolsRemoveInstanceRequest--;
}

buildUnnamed552() {
  var o = new core.List<api.TargetPool>();
  o.add(buildTargetPool());
  o.add(buildTargetPool());
  return o;
}

checkUnnamed552(core.List<api.TargetPool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetPool(o[0]);
  checkTargetPool(o[1]);
}

core.int buildCounterTargetPoolsScopedListWarningData = 0;
buildTargetPoolsScopedListWarningData() {
  var o = new api.TargetPoolsScopedListWarningData();
  buildCounterTargetPoolsScopedListWarningData++;
  if (buildCounterTargetPoolsScopedListWarningData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterTargetPoolsScopedListWarningData--;
  return o;
}

checkTargetPoolsScopedListWarningData(api.TargetPoolsScopedListWarningData o) {
  buildCounterTargetPoolsScopedListWarningData++;
  if (buildCounterTargetPoolsScopedListWarningData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterTargetPoolsScopedListWarningData--;
}

buildUnnamed553() {
  var o = new core.List<api.TargetPoolsScopedListWarningData>();
  o.add(buildTargetPoolsScopedListWarningData());
  o.add(buildTargetPoolsScopedListWarningData());
  return o;
}

checkUnnamed553(core.List<api.TargetPoolsScopedListWarningData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetPoolsScopedListWarningData(o[0]);
  checkTargetPoolsScopedListWarningData(o[1]);
}

core.int buildCounterTargetPoolsScopedListWarning = 0;
buildTargetPoolsScopedListWarning() {
  var o = new api.TargetPoolsScopedListWarning();
  buildCounterTargetPoolsScopedListWarning++;
  if (buildCounterTargetPoolsScopedListWarning < 3) {
    o.code = "foo";
    o.data = buildUnnamed553();
    o.message = "foo";
  }
  buildCounterTargetPoolsScopedListWarning--;
  return o;
}

checkTargetPoolsScopedListWarning(api.TargetPoolsScopedListWarning o) {
  buildCounterTargetPoolsScopedListWarning++;
  if (buildCounterTargetPoolsScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed553(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterTargetPoolsScopedListWarning--;
}

core.int buildCounterTargetPoolsScopedList = 0;
buildTargetPoolsScopedList() {
  var o = new api.TargetPoolsScopedList();
  buildCounterTargetPoolsScopedList++;
  if (buildCounterTargetPoolsScopedList < 3) {
    o.targetPools = buildUnnamed552();
    o.warning = buildTargetPoolsScopedListWarning();
  }
  buildCounterTargetPoolsScopedList--;
  return o;
}

checkTargetPoolsScopedList(api.TargetPoolsScopedList o) {
  buildCounterTargetPoolsScopedList++;
  if (buildCounterTargetPoolsScopedList < 3) {
    checkUnnamed552(o.targetPools);
    checkTargetPoolsScopedListWarning(o.warning);
  }
  buildCounterTargetPoolsScopedList--;
}

core.int buildCounterTargetReference = 0;
buildTargetReference() {
  var o = new api.TargetReference();
  buildCounterTargetReference++;
  if (buildCounterTargetReference < 3) {
    o.target = "foo";
  }
  buildCounterTargetReference--;
  return o;
}

checkTargetReference(api.TargetReference o) {
  buildCounterTargetReference++;
  if (buildCounterTargetReference < 3) {
    unittest.expect(o.target, unittest.equals('foo'));
  }
  buildCounterTargetReference--;
}

core.int buildCounterTestFailure = 0;
buildTestFailure() {
  var o = new api.TestFailure();
  buildCounterTestFailure++;
  if (buildCounterTestFailure < 3) {
    o.actualService = "foo";
    o.expectedService = "foo";
    o.host = "foo";
    o.path = "foo";
  }
  buildCounterTestFailure--;
  return o;
}

checkTestFailure(api.TestFailure o) {
  buildCounterTestFailure++;
  if (buildCounterTestFailure < 3) {
    unittest.expect(o.actualService, unittest.equals('foo'));
    unittest.expect(o.expectedService, unittest.equals('foo'));
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
  }
  buildCounterTestFailure--;
}

buildUnnamed554() {
  var o = new core.List<api.HostRule>();
  o.add(buildHostRule());
  o.add(buildHostRule());
  return o;
}

checkUnnamed554(core.List<api.HostRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHostRule(o[0]);
  checkHostRule(o[1]);
}

buildUnnamed555() {
  var o = new core.List<api.PathMatcher>();
  o.add(buildPathMatcher());
  o.add(buildPathMatcher());
  return o;
}

checkUnnamed555(core.List<api.PathMatcher> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPathMatcher(o[0]);
  checkPathMatcher(o[1]);
}

buildUnnamed556() {
  var o = new core.List<api.UrlMapTest>();
  o.add(buildUrlMapTest());
  o.add(buildUrlMapTest());
  return o;
}

checkUnnamed556(core.List<api.UrlMapTest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUrlMapTest(o[0]);
  checkUrlMapTest(o[1]);
}

core.int buildCounterUrlMap = 0;
buildUrlMap() {
  var o = new api.UrlMap();
  buildCounterUrlMap++;
  if (buildCounterUrlMap < 3) {
    o.creationTimestamp = "foo";
    o.defaultService = "foo";
    o.description = "foo";
    o.fingerprint = "foo";
    o.hostRules = buildUnnamed554();
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.pathMatchers = buildUnnamed555();
    o.selfLink = "foo";
    o.tests = buildUnnamed556();
  }
  buildCounterUrlMap--;
  return o;
}

checkUrlMap(api.UrlMap o) {
  buildCounterUrlMap++;
  if (buildCounterUrlMap < 3) {
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.defaultService, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.fingerprint, unittest.equals('foo'));
    checkUnnamed554(o.hostRules);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed555(o.pathMatchers);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkUnnamed556(o.tests);
  }
  buildCounterUrlMap--;
}

buildUnnamed557() {
  var o = new core.List<api.UrlMap>();
  o.add(buildUrlMap());
  o.add(buildUrlMap());
  return o;
}

checkUnnamed557(core.List<api.UrlMap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUrlMap(o[0]);
  checkUrlMap(o[1]);
}

core.int buildCounterUrlMapList = 0;
buildUrlMapList() {
  var o = new api.UrlMapList();
  buildCounterUrlMapList++;
  if (buildCounterUrlMapList < 3) {
    o.id = "foo";
    o.items = buildUnnamed557();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterUrlMapList--;
  return o;
}

checkUrlMapList(api.UrlMapList o) {
  buildCounterUrlMapList++;
  if (buildCounterUrlMapList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed557(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterUrlMapList--;
}

core.int buildCounterUrlMapReference = 0;
buildUrlMapReference() {
  var o = new api.UrlMapReference();
  buildCounterUrlMapReference++;
  if (buildCounterUrlMapReference < 3) {
    o.urlMap = "foo";
  }
  buildCounterUrlMapReference--;
  return o;
}

checkUrlMapReference(api.UrlMapReference o) {
  buildCounterUrlMapReference++;
  if (buildCounterUrlMapReference < 3) {
    unittest.expect(o.urlMap, unittest.equals('foo'));
  }
  buildCounterUrlMapReference--;
}

core.int buildCounterUrlMapTest = 0;
buildUrlMapTest() {
  var o = new api.UrlMapTest();
  buildCounterUrlMapTest++;
  if (buildCounterUrlMapTest < 3) {
    o.description = "foo";
    o.host = "foo";
    o.path = "foo";
    o.service = "foo";
  }
  buildCounterUrlMapTest--;
  return o;
}

checkUrlMapTest(api.UrlMapTest o) {
  buildCounterUrlMapTest++;
  if (buildCounterUrlMapTest < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterUrlMapTest--;
}

buildUnnamed558() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed558(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed559() {
  var o = new core.List<api.TestFailure>();
  o.add(buildTestFailure());
  o.add(buildTestFailure());
  return o;
}

checkUnnamed559(core.List<api.TestFailure> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestFailure(o[0]);
  checkTestFailure(o[1]);
}

core.int buildCounterUrlMapValidationResult = 0;
buildUrlMapValidationResult() {
  var o = new api.UrlMapValidationResult();
  buildCounterUrlMapValidationResult++;
  if (buildCounterUrlMapValidationResult < 3) {
    o.loadErrors = buildUnnamed558();
    o.loadSucceeded = true;
    o.testFailures = buildUnnamed559();
    o.testPassed = true;
  }
  buildCounterUrlMapValidationResult--;
  return o;
}

checkUrlMapValidationResult(api.UrlMapValidationResult o) {
  buildCounterUrlMapValidationResult++;
  if (buildCounterUrlMapValidationResult < 3) {
    checkUnnamed558(o.loadErrors);
    unittest.expect(o.loadSucceeded, unittest.isTrue);
    checkUnnamed559(o.testFailures);
    unittest.expect(o.testPassed, unittest.isTrue);
  }
  buildCounterUrlMapValidationResult--;
}

core.int buildCounterUrlMapsValidateRequest = 0;
buildUrlMapsValidateRequest() {
  var o = new api.UrlMapsValidateRequest();
  buildCounterUrlMapsValidateRequest++;
  if (buildCounterUrlMapsValidateRequest < 3) {
    o.resource = buildUrlMap();
  }
  buildCounterUrlMapsValidateRequest--;
  return o;
}

checkUrlMapsValidateRequest(api.UrlMapsValidateRequest o) {
  buildCounterUrlMapsValidateRequest++;
  if (buildCounterUrlMapsValidateRequest < 3) {
    checkUrlMap(o.resource);
  }
  buildCounterUrlMapsValidateRequest--;
}

core.int buildCounterUrlMapsValidateResponse = 0;
buildUrlMapsValidateResponse() {
  var o = new api.UrlMapsValidateResponse();
  buildCounterUrlMapsValidateResponse++;
  if (buildCounterUrlMapsValidateResponse < 3) {
    o.result = buildUrlMapValidationResult();
  }
  buildCounterUrlMapsValidateResponse--;
  return o;
}

checkUrlMapsValidateResponse(api.UrlMapsValidateResponse o) {
  buildCounterUrlMapsValidateResponse++;
  if (buildCounterUrlMapsValidateResponse < 3) {
    checkUrlMapValidationResult(o.result);
  }
  buildCounterUrlMapsValidateResponse--;
}

core.int buildCounterUsageExportLocation = 0;
buildUsageExportLocation() {
  var o = new api.UsageExportLocation();
  buildCounterUsageExportLocation++;
  if (buildCounterUsageExportLocation < 3) {
    o.bucketName = "foo";
    o.reportNamePrefix = "foo";
  }
  buildCounterUsageExportLocation--;
  return o;
}

checkUsageExportLocation(api.UsageExportLocation o) {
  buildCounterUsageExportLocation++;
  if (buildCounterUsageExportLocation < 3) {
    unittest.expect(o.bucketName, unittest.equals('foo'));
    unittest.expect(o.reportNamePrefix, unittest.equals('foo'));
  }
  buildCounterUsageExportLocation--;
}

core.int buildCounterZoneMaintenanceWindows = 0;
buildZoneMaintenanceWindows() {
  var o = new api.ZoneMaintenanceWindows();
  buildCounterZoneMaintenanceWindows++;
  if (buildCounterZoneMaintenanceWindows < 3) {
    o.beginTime = "foo";
    o.description = "foo";
    o.endTime = "foo";
    o.name = "foo";
  }
  buildCounterZoneMaintenanceWindows--;
  return o;
}

checkZoneMaintenanceWindows(api.ZoneMaintenanceWindows o) {
  buildCounterZoneMaintenanceWindows++;
  if (buildCounterZoneMaintenanceWindows < 3) {
    unittest.expect(o.beginTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterZoneMaintenanceWindows--;
}

buildUnnamed560() {
  var o = new core.List<api.ZoneMaintenanceWindows>();
  o.add(buildZoneMaintenanceWindows());
  o.add(buildZoneMaintenanceWindows());
  return o;
}

checkUnnamed560(core.List<api.ZoneMaintenanceWindows> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkZoneMaintenanceWindows(o[0]);
  checkZoneMaintenanceWindows(o[1]);
}

core.int buildCounterZone = 0;
buildZone() {
  var o = new api.Zone();
  buildCounterZone++;
  if (buildCounterZone < 3) {
    o.creationTimestamp = "foo";
    o.deprecated = buildDeprecationStatus();
    o.description = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.maintenanceWindows = buildUnnamed560();
    o.name = "foo";
    o.region = "foo";
    o.selfLink = "foo";
    o.status = "foo";
  }
  buildCounterZone--;
  return o;
}

checkZone(api.Zone o) {
  buildCounterZone++;
  if (buildCounterZone < 3) {
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    checkDeprecationStatus(o.deprecated);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed560(o.maintenanceWindows);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterZone--;
}

buildUnnamed561() {
  var o = new core.List<api.Zone>();
  o.add(buildZone());
  o.add(buildZone());
  return o;
}

checkUnnamed561(core.List<api.Zone> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkZone(o[0]);
  checkZone(o[1]);
}

core.int buildCounterZoneList = 0;
buildZoneList() {
  var o = new api.ZoneList();
  buildCounterZoneList++;
  if (buildCounterZoneList < 3) {
    o.id = "foo";
    o.items = buildUnnamed561();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterZoneList--;
  return o;
}

checkZoneList(api.ZoneList o) {
  buildCounterZoneList++;
  if (buildCounterZoneList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed561(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterZoneList--;
}


main() {
  unittest.group("obj-schema-AccessConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccessConfig();
      var od = new api.AccessConfig.fromJson(o.toJson());
      checkAccessConfig(od);
    });
  });


  unittest.group("obj-schema-Address", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddress();
      var od = new api.Address.fromJson(o.toJson());
      checkAddress(od);
    });
  });


  unittest.group("obj-schema-AddressAggregatedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddressAggregatedList();
      var od = new api.AddressAggregatedList.fromJson(o.toJson());
      checkAddressAggregatedList(od);
    });
  });


  unittest.group("obj-schema-AddressList", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddressList();
      var od = new api.AddressList.fromJson(o.toJson());
      checkAddressList(od);
    });
  });


  unittest.group("obj-schema-AddressesScopedListWarningData", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddressesScopedListWarningData();
      var od = new api.AddressesScopedListWarningData.fromJson(o.toJson());
      checkAddressesScopedListWarningData(od);
    });
  });


  unittest.group("obj-schema-AddressesScopedListWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddressesScopedListWarning();
      var od = new api.AddressesScopedListWarning.fromJson(o.toJson());
      checkAddressesScopedListWarning(od);
    });
  });


  unittest.group("obj-schema-AddressesScopedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddressesScopedList();
      var od = new api.AddressesScopedList.fromJson(o.toJson());
      checkAddressesScopedList(od);
    });
  });


  unittest.group("obj-schema-AttachedDisk", () {
    unittest.test("to-json--from-json", () {
      var o = buildAttachedDisk();
      var od = new api.AttachedDisk.fromJson(o.toJson());
      checkAttachedDisk(od);
    });
  });


  unittest.group("obj-schema-AttachedDiskInitializeParams", () {
    unittest.test("to-json--from-json", () {
      var o = buildAttachedDiskInitializeParams();
      var od = new api.AttachedDiskInitializeParams.fromJson(o.toJson());
      checkAttachedDiskInitializeParams(od);
    });
  });


  unittest.group("obj-schema-Backend", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackend();
      var od = new api.Backend.fromJson(o.toJson());
      checkBackend(od);
    });
  });


  unittest.group("obj-schema-BackendService", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackendService();
      var od = new api.BackendService.fromJson(o.toJson());
      checkBackendService(od);
    });
  });


  unittest.group("obj-schema-BackendServiceGroupHealth", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackendServiceGroupHealth();
      var od = new api.BackendServiceGroupHealth.fromJson(o.toJson());
      checkBackendServiceGroupHealth(od);
    });
  });


  unittest.group("obj-schema-BackendServiceList", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackendServiceList();
      var od = new api.BackendServiceList.fromJson(o.toJson());
      checkBackendServiceList(od);
    });
  });


  unittest.group("obj-schema-DeprecationStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeprecationStatus();
      var od = new api.DeprecationStatus.fromJson(o.toJson());
      checkDeprecationStatus(od);
    });
  });


  unittest.group("obj-schema-Disk", () {
    unittest.test("to-json--from-json", () {
      var o = buildDisk();
      var od = new api.Disk.fromJson(o.toJson());
      checkDisk(od);
    });
  });


  unittest.group("obj-schema-DiskAggregatedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiskAggregatedList();
      var od = new api.DiskAggregatedList.fromJson(o.toJson());
      checkDiskAggregatedList(od);
    });
  });


  unittest.group("obj-schema-DiskList", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiskList();
      var od = new api.DiskList.fromJson(o.toJson());
      checkDiskList(od);
    });
  });


  unittest.group("obj-schema-DiskType", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiskType();
      var od = new api.DiskType.fromJson(o.toJson());
      checkDiskType(od);
    });
  });


  unittest.group("obj-schema-DiskTypeAggregatedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiskTypeAggregatedList();
      var od = new api.DiskTypeAggregatedList.fromJson(o.toJson());
      checkDiskTypeAggregatedList(od);
    });
  });


  unittest.group("obj-schema-DiskTypeList", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiskTypeList();
      var od = new api.DiskTypeList.fromJson(o.toJson());
      checkDiskTypeList(od);
    });
  });


  unittest.group("obj-schema-DiskTypesScopedListWarningData", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiskTypesScopedListWarningData();
      var od = new api.DiskTypesScopedListWarningData.fromJson(o.toJson());
      checkDiskTypesScopedListWarningData(od);
    });
  });


  unittest.group("obj-schema-DiskTypesScopedListWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiskTypesScopedListWarning();
      var od = new api.DiskTypesScopedListWarning.fromJson(o.toJson());
      checkDiskTypesScopedListWarning(od);
    });
  });


  unittest.group("obj-schema-DiskTypesScopedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiskTypesScopedList();
      var od = new api.DiskTypesScopedList.fromJson(o.toJson());
      checkDiskTypesScopedList(od);
    });
  });


  unittest.group("obj-schema-DisksScopedListWarningData", () {
    unittest.test("to-json--from-json", () {
      var o = buildDisksScopedListWarningData();
      var od = new api.DisksScopedListWarningData.fromJson(o.toJson());
      checkDisksScopedListWarningData(od);
    });
  });


  unittest.group("obj-schema-DisksScopedListWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildDisksScopedListWarning();
      var od = new api.DisksScopedListWarning.fromJson(o.toJson());
      checkDisksScopedListWarning(od);
    });
  });


  unittest.group("obj-schema-DisksScopedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildDisksScopedList();
      var od = new api.DisksScopedList.fromJson(o.toJson());
      checkDisksScopedList(od);
    });
  });


  unittest.group("obj-schema-FirewallAllowed", () {
    unittest.test("to-json--from-json", () {
      var o = buildFirewallAllowed();
      var od = new api.FirewallAllowed.fromJson(o.toJson());
      checkFirewallAllowed(od);
    });
  });


  unittest.group("obj-schema-Firewall", () {
    unittest.test("to-json--from-json", () {
      var o = buildFirewall();
      var od = new api.Firewall.fromJson(o.toJson());
      checkFirewall(od);
    });
  });


  unittest.group("obj-schema-FirewallList", () {
    unittest.test("to-json--from-json", () {
      var o = buildFirewallList();
      var od = new api.FirewallList.fromJson(o.toJson());
      checkFirewallList(od);
    });
  });


  unittest.group("obj-schema-ForwardingRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildForwardingRule();
      var od = new api.ForwardingRule.fromJson(o.toJson());
      checkForwardingRule(od);
    });
  });


  unittest.group("obj-schema-ForwardingRuleAggregatedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildForwardingRuleAggregatedList();
      var od = new api.ForwardingRuleAggregatedList.fromJson(o.toJson());
      checkForwardingRuleAggregatedList(od);
    });
  });


  unittest.group("obj-schema-ForwardingRuleList", () {
    unittest.test("to-json--from-json", () {
      var o = buildForwardingRuleList();
      var od = new api.ForwardingRuleList.fromJson(o.toJson());
      checkForwardingRuleList(od);
    });
  });


  unittest.group("obj-schema-ForwardingRulesScopedListWarningData", () {
    unittest.test("to-json--from-json", () {
      var o = buildForwardingRulesScopedListWarningData();
      var od = new api.ForwardingRulesScopedListWarningData.fromJson(o.toJson());
      checkForwardingRulesScopedListWarningData(od);
    });
  });


  unittest.group("obj-schema-ForwardingRulesScopedListWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildForwardingRulesScopedListWarning();
      var od = new api.ForwardingRulesScopedListWarning.fromJson(o.toJson());
      checkForwardingRulesScopedListWarning(od);
    });
  });


  unittest.group("obj-schema-ForwardingRulesScopedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildForwardingRulesScopedList();
      var od = new api.ForwardingRulesScopedList.fromJson(o.toJson());
      checkForwardingRulesScopedList(od);
    });
  });


  unittest.group("obj-schema-HealthCheckReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildHealthCheckReference();
      var od = new api.HealthCheckReference.fromJson(o.toJson());
      checkHealthCheckReference(od);
    });
  });


  unittest.group("obj-schema-HealthStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildHealthStatus();
      var od = new api.HealthStatus.fromJson(o.toJson());
      checkHealthStatus(od);
    });
  });


  unittest.group("obj-schema-HostRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildHostRule();
      var od = new api.HostRule.fromJson(o.toJson());
      checkHostRule(od);
    });
  });


  unittest.group("obj-schema-HttpHealthCheck", () {
    unittest.test("to-json--from-json", () {
      var o = buildHttpHealthCheck();
      var od = new api.HttpHealthCheck.fromJson(o.toJson());
      checkHttpHealthCheck(od);
    });
  });


  unittest.group("obj-schema-HttpHealthCheckList", () {
    unittest.test("to-json--from-json", () {
      var o = buildHttpHealthCheckList();
      var od = new api.HttpHealthCheckList.fromJson(o.toJson());
      checkHttpHealthCheckList(od);
    });
  });


  unittest.group("obj-schema-ImageRawDisk", () {
    unittest.test("to-json--from-json", () {
      var o = buildImageRawDisk();
      var od = new api.ImageRawDisk.fromJson(o.toJson());
      checkImageRawDisk(od);
    });
  });


  unittest.group("obj-schema-Image", () {
    unittest.test("to-json--from-json", () {
      var o = buildImage();
      var od = new api.Image.fromJson(o.toJson());
      checkImage(od);
    });
  });


  unittest.group("obj-schema-ImageList", () {
    unittest.test("to-json--from-json", () {
      var o = buildImageList();
      var od = new api.ImageList.fromJson(o.toJson());
      checkImageList(od);
    });
  });


  unittest.group("obj-schema-Instance", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstance();
      var od = new api.Instance.fromJson(o.toJson());
      checkInstance(od);
    });
  });


  unittest.group("obj-schema-InstanceAggregatedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceAggregatedList();
      var od = new api.InstanceAggregatedList.fromJson(o.toJson());
      checkInstanceAggregatedList(od);
    });
  });


  unittest.group("obj-schema-InstanceList", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceList();
      var od = new api.InstanceList.fromJson(o.toJson());
      checkInstanceList(od);
    });
  });


  unittest.group("obj-schema-InstanceProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceProperties();
      var od = new api.InstanceProperties.fromJson(o.toJson());
      checkInstanceProperties(od);
    });
  });


  unittest.group("obj-schema-InstanceReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceReference();
      var od = new api.InstanceReference.fromJson(o.toJson());
      checkInstanceReference(od);
    });
  });


  unittest.group("obj-schema-InstanceTemplate", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceTemplate();
      var od = new api.InstanceTemplate.fromJson(o.toJson());
      checkInstanceTemplate(od);
    });
  });


  unittest.group("obj-schema-InstanceTemplateList", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceTemplateList();
      var od = new api.InstanceTemplateList.fromJson(o.toJson());
      checkInstanceTemplateList(od);
    });
  });


  unittest.group("obj-schema-InstancesScopedListWarningData", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstancesScopedListWarningData();
      var od = new api.InstancesScopedListWarningData.fromJson(o.toJson());
      checkInstancesScopedListWarningData(od);
    });
  });


  unittest.group("obj-schema-InstancesScopedListWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstancesScopedListWarning();
      var od = new api.InstancesScopedListWarning.fromJson(o.toJson());
      checkInstancesScopedListWarning(od);
    });
  });


  unittest.group("obj-schema-InstancesScopedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstancesScopedList();
      var od = new api.InstancesScopedList.fromJson(o.toJson());
      checkInstancesScopedList(od);
    });
  });


  unittest.group("obj-schema-License", () {
    unittest.test("to-json--from-json", () {
      var o = buildLicense();
      var od = new api.License.fromJson(o.toJson());
      checkLicense(od);
    });
  });


  unittest.group("obj-schema-MachineTypeScratchDisks", () {
    unittest.test("to-json--from-json", () {
      var o = buildMachineTypeScratchDisks();
      var od = new api.MachineTypeScratchDisks.fromJson(o.toJson());
      checkMachineTypeScratchDisks(od);
    });
  });


  unittest.group("obj-schema-MachineType", () {
    unittest.test("to-json--from-json", () {
      var o = buildMachineType();
      var od = new api.MachineType.fromJson(o.toJson());
      checkMachineType(od);
    });
  });


  unittest.group("obj-schema-MachineTypeAggregatedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildMachineTypeAggregatedList();
      var od = new api.MachineTypeAggregatedList.fromJson(o.toJson());
      checkMachineTypeAggregatedList(od);
    });
  });


  unittest.group("obj-schema-MachineTypeList", () {
    unittest.test("to-json--from-json", () {
      var o = buildMachineTypeList();
      var od = new api.MachineTypeList.fromJson(o.toJson());
      checkMachineTypeList(od);
    });
  });


  unittest.group("obj-schema-MachineTypesScopedListWarningData", () {
    unittest.test("to-json--from-json", () {
      var o = buildMachineTypesScopedListWarningData();
      var od = new api.MachineTypesScopedListWarningData.fromJson(o.toJson());
      checkMachineTypesScopedListWarningData(od);
    });
  });


  unittest.group("obj-schema-MachineTypesScopedListWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildMachineTypesScopedListWarning();
      var od = new api.MachineTypesScopedListWarning.fromJson(o.toJson());
      checkMachineTypesScopedListWarning(od);
    });
  });


  unittest.group("obj-schema-MachineTypesScopedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildMachineTypesScopedList();
      var od = new api.MachineTypesScopedList.fromJson(o.toJson());
      checkMachineTypesScopedList(od);
    });
  });


  unittest.group("obj-schema-MetadataItems", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetadataItems();
      var od = new api.MetadataItems.fromJson(o.toJson());
      checkMetadataItems(od);
    });
  });


  unittest.group("obj-schema-Metadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetadata();
      var od = new api.Metadata.fromJson(o.toJson());
      checkMetadata(od);
    });
  });


  unittest.group("obj-schema-Network", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetwork();
      var od = new api.Network.fromJson(o.toJson());
      checkNetwork(od);
    });
  });


  unittest.group("obj-schema-NetworkInterface", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetworkInterface();
      var od = new api.NetworkInterface.fromJson(o.toJson());
      checkNetworkInterface(od);
    });
  });


  unittest.group("obj-schema-NetworkList", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetworkList();
      var od = new api.NetworkList.fromJson(o.toJson());
      checkNetworkList(od);
    });
  });


  unittest.group("obj-schema-OperationErrorErrors", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationErrorErrors();
      var od = new api.OperationErrorErrors.fromJson(o.toJson());
      checkOperationErrorErrors(od);
    });
  });


  unittest.group("obj-schema-OperationError", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationError();
      var od = new api.OperationError.fromJson(o.toJson());
      checkOperationError(od);
    });
  });


  unittest.group("obj-schema-OperationWarningsData", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationWarningsData();
      var od = new api.OperationWarningsData.fromJson(o.toJson());
      checkOperationWarningsData(od);
    });
  });


  unittest.group("obj-schema-OperationWarnings", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationWarnings();
      var od = new api.OperationWarnings.fromJson(o.toJson());
      checkOperationWarnings(od);
    });
  });


  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });


  unittest.group("obj-schema-OperationAggregatedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationAggregatedList();
      var od = new api.OperationAggregatedList.fromJson(o.toJson());
      checkOperationAggregatedList(od);
    });
  });


  unittest.group("obj-schema-OperationList", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationList();
      var od = new api.OperationList.fromJson(o.toJson());
      checkOperationList(od);
    });
  });


  unittest.group("obj-schema-OperationsScopedListWarningData", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationsScopedListWarningData();
      var od = new api.OperationsScopedListWarningData.fromJson(o.toJson());
      checkOperationsScopedListWarningData(od);
    });
  });


  unittest.group("obj-schema-OperationsScopedListWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationsScopedListWarning();
      var od = new api.OperationsScopedListWarning.fromJson(o.toJson());
      checkOperationsScopedListWarning(od);
    });
  });


  unittest.group("obj-schema-OperationsScopedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationsScopedList();
      var od = new api.OperationsScopedList.fromJson(o.toJson());
      checkOperationsScopedList(od);
    });
  });


  unittest.group("obj-schema-PathMatcher", () {
    unittest.test("to-json--from-json", () {
      var o = buildPathMatcher();
      var od = new api.PathMatcher.fromJson(o.toJson());
      checkPathMatcher(od);
    });
  });


  unittest.group("obj-schema-PathRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildPathRule();
      var od = new api.PathRule.fromJson(o.toJson());
      checkPathRule(od);
    });
  });


  unittest.group("obj-schema-Project", () {
    unittest.test("to-json--from-json", () {
      var o = buildProject();
      var od = new api.Project.fromJson(o.toJson());
      checkProject(od);
    });
  });


  unittest.group("obj-schema-Quota", () {
    unittest.test("to-json--from-json", () {
      var o = buildQuota();
      var od = new api.Quota.fromJson(o.toJson());
      checkQuota(od);
    });
  });


  unittest.group("obj-schema-Region", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegion();
      var od = new api.Region.fromJson(o.toJson());
      checkRegion(od);
    });
  });


  unittest.group("obj-schema-RegionList", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionList();
      var od = new api.RegionList.fromJson(o.toJson());
      checkRegionList(od);
    });
  });


  unittest.group("obj-schema-ResourceGroupReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceGroupReference();
      var od = new api.ResourceGroupReference.fromJson(o.toJson());
      checkResourceGroupReference(od);
    });
  });


  unittest.group("obj-schema-RouteWarningsData", () {
    unittest.test("to-json--from-json", () {
      var o = buildRouteWarningsData();
      var od = new api.RouteWarningsData.fromJson(o.toJson());
      checkRouteWarningsData(od);
    });
  });


  unittest.group("obj-schema-RouteWarnings", () {
    unittest.test("to-json--from-json", () {
      var o = buildRouteWarnings();
      var od = new api.RouteWarnings.fromJson(o.toJson());
      checkRouteWarnings(od);
    });
  });


  unittest.group("obj-schema-Route", () {
    unittest.test("to-json--from-json", () {
      var o = buildRoute();
      var od = new api.Route.fromJson(o.toJson());
      checkRoute(od);
    });
  });


  unittest.group("obj-schema-RouteList", () {
    unittest.test("to-json--from-json", () {
      var o = buildRouteList();
      var od = new api.RouteList.fromJson(o.toJson());
      checkRouteList(od);
    });
  });


  unittest.group("obj-schema-Scheduling", () {
    unittest.test("to-json--from-json", () {
      var o = buildScheduling();
      var od = new api.Scheduling.fromJson(o.toJson());
      checkScheduling(od);
    });
  });


  unittest.group("obj-schema-SerialPortOutput", () {
    unittest.test("to-json--from-json", () {
      var o = buildSerialPortOutput();
      var od = new api.SerialPortOutput.fromJson(o.toJson());
      checkSerialPortOutput(od);
    });
  });


  unittest.group("obj-schema-ServiceAccount", () {
    unittest.test("to-json--from-json", () {
      var o = buildServiceAccount();
      var od = new api.ServiceAccount.fromJson(o.toJson());
      checkServiceAccount(od);
    });
  });


  unittest.group("obj-schema-Snapshot", () {
    unittest.test("to-json--from-json", () {
      var o = buildSnapshot();
      var od = new api.Snapshot.fromJson(o.toJson());
      checkSnapshot(od);
    });
  });


  unittest.group("obj-schema-SnapshotList", () {
    unittest.test("to-json--from-json", () {
      var o = buildSnapshotList();
      var od = new api.SnapshotList.fromJson(o.toJson());
      checkSnapshotList(od);
    });
  });


  unittest.group("obj-schema-Tags", () {
    unittest.test("to-json--from-json", () {
      var o = buildTags();
      var od = new api.Tags.fromJson(o.toJson());
      checkTags(od);
    });
  });


  unittest.group("obj-schema-TargetHttpProxy", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetHttpProxy();
      var od = new api.TargetHttpProxy.fromJson(o.toJson());
      checkTargetHttpProxy(od);
    });
  });


  unittest.group("obj-schema-TargetHttpProxyList", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetHttpProxyList();
      var od = new api.TargetHttpProxyList.fromJson(o.toJson());
      checkTargetHttpProxyList(od);
    });
  });


  unittest.group("obj-schema-TargetInstance", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetInstance();
      var od = new api.TargetInstance.fromJson(o.toJson());
      checkTargetInstance(od);
    });
  });


  unittest.group("obj-schema-TargetInstanceAggregatedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetInstanceAggregatedList();
      var od = new api.TargetInstanceAggregatedList.fromJson(o.toJson());
      checkTargetInstanceAggregatedList(od);
    });
  });


  unittest.group("obj-schema-TargetInstanceList", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetInstanceList();
      var od = new api.TargetInstanceList.fromJson(o.toJson());
      checkTargetInstanceList(od);
    });
  });


  unittest.group("obj-schema-TargetInstancesScopedListWarningData", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetInstancesScopedListWarningData();
      var od = new api.TargetInstancesScopedListWarningData.fromJson(o.toJson());
      checkTargetInstancesScopedListWarningData(od);
    });
  });


  unittest.group("obj-schema-TargetInstancesScopedListWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetInstancesScopedListWarning();
      var od = new api.TargetInstancesScopedListWarning.fromJson(o.toJson());
      checkTargetInstancesScopedListWarning(od);
    });
  });


  unittest.group("obj-schema-TargetInstancesScopedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetInstancesScopedList();
      var od = new api.TargetInstancesScopedList.fromJson(o.toJson());
      checkTargetInstancesScopedList(od);
    });
  });


  unittest.group("obj-schema-TargetPool", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetPool();
      var od = new api.TargetPool.fromJson(o.toJson());
      checkTargetPool(od);
    });
  });


  unittest.group("obj-schema-TargetPoolAggregatedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetPoolAggregatedList();
      var od = new api.TargetPoolAggregatedList.fromJson(o.toJson());
      checkTargetPoolAggregatedList(od);
    });
  });


  unittest.group("obj-schema-TargetPoolInstanceHealth", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetPoolInstanceHealth();
      var od = new api.TargetPoolInstanceHealth.fromJson(o.toJson());
      checkTargetPoolInstanceHealth(od);
    });
  });


  unittest.group("obj-schema-TargetPoolList", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetPoolList();
      var od = new api.TargetPoolList.fromJson(o.toJson());
      checkTargetPoolList(od);
    });
  });


  unittest.group("obj-schema-TargetPoolsAddHealthCheckRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetPoolsAddHealthCheckRequest();
      var od = new api.TargetPoolsAddHealthCheckRequest.fromJson(o.toJson());
      checkTargetPoolsAddHealthCheckRequest(od);
    });
  });


  unittest.group("obj-schema-TargetPoolsAddInstanceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetPoolsAddInstanceRequest();
      var od = new api.TargetPoolsAddInstanceRequest.fromJson(o.toJson());
      checkTargetPoolsAddInstanceRequest(od);
    });
  });


  unittest.group("obj-schema-TargetPoolsRemoveHealthCheckRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetPoolsRemoveHealthCheckRequest();
      var od = new api.TargetPoolsRemoveHealthCheckRequest.fromJson(o.toJson());
      checkTargetPoolsRemoveHealthCheckRequest(od);
    });
  });


  unittest.group("obj-schema-TargetPoolsRemoveInstanceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetPoolsRemoveInstanceRequest();
      var od = new api.TargetPoolsRemoveInstanceRequest.fromJson(o.toJson());
      checkTargetPoolsRemoveInstanceRequest(od);
    });
  });


  unittest.group("obj-schema-TargetPoolsScopedListWarningData", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetPoolsScopedListWarningData();
      var od = new api.TargetPoolsScopedListWarningData.fromJson(o.toJson());
      checkTargetPoolsScopedListWarningData(od);
    });
  });


  unittest.group("obj-schema-TargetPoolsScopedListWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetPoolsScopedListWarning();
      var od = new api.TargetPoolsScopedListWarning.fromJson(o.toJson());
      checkTargetPoolsScopedListWarning(od);
    });
  });


  unittest.group("obj-schema-TargetPoolsScopedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetPoolsScopedList();
      var od = new api.TargetPoolsScopedList.fromJson(o.toJson());
      checkTargetPoolsScopedList(od);
    });
  });


  unittest.group("obj-schema-TargetReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetReference();
      var od = new api.TargetReference.fromJson(o.toJson());
      checkTargetReference(od);
    });
  });


  unittest.group("obj-schema-TestFailure", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestFailure();
      var od = new api.TestFailure.fromJson(o.toJson());
      checkTestFailure(od);
    });
  });


  unittest.group("obj-schema-UrlMap", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrlMap();
      var od = new api.UrlMap.fromJson(o.toJson());
      checkUrlMap(od);
    });
  });


  unittest.group("obj-schema-UrlMapList", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrlMapList();
      var od = new api.UrlMapList.fromJson(o.toJson());
      checkUrlMapList(od);
    });
  });


  unittest.group("obj-schema-UrlMapReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrlMapReference();
      var od = new api.UrlMapReference.fromJson(o.toJson());
      checkUrlMapReference(od);
    });
  });


  unittest.group("obj-schema-UrlMapTest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrlMapTest();
      var od = new api.UrlMapTest.fromJson(o.toJson());
      checkUrlMapTest(od);
    });
  });


  unittest.group("obj-schema-UrlMapValidationResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrlMapValidationResult();
      var od = new api.UrlMapValidationResult.fromJson(o.toJson());
      checkUrlMapValidationResult(od);
    });
  });


  unittest.group("obj-schema-UrlMapsValidateRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrlMapsValidateRequest();
      var od = new api.UrlMapsValidateRequest.fromJson(o.toJson());
      checkUrlMapsValidateRequest(od);
    });
  });


  unittest.group("obj-schema-UrlMapsValidateResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrlMapsValidateResponse();
      var od = new api.UrlMapsValidateResponse.fromJson(o.toJson());
      checkUrlMapsValidateResponse(od);
    });
  });


  unittest.group("obj-schema-UsageExportLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildUsageExportLocation();
      var od = new api.UsageExportLocation.fromJson(o.toJson());
      checkUsageExportLocation(od);
    });
  });


  unittest.group("obj-schema-ZoneMaintenanceWindows", () {
    unittest.test("to-json--from-json", () {
      var o = buildZoneMaintenanceWindows();
      var od = new api.ZoneMaintenanceWindows.fromJson(o.toJson());
      checkZoneMaintenanceWindows(od);
    });
  });


  unittest.group("obj-schema-Zone", () {
    unittest.test("to-json--from-json", () {
      var o = buildZone();
      var od = new api.Zone.fromJson(o.toJson());
      checkZone(od);
    });
  });


  unittest.group("obj-schema-ZoneList", () {
    unittest.test("to-json--from-json", () {
      var o = buildZoneList();
      var od = new api.ZoneList.fromJson(o.toJson());
      checkZoneList(od);
    });
  });


  unittest.group("resource-AddressesResourceApi", () {
    unittest.test("method--aggregatedList", () {

      var mock = new common_test.HttpServerMock();
      api.AddressesResourceApi res = new api.ComputeApi(mock).addresses;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAddressAggregatedList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.aggregatedList(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.AddressAggregatedList response) {
        checkAddressAggregatedList(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.AddressesResourceApi res = new api.ComputeApi(mock).addresses;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_address = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_region, arg_address).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.AddressesResourceApi res = new api.ComputeApi(mock).addresses;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_address = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAddress());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_region, arg_address).then(unittest.expectAsync(((api.Address response) {
        checkAddress(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.AddressesResourceApi res = new api.ComputeApi(mock).addresses;
      var arg_request = buildAddress();
      var arg_project = "foo";
      var arg_region = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Address.fromJson(json);
        checkAddress(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_project, arg_region).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.AddressesResourceApi res = new api.ComputeApi(mock).addresses;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAddressList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, arg_region, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.AddressList response) {
        checkAddressList(response);
      })));
    });

  });


  unittest.group("resource-BackendServicesResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.BackendServicesResourceApi res = new api.ComputeApi(mock).backendServices;
      var arg_project = "foo";
      var arg_backendService = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_backendService).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.BackendServicesResourceApi res = new api.ComputeApi(mock).backendServices;
      var arg_project = "foo";
      var arg_backendService = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBackendService());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_backendService).then(unittest.expectAsync(((api.BackendService response) {
        checkBackendService(response);
      })));
    });

    unittest.test("method--getHealth", () {

      var mock = new common_test.HttpServerMock();
      api.BackendServicesResourceApi res = new api.ComputeApi(mock).backendServices;
      var arg_request = buildResourceGroupReference();
      var arg_project = "foo";
      var arg_backendService = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ResourceGroupReference.fromJson(json);
        checkResourceGroupReference(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBackendServiceGroupHealth());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.getHealth(arg_request, arg_project, arg_backendService).then(unittest.expectAsync(((api.BackendServiceGroupHealth response) {
        checkBackendServiceGroupHealth(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.BackendServicesResourceApi res = new api.ComputeApi(mock).backendServices;
      var arg_request = buildBackendService();
      var arg_project = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.BackendService.fromJson(json);
        checkBackendService(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_project).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.BackendServicesResourceApi res = new api.ComputeApi(mock).backendServices;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBackendServiceList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.BackendServiceList response) {
        checkBackendServiceList(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.BackendServicesResourceApi res = new api.ComputeApi(mock).backendServices;
      var arg_request = buildBackendService();
      var arg_project = "foo";
      var arg_backendService = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.BackendService.fromJson(json);
        checkBackendService(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_project, arg_backendService).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.BackendServicesResourceApi res = new api.ComputeApi(mock).backendServices;
      var arg_request = buildBackendService();
      var arg_project = "foo";
      var arg_backendService = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.BackendService.fromJson(json);
        checkBackendService(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_project, arg_backendService).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

  });


  unittest.group("resource-DiskTypesResourceApi", () {
    unittest.test("method--aggregatedList", () {

      var mock = new common_test.HttpServerMock();
      api.DiskTypesResourceApi res = new api.ComputeApi(mock).diskTypes;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDiskTypeAggregatedList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.aggregatedList(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.DiskTypeAggregatedList response) {
        checkDiskTypeAggregatedList(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.DiskTypesResourceApi res = new api.ComputeApi(mock).diskTypes;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_diskType = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDiskType());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_zone, arg_diskType).then(unittest.expectAsync(((api.DiskType response) {
        checkDiskType(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.DiskTypesResourceApi res = new api.ComputeApi(mock).diskTypes;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDiskTypeList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, arg_zone, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.DiskTypeList response) {
        checkDiskTypeList(response);
      })));
    });

  });


  unittest.group("resource-DisksResourceApi", () {
    unittest.test("method--aggregatedList", () {

      var mock = new common_test.HttpServerMock();
      api.DisksResourceApi res = new api.ComputeApi(mock).disks;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDiskAggregatedList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.aggregatedList(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.DiskAggregatedList response) {
        checkDiskAggregatedList(response);
      })));
    });

    unittest.test("method--createSnapshot", () {

      var mock = new common_test.HttpServerMock();
      api.DisksResourceApi res = new api.ComputeApi(mock).disks;
      var arg_request = buildSnapshot();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_disk = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Snapshot.fromJson(json);
        checkSnapshot(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.createSnapshot(arg_request, arg_project, arg_zone, arg_disk).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.DisksResourceApi res = new api.ComputeApi(mock).disks;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_disk = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_zone, arg_disk).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.DisksResourceApi res = new api.ComputeApi(mock).disks;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_disk = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDisk());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_zone, arg_disk).then(unittest.expectAsync(((api.Disk response) {
        checkDisk(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.DisksResourceApi res = new api.ComputeApi(mock).disks;
      var arg_request = buildDisk();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_sourceImage = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Disk.fromJson(json);
        checkDisk(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["sourceImage"].first, unittest.equals(arg_sourceImage));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_project, arg_zone, sourceImage: arg_sourceImage).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.DisksResourceApi res = new api.ComputeApi(mock).disks;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDiskList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, arg_zone, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.DiskList response) {
        checkDiskList(response);
      })));
    });

  });


  unittest.group("resource-FirewallsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.FirewallsResourceApi res = new api.ComputeApi(mock).firewalls;
      var arg_project = "foo";
      var arg_firewall = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_firewall).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.FirewallsResourceApi res = new api.ComputeApi(mock).firewalls;
      var arg_project = "foo";
      var arg_firewall = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildFirewall());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_firewall).then(unittest.expectAsync(((api.Firewall response) {
        checkFirewall(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.FirewallsResourceApi res = new api.ComputeApi(mock).firewalls;
      var arg_request = buildFirewall();
      var arg_project = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Firewall.fromJson(json);
        checkFirewall(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_project).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.FirewallsResourceApi res = new api.ComputeApi(mock).firewalls;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildFirewallList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.FirewallList response) {
        checkFirewallList(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.FirewallsResourceApi res = new api.ComputeApi(mock).firewalls;
      var arg_request = buildFirewall();
      var arg_project = "foo";
      var arg_firewall = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Firewall.fromJson(json);
        checkFirewall(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_project, arg_firewall).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.FirewallsResourceApi res = new api.ComputeApi(mock).firewalls;
      var arg_request = buildFirewall();
      var arg_project = "foo";
      var arg_firewall = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Firewall.fromJson(json);
        checkFirewall(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_project, arg_firewall).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

  });


  unittest.group("resource-ForwardingRulesResourceApi", () {
    unittest.test("method--aggregatedList", () {

      var mock = new common_test.HttpServerMock();
      api.ForwardingRulesResourceApi res = new api.ComputeApi(mock).forwardingRules;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildForwardingRuleAggregatedList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.aggregatedList(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ForwardingRuleAggregatedList response) {
        checkForwardingRuleAggregatedList(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.ForwardingRulesResourceApi res = new api.ComputeApi(mock).forwardingRules;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_forwardingRule = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_region, arg_forwardingRule).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.ForwardingRulesResourceApi res = new api.ComputeApi(mock).forwardingRules;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_forwardingRule = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildForwardingRule());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_region, arg_forwardingRule).then(unittest.expectAsync(((api.ForwardingRule response) {
        checkForwardingRule(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.ForwardingRulesResourceApi res = new api.ComputeApi(mock).forwardingRules;
      var arg_request = buildForwardingRule();
      var arg_project = "foo";
      var arg_region = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ForwardingRule.fromJson(json);
        checkForwardingRule(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_project, arg_region).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.ForwardingRulesResourceApi res = new api.ComputeApi(mock).forwardingRules;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildForwardingRuleList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, arg_region, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ForwardingRuleList response) {
        checkForwardingRuleList(response);
      })));
    });

    unittest.test("method--setTarget", () {

      var mock = new common_test.HttpServerMock();
      api.ForwardingRulesResourceApi res = new api.ComputeApi(mock).forwardingRules;
      var arg_request = buildTargetReference();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_forwardingRule = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.TargetReference.fromJson(json);
        checkTargetReference(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.setTarget(arg_request, arg_project, arg_region, arg_forwardingRule).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

  });


  unittest.group("resource-GlobalAddressesResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.GlobalAddressesResourceApi res = new api.ComputeApi(mock).globalAddresses;
      var arg_project = "foo";
      var arg_address = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_address).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.GlobalAddressesResourceApi res = new api.ComputeApi(mock).globalAddresses;
      var arg_project = "foo";
      var arg_address = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAddress());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_address).then(unittest.expectAsync(((api.Address response) {
        checkAddress(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.GlobalAddressesResourceApi res = new api.ComputeApi(mock).globalAddresses;
      var arg_request = buildAddress();
      var arg_project = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Address.fromJson(json);
        checkAddress(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_project).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.GlobalAddressesResourceApi res = new api.ComputeApi(mock).globalAddresses;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAddressList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.AddressList response) {
        checkAddressList(response);
      })));
    });

  });


  unittest.group("resource-GlobalForwardingRulesResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.GlobalForwardingRulesResourceApi res = new api.ComputeApi(mock).globalForwardingRules;
      var arg_project = "foo";
      var arg_forwardingRule = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_forwardingRule).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.GlobalForwardingRulesResourceApi res = new api.ComputeApi(mock).globalForwardingRules;
      var arg_project = "foo";
      var arg_forwardingRule = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildForwardingRule());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_forwardingRule).then(unittest.expectAsync(((api.ForwardingRule response) {
        checkForwardingRule(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.GlobalForwardingRulesResourceApi res = new api.ComputeApi(mock).globalForwardingRules;
      var arg_request = buildForwardingRule();
      var arg_project = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ForwardingRule.fromJson(json);
        checkForwardingRule(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_project).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.GlobalForwardingRulesResourceApi res = new api.ComputeApi(mock).globalForwardingRules;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildForwardingRuleList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ForwardingRuleList response) {
        checkForwardingRuleList(response);
      })));
    });

    unittest.test("method--setTarget", () {

      var mock = new common_test.HttpServerMock();
      api.GlobalForwardingRulesResourceApi res = new api.ComputeApi(mock).globalForwardingRules;
      var arg_request = buildTargetReference();
      var arg_project = "foo";
      var arg_forwardingRule = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.TargetReference.fromJson(json);
        checkTargetReference(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.setTarget(arg_request, arg_project, arg_forwardingRule).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

  });


  unittest.group("resource-GlobalOperationsResourceApi", () {
    unittest.test("method--aggregatedList", () {

      var mock = new common_test.HttpServerMock();
      api.GlobalOperationsResourceApi res = new api.ComputeApi(mock).globalOperations;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperationAggregatedList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.aggregatedList(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.OperationAggregatedList response) {
        checkOperationAggregatedList(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.GlobalOperationsResourceApi res = new api.ComputeApi(mock).globalOperations;
      var arg_project = "foo";
      var arg_operation = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_operation).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.GlobalOperationsResourceApi res = new api.ComputeApi(mock).globalOperations;
      var arg_project = "foo";
      var arg_operation = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_operation).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.GlobalOperationsResourceApi res = new api.ComputeApi(mock).globalOperations;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperationList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.OperationList response) {
        checkOperationList(response);
      })));
    });

  });


  unittest.group("resource-HttpHealthChecksResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.HttpHealthChecksResourceApi res = new api.ComputeApi(mock).httpHealthChecks;
      var arg_project = "foo";
      var arg_httpHealthCheck = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_httpHealthCheck).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.HttpHealthChecksResourceApi res = new api.ComputeApi(mock).httpHealthChecks;
      var arg_project = "foo";
      var arg_httpHealthCheck = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildHttpHealthCheck());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_httpHealthCheck).then(unittest.expectAsync(((api.HttpHealthCheck response) {
        checkHttpHealthCheck(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.HttpHealthChecksResourceApi res = new api.ComputeApi(mock).httpHealthChecks;
      var arg_request = buildHttpHealthCheck();
      var arg_project = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.HttpHealthCheck.fromJson(json);
        checkHttpHealthCheck(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_project).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.HttpHealthChecksResourceApi res = new api.ComputeApi(mock).httpHealthChecks;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildHttpHealthCheckList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.HttpHealthCheckList response) {
        checkHttpHealthCheckList(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.HttpHealthChecksResourceApi res = new api.ComputeApi(mock).httpHealthChecks;
      var arg_request = buildHttpHealthCheck();
      var arg_project = "foo";
      var arg_httpHealthCheck = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.HttpHealthCheck.fromJson(json);
        checkHttpHealthCheck(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_project, arg_httpHealthCheck).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.HttpHealthChecksResourceApi res = new api.ComputeApi(mock).httpHealthChecks;
      var arg_request = buildHttpHealthCheck();
      var arg_project = "foo";
      var arg_httpHealthCheck = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.HttpHealthCheck.fromJson(json);
        checkHttpHealthCheck(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_project, arg_httpHealthCheck).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

  });


  unittest.group("resource-ImagesResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.ImagesResourceApi res = new api.ComputeApi(mock).images;
      var arg_project = "foo";
      var arg_image = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_image).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--deprecate", () {

      var mock = new common_test.HttpServerMock();
      api.ImagesResourceApi res = new api.ComputeApi(mock).images;
      var arg_request = buildDeprecationStatus();
      var arg_project = "foo";
      var arg_image = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.DeprecationStatus.fromJson(json);
        checkDeprecationStatus(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.deprecate(arg_request, arg_project, arg_image).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.ImagesResourceApi res = new api.ComputeApi(mock).images;
      var arg_project = "foo";
      var arg_image = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildImage());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_image).then(unittest.expectAsync(((api.Image response) {
        checkImage(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.ImagesResourceApi res = new api.ComputeApi(mock).images;
      var arg_request = buildImage();
      var arg_project = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Image.fromJson(json);
        checkImage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_project).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.ImagesResourceApi res = new api.ComputeApi(mock).images;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildImageList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ImageList response) {
        checkImageList(response);
      })));
    });

  });


  unittest.group("resource-InstanceTemplatesResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.InstanceTemplatesResourceApi res = new api.ComputeApi(mock).instanceTemplates;
      var arg_project = "foo";
      var arg_instanceTemplate = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_instanceTemplate).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.InstanceTemplatesResourceApi res = new api.ComputeApi(mock).instanceTemplates;
      var arg_project = "foo";
      var arg_instanceTemplate = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInstanceTemplate());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_instanceTemplate).then(unittest.expectAsync(((api.InstanceTemplate response) {
        checkInstanceTemplate(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.InstanceTemplatesResourceApi res = new api.ComputeApi(mock).instanceTemplates;
      var arg_request = buildInstanceTemplate();
      var arg_project = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.InstanceTemplate.fromJson(json);
        checkInstanceTemplate(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_project).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.InstanceTemplatesResourceApi res = new api.ComputeApi(mock).instanceTemplates;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInstanceTemplateList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.InstanceTemplateList response) {
        checkInstanceTemplateList(response);
      })));
    });

  });


  unittest.group("resource-InstancesResourceApi", () {
    unittest.test("method--addAccessConfig", () {

      var mock = new common_test.HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_request = buildAccessConfig();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      var arg_networkInterface = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.AccessConfig.fromJson(json);
        checkAccessConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["networkInterface"].first, unittest.equals(arg_networkInterface));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.addAccessConfig(arg_request, arg_project, arg_zone, arg_instance, arg_networkInterface).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--aggregatedList", () {

      var mock = new common_test.HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInstanceAggregatedList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.aggregatedList(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.InstanceAggregatedList response) {
        checkInstanceAggregatedList(response);
      })));
    });

    unittest.test("method--attachDisk", () {

      var mock = new common_test.HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_request = buildAttachedDisk();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.AttachedDisk.fromJson(json);
        checkAttachedDisk(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.attachDisk(arg_request, arg_project, arg_zone, arg_instance).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_zone, arg_instance).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--deleteAccessConfig", () {

      var mock = new common_test.HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      var arg_accessConfig = "foo";
      var arg_networkInterface = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["accessConfig"].first, unittest.equals(arg_accessConfig));
        unittest.expect(queryMap["networkInterface"].first, unittest.equals(arg_networkInterface));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.deleteAccessConfig(arg_project, arg_zone, arg_instance, arg_accessConfig, arg_networkInterface).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--detachDisk", () {

      var mock = new common_test.HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      var arg_deviceName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["deviceName"].first, unittest.equals(arg_deviceName));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.detachDisk(arg_project, arg_zone, arg_instance, arg_deviceName).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInstance());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_zone, arg_instance).then(unittest.expectAsync(((api.Instance response) {
        checkInstance(response);
      })));
    });

    unittest.test("method--getSerialPortOutput", () {

      var mock = new common_test.HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSerialPortOutput());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.getSerialPortOutput(arg_project, arg_zone, arg_instance).then(unittest.expectAsync(((api.SerialPortOutput response) {
        checkSerialPortOutput(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_request = buildInstance();
      var arg_project = "foo";
      var arg_zone = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Instance.fromJson(json);
        checkInstance(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_project, arg_zone).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInstanceList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, arg_zone, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.InstanceList response) {
        checkInstanceList(response);
      })));
    });

    unittest.test("method--reset", () {

      var mock = new common_test.HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.reset(arg_project, arg_zone, arg_instance).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setDiskAutoDelete", () {

      var mock = new common_test.HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      var arg_autoDelete = true;
      var arg_deviceName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["autoDelete"].first, unittest.equals("$arg_autoDelete"));
        unittest.expect(queryMap["deviceName"].first, unittest.equals(arg_deviceName));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.setDiskAutoDelete(arg_project, arg_zone, arg_instance, arg_autoDelete, arg_deviceName).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setMetadata", () {

      var mock = new common_test.HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_request = buildMetadata();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Metadata.fromJson(json);
        checkMetadata(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.setMetadata(arg_request, arg_project, arg_zone, arg_instance).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setScheduling", () {

      var mock = new common_test.HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_request = buildScheduling();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Scheduling.fromJson(json);
        checkScheduling(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.setScheduling(arg_request, arg_project, arg_zone, arg_instance).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setTags", () {

      var mock = new common_test.HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_request = buildTags();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Tags.fromJson(json);
        checkTags(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.setTags(arg_request, arg_project, arg_zone, arg_instance).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

  });


  unittest.group("resource-LicensesResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.LicensesResourceApi res = new api.ComputeApi(mock).licenses;
      var arg_project = "foo";
      var arg_license = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLicense());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_license).then(unittest.expectAsync(((api.License response) {
        checkLicense(response);
      })));
    });

  });


  unittest.group("resource-MachineTypesResourceApi", () {
    unittest.test("method--aggregatedList", () {

      var mock = new common_test.HttpServerMock();
      api.MachineTypesResourceApi res = new api.ComputeApi(mock).machineTypes;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMachineTypeAggregatedList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.aggregatedList(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.MachineTypeAggregatedList response) {
        checkMachineTypeAggregatedList(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.MachineTypesResourceApi res = new api.ComputeApi(mock).machineTypes;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_machineType = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMachineType());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_zone, arg_machineType).then(unittest.expectAsync(((api.MachineType response) {
        checkMachineType(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.MachineTypesResourceApi res = new api.ComputeApi(mock).machineTypes;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMachineTypeList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, arg_zone, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.MachineTypeList response) {
        checkMachineTypeList(response);
      })));
    });

  });


  unittest.group("resource-NetworksResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.NetworksResourceApi res = new api.ComputeApi(mock).networks;
      var arg_project = "foo";
      var arg_network = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_network).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.NetworksResourceApi res = new api.ComputeApi(mock).networks;
      var arg_project = "foo";
      var arg_network = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildNetwork());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_network).then(unittest.expectAsync(((api.Network response) {
        checkNetwork(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.NetworksResourceApi res = new api.ComputeApi(mock).networks;
      var arg_request = buildNetwork();
      var arg_project = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Network.fromJson(json);
        checkNetwork(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_project).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.NetworksResourceApi res = new api.ComputeApi(mock).networks;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildNetworkList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.NetworkList response) {
        checkNetworkList(response);
      })));
    });

  });


  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.ProjectsResourceApi res = new api.ComputeApi(mock).projects;
      var arg_project = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildProject());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project).then(unittest.expectAsync(((api.Project response) {
        checkProject(response);
      })));
    });

    unittest.test("method--setCommonInstanceMetadata", () {

      var mock = new common_test.HttpServerMock();
      api.ProjectsResourceApi res = new api.ComputeApi(mock).projects;
      var arg_request = buildMetadata();
      var arg_project = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Metadata.fromJson(json);
        checkMetadata(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.setCommonInstanceMetadata(arg_request, arg_project).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setUsageExportBucket", () {

      var mock = new common_test.HttpServerMock();
      api.ProjectsResourceApi res = new api.ComputeApi(mock).projects;
      var arg_request = buildUsageExportLocation();
      var arg_project = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.UsageExportLocation.fromJson(json);
        checkUsageExportLocation(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.setUsageExportBucket(arg_request, arg_project).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

  });


  unittest.group("resource-RegionOperationsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.RegionOperationsResourceApi res = new api.ComputeApi(mock).regionOperations;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_operation = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_region, arg_operation).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.RegionOperationsResourceApi res = new api.ComputeApi(mock).regionOperations;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_operation = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_region, arg_operation).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.RegionOperationsResourceApi res = new api.ComputeApi(mock).regionOperations;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperationList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, arg_region, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.OperationList response) {
        checkOperationList(response);
      })));
    });

  });


  unittest.group("resource-RegionsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.RegionsResourceApi res = new api.ComputeApi(mock).regions;
      var arg_project = "foo";
      var arg_region = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRegion());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_region).then(unittest.expectAsync(((api.Region response) {
        checkRegion(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.RegionsResourceApi res = new api.ComputeApi(mock).regions;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRegionList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.RegionList response) {
        checkRegionList(response);
      })));
    });

  });


  unittest.group("resource-RoutesResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.RoutesResourceApi res = new api.ComputeApi(mock).routes;
      var arg_project = "foo";
      var arg_route = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_route).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.RoutesResourceApi res = new api.ComputeApi(mock).routes;
      var arg_project = "foo";
      var arg_route = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRoute());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_route).then(unittest.expectAsync(((api.Route response) {
        checkRoute(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.RoutesResourceApi res = new api.ComputeApi(mock).routes;
      var arg_request = buildRoute();
      var arg_project = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Route.fromJson(json);
        checkRoute(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_project).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.RoutesResourceApi res = new api.ComputeApi(mock).routes;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRouteList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.RouteList response) {
        checkRouteList(response);
      })));
    });

  });


  unittest.group("resource-SnapshotsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.SnapshotsResourceApi res = new api.ComputeApi(mock).snapshots;
      var arg_project = "foo";
      var arg_snapshot = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_snapshot).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.SnapshotsResourceApi res = new api.ComputeApi(mock).snapshots;
      var arg_project = "foo";
      var arg_snapshot = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSnapshot());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_snapshot).then(unittest.expectAsync(((api.Snapshot response) {
        checkSnapshot(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.SnapshotsResourceApi res = new api.ComputeApi(mock).snapshots;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSnapshotList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.SnapshotList response) {
        checkSnapshotList(response);
      })));
    });

  });


  unittest.group("resource-TargetHttpProxiesResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.TargetHttpProxiesResourceApi res = new api.ComputeApi(mock).targetHttpProxies;
      var arg_project = "foo";
      var arg_targetHttpProxy = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_targetHttpProxy).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.TargetHttpProxiesResourceApi res = new api.ComputeApi(mock).targetHttpProxies;
      var arg_project = "foo";
      var arg_targetHttpProxy = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetHttpProxy());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_targetHttpProxy).then(unittest.expectAsync(((api.TargetHttpProxy response) {
        checkTargetHttpProxy(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.TargetHttpProxiesResourceApi res = new api.ComputeApi(mock).targetHttpProxies;
      var arg_request = buildTargetHttpProxy();
      var arg_project = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.TargetHttpProxy.fromJson(json);
        checkTargetHttpProxy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_project).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.TargetHttpProxiesResourceApi res = new api.ComputeApi(mock).targetHttpProxies;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetHttpProxyList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.TargetHttpProxyList response) {
        checkTargetHttpProxyList(response);
      })));
    });

    unittest.test("method--setUrlMap", () {

      var mock = new common_test.HttpServerMock();
      api.TargetHttpProxiesResourceApi res = new api.ComputeApi(mock).targetHttpProxies;
      var arg_request = buildUrlMapReference();
      var arg_project = "foo";
      var arg_targetHttpProxy = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.UrlMapReference.fromJson(json);
        checkUrlMapReference(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.setUrlMap(arg_request, arg_project, arg_targetHttpProxy).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

  });


  unittest.group("resource-TargetInstancesResourceApi", () {
    unittest.test("method--aggregatedList", () {

      var mock = new common_test.HttpServerMock();
      api.TargetInstancesResourceApi res = new api.ComputeApi(mock).targetInstances;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetInstanceAggregatedList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.aggregatedList(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.TargetInstanceAggregatedList response) {
        checkTargetInstanceAggregatedList(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.TargetInstancesResourceApi res = new api.ComputeApi(mock).targetInstances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_targetInstance = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_zone, arg_targetInstance).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.TargetInstancesResourceApi res = new api.ComputeApi(mock).targetInstances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_targetInstance = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetInstance());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_zone, arg_targetInstance).then(unittest.expectAsync(((api.TargetInstance response) {
        checkTargetInstance(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.TargetInstancesResourceApi res = new api.ComputeApi(mock).targetInstances;
      var arg_request = buildTargetInstance();
      var arg_project = "foo";
      var arg_zone = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.TargetInstance.fromJson(json);
        checkTargetInstance(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_project, arg_zone).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.TargetInstancesResourceApi res = new api.ComputeApi(mock).targetInstances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetInstanceList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, arg_zone, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.TargetInstanceList response) {
        checkTargetInstanceList(response);
      })));
    });

  });


  unittest.group("resource-TargetPoolsResourceApi", () {
    unittest.test("method--addHealthCheck", () {

      var mock = new common_test.HttpServerMock();
      api.TargetPoolsResourceApi res = new api.ComputeApi(mock).targetPools;
      var arg_request = buildTargetPoolsAddHealthCheckRequest();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_targetPool = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.TargetPoolsAddHealthCheckRequest.fromJson(json);
        checkTargetPoolsAddHealthCheckRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.addHealthCheck(arg_request, arg_project, arg_region, arg_targetPool).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--addInstance", () {

      var mock = new common_test.HttpServerMock();
      api.TargetPoolsResourceApi res = new api.ComputeApi(mock).targetPools;
      var arg_request = buildTargetPoolsAddInstanceRequest();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_targetPool = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.TargetPoolsAddInstanceRequest.fromJson(json);
        checkTargetPoolsAddInstanceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.addInstance(arg_request, arg_project, arg_region, arg_targetPool).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--aggregatedList", () {

      var mock = new common_test.HttpServerMock();
      api.TargetPoolsResourceApi res = new api.ComputeApi(mock).targetPools;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetPoolAggregatedList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.aggregatedList(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.TargetPoolAggregatedList response) {
        checkTargetPoolAggregatedList(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.TargetPoolsResourceApi res = new api.ComputeApi(mock).targetPools;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_targetPool = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_region, arg_targetPool).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.TargetPoolsResourceApi res = new api.ComputeApi(mock).targetPools;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_targetPool = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetPool());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_region, arg_targetPool).then(unittest.expectAsync(((api.TargetPool response) {
        checkTargetPool(response);
      })));
    });

    unittest.test("method--getHealth", () {

      var mock = new common_test.HttpServerMock();
      api.TargetPoolsResourceApi res = new api.ComputeApi(mock).targetPools;
      var arg_request = buildInstanceReference();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_targetPool = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.InstanceReference.fromJson(json);
        checkInstanceReference(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetPoolInstanceHealth());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.getHealth(arg_request, arg_project, arg_region, arg_targetPool).then(unittest.expectAsync(((api.TargetPoolInstanceHealth response) {
        checkTargetPoolInstanceHealth(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.TargetPoolsResourceApi res = new api.ComputeApi(mock).targetPools;
      var arg_request = buildTargetPool();
      var arg_project = "foo";
      var arg_region = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.TargetPool.fromJson(json);
        checkTargetPool(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_project, arg_region).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.TargetPoolsResourceApi res = new api.ComputeApi(mock).targetPools;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetPoolList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, arg_region, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.TargetPoolList response) {
        checkTargetPoolList(response);
      })));
    });

    unittest.test("method--removeHealthCheck", () {

      var mock = new common_test.HttpServerMock();
      api.TargetPoolsResourceApi res = new api.ComputeApi(mock).targetPools;
      var arg_request = buildTargetPoolsRemoveHealthCheckRequest();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_targetPool = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.TargetPoolsRemoveHealthCheckRequest.fromJson(json);
        checkTargetPoolsRemoveHealthCheckRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.removeHealthCheck(arg_request, arg_project, arg_region, arg_targetPool).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--removeInstance", () {

      var mock = new common_test.HttpServerMock();
      api.TargetPoolsResourceApi res = new api.ComputeApi(mock).targetPools;
      var arg_request = buildTargetPoolsRemoveInstanceRequest();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_targetPool = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.TargetPoolsRemoveInstanceRequest.fromJson(json);
        checkTargetPoolsRemoveInstanceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.removeInstance(arg_request, arg_project, arg_region, arg_targetPool).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setBackup", () {

      var mock = new common_test.HttpServerMock();
      api.TargetPoolsResourceApi res = new api.ComputeApi(mock).targetPools;
      var arg_request = buildTargetReference();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_targetPool = "foo";
      var arg_failoverRatio = 42.0;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.TargetReference.fromJson(json);
        checkTargetReference(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.num.parse(queryMap["failoverRatio"].first), unittest.equals(arg_failoverRatio));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.setBackup(arg_request, arg_project, arg_region, arg_targetPool, failoverRatio: arg_failoverRatio).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

  });


  unittest.group("resource-UrlMapsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.UrlMapsResourceApi res = new api.ComputeApi(mock).urlMaps;
      var arg_project = "foo";
      var arg_urlMap = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_urlMap).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.UrlMapsResourceApi res = new api.ComputeApi(mock).urlMaps;
      var arg_project = "foo";
      var arg_urlMap = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUrlMap());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_urlMap).then(unittest.expectAsync(((api.UrlMap response) {
        checkUrlMap(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.UrlMapsResourceApi res = new api.ComputeApi(mock).urlMaps;
      var arg_request = buildUrlMap();
      var arg_project = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.UrlMap.fromJson(json);
        checkUrlMap(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_project).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.UrlMapsResourceApi res = new api.ComputeApi(mock).urlMaps;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUrlMapList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.UrlMapList response) {
        checkUrlMapList(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.UrlMapsResourceApi res = new api.ComputeApi(mock).urlMaps;
      var arg_request = buildUrlMap();
      var arg_project = "foo";
      var arg_urlMap = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.UrlMap.fromJson(json);
        checkUrlMap(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_project, arg_urlMap).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.UrlMapsResourceApi res = new api.ComputeApi(mock).urlMaps;
      var arg_request = buildUrlMap();
      var arg_project = "foo";
      var arg_urlMap = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.UrlMap.fromJson(json);
        checkUrlMap(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_project, arg_urlMap).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--validate", () {

      var mock = new common_test.HttpServerMock();
      api.UrlMapsResourceApi res = new api.ComputeApi(mock).urlMaps;
      var arg_request = buildUrlMapsValidateRequest();
      var arg_project = "foo";
      var arg_urlMap = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.UrlMapsValidateRequest.fromJson(json);
        checkUrlMapsValidateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUrlMapsValidateResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.validate(arg_request, arg_project, arg_urlMap).then(unittest.expectAsync(((api.UrlMapsValidateResponse response) {
        checkUrlMapsValidateResponse(response);
      })));
    });

  });


  unittest.group("resource-ZoneOperationsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.ZoneOperationsResourceApi res = new api.ComputeApi(mock).zoneOperations;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_operation = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_project, arg_zone, arg_operation).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.ZoneOperationsResourceApi res = new api.ComputeApi(mock).zoneOperations;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_operation = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_zone, arg_operation).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.ZoneOperationsResourceApi res = new api.ComputeApi(mock).zoneOperations;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperationList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, arg_zone, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.OperationList response) {
        checkOperationList(response);
      })));
    });

  });


  unittest.group("resource-ZonesResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.ZonesResourceApi res = new api.ComputeApi(mock).zones;
      var arg_project = "foo";
      var arg_zone = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildZone());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_project, arg_zone).then(unittest.expectAsync(((api.Zone response) {
        checkZone(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.ZonesResourceApi res = new api.ComputeApi(mock).zones;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildZoneList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_project, filter: arg_filter, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ZoneList response) {
        checkZoneList(response);
      })));
    });

  });


}

