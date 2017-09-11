library googleapis.compute.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/compute/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAcceleratorConfig = 0;
buildAcceleratorConfig() {
  var o = new api.AcceleratorConfig();
  buildCounterAcceleratorConfig++;
  if (buildCounterAcceleratorConfig < 3) {
    o.acceleratorCount = 42;
    o.acceleratorType = "foo";
  }
  buildCounterAcceleratorConfig--;
  return o;
}

checkAcceleratorConfig(api.AcceleratorConfig o) {
  buildCounterAcceleratorConfig++;
  if (buildCounterAcceleratorConfig < 3) {
    unittest.expect(o.acceleratorCount, unittest.equals(42));
    unittest.expect(o.acceleratorType, unittest.equals('foo'));
  }
  buildCounterAcceleratorConfig--;
}

core.int buildCounterAcceleratorType = 0;
buildAcceleratorType() {
  var o = new api.AcceleratorType();
  buildCounterAcceleratorType++;
  if (buildCounterAcceleratorType < 3) {
    o.creationTimestamp = "foo";
    o.deprecated = buildDeprecationStatus();
    o.description = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.maximumCardsPerInstance = 42;
    o.name = "foo";
    o.selfLink = "foo";
    o.zone = "foo";
  }
  buildCounterAcceleratorType--;
  return o;
}

checkAcceleratorType(api.AcceleratorType o) {
  buildCounterAcceleratorType++;
  if (buildCounterAcceleratorType < 3) {
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    checkDeprecationStatus(o.deprecated);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.maximumCardsPerInstance, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterAcceleratorType--;
}

buildUnnamed2226() {
  var o = new core.Map<core.String, api.AcceleratorTypesScopedList>();
  o["x"] = buildAcceleratorTypesScopedList();
  o["y"] = buildAcceleratorTypesScopedList();
  return o;
}

checkUnnamed2226(core.Map<core.String, api.AcceleratorTypesScopedList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcceleratorTypesScopedList(o["x"]);
  checkAcceleratorTypesScopedList(o["y"]);
}

core.int buildCounterAcceleratorTypeAggregatedList = 0;
buildAcceleratorTypeAggregatedList() {
  var o = new api.AcceleratorTypeAggregatedList();
  buildCounterAcceleratorTypeAggregatedList++;
  if (buildCounterAcceleratorTypeAggregatedList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2226();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterAcceleratorTypeAggregatedList--;
  return o;
}

checkAcceleratorTypeAggregatedList(api.AcceleratorTypeAggregatedList o) {
  buildCounterAcceleratorTypeAggregatedList++;
  if (buildCounterAcceleratorTypeAggregatedList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2226(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterAcceleratorTypeAggregatedList--;
}

buildUnnamed2227() {
  var o = new core.List<api.AcceleratorType>();
  o.add(buildAcceleratorType());
  o.add(buildAcceleratorType());
  return o;
}

checkUnnamed2227(core.List<api.AcceleratorType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcceleratorType(o[0]);
  checkAcceleratorType(o[1]);
}

core.int buildCounterAcceleratorTypeList = 0;
buildAcceleratorTypeList() {
  var o = new api.AcceleratorTypeList();
  buildCounterAcceleratorTypeList++;
  if (buildCounterAcceleratorTypeList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2227();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterAcceleratorTypeList--;
  return o;
}

checkAcceleratorTypeList(api.AcceleratorTypeList o) {
  buildCounterAcceleratorTypeList++;
  if (buildCounterAcceleratorTypeList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2227(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterAcceleratorTypeList--;
}

buildUnnamed2228() {
  var o = new core.List<api.AcceleratorType>();
  o.add(buildAcceleratorType());
  o.add(buildAcceleratorType());
  return o;
}

checkUnnamed2228(core.List<api.AcceleratorType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcceleratorType(o[0]);
  checkAcceleratorType(o[1]);
}

core.int buildCounterAcceleratorTypesScopedListWarningData = 0;
buildAcceleratorTypesScopedListWarningData() {
  var o = new api.AcceleratorTypesScopedListWarningData();
  buildCounterAcceleratorTypesScopedListWarningData++;
  if (buildCounterAcceleratorTypesScopedListWarningData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterAcceleratorTypesScopedListWarningData--;
  return o;
}

checkAcceleratorTypesScopedListWarningData(
    api.AcceleratorTypesScopedListWarningData o) {
  buildCounterAcceleratorTypesScopedListWarningData++;
  if (buildCounterAcceleratorTypesScopedListWarningData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterAcceleratorTypesScopedListWarningData--;
}

buildUnnamed2229() {
  var o = new core.List<api.AcceleratorTypesScopedListWarningData>();
  o.add(buildAcceleratorTypesScopedListWarningData());
  o.add(buildAcceleratorTypesScopedListWarningData());
  return o;
}

checkUnnamed2229(core.List<api.AcceleratorTypesScopedListWarningData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcceleratorTypesScopedListWarningData(o[0]);
  checkAcceleratorTypesScopedListWarningData(o[1]);
}

core.int buildCounterAcceleratorTypesScopedListWarning = 0;
buildAcceleratorTypesScopedListWarning() {
  var o = new api.AcceleratorTypesScopedListWarning();
  buildCounterAcceleratorTypesScopedListWarning++;
  if (buildCounterAcceleratorTypesScopedListWarning < 3) {
    o.code = "foo";
    o.data = buildUnnamed2229();
    o.message = "foo";
  }
  buildCounterAcceleratorTypesScopedListWarning--;
  return o;
}

checkAcceleratorTypesScopedListWarning(
    api.AcceleratorTypesScopedListWarning o) {
  buildCounterAcceleratorTypesScopedListWarning++;
  if (buildCounterAcceleratorTypesScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed2229(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterAcceleratorTypesScopedListWarning--;
}

core.int buildCounterAcceleratorTypesScopedList = 0;
buildAcceleratorTypesScopedList() {
  var o = new api.AcceleratorTypesScopedList();
  buildCounterAcceleratorTypesScopedList++;
  if (buildCounterAcceleratorTypesScopedList < 3) {
    o.acceleratorTypes = buildUnnamed2228();
    o.warning = buildAcceleratorTypesScopedListWarning();
  }
  buildCounterAcceleratorTypesScopedList--;
  return o;
}

checkAcceleratorTypesScopedList(api.AcceleratorTypesScopedList o) {
  buildCounterAcceleratorTypesScopedList++;
  if (buildCounterAcceleratorTypesScopedList < 3) {
    checkUnnamed2228(o.acceleratorTypes);
    checkAcceleratorTypesScopedListWarning(o.warning);
  }
  buildCounterAcceleratorTypesScopedList--;
}

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

buildUnnamed2230() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2230(core.List<core.String> o) {
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
    o.ipVersion = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.region = "foo";
    o.selfLink = "foo";
    o.status = "foo";
    o.users = buildUnnamed2230();
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
    unittest.expect(o.ipVersion, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    checkUnnamed2230(o.users);
  }
  buildCounterAddress--;
}

buildUnnamed2231() {
  var o = new core.Map<core.String, api.AddressesScopedList>();
  o["x"] = buildAddressesScopedList();
  o["y"] = buildAddressesScopedList();
  return o;
}

checkUnnamed2231(core.Map<core.String, api.AddressesScopedList> o) {
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
    o.items = buildUnnamed2231();
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
    checkUnnamed2231(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterAddressAggregatedList--;
}

buildUnnamed2232() {
  var o = new core.List<api.Address>();
  o.add(buildAddress());
  o.add(buildAddress());
  return o;
}

checkUnnamed2232(core.List<api.Address> o) {
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
    o.items = buildUnnamed2232();
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
    checkUnnamed2232(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterAddressList--;
}

buildUnnamed2233() {
  var o = new core.List<api.Address>();
  o.add(buildAddress());
  o.add(buildAddress());
  return o;
}

checkUnnamed2233(core.List<api.Address> o) {
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

buildUnnamed2234() {
  var o = new core.List<api.AddressesScopedListWarningData>();
  o.add(buildAddressesScopedListWarningData());
  o.add(buildAddressesScopedListWarningData());
  return o;
}

checkUnnamed2234(core.List<api.AddressesScopedListWarningData> o) {
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
    o.data = buildUnnamed2234();
    o.message = "foo";
  }
  buildCounterAddressesScopedListWarning--;
  return o;
}

checkAddressesScopedListWarning(api.AddressesScopedListWarning o) {
  buildCounterAddressesScopedListWarning++;
  if (buildCounterAddressesScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed2234(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterAddressesScopedListWarning--;
}

core.int buildCounterAddressesScopedList = 0;
buildAddressesScopedList() {
  var o = new api.AddressesScopedList();
  buildCounterAddressesScopedList++;
  if (buildCounterAddressesScopedList < 3) {
    o.addresses = buildUnnamed2233();
    o.warning = buildAddressesScopedListWarning();
  }
  buildCounterAddressesScopedList--;
  return o;
}

checkAddressesScopedList(api.AddressesScopedList o) {
  buildCounterAddressesScopedList++;
  if (buildCounterAddressesScopedList < 3) {
    checkUnnamed2233(o.addresses);
    checkAddressesScopedListWarning(o.warning);
  }
  buildCounterAddressesScopedList--;
}

core.int buildCounterAliasIpRange = 0;
buildAliasIpRange() {
  var o = new api.AliasIpRange();
  buildCounterAliasIpRange++;
  if (buildCounterAliasIpRange < 3) {
    o.ipCidrRange = "foo";
    o.subnetworkRangeName = "foo";
  }
  buildCounterAliasIpRange--;
  return o;
}

checkAliasIpRange(api.AliasIpRange o) {
  buildCounterAliasIpRange++;
  if (buildCounterAliasIpRange < 3) {
    unittest.expect(o.ipCidrRange, unittest.equals('foo'));
    unittest.expect(o.subnetworkRangeName, unittest.equals('foo'));
  }
  buildCounterAliasIpRange--;
}

buildUnnamed2235() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2235(core.List<core.String> o) {
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
    o.diskEncryptionKey = buildCustomerEncryptionKey();
    o.index = 42;
    o.initializeParams = buildAttachedDiskInitializeParams();
    o.interface = "foo";
    o.kind = "foo";
    o.licenses = buildUnnamed2235();
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
    checkCustomerEncryptionKey(o.diskEncryptionKey);
    unittest.expect(o.index, unittest.equals(42));
    checkAttachedDiskInitializeParams(o.initializeParams);
    unittest.expect(o.interface, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2235(o.licenses);
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
    o.sourceImageEncryptionKey = buildCustomerEncryptionKey();
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
    checkCustomerEncryptionKey(o.sourceImageEncryptionKey);
  }
  buildCounterAttachedDiskInitializeParams--;
}

buildUnnamed2236() {
  var o = new core.List<api.AutoscalerStatusDetails>();
  o.add(buildAutoscalerStatusDetails());
  o.add(buildAutoscalerStatusDetails());
  return o;
}

checkUnnamed2236(core.List<api.AutoscalerStatusDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutoscalerStatusDetails(o[0]);
  checkAutoscalerStatusDetails(o[1]);
}

core.int buildCounterAutoscaler = 0;
buildAutoscaler() {
  var o = new api.Autoscaler();
  buildCounterAutoscaler++;
  if (buildCounterAutoscaler < 3) {
    o.autoscalingPolicy = buildAutoscalingPolicy();
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.region = "foo";
    o.selfLink = "foo";
    o.status = "foo";
    o.statusDetails = buildUnnamed2236();
    o.target = "foo";
    o.zone = "foo";
  }
  buildCounterAutoscaler--;
  return o;
}

checkAutoscaler(api.Autoscaler o) {
  buildCounterAutoscaler++;
  if (buildCounterAutoscaler < 3) {
    checkAutoscalingPolicy(o.autoscalingPolicy);
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    checkUnnamed2236(o.statusDetails);
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterAutoscaler--;
}

buildUnnamed2237() {
  var o = new core.Map<core.String, api.AutoscalersScopedList>();
  o["x"] = buildAutoscalersScopedList();
  o["y"] = buildAutoscalersScopedList();
  return o;
}

checkUnnamed2237(core.Map<core.String, api.AutoscalersScopedList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutoscalersScopedList(o["x"]);
  checkAutoscalersScopedList(o["y"]);
}

core.int buildCounterAutoscalerAggregatedList = 0;
buildAutoscalerAggregatedList() {
  var o = new api.AutoscalerAggregatedList();
  buildCounterAutoscalerAggregatedList++;
  if (buildCounterAutoscalerAggregatedList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2237();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterAutoscalerAggregatedList--;
  return o;
}

checkAutoscalerAggregatedList(api.AutoscalerAggregatedList o) {
  buildCounterAutoscalerAggregatedList++;
  if (buildCounterAutoscalerAggregatedList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2237(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterAutoscalerAggregatedList--;
}

buildUnnamed2238() {
  var o = new core.List<api.Autoscaler>();
  o.add(buildAutoscaler());
  o.add(buildAutoscaler());
  return o;
}

checkUnnamed2238(core.List<api.Autoscaler> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutoscaler(o[0]);
  checkAutoscaler(o[1]);
}

core.int buildCounterAutoscalerList = 0;
buildAutoscalerList() {
  var o = new api.AutoscalerList();
  buildCounterAutoscalerList++;
  if (buildCounterAutoscalerList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2238();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterAutoscalerList--;
  return o;
}

checkAutoscalerList(api.AutoscalerList o) {
  buildCounterAutoscalerList++;
  if (buildCounterAutoscalerList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2238(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterAutoscalerList--;
}

core.int buildCounterAutoscalerStatusDetails = 0;
buildAutoscalerStatusDetails() {
  var o = new api.AutoscalerStatusDetails();
  buildCounterAutoscalerStatusDetails++;
  if (buildCounterAutoscalerStatusDetails < 3) {
    o.message = "foo";
    o.type = "foo";
  }
  buildCounterAutoscalerStatusDetails--;
  return o;
}

checkAutoscalerStatusDetails(api.AutoscalerStatusDetails o) {
  buildCounterAutoscalerStatusDetails++;
  if (buildCounterAutoscalerStatusDetails < 3) {
    unittest.expect(o.message, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAutoscalerStatusDetails--;
}

buildUnnamed2239() {
  var o = new core.List<api.Autoscaler>();
  o.add(buildAutoscaler());
  o.add(buildAutoscaler());
  return o;
}

checkUnnamed2239(core.List<api.Autoscaler> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutoscaler(o[0]);
  checkAutoscaler(o[1]);
}

core.int buildCounterAutoscalersScopedListWarningData = 0;
buildAutoscalersScopedListWarningData() {
  var o = new api.AutoscalersScopedListWarningData();
  buildCounterAutoscalersScopedListWarningData++;
  if (buildCounterAutoscalersScopedListWarningData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterAutoscalersScopedListWarningData--;
  return o;
}

checkAutoscalersScopedListWarningData(api.AutoscalersScopedListWarningData o) {
  buildCounterAutoscalersScopedListWarningData++;
  if (buildCounterAutoscalersScopedListWarningData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterAutoscalersScopedListWarningData--;
}

buildUnnamed2240() {
  var o = new core.List<api.AutoscalersScopedListWarningData>();
  o.add(buildAutoscalersScopedListWarningData());
  o.add(buildAutoscalersScopedListWarningData());
  return o;
}

checkUnnamed2240(core.List<api.AutoscalersScopedListWarningData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutoscalersScopedListWarningData(o[0]);
  checkAutoscalersScopedListWarningData(o[1]);
}

core.int buildCounterAutoscalersScopedListWarning = 0;
buildAutoscalersScopedListWarning() {
  var o = new api.AutoscalersScopedListWarning();
  buildCounterAutoscalersScopedListWarning++;
  if (buildCounterAutoscalersScopedListWarning < 3) {
    o.code = "foo";
    o.data = buildUnnamed2240();
    o.message = "foo";
  }
  buildCounterAutoscalersScopedListWarning--;
  return o;
}

checkAutoscalersScopedListWarning(api.AutoscalersScopedListWarning o) {
  buildCounterAutoscalersScopedListWarning++;
  if (buildCounterAutoscalersScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed2240(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterAutoscalersScopedListWarning--;
}

core.int buildCounterAutoscalersScopedList = 0;
buildAutoscalersScopedList() {
  var o = new api.AutoscalersScopedList();
  buildCounterAutoscalersScopedList++;
  if (buildCounterAutoscalersScopedList < 3) {
    o.autoscalers = buildUnnamed2239();
    o.warning = buildAutoscalersScopedListWarning();
  }
  buildCounterAutoscalersScopedList--;
  return o;
}

checkAutoscalersScopedList(api.AutoscalersScopedList o) {
  buildCounterAutoscalersScopedList++;
  if (buildCounterAutoscalersScopedList < 3) {
    checkUnnamed2239(o.autoscalers);
    checkAutoscalersScopedListWarning(o.warning);
  }
  buildCounterAutoscalersScopedList--;
}

buildUnnamed2241() {
  var o = new core.List<api.AutoscalingPolicyCustomMetricUtilization>();
  o.add(buildAutoscalingPolicyCustomMetricUtilization());
  o.add(buildAutoscalingPolicyCustomMetricUtilization());
  return o;
}

checkUnnamed2241(core.List<api.AutoscalingPolicyCustomMetricUtilization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutoscalingPolicyCustomMetricUtilization(o[0]);
  checkAutoscalingPolicyCustomMetricUtilization(o[1]);
}

core.int buildCounterAutoscalingPolicy = 0;
buildAutoscalingPolicy() {
  var o = new api.AutoscalingPolicy();
  buildCounterAutoscalingPolicy++;
  if (buildCounterAutoscalingPolicy < 3) {
    o.coolDownPeriodSec = 42;
    o.cpuUtilization = buildAutoscalingPolicyCpuUtilization();
    o.customMetricUtilizations = buildUnnamed2241();
    o.loadBalancingUtilization =
        buildAutoscalingPolicyLoadBalancingUtilization();
    o.maxNumReplicas = 42;
    o.minNumReplicas = 42;
  }
  buildCounterAutoscalingPolicy--;
  return o;
}

checkAutoscalingPolicy(api.AutoscalingPolicy o) {
  buildCounterAutoscalingPolicy++;
  if (buildCounterAutoscalingPolicy < 3) {
    unittest.expect(o.coolDownPeriodSec, unittest.equals(42));
    checkAutoscalingPolicyCpuUtilization(o.cpuUtilization);
    checkUnnamed2241(o.customMetricUtilizations);
    checkAutoscalingPolicyLoadBalancingUtilization(o.loadBalancingUtilization);
    unittest.expect(o.maxNumReplicas, unittest.equals(42));
    unittest.expect(o.minNumReplicas, unittest.equals(42));
  }
  buildCounterAutoscalingPolicy--;
}

core.int buildCounterAutoscalingPolicyCpuUtilization = 0;
buildAutoscalingPolicyCpuUtilization() {
  var o = new api.AutoscalingPolicyCpuUtilization();
  buildCounterAutoscalingPolicyCpuUtilization++;
  if (buildCounterAutoscalingPolicyCpuUtilization < 3) {
    o.utilizationTarget = 42.0;
  }
  buildCounterAutoscalingPolicyCpuUtilization--;
  return o;
}

checkAutoscalingPolicyCpuUtilization(api.AutoscalingPolicyCpuUtilization o) {
  buildCounterAutoscalingPolicyCpuUtilization++;
  if (buildCounterAutoscalingPolicyCpuUtilization < 3) {
    unittest.expect(o.utilizationTarget, unittest.equals(42.0));
  }
  buildCounterAutoscalingPolicyCpuUtilization--;
}

core.int buildCounterAutoscalingPolicyCustomMetricUtilization = 0;
buildAutoscalingPolicyCustomMetricUtilization() {
  var o = new api.AutoscalingPolicyCustomMetricUtilization();
  buildCounterAutoscalingPolicyCustomMetricUtilization++;
  if (buildCounterAutoscalingPolicyCustomMetricUtilization < 3) {
    o.metric = "foo";
    o.utilizationTarget = 42.0;
    o.utilizationTargetType = "foo";
  }
  buildCounterAutoscalingPolicyCustomMetricUtilization--;
  return o;
}

checkAutoscalingPolicyCustomMetricUtilization(
    api.AutoscalingPolicyCustomMetricUtilization o) {
  buildCounterAutoscalingPolicyCustomMetricUtilization++;
  if (buildCounterAutoscalingPolicyCustomMetricUtilization < 3) {
    unittest.expect(o.metric, unittest.equals('foo'));
    unittest.expect(o.utilizationTarget, unittest.equals(42.0));
    unittest.expect(o.utilizationTargetType, unittest.equals('foo'));
  }
  buildCounterAutoscalingPolicyCustomMetricUtilization--;
}

core.int buildCounterAutoscalingPolicyLoadBalancingUtilization = 0;
buildAutoscalingPolicyLoadBalancingUtilization() {
  var o = new api.AutoscalingPolicyLoadBalancingUtilization();
  buildCounterAutoscalingPolicyLoadBalancingUtilization++;
  if (buildCounterAutoscalingPolicyLoadBalancingUtilization < 3) {
    o.utilizationTarget = 42.0;
  }
  buildCounterAutoscalingPolicyLoadBalancingUtilization--;
  return o;
}

checkAutoscalingPolicyLoadBalancingUtilization(
    api.AutoscalingPolicyLoadBalancingUtilization o) {
  buildCounterAutoscalingPolicyLoadBalancingUtilization++;
  if (buildCounterAutoscalingPolicyLoadBalancingUtilization < 3) {
    unittest.expect(o.utilizationTarget, unittest.equals(42.0));
  }
  buildCounterAutoscalingPolicyLoadBalancingUtilization--;
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
    o.maxConnections = 42;
    o.maxConnectionsPerInstance = 42;
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
    unittest.expect(o.maxConnections, unittest.equals(42));
    unittest.expect(o.maxConnectionsPerInstance, unittest.equals(42));
    unittest.expect(o.maxRate, unittest.equals(42));
    unittest.expect(o.maxRatePerInstance, unittest.equals(42.0));
    unittest.expect(o.maxUtilization, unittest.equals(42.0));
  }
  buildCounterBackend--;
}

core.int buildCounterBackendBucket = 0;
buildBackendBucket() {
  var o = new api.BackendBucket();
  buildCounterBackendBucket++;
  if (buildCounterBackendBucket < 3) {
    o.bucketName = "foo";
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.enableCdn = true;
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.selfLink = "foo";
  }
  buildCounterBackendBucket--;
  return o;
}

checkBackendBucket(api.BackendBucket o) {
  buildCounterBackendBucket++;
  if (buildCounterBackendBucket < 3) {
    unittest.expect(o.bucketName, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.enableCdn, unittest.isTrue);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterBackendBucket--;
}

buildUnnamed2242() {
  var o = new core.List<api.BackendBucket>();
  o.add(buildBackendBucket());
  o.add(buildBackendBucket());
  return o;
}

checkUnnamed2242(core.List<api.BackendBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackendBucket(o[0]);
  checkBackendBucket(o[1]);
}

core.int buildCounterBackendBucketList = 0;
buildBackendBucketList() {
  var o = new api.BackendBucketList();
  buildCounterBackendBucketList++;
  if (buildCounterBackendBucketList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2242();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterBackendBucketList--;
  return o;
}

checkBackendBucketList(api.BackendBucketList o) {
  buildCounterBackendBucketList++;
  if (buildCounterBackendBucketList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2242(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterBackendBucketList--;
}

buildUnnamed2243() {
  var o = new core.List<api.Backend>();
  o.add(buildBackend());
  o.add(buildBackend());
  return o;
}

checkUnnamed2243(core.List<api.Backend> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackend(o[0]);
  checkBackend(o[1]);
}

buildUnnamed2244() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2244(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBackendService = 0;
buildBackendService() {
  var o = new api.BackendService();
  buildCounterBackendService++;
  if (buildCounterBackendService < 3) {
    o.affinityCookieTtlSec = 42;
    o.backends = buildUnnamed2243();
    o.cdnPolicy = buildBackendServiceCdnPolicy();
    o.connectionDraining = buildConnectionDraining();
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.enableCDN = true;
    o.fingerprint = "foo";
    o.healthChecks = buildUnnamed2244();
    o.iap = buildBackendServiceIAP();
    o.id = "foo";
    o.kind = "foo";
    o.loadBalancingScheme = "foo";
    o.name = "foo";
    o.port = 42;
    o.portName = "foo";
    o.protocol = "foo";
    o.region = "foo";
    o.selfLink = "foo";
    o.sessionAffinity = "foo";
    o.timeoutSec = 42;
  }
  buildCounterBackendService--;
  return o;
}

checkBackendService(api.BackendService o) {
  buildCounterBackendService++;
  if (buildCounterBackendService < 3) {
    unittest.expect(o.affinityCookieTtlSec, unittest.equals(42));
    checkUnnamed2243(o.backends);
    checkBackendServiceCdnPolicy(o.cdnPolicy);
    checkConnectionDraining(o.connectionDraining);
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.enableCDN, unittest.isTrue);
    unittest.expect(o.fingerprint, unittest.equals('foo'));
    checkUnnamed2244(o.healthChecks);
    checkBackendServiceIAP(o.iap);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.loadBalancingScheme, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.port, unittest.equals(42));
    unittest.expect(o.portName, unittest.equals('foo'));
    unittest.expect(o.protocol, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.sessionAffinity, unittest.equals('foo'));
    unittest.expect(o.timeoutSec, unittest.equals(42));
  }
  buildCounterBackendService--;
}

buildUnnamed2245() {
  var o = new core.Map<core.String, api.BackendServicesScopedList>();
  o["x"] = buildBackendServicesScopedList();
  o["y"] = buildBackendServicesScopedList();
  return o;
}

checkUnnamed2245(core.Map<core.String, api.BackendServicesScopedList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackendServicesScopedList(o["x"]);
  checkBackendServicesScopedList(o["y"]);
}

core.int buildCounterBackendServiceAggregatedList = 0;
buildBackendServiceAggregatedList() {
  var o = new api.BackendServiceAggregatedList();
  buildCounterBackendServiceAggregatedList++;
  if (buildCounterBackendServiceAggregatedList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2245();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterBackendServiceAggregatedList--;
  return o;
}

checkBackendServiceAggregatedList(api.BackendServiceAggregatedList o) {
  buildCounterBackendServiceAggregatedList++;
  if (buildCounterBackendServiceAggregatedList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2245(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterBackendServiceAggregatedList--;
}

core.int buildCounterBackendServiceCdnPolicy = 0;
buildBackendServiceCdnPolicy() {
  var o = new api.BackendServiceCdnPolicy();
  buildCounterBackendServiceCdnPolicy++;
  if (buildCounterBackendServiceCdnPolicy < 3) {
    o.cacheKeyPolicy = buildCacheKeyPolicy();
  }
  buildCounterBackendServiceCdnPolicy--;
  return o;
}

checkBackendServiceCdnPolicy(api.BackendServiceCdnPolicy o) {
  buildCounterBackendServiceCdnPolicy++;
  if (buildCounterBackendServiceCdnPolicy < 3) {
    checkCacheKeyPolicy(o.cacheKeyPolicy);
  }
  buildCounterBackendServiceCdnPolicy--;
}

buildUnnamed2246() {
  var o = new core.List<api.HealthStatus>();
  o.add(buildHealthStatus());
  o.add(buildHealthStatus());
  return o;
}

checkUnnamed2246(core.List<api.HealthStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHealthStatus(o[0]);
  checkHealthStatus(o[1]);
}

core.int buildCounterBackendServiceGroupHealth = 0;
buildBackendServiceGroupHealth() {
  var o = new api.BackendServiceGroupHealth();
  buildCounterBackendServiceGroupHealth++;
  if (buildCounterBackendServiceGroupHealth < 3) {
    o.healthStatus = buildUnnamed2246();
    o.kind = "foo";
  }
  buildCounterBackendServiceGroupHealth--;
  return o;
}

checkBackendServiceGroupHealth(api.BackendServiceGroupHealth o) {
  buildCounterBackendServiceGroupHealth++;
  if (buildCounterBackendServiceGroupHealth < 3) {
    checkUnnamed2246(o.healthStatus);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBackendServiceGroupHealth--;
}

core.int buildCounterBackendServiceIAP = 0;
buildBackendServiceIAP() {
  var o = new api.BackendServiceIAP();
  buildCounterBackendServiceIAP++;
  if (buildCounterBackendServiceIAP < 3) {
    o.enabled = true;
    o.oauth2ClientId = "foo";
    o.oauth2ClientSecret = "foo";
    o.oauth2ClientSecretSha256 = "foo";
  }
  buildCounterBackendServiceIAP--;
  return o;
}

checkBackendServiceIAP(api.BackendServiceIAP o) {
  buildCounterBackendServiceIAP++;
  if (buildCounterBackendServiceIAP < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.oauth2ClientId, unittest.equals('foo'));
    unittest.expect(o.oauth2ClientSecret, unittest.equals('foo'));
    unittest.expect(o.oauth2ClientSecretSha256, unittest.equals('foo'));
  }
  buildCounterBackendServiceIAP--;
}

buildUnnamed2247() {
  var o = new core.List<api.BackendService>();
  o.add(buildBackendService());
  o.add(buildBackendService());
  return o;
}

checkUnnamed2247(core.List<api.BackendService> o) {
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
    o.items = buildUnnamed2247();
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
    checkUnnamed2247(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterBackendServiceList--;
}

buildUnnamed2248() {
  var o = new core.List<api.BackendService>();
  o.add(buildBackendService());
  o.add(buildBackendService());
  return o;
}

checkUnnamed2248(core.List<api.BackendService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackendService(o[0]);
  checkBackendService(o[1]);
}

core.int buildCounterBackendServicesScopedListWarningData = 0;
buildBackendServicesScopedListWarningData() {
  var o = new api.BackendServicesScopedListWarningData();
  buildCounterBackendServicesScopedListWarningData++;
  if (buildCounterBackendServicesScopedListWarningData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterBackendServicesScopedListWarningData--;
  return o;
}

checkBackendServicesScopedListWarningData(
    api.BackendServicesScopedListWarningData o) {
  buildCounterBackendServicesScopedListWarningData++;
  if (buildCounterBackendServicesScopedListWarningData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterBackendServicesScopedListWarningData--;
}

buildUnnamed2249() {
  var o = new core.List<api.BackendServicesScopedListWarningData>();
  o.add(buildBackendServicesScopedListWarningData());
  o.add(buildBackendServicesScopedListWarningData());
  return o;
}

checkUnnamed2249(core.List<api.BackendServicesScopedListWarningData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackendServicesScopedListWarningData(o[0]);
  checkBackendServicesScopedListWarningData(o[1]);
}

core.int buildCounterBackendServicesScopedListWarning = 0;
buildBackendServicesScopedListWarning() {
  var o = new api.BackendServicesScopedListWarning();
  buildCounterBackendServicesScopedListWarning++;
  if (buildCounterBackendServicesScopedListWarning < 3) {
    o.code = "foo";
    o.data = buildUnnamed2249();
    o.message = "foo";
  }
  buildCounterBackendServicesScopedListWarning--;
  return o;
}

checkBackendServicesScopedListWarning(api.BackendServicesScopedListWarning o) {
  buildCounterBackendServicesScopedListWarning++;
  if (buildCounterBackendServicesScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed2249(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterBackendServicesScopedListWarning--;
}

core.int buildCounterBackendServicesScopedList = 0;
buildBackendServicesScopedList() {
  var o = new api.BackendServicesScopedList();
  buildCounterBackendServicesScopedList++;
  if (buildCounterBackendServicesScopedList < 3) {
    o.backendServices = buildUnnamed2248();
    o.warning = buildBackendServicesScopedListWarning();
  }
  buildCounterBackendServicesScopedList--;
  return o;
}

checkBackendServicesScopedList(api.BackendServicesScopedList o) {
  buildCounterBackendServicesScopedList++;
  if (buildCounterBackendServicesScopedList < 3) {
    checkUnnamed2248(o.backendServices);
    checkBackendServicesScopedListWarning(o.warning);
  }
  buildCounterBackendServicesScopedList--;
}

core.int buildCounterCacheInvalidationRule = 0;
buildCacheInvalidationRule() {
  var o = new api.CacheInvalidationRule();
  buildCounterCacheInvalidationRule++;
  if (buildCounterCacheInvalidationRule < 3) {
    o.host = "foo";
    o.path = "foo";
  }
  buildCounterCacheInvalidationRule--;
  return o;
}

checkCacheInvalidationRule(api.CacheInvalidationRule o) {
  buildCounterCacheInvalidationRule++;
  if (buildCounterCacheInvalidationRule < 3) {
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
  }
  buildCounterCacheInvalidationRule--;
}

buildUnnamed2250() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2250(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2251() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2251(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCacheKeyPolicy = 0;
buildCacheKeyPolicy() {
  var o = new api.CacheKeyPolicy();
  buildCounterCacheKeyPolicy++;
  if (buildCounterCacheKeyPolicy < 3) {
    o.includeHost = true;
    o.includeProtocol = true;
    o.includeQueryString = true;
    o.queryStringBlacklist = buildUnnamed2250();
    o.queryStringWhitelist = buildUnnamed2251();
  }
  buildCounterCacheKeyPolicy--;
  return o;
}

checkCacheKeyPolicy(api.CacheKeyPolicy o) {
  buildCounterCacheKeyPolicy++;
  if (buildCounterCacheKeyPolicy < 3) {
    unittest.expect(o.includeHost, unittest.isTrue);
    unittest.expect(o.includeProtocol, unittest.isTrue);
    unittest.expect(o.includeQueryString, unittest.isTrue);
    checkUnnamed2250(o.queryStringBlacklist);
    checkUnnamed2251(o.queryStringWhitelist);
  }
  buildCounterCacheKeyPolicy--;
}

buildUnnamed2252() {
  var o = new core.List<api.ResourceCommitment>();
  o.add(buildResourceCommitment());
  o.add(buildResourceCommitment());
  return o;
}

checkUnnamed2252(core.List<api.ResourceCommitment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceCommitment(o[0]);
  checkResourceCommitment(o[1]);
}

core.int buildCounterCommitment = 0;
buildCommitment() {
  var o = new api.Commitment();
  buildCounterCommitment++;
  if (buildCounterCommitment < 3) {
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.endTimestamp = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.plan = "foo";
    o.region = "foo";
    o.resources = buildUnnamed2252();
    o.selfLink = "foo";
    o.startTimestamp = "foo";
    o.status = "foo";
    o.statusMessage = "foo";
  }
  buildCounterCommitment--;
  return o;
}

checkCommitment(api.Commitment o) {
  buildCounterCommitment++;
  if (buildCounterCommitment < 3) {
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.endTimestamp, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.plan, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    checkUnnamed2252(o.resources);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.startTimestamp, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.statusMessage, unittest.equals('foo'));
  }
  buildCounterCommitment--;
}

buildUnnamed2253() {
  var o = new core.Map<core.String, api.CommitmentsScopedList>();
  o["x"] = buildCommitmentsScopedList();
  o["y"] = buildCommitmentsScopedList();
  return o;
}

checkUnnamed2253(core.Map<core.String, api.CommitmentsScopedList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommitmentsScopedList(o["x"]);
  checkCommitmentsScopedList(o["y"]);
}

core.int buildCounterCommitmentAggregatedList = 0;
buildCommitmentAggregatedList() {
  var o = new api.CommitmentAggregatedList();
  buildCounterCommitmentAggregatedList++;
  if (buildCounterCommitmentAggregatedList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2253();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterCommitmentAggregatedList--;
  return o;
}

checkCommitmentAggregatedList(api.CommitmentAggregatedList o) {
  buildCounterCommitmentAggregatedList++;
  if (buildCounterCommitmentAggregatedList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2253(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterCommitmentAggregatedList--;
}

buildUnnamed2254() {
  var o = new core.List<api.Commitment>();
  o.add(buildCommitment());
  o.add(buildCommitment());
  return o;
}

checkUnnamed2254(core.List<api.Commitment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommitment(o[0]);
  checkCommitment(o[1]);
}

core.int buildCounterCommitmentList = 0;
buildCommitmentList() {
  var o = new api.CommitmentList();
  buildCounterCommitmentList++;
  if (buildCounterCommitmentList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2254();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterCommitmentList--;
  return o;
}

checkCommitmentList(api.CommitmentList o) {
  buildCounterCommitmentList++;
  if (buildCounterCommitmentList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2254(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterCommitmentList--;
}

buildUnnamed2255() {
  var o = new core.List<api.Commitment>();
  o.add(buildCommitment());
  o.add(buildCommitment());
  return o;
}

checkUnnamed2255(core.List<api.Commitment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommitment(o[0]);
  checkCommitment(o[1]);
}

core.int buildCounterCommitmentsScopedListWarningData = 0;
buildCommitmentsScopedListWarningData() {
  var o = new api.CommitmentsScopedListWarningData();
  buildCounterCommitmentsScopedListWarningData++;
  if (buildCounterCommitmentsScopedListWarningData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterCommitmentsScopedListWarningData--;
  return o;
}

checkCommitmentsScopedListWarningData(api.CommitmentsScopedListWarningData o) {
  buildCounterCommitmentsScopedListWarningData++;
  if (buildCounterCommitmentsScopedListWarningData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterCommitmentsScopedListWarningData--;
}

buildUnnamed2256() {
  var o = new core.List<api.CommitmentsScopedListWarningData>();
  o.add(buildCommitmentsScopedListWarningData());
  o.add(buildCommitmentsScopedListWarningData());
  return o;
}

checkUnnamed2256(core.List<api.CommitmentsScopedListWarningData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommitmentsScopedListWarningData(o[0]);
  checkCommitmentsScopedListWarningData(o[1]);
}

core.int buildCounterCommitmentsScopedListWarning = 0;
buildCommitmentsScopedListWarning() {
  var o = new api.CommitmentsScopedListWarning();
  buildCounterCommitmentsScopedListWarning++;
  if (buildCounterCommitmentsScopedListWarning < 3) {
    o.code = "foo";
    o.data = buildUnnamed2256();
    o.message = "foo";
  }
  buildCounterCommitmentsScopedListWarning--;
  return o;
}

checkCommitmentsScopedListWarning(api.CommitmentsScopedListWarning o) {
  buildCounterCommitmentsScopedListWarning++;
  if (buildCounterCommitmentsScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed2256(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterCommitmentsScopedListWarning--;
}

core.int buildCounterCommitmentsScopedList = 0;
buildCommitmentsScopedList() {
  var o = new api.CommitmentsScopedList();
  buildCounterCommitmentsScopedList++;
  if (buildCounterCommitmentsScopedList < 3) {
    o.commitments = buildUnnamed2255();
    o.warning = buildCommitmentsScopedListWarning();
  }
  buildCounterCommitmentsScopedList--;
  return o;
}

checkCommitmentsScopedList(api.CommitmentsScopedList o) {
  buildCounterCommitmentsScopedList++;
  if (buildCounterCommitmentsScopedList < 3) {
    checkUnnamed2255(o.commitments);
    checkCommitmentsScopedListWarning(o.warning);
  }
  buildCounterCommitmentsScopedList--;
}

core.int buildCounterConnectionDraining = 0;
buildConnectionDraining() {
  var o = new api.ConnectionDraining();
  buildCounterConnectionDraining++;
  if (buildCounterConnectionDraining < 3) {
    o.drainingTimeoutSec = 42;
  }
  buildCounterConnectionDraining--;
  return o;
}

checkConnectionDraining(api.ConnectionDraining o) {
  buildCounterConnectionDraining++;
  if (buildCounterConnectionDraining < 3) {
    unittest.expect(o.drainingTimeoutSec, unittest.equals(42));
  }
  buildCounterConnectionDraining--;
}

core.int buildCounterCustomerEncryptionKey = 0;
buildCustomerEncryptionKey() {
  var o = new api.CustomerEncryptionKey();
  buildCounterCustomerEncryptionKey++;
  if (buildCounterCustomerEncryptionKey < 3) {
    o.rawKey = "foo";
    o.sha256 = "foo";
  }
  buildCounterCustomerEncryptionKey--;
  return o;
}

checkCustomerEncryptionKey(api.CustomerEncryptionKey o) {
  buildCounterCustomerEncryptionKey++;
  if (buildCounterCustomerEncryptionKey < 3) {
    unittest.expect(o.rawKey, unittest.equals('foo'));
    unittest.expect(o.sha256, unittest.equals('foo'));
  }
  buildCounterCustomerEncryptionKey--;
}

core.int buildCounterCustomerEncryptionKeyProtectedDisk = 0;
buildCustomerEncryptionKeyProtectedDisk() {
  var o = new api.CustomerEncryptionKeyProtectedDisk();
  buildCounterCustomerEncryptionKeyProtectedDisk++;
  if (buildCounterCustomerEncryptionKeyProtectedDisk < 3) {
    o.diskEncryptionKey = buildCustomerEncryptionKey();
    o.source = "foo";
  }
  buildCounterCustomerEncryptionKeyProtectedDisk--;
  return o;
}

checkCustomerEncryptionKeyProtectedDisk(
    api.CustomerEncryptionKeyProtectedDisk o) {
  buildCounterCustomerEncryptionKeyProtectedDisk++;
  if (buildCounterCustomerEncryptionKeyProtectedDisk < 3) {
    checkCustomerEncryptionKey(o.diskEncryptionKey);
    unittest.expect(o.source, unittest.equals('foo'));
  }
  buildCounterCustomerEncryptionKeyProtectedDisk--;
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

buildUnnamed2257() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2257(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed2258() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2258(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2259() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2259(core.List<core.String> o) {
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
    o.diskEncryptionKey = buildCustomerEncryptionKey();
    o.id = "foo";
    o.kind = "foo";
    o.labelFingerprint = "foo";
    o.labels = buildUnnamed2257();
    o.lastAttachTimestamp = "foo";
    o.lastDetachTimestamp = "foo";
    o.licenses = buildUnnamed2258();
    o.name = "foo";
    o.options = "foo";
    o.selfLink = "foo";
    o.sizeGb = "foo";
    o.sourceImage = "foo";
    o.sourceImageEncryptionKey = buildCustomerEncryptionKey();
    o.sourceImageId = "foo";
    o.sourceSnapshot = "foo";
    o.sourceSnapshotEncryptionKey = buildCustomerEncryptionKey();
    o.sourceSnapshotId = "foo";
    o.status = "foo";
    o.type = "foo";
    o.users = buildUnnamed2259();
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
    checkCustomerEncryptionKey(o.diskEncryptionKey);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.labelFingerprint, unittest.equals('foo'));
    checkUnnamed2257(o.labels);
    unittest.expect(o.lastAttachTimestamp, unittest.equals('foo'));
    unittest.expect(o.lastDetachTimestamp, unittest.equals('foo'));
    checkUnnamed2258(o.licenses);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.options, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.sizeGb, unittest.equals('foo'));
    unittest.expect(o.sourceImage, unittest.equals('foo'));
    checkCustomerEncryptionKey(o.sourceImageEncryptionKey);
    unittest.expect(o.sourceImageId, unittest.equals('foo'));
    unittest.expect(o.sourceSnapshot, unittest.equals('foo'));
    checkCustomerEncryptionKey(o.sourceSnapshotEncryptionKey);
    unittest.expect(o.sourceSnapshotId, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    checkUnnamed2259(o.users);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterDisk--;
}

buildUnnamed2260() {
  var o = new core.Map<core.String, api.DisksScopedList>();
  o["x"] = buildDisksScopedList();
  o["y"] = buildDisksScopedList();
  return o;
}

checkUnnamed2260(core.Map<core.String, api.DisksScopedList> o) {
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
    o.items = buildUnnamed2260();
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
    checkUnnamed2260(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterDiskAggregatedList--;
}

buildUnnamed2261() {
  var o = new core.List<api.Disk>();
  o.add(buildDisk());
  o.add(buildDisk());
  return o;
}

checkUnnamed2261(core.List<api.Disk> o) {
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
    o.items = buildUnnamed2261();
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
    checkUnnamed2261(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterDiskList--;
}

core.int buildCounterDiskMoveRequest = 0;
buildDiskMoveRequest() {
  var o = new api.DiskMoveRequest();
  buildCounterDiskMoveRequest++;
  if (buildCounterDiskMoveRequest < 3) {
    o.destinationZone = "foo";
    o.targetDisk = "foo";
  }
  buildCounterDiskMoveRequest--;
  return o;
}

checkDiskMoveRequest(api.DiskMoveRequest o) {
  buildCounterDiskMoveRequest++;
  if (buildCounterDiskMoveRequest < 3) {
    unittest.expect(o.destinationZone, unittest.equals('foo'));
    unittest.expect(o.targetDisk, unittest.equals('foo'));
  }
  buildCounterDiskMoveRequest--;
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

buildUnnamed2262() {
  var o = new core.Map<core.String, api.DiskTypesScopedList>();
  o["x"] = buildDiskTypesScopedList();
  o["y"] = buildDiskTypesScopedList();
  return o;
}

checkUnnamed2262(core.Map<core.String, api.DiskTypesScopedList> o) {
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
    o.items = buildUnnamed2262();
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
    checkUnnamed2262(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterDiskTypeAggregatedList--;
}

buildUnnamed2263() {
  var o = new core.List<api.DiskType>();
  o.add(buildDiskType());
  o.add(buildDiskType());
  return o;
}

checkUnnamed2263(core.List<api.DiskType> o) {
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
    o.items = buildUnnamed2263();
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
    checkUnnamed2263(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterDiskTypeList--;
}

buildUnnamed2264() {
  var o = new core.List<api.DiskType>();
  o.add(buildDiskType());
  o.add(buildDiskType());
  return o;
}

checkUnnamed2264(core.List<api.DiskType> o) {
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

buildUnnamed2265() {
  var o = new core.List<api.DiskTypesScopedListWarningData>();
  o.add(buildDiskTypesScopedListWarningData());
  o.add(buildDiskTypesScopedListWarningData());
  return o;
}

checkUnnamed2265(core.List<api.DiskTypesScopedListWarningData> o) {
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
    o.data = buildUnnamed2265();
    o.message = "foo";
  }
  buildCounterDiskTypesScopedListWarning--;
  return o;
}

checkDiskTypesScopedListWarning(api.DiskTypesScopedListWarning o) {
  buildCounterDiskTypesScopedListWarning++;
  if (buildCounterDiskTypesScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed2265(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterDiskTypesScopedListWarning--;
}

core.int buildCounterDiskTypesScopedList = 0;
buildDiskTypesScopedList() {
  var o = new api.DiskTypesScopedList();
  buildCounterDiskTypesScopedList++;
  if (buildCounterDiskTypesScopedList < 3) {
    o.diskTypes = buildUnnamed2264();
    o.warning = buildDiskTypesScopedListWarning();
  }
  buildCounterDiskTypesScopedList--;
  return o;
}

checkDiskTypesScopedList(api.DiskTypesScopedList o) {
  buildCounterDiskTypesScopedList++;
  if (buildCounterDiskTypesScopedList < 3) {
    checkUnnamed2264(o.diskTypes);
    checkDiskTypesScopedListWarning(o.warning);
  }
  buildCounterDiskTypesScopedList--;
}

core.int buildCounterDisksResizeRequest = 0;
buildDisksResizeRequest() {
  var o = new api.DisksResizeRequest();
  buildCounterDisksResizeRequest++;
  if (buildCounterDisksResizeRequest < 3) {
    o.sizeGb = "foo";
  }
  buildCounterDisksResizeRequest--;
  return o;
}

checkDisksResizeRequest(api.DisksResizeRequest o) {
  buildCounterDisksResizeRequest++;
  if (buildCounterDisksResizeRequest < 3) {
    unittest.expect(o.sizeGb, unittest.equals('foo'));
  }
  buildCounterDisksResizeRequest--;
}

buildUnnamed2266() {
  var o = new core.List<api.Disk>();
  o.add(buildDisk());
  o.add(buildDisk());
  return o;
}

checkUnnamed2266(core.List<api.Disk> o) {
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

buildUnnamed2267() {
  var o = new core.List<api.DisksScopedListWarningData>();
  o.add(buildDisksScopedListWarningData());
  o.add(buildDisksScopedListWarningData());
  return o;
}

checkUnnamed2267(core.List<api.DisksScopedListWarningData> o) {
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
    o.data = buildUnnamed2267();
    o.message = "foo";
  }
  buildCounterDisksScopedListWarning--;
  return o;
}

checkDisksScopedListWarning(api.DisksScopedListWarning o) {
  buildCounterDisksScopedListWarning++;
  if (buildCounterDisksScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed2267(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterDisksScopedListWarning--;
}

core.int buildCounterDisksScopedList = 0;
buildDisksScopedList() {
  var o = new api.DisksScopedList();
  buildCounterDisksScopedList++;
  if (buildCounterDisksScopedList < 3) {
    o.disks = buildUnnamed2266();
    o.warning = buildDisksScopedListWarning();
  }
  buildCounterDisksScopedList--;
  return o;
}

checkDisksScopedList(api.DisksScopedList o) {
  buildCounterDisksScopedList++;
  if (buildCounterDisksScopedList < 3) {
    checkUnnamed2266(o.disks);
    checkDisksScopedListWarning(o.warning);
  }
  buildCounterDisksScopedList--;
}

buildUnnamed2268() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2268(core.List<core.String> o) {
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
    o.ports = buildUnnamed2268();
  }
  buildCounterFirewallAllowed--;
  return o;
}

checkFirewallAllowed(api.FirewallAllowed o) {
  buildCounterFirewallAllowed++;
  if (buildCounterFirewallAllowed < 3) {
    unittest.expect(o.IPProtocol, unittest.equals('foo'));
    checkUnnamed2268(o.ports);
  }
  buildCounterFirewallAllowed--;
}

buildUnnamed2269() {
  var o = new core.List<api.FirewallAllowed>();
  o.add(buildFirewallAllowed());
  o.add(buildFirewallAllowed());
  return o;
}

checkUnnamed2269(core.List<api.FirewallAllowed> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFirewallAllowed(o[0]);
  checkFirewallAllowed(o[1]);
}

buildUnnamed2270() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2270(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFirewallDenied = 0;
buildFirewallDenied() {
  var o = new api.FirewallDenied();
  buildCounterFirewallDenied++;
  if (buildCounterFirewallDenied < 3) {
    o.IPProtocol = "foo";
    o.ports = buildUnnamed2270();
  }
  buildCounterFirewallDenied--;
  return o;
}

checkFirewallDenied(api.FirewallDenied o) {
  buildCounterFirewallDenied++;
  if (buildCounterFirewallDenied < 3) {
    unittest.expect(o.IPProtocol, unittest.equals('foo'));
    checkUnnamed2270(o.ports);
  }
  buildCounterFirewallDenied--;
}

buildUnnamed2271() {
  var o = new core.List<api.FirewallDenied>();
  o.add(buildFirewallDenied());
  o.add(buildFirewallDenied());
  return o;
}

checkUnnamed2271(core.List<api.FirewallDenied> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFirewallDenied(o[0]);
  checkFirewallDenied(o[1]);
}

buildUnnamed2272() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2272(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2273() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2273(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2274() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2274(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2275() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2275(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFirewall = 0;
buildFirewall() {
  var o = new api.Firewall();
  buildCounterFirewall++;
  if (buildCounterFirewall < 3) {
    o.allowed = buildUnnamed2269();
    o.creationTimestamp = "foo";
    o.denied = buildUnnamed2271();
    o.description = "foo";
    o.destinationRanges = buildUnnamed2272();
    o.direction = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.network = "foo";
    o.priority = 42;
    o.selfLink = "foo";
    o.sourceRanges = buildUnnamed2273();
    o.sourceTags = buildUnnamed2274();
    o.targetTags = buildUnnamed2275();
  }
  buildCounterFirewall--;
  return o;
}

checkFirewall(api.Firewall o) {
  buildCounterFirewall++;
  if (buildCounterFirewall < 3) {
    checkUnnamed2269(o.allowed);
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    checkUnnamed2271(o.denied);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed2272(o.destinationRanges);
    unittest.expect(o.direction, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkUnnamed2273(o.sourceRanges);
    checkUnnamed2274(o.sourceTags);
    checkUnnamed2275(o.targetTags);
  }
  buildCounterFirewall--;
}

buildUnnamed2276() {
  var o = new core.List<api.Firewall>();
  o.add(buildFirewall());
  o.add(buildFirewall());
  return o;
}

checkUnnamed2276(core.List<api.Firewall> o) {
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
    o.items = buildUnnamed2276();
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
    checkUnnamed2276(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterFirewallList--;
}

buildUnnamed2277() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2277(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterForwardingRule = 0;
buildForwardingRule() {
  var o = new api.ForwardingRule();
  buildCounterForwardingRule++;
  if (buildCounterForwardingRule < 3) {
    o.IPAddress = "foo";
    o.IPProtocol = "foo";
    o.backendService = "foo";
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.id = "foo";
    o.ipVersion = "foo";
    o.kind = "foo";
    o.loadBalancingScheme = "foo";
    o.name = "foo";
    o.network = "foo";
    o.portRange = "foo";
    o.ports = buildUnnamed2277();
    o.region = "foo";
    o.selfLink = "foo";
    o.subnetwork = "foo";
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
    unittest.expect(o.backendService, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.ipVersion, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.loadBalancingScheme, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.portRange, unittest.equals('foo'));
    checkUnnamed2277(o.ports);
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.subnetwork, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
  }
  buildCounterForwardingRule--;
}

buildUnnamed2278() {
  var o = new core.Map<core.String, api.ForwardingRulesScopedList>();
  o["x"] = buildForwardingRulesScopedList();
  o["y"] = buildForwardingRulesScopedList();
  return o;
}

checkUnnamed2278(core.Map<core.String, api.ForwardingRulesScopedList> o) {
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
    o.items = buildUnnamed2278();
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
    checkUnnamed2278(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterForwardingRuleAggregatedList--;
}

buildUnnamed2279() {
  var o = new core.List<api.ForwardingRule>();
  o.add(buildForwardingRule());
  o.add(buildForwardingRule());
  return o;
}

checkUnnamed2279(core.List<api.ForwardingRule> o) {
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
    o.items = buildUnnamed2279();
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
    checkUnnamed2279(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterForwardingRuleList--;
}

buildUnnamed2280() {
  var o = new core.List<api.ForwardingRule>();
  o.add(buildForwardingRule());
  o.add(buildForwardingRule());
  return o;
}

checkUnnamed2280(core.List<api.ForwardingRule> o) {
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

checkForwardingRulesScopedListWarningData(
    api.ForwardingRulesScopedListWarningData o) {
  buildCounterForwardingRulesScopedListWarningData++;
  if (buildCounterForwardingRulesScopedListWarningData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterForwardingRulesScopedListWarningData--;
}

buildUnnamed2281() {
  var o = new core.List<api.ForwardingRulesScopedListWarningData>();
  o.add(buildForwardingRulesScopedListWarningData());
  o.add(buildForwardingRulesScopedListWarningData());
  return o;
}

checkUnnamed2281(core.List<api.ForwardingRulesScopedListWarningData> o) {
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
    o.data = buildUnnamed2281();
    o.message = "foo";
  }
  buildCounterForwardingRulesScopedListWarning--;
  return o;
}

checkForwardingRulesScopedListWarning(api.ForwardingRulesScopedListWarning o) {
  buildCounterForwardingRulesScopedListWarning++;
  if (buildCounterForwardingRulesScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed2281(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterForwardingRulesScopedListWarning--;
}

core.int buildCounterForwardingRulesScopedList = 0;
buildForwardingRulesScopedList() {
  var o = new api.ForwardingRulesScopedList();
  buildCounterForwardingRulesScopedList++;
  if (buildCounterForwardingRulesScopedList < 3) {
    o.forwardingRules = buildUnnamed2280();
    o.warning = buildForwardingRulesScopedListWarning();
  }
  buildCounterForwardingRulesScopedList--;
  return o;
}

checkForwardingRulesScopedList(api.ForwardingRulesScopedList o) {
  buildCounterForwardingRulesScopedList++;
  if (buildCounterForwardingRulesScopedList < 3) {
    checkUnnamed2280(o.forwardingRules);
    checkForwardingRulesScopedListWarning(o.warning);
  }
  buildCounterForwardingRulesScopedList--;
}

buildUnnamed2282() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2282(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGlobalSetLabelsRequest = 0;
buildGlobalSetLabelsRequest() {
  var o = new api.GlobalSetLabelsRequest();
  buildCounterGlobalSetLabelsRequest++;
  if (buildCounterGlobalSetLabelsRequest < 3) {
    o.labelFingerprint = "foo";
    o.labels = buildUnnamed2282();
  }
  buildCounterGlobalSetLabelsRequest--;
  return o;
}

checkGlobalSetLabelsRequest(api.GlobalSetLabelsRequest o) {
  buildCounterGlobalSetLabelsRequest++;
  if (buildCounterGlobalSetLabelsRequest < 3) {
    unittest.expect(o.labelFingerprint, unittest.equals('foo'));
    checkUnnamed2282(o.labels);
  }
  buildCounterGlobalSetLabelsRequest--;
}

core.int buildCounterGuestOsFeature = 0;
buildGuestOsFeature() {
  var o = new api.GuestOsFeature();
  buildCounterGuestOsFeature++;
  if (buildCounterGuestOsFeature < 3) {
    o.type = "foo";
  }
  buildCounterGuestOsFeature--;
  return o;
}

checkGuestOsFeature(api.GuestOsFeature o) {
  buildCounterGuestOsFeature++;
  if (buildCounterGuestOsFeature < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGuestOsFeature--;
}

core.int buildCounterHTTPHealthCheck = 0;
buildHTTPHealthCheck() {
  var o = new api.HTTPHealthCheck();
  buildCounterHTTPHealthCheck++;
  if (buildCounterHTTPHealthCheck < 3) {
    o.host = "foo";
    o.port = 42;
    o.portName = "foo";
    o.proxyHeader = "foo";
    o.requestPath = "foo";
  }
  buildCounterHTTPHealthCheck--;
  return o;
}

checkHTTPHealthCheck(api.HTTPHealthCheck o) {
  buildCounterHTTPHealthCheck++;
  if (buildCounterHTTPHealthCheck < 3) {
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.port, unittest.equals(42));
    unittest.expect(o.portName, unittest.equals('foo'));
    unittest.expect(o.proxyHeader, unittest.equals('foo'));
    unittest.expect(o.requestPath, unittest.equals('foo'));
  }
  buildCounterHTTPHealthCheck--;
}

core.int buildCounterHTTPSHealthCheck = 0;
buildHTTPSHealthCheck() {
  var o = new api.HTTPSHealthCheck();
  buildCounterHTTPSHealthCheck++;
  if (buildCounterHTTPSHealthCheck < 3) {
    o.host = "foo";
    o.port = 42;
    o.portName = "foo";
    o.proxyHeader = "foo";
    o.requestPath = "foo";
  }
  buildCounterHTTPSHealthCheck--;
  return o;
}

checkHTTPSHealthCheck(api.HTTPSHealthCheck o) {
  buildCounterHTTPSHealthCheck++;
  if (buildCounterHTTPSHealthCheck < 3) {
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.port, unittest.equals(42));
    unittest.expect(o.portName, unittest.equals('foo'));
    unittest.expect(o.proxyHeader, unittest.equals('foo'));
    unittest.expect(o.requestPath, unittest.equals('foo'));
  }
  buildCounterHTTPSHealthCheck--;
}

core.int buildCounterHealthCheck = 0;
buildHealthCheck() {
  var o = new api.HealthCheck();
  buildCounterHealthCheck++;
  if (buildCounterHealthCheck < 3) {
    o.checkIntervalSec = 42;
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.healthyThreshold = 42;
    o.httpHealthCheck = buildHTTPHealthCheck();
    o.httpsHealthCheck = buildHTTPSHealthCheck();
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.selfLink = "foo";
    o.sslHealthCheck = buildSSLHealthCheck();
    o.tcpHealthCheck = buildTCPHealthCheck();
    o.timeoutSec = 42;
    o.type = "foo";
    o.unhealthyThreshold = 42;
  }
  buildCounterHealthCheck--;
  return o;
}

checkHealthCheck(api.HealthCheck o) {
  buildCounterHealthCheck++;
  if (buildCounterHealthCheck < 3) {
    unittest.expect(o.checkIntervalSec, unittest.equals(42));
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.healthyThreshold, unittest.equals(42));
    checkHTTPHealthCheck(o.httpHealthCheck);
    checkHTTPSHealthCheck(o.httpsHealthCheck);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkSSLHealthCheck(o.sslHealthCheck);
    checkTCPHealthCheck(o.tcpHealthCheck);
    unittest.expect(o.timeoutSec, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.unhealthyThreshold, unittest.equals(42));
  }
  buildCounterHealthCheck--;
}

buildUnnamed2283() {
  var o = new core.List<api.HealthCheck>();
  o.add(buildHealthCheck());
  o.add(buildHealthCheck());
  return o;
}

checkUnnamed2283(core.List<api.HealthCheck> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHealthCheck(o[0]);
  checkHealthCheck(o[1]);
}

core.int buildCounterHealthCheckList = 0;
buildHealthCheckList() {
  var o = new api.HealthCheckList();
  buildCounterHealthCheckList++;
  if (buildCounterHealthCheckList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2283();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterHealthCheckList--;
  return o;
}

checkHealthCheckList(api.HealthCheckList o) {
  buildCounterHealthCheckList++;
  if (buildCounterHealthCheckList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2283(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterHealthCheckList--;
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

buildUnnamed2284() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2284(core.List<core.String> o) {
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
    o.hosts = buildUnnamed2284();
    o.pathMatcher = "foo";
  }
  buildCounterHostRule--;
  return o;
}

checkHostRule(api.HostRule o) {
  buildCounterHostRule++;
  if (buildCounterHostRule < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed2284(o.hosts);
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

buildUnnamed2285() {
  var o = new core.List<api.HttpHealthCheck>();
  o.add(buildHttpHealthCheck());
  o.add(buildHttpHealthCheck());
  return o;
}

checkUnnamed2285(core.List<api.HttpHealthCheck> o) {
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
    o.items = buildUnnamed2285();
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
    checkUnnamed2285(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterHttpHealthCheckList--;
}

core.int buildCounterHttpsHealthCheck = 0;
buildHttpsHealthCheck() {
  var o = new api.HttpsHealthCheck();
  buildCounterHttpsHealthCheck++;
  if (buildCounterHttpsHealthCheck < 3) {
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
  buildCounterHttpsHealthCheck--;
  return o;
}

checkHttpsHealthCheck(api.HttpsHealthCheck o) {
  buildCounterHttpsHealthCheck++;
  if (buildCounterHttpsHealthCheck < 3) {
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
  buildCounterHttpsHealthCheck--;
}

buildUnnamed2286() {
  var o = new core.List<api.HttpsHealthCheck>();
  o.add(buildHttpsHealthCheck());
  o.add(buildHttpsHealthCheck());
  return o;
}

checkUnnamed2286(core.List<api.HttpsHealthCheck> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpsHealthCheck(o[0]);
  checkHttpsHealthCheck(o[1]);
}

core.int buildCounterHttpsHealthCheckList = 0;
buildHttpsHealthCheckList() {
  var o = new api.HttpsHealthCheckList();
  buildCounterHttpsHealthCheckList++;
  if (buildCounterHttpsHealthCheckList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2286();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterHttpsHealthCheckList--;
  return o;
}

checkHttpsHealthCheckList(api.HttpsHealthCheckList o) {
  buildCounterHttpsHealthCheckList++;
  if (buildCounterHttpsHealthCheckList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2286(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterHttpsHealthCheckList--;
}

buildUnnamed2287() {
  var o = new core.List<api.GuestOsFeature>();
  o.add(buildGuestOsFeature());
  o.add(buildGuestOsFeature());
  return o;
}

checkUnnamed2287(core.List<api.GuestOsFeature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGuestOsFeature(o[0]);
  checkGuestOsFeature(o[1]);
}

buildUnnamed2288() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2288(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed2289() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2289(core.List<core.String> o) {
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
    o.family = "foo";
    o.guestOsFeatures = buildUnnamed2287();
    o.id = "foo";
    o.imageEncryptionKey = buildCustomerEncryptionKey();
    o.kind = "foo";
    o.labelFingerprint = "foo";
    o.labels = buildUnnamed2288();
    o.licenses = buildUnnamed2289();
    o.name = "foo";
    o.rawDisk = buildImageRawDisk();
    o.selfLink = "foo";
    o.sourceDisk = "foo";
    o.sourceDiskEncryptionKey = buildCustomerEncryptionKey();
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
    unittest.expect(o.family, unittest.equals('foo'));
    checkUnnamed2287(o.guestOsFeatures);
    unittest.expect(o.id, unittest.equals('foo'));
    checkCustomerEncryptionKey(o.imageEncryptionKey);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.labelFingerprint, unittest.equals('foo'));
    checkUnnamed2288(o.labels);
    checkUnnamed2289(o.licenses);
    unittest.expect(o.name, unittest.equals('foo'));
    checkImageRawDisk(o.rawDisk);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.sourceDisk, unittest.equals('foo'));
    checkCustomerEncryptionKey(o.sourceDiskEncryptionKey);
    unittest.expect(o.sourceDiskId, unittest.equals('foo'));
    unittest.expect(o.sourceType, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterImage--;
}

buildUnnamed2290() {
  var o = new core.List<api.Image>();
  o.add(buildImage());
  o.add(buildImage());
  return o;
}

checkUnnamed2290(core.List<api.Image> o) {
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
    o.items = buildUnnamed2290();
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
    checkUnnamed2290(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterImageList--;
}

buildUnnamed2291() {
  var o = new core.List<api.AttachedDisk>();
  o.add(buildAttachedDisk());
  o.add(buildAttachedDisk());
  return o;
}

checkUnnamed2291(core.List<api.AttachedDisk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachedDisk(o[0]);
  checkAttachedDisk(o[1]);
}

buildUnnamed2292() {
  var o = new core.List<api.AcceleratorConfig>();
  o.add(buildAcceleratorConfig());
  o.add(buildAcceleratorConfig());
  return o;
}

checkUnnamed2292(core.List<api.AcceleratorConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcceleratorConfig(o[0]);
  checkAcceleratorConfig(o[1]);
}

buildUnnamed2293() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2293(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed2294() {
  var o = new core.List<api.NetworkInterface>();
  o.add(buildNetworkInterface());
  o.add(buildNetworkInterface());
  return o;
}

checkUnnamed2294(core.List<api.NetworkInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkInterface(o[0]);
  checkNetworkInterface(o[1]);
}

buildUnnamed2295() {
  var o = new core.List<api.ServiceAccount>();
  o.add(buildServiceAccount());
  o.add(buildServiceAccount());
  return o;
}

checkUnnamed2295(core.List<api.ServiceAccount> o) {
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
    o.cpuPlatform = "foo";
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.disks = buildUnnamed2291();
    o.guestAccelerators = buildUnnamed2292();
    o.id = "foo";
    o.kind = "foo";
    o.labelFingerprint = "foo";
    o.labels = buildUnnamed2293();
    o.machineType = "foo";
    o.metadata = buildMetadata();
    o.name = "foo";
    o.networkInterfaces = buildUnnamed2294();
    o.scheduling = buildScheduling();
    o.selfLink = "foo";
    o.serviceAccounts = buildUnnamed2295();
    o.startRestricted = true;
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
    unittest.expect(o.cpuPlatform, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed2291(o.disks);
    checkUnnamed2292(o.guestAccelerators);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.labelFingerprint, unittest.equals('foo'));
    checkUnnamed2293(o.labels);
    unittest.expect(o.machineType, unittest.equals('foo'));
    checkMetadata(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2294(o.networkInterfaces);
    checkScheduling(o.scheduling);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkUnnamed2295(o.serviceAccounts);
    unittest.expect(o.startRestricted, unittest.isTrue);
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.statusMessage, unittest.equals('foo'));
    checkTags(o.tags);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterInstance--;
}

buildUnnamed2296() {
  var o = new core.Map<core.String, api.InstancesScopedList>();
  o["x"] = buildInstancesScopedList();
  o["y"] = buildInstancesScopedList();
  return o;
}

checkUnnamed2296(core.Map<core.String, api.InstancesScopedList> o) {
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
    o.items = buildUnnamed2296();
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
    checkUnnamed2296(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterInstanceAggregatedList--;
}

buildUnnamed2297() {
  var o = new core.List<api.NamedPort>();
  o.add(buildNamedPort());
  o.add(buildNamedPort());
  return o;
}

checkUnnamed2297(core.List<api.NamedPort> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedPort(o[0]);
  checkNamedPort(o[1]);
}

core.int buildCounterInstanceGroup = 0;
buildInstanceGroup() {
  var o = new api.InstanceGroup();
  buildCounterInstanceGroup++;
  if (buildCounterInstanceGroup < 3) {
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.fingerprint = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.namedPorts = buildUnnamed2297();
    o.network = "foo";
    o.region = "foo";
    o.selfLink = "foo";
    o.size = 42;
    o.subnetwork = "foo";
    o.zone = "foo";
  }
  buildCounterInstanceGroup--;
  return o;
}

checkInstanceGroup(api.InstanceGroup o) {
  buildCounterInstanceGroup++;
  if (buildCounterInstanceGroup < 3) {
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.fingerprint, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2297(o.namedPorts);
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.size, unittest.equals(42));
    unittest.expect(o.subnetwork, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterInstanceGroup--;
}

buildUnnamed2298() {
  var o = new core.Map<core.String, api.InstanceGroupsScopedList>();
  o["x"] = buildInstanceGroupsScopedList();
  o["y"] = buildInstanceGroupsScopedList();
  return o;
}

checkUnnamed2298(core.Map<core.String, api.InstanceGroupsScopedList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceGroupsScopedList(o["x"]);
  checkInstanceGroupsScopedList(o["y"]);
}

core.int buildCounterInstanceGroupAggregatedList = 0;
buildInstanceGroupAggregatedList() {
  var o = new api.InstanceGroupAggregatedList();
  buildCounterInstanceGroupAggregatedList++;
  if (buildCounterInstanceGroupAggregatedList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2298();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterInstanceGroupAggregatedList--;
  return o;
}

checkInstanceGroupAggregatedList(api.InstanceGroupAggregatedList o) {
  buildCounterInstanceGroupAggregatedList++;
  if (buildCounterInstanceGroupAggregatedList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2298(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterInstanceGroupAggregatedList--;
}

buildUnnamed2299() {
  var o = new core.List<api.InstanceGroup>();
  o.add(buildInstanceGroup());
  o.add(buildInstanceGroup());
  return o;
}

checkUnnamed2299(core.List<api.InstanceGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceGroup(o[0]);
  checkInstanceGroup(o[1]);
}

core.int buildCounterInstanceGroupList = 0;
buildInstanceGroupList() {
  var o = new api.InstanceGroupList();
  buildCounterInstanceGroupList++;
  if (buildCounterInstanceGroupList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2299();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterInstanceGroupList--;
  return o;
}

checkInstanceGroupList(api.InstanceGroupList o) {
  buildCounterInstanceGroupList++;
  if (buildCounterInstanceGroupList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2299(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterInstanceGroupList--;
}

buildUnnamed2300() {
  var o = new core.List<api.NamedPort>();
  o.add(buildNamedPort());
  o.add(buildNamedPort());
  return o;
}

checkUnnamed2300(core.List<api.NamedPort> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedPort(o[0]);
  checkNamedPort(o[1]);
}

buildUnnamed2301() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2301(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInstanceGroupManager = 0;
buildInstanceGroupManager() {
  var o = new api.InstanceGroupManager();
  buildCounterInstanceGroupManager++;
  if (buildCounterInstanceGroupManager < 3) {
    o.baseInstanceName = "foo";
    o.creationTimestamp = "foo";
    o.currentActions = buildInstanceGroupManagerActionsSummary();
    o.description = "foo";
    o.fingerprint = "foo";
    o.id = "foo";
    o.instanceGroup = "foo";
    o.instanceTemplate = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.namedPorts = buildUnnamed2300();
    o.region = "foo";
    o.selfLink = "foo";
    o.targetPools = buildUnnamed2301();
    o.targetSize = 42;
    o.zone = "foo";
  }
  buildCounterInstanceGroupManager--;
  return o;
}

checkInstanceGroupManager(api.InstanceGroupManager o) {
  buildCounterInstanceGroupManager++;
  if (buildCounterInstanceGroupManager < 3) {
    unittest.expect(o.baseInstanceName, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    checkInstanceGroupManagerActionsSummary(o.currentActions);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.fingerprint, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.instanceGroup, unittest.equals('foo'));
    unittest.expect(o.instanceTemplate, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2300(o.namedPorts);
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkUnnamed2301(o.targetPools);
    unittest.expect(o.targetSize, unittest.equals(42));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterInstanceGroupManager--;
}

core.int buildCounterInstanceGroupManagerActionsSummary = 0;
buildInstanceGroupManagerActionsSummary() {
  var o = new api.InstanceGroupManagerActionsSummary();
  buildCounterInstanceGroupManagerActionsSummary++;
  if (buildCounterInstanceGroupManagerActionsSummary < 3) {
    o.abandoning = 42;
    o.creating = 42;
    o.creatingWithoutRetries = 42;
    o.deleting = 42;
    o.none = 42;
    o.recreating = 42;
    o.refreshing = 42;
    o.restarting = 42;
  }
  buildCounterInstanceGroupManagerActionsSummary--;
  return o;
}

checkInstanceGroupManagerActionsSummary(
    api.InstanceGroupManagerActionsSummary o) {
  buildCounterInstanceGroupManagerActionsSummary++;
  if (buildCounterInstanceGroupManagerActionsSummary < 3) {
    unittest.expect(o.abandoning, unittest.equals(42));
    unittest.expect(o.creating, unittest.equals(42));
    unittest.expect(o.creatingWithoutRetries, unittest.equals(42));
    unittest.expect(o.deleting, unittest.equals(42));
    unittest.expect(o.none, unittest.equals(42));
    unittest.expect(o.recreating, unittest.equals(42));
    unittest.expect(o.refreshing, unittest.equals(42));
    unittest.expect(o.restarting, unittest.equals(42));
  }
  buildCounterInstanceGroupManagerActionsSummary--;
}

buildUnnamed2302() {
  var o = new core.Map<core.String, api.InstanceGroupManagersScopedList>();
  o["x"] = buildInstanceGroupManagersScopedList();
  o["y"] = buildInstanceGroupManagersScopedList();
  return o;
}

checkUnnamed2302(core.Map<core.String, api.InstanceGroupManagersScopedList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceGroupManagersScopedList(o["x"]);
  checkInstanceGroupManagersScopedList(o["y"]);
}

core.int buildCounterInstanceGroupManagerAggregatedList = 0;
buildInstanceGroupManagerAggregatedList() {
  var o = new api.InstanceGroupManagerAggregatedList();
  buildCounterInstanceGroupManagerAggregatedList++;
  if (buildCounterInstanceGroupManagerAggregatedList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2302();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterInstanceGroupManagerAggregatedList--;
  return o;
}

checkInstanceGroupManagerAggregatedList(
    api.InstanceGroupManagerAggregatedList o) {
  buildCounterInstanceGroupManagerAggregatedList++;
  if (buildCounterInstanceGroupManagerAggregatedList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2302(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterInstanceGroupManagerAggregatedList--;
}

buildUnnamed2303() {
  var o = new core.List<api.InstanceGroupManager>();
  o.add(buildInstanceGroupManager());
  o.add(buildInstanceGroupManager());
  return o;
}

checkUnnamed2303(core.List<api.InstanceGroupManager> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceGroupManager(o[0]);
  checkInstanceGroupManager(o[1]);
}

core.int buildCounterInstanceGroupManagerList = 0;
buildInstanceGroupManagerList() {
  var o = new api.InstanceGroupManagerList();
  buildCounterInstanceGroupManagerList++;
  if (buildCounterInstanceGroupManagerList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2303();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterInstanceGroupManagerList--;
  return o;
}

checkInstanceGroupManagerList(api.InstanceGroupManagerList o) {
  buildCounterInstanceGroupManagerList++;
  if (buildCounterInstanceGroupManagerList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2303(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterInstanceGroupManagerList--;
}

buildUnnamed2304() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2304(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInstanceGroupManagersAbandonInstancesRequest = 0;
buildInstanceGroupManagersAbandonInstancesRequest() {
  var o = new api.InstanceGroupManagersAbandonInstancesRequest();
  buildCounterInstanceGroupManagersAbandonInstancesRequest++;
  if (buildCounterInstanceGroupManagersAbandonInstancesRequest < 3) {
    o.instances = buildUnnamed2304();
  }
  buildCounterInstanceGroupManagersAbandonInstancesRequest--;
  return o;
}

checkInstanceGroupManagersAbandonInstancesRequest(
    api.InstanceGroupManagersAbandonInstancesRequest o) {
  buildCounterInstanceGroupManagersAbandonInstancesRequest++;
  if (buildCounterInstanceGroupManagersAbandonInstancesRequest < 3) {
    checkUnnamed2304(o.instances);
  }
  buildCounterInstanceGroupManagersAbandonInstancesRequest--;
}

buildUnnamed2305() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2305(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInstanceGroupManagersDeleteInstancesRequest = 0;
buildInstanceGroupManagersDeleteInstancesRequest() {
  var o = new api.InstanceGroupManagersDeleteInstancesRequest();
  buildCounterInstanceGroupManagersDeleteInstancesRequest++;
  if (buildCounterInstanceGroupManagersDeleteInstancesRequest < 3) {
    o.instances = buildUnnamed2305();
  }
  buildCounterInstanceGroupManagersDeleteInstancesRequest--;
  return o;
}

checkInstanceGroupManagersDeleteInstancesRequest(
    api.InstanceGroupManagersDeleteInstancesRequest o) {
  buildCounterInstanceGroupManagersDeleteInstancesRequest++;
  if (buildCounterInstanceGroupManagersDeleteInstancesRequest < 3) {
    checkUnnamed2305(o.instances);
  }
  buildCounterInstanceGroupManagersDeleteInstancesRequest--;
}

buildUnnamed2306() {
  var o = new core.List<api.ManagedInstance>();
  o.add(buildManagedInstance());
  o.add(buildManagedInstance());
  return o;
}

checkUnnamed2306(core.List<api.ManagedInstance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedInstance(o[0]);
  checkManagedInstance(o[1]);
}

core.int buildCounterInstanceGroupManagersListManagedInstancesResponse = 0;
buildInstanceGroupManagersListManagedInstancesResponse() {
  var o = new api.InstanceGroupManagersListManagedInstancesResponse();
  buildCounterInstanceGroupManagersListManagedInstancesResponse++;
  if (buildCounterInstanceGroupManagersListManagedInstancesResponse < 3) {
    o.managedInstances = buildUnnamed2306();
  }
  buildCounterInstanceGroupManagersListManagedInstancesResponse--;
  return o;
}

checkInstanceGroupManagersListManagedInstancesResponse(
    api.InstanceGroupManagersListManagedInstancesResponse o) {
  buildCounterInstanceGroupManagersListManagedInstancesResponse++;
  if (buildCounterInstanceGroupManagersListManagedInstancesResponse < 3) {
    checkUnnamed2306(o.managedInstances);
  }
  buildCounterInstanceGroupManagersListManagedInstancesResponse--;
}

buildUnnamed2307() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2307(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInstanceGroupManagersRecreateInstancesRequest = 0;
buildInstanceGroupManagersRecreateInstancesRequest() {
  var o = new api.InstanceGroupManagersRecreateInstancesRequest();
  buildCounterInstanceGroupManagersRecreateInstancesRequest++;
  if (buildCounterInstanceGroupManagersRecreateInstancesRequest < 3) {
    o.instances = buildUnnamed2307();
  }
  buildCounterInstanceGroupManagersRecreateInstancesRequest--;
  return o;
}

checkInstanceGroupManagersRecreateInstancesRequest(
    api.InstanceGroupManagersRecreateInstancesRequest o) {
  buildCounterInstanceGroupManagersRecreateInstancesRequest++;
  if (buildCounterInstanceGroupManagersRecreateInstancesRequest < 3) {
    checkUnnamed2307(o.instances);
  }
  buildCounterInstanceGroupManagersRecreateInstancesRequest--;
}

buildUnnamed2308() {
  var o = new core.List<api.InstanceGroupManager>();
  o.add(buildInstanceGroupManager());
  o.add(buildInstanceGroupManager());
  return o;
}

checkUnnamed2308(core.List<api.InstanceGroupManager> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceGroupManager(o[0]);
  checkInstanceGroupManager(o[1]);
}

core.int buildCounterInstanceGroupManagersScopedListWarningData = 0;
buildInstanceGroupManagersScopedListWarningData() {
  var o = new api.InstanceGroupManagersScopedListWarningData();
  buildCounterInstanceGroupManagersScopedListWarningData++;
  if (buildCounterInstanceGroupManagersScopedListWarningData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterInstanceGroupManagersScopedListWarningData--;
  return o;
}

checkInstanceGroupManagersScopedListWarningData(
    api.InstanceGroupManagersScopedListWarningData o) {
  buildCounterInstanceGroupManagersScopedListWarningData++;
  if (buildCounterInstanceGroupManagersScopedListWarningData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterInstanceGroupManagersScopedListWarningData--;
}

buildUnnamed2309() {
  var o = new core.List<api.InstanceGroupManagersScopedListWarningData>();
  o.add(buildInstanceGroupManagersScopedListWarningData());
  o.add(buildInstanceGroupManagersScopedListWarningData());
  return o;
}

checkUnnamed2309(core.List<api.InstanceGroupManagersScopedListWarningData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceGroupManagersScopedListWarningData(o[0]);
  checkInstanceGroupManagersScopedListWarningData(o[1]);
}

core.int buildCounterInstanceGroupManagersScopedListWarning = 0;
buildInstanceGroupManagersScopedListWarning() {
  var o = new api.InstanceGroupManagersScopedListWarning();
  buildCounterInstanceGroupManagersScopedListWarning++;
  if (buildCounterInstanceGroupManagersScopedListWarning < 3) {
    o.code = "foo";
    o.data = buildUnnamed2309();
    o.message = "foo";
  }
  buildCounterInstanceGroupManagersScopedListWarning--;
  return o;
}

checkInstanceGroupManagersScopedListWarning(
    api.InstanceGroupManagersScopedListWarning o) {
  buildCounterInstanceGroupManagersScopedListWarning++;
  if (buildCounterInstanceGroupManagersScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed2309(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterInstanceGroupManagersScopedListWarning--;
}

core.int buildCounterInstanceGroupManagersScopedList = 0;
buildInstanceGroupManagersScopedList() {
  var o = new api.InstanceGroupManagersScopedList();
  buildCounterInstanceGroupManagersScopedList++;
  if (buildCounterInstanceGroupManagersScopedList < 3) {
    o.instanceGroupManagers = buildUnnamed2308();
    o.warning = buildInstanceGroupManagersScopedListWarning();
  }
  buildCounterInstanceGroupManagersScopedList--;
  return o;
}

checkInstanceGroupManagersScopedList(api.InstanceGroupManagersScopedList o) {
  buildCounterInstanceGroupManagersScopedList++;
  if (buildCounterInstanceGroupManagersScopedList < 3) {
    checkUnnamed2308(o.instanceGroupManagers);
    checkInstanceGroupManagersScopedListWarning(o.warning);
  }
  buildCounterInstanceGroupManagersScopedList--;
}

core.int buildCounterInstanceGroupManagersSetInstanceTemplateRequest = 0;
buildInstanceGroupManagersSetInstanceTemplateRequest() {
  var o = new api.InstanceGroupManagersSetInstanceTemplateRequest();
  buildCounterInstanceGroupManagersSetInstanceTemplateRequest++;
  if (buildCounterInstanceGroupManagersSetInstanceTemplateRequest < 3) {
    o.instanceTemplate = "foo";
  }
  buildCounterInstanceGroupManagersSetInstanceTemplateRequest--;
  return o;
}

checkInstanceGroupManagersSetInstanceTemplateRequest(
    api.InstanceGroupManagersSetInstanceTemplateRequest o) {
  buildCounterInstanceGroupManagersSetInstanceTemplateRequest++;
  if (buildCounterInstanceGroupManagersSetInstanceTemplateRequest < 3) {
    unittest.expect(o.instanceTemplate, unittest.equals('foo'));
  }
  buildCounterInstanceGroupManagersSetInstanceTemplateRequest--;
}

buildUnnamed2310() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2310(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInstanceGroupManagersSetTargetPoolsRequest = 0;
buildInstanceGroupManagersSetTargetPoolsRequest() {
  var o = new api.InstanceGroupManagersSetTargetPoolsRequest();
  buildCounterInstanceGroupManagersSetTargetPoolsRequest++;
  if (buildCounterInstanceGroupManagersSetTargetPoolsRequest < 3) {
    o.fingerprint = "foo";
    o.targetPools = buildUnnamed2310();
  }
  buildCounterInstanceGroupManagersSetTargetPoolsRequest--;
  return o;
}

checkInstanceGroupManagersSetTargetPoolsRequest(
    api.InstanceGroupManagersSetTargetPoolsRequest o) {
  buildCounterInstanceGroupManagersSetTargetPoolsRequest++;
  if (buildCounterInstanceGroupManagersSetTargetPoolsRequest < 3) {
    unittest.expect(o.fingerprint, unittest.equals('foo'));
    checkUnnamed2310(o.targetPools);
  }
  buildCounterInstanceGroupManagersSetTargetPoolsRequest--;
}

buildUnnamed2311() {
  var o = new core.List<api.InstanceReference>();
  o.add(buildInstanceReference());
  o.add(buildInstanceReference());
  return o;
}

checkUnnamed2311(core.List<api.InstanceReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceReference(o[0]);
  checkInstanceReference(o[1]);
}

core.int buildCounterInstanceGroupsAddInstancesRequest = 0;
buildInstanceGroupsAddInstancesRequest() {
  var o = new api.InstanceGroupsAddInstancesRequest();
  buildCounterInstanceGroupsAddInstancesRequest++;
  if (buildCounterInstanceGroupsAddInstancesRequest < 3) {
    o.instances = buildUnnamed2311();
  }
  buildCounterInstanceGroupsAddInstancesRequest--;
  return o;
}

checkInstanceGroupsAddInstancesRequest(
    api.InstanceGroupsAddInstancesRequest o) {
  buildCounterInstanceGroupsAddInstancesRequest++;
  if (buildCounterInstanceGroupsAddInstancesRequest < 3) {
    checkUnnamed2311(o.instances);
  }
  buildCounterInstanceGroupsAddInstancesRequest--;
}

buildUnnamed2312() {
  var o = new core.List<api.InstanceWithNamedPorts>();
  o.add(buildInstanceWithNamedPorts());
  o.add(buildInstanceWithNamedPorts());
  return o;
}

checkUnnamed2312(core.List<api.InstanceWithNamedPorts> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceWithNamedPorts(o[0]);
  checkInstanceWithNamedPorts(o[1]);
}

core.int buildCounterInstanceGroupsListInstances = 0;
buildInstanceGroupsListInstances() {
  var o = new api.InstanceGroupsListInstances();
  buildCounterInstanceGroupsListInstances++;
  if (buildCounterInstanceGroupsListInstances < 3) {
    o.id = "foo";
    o.items = buildUnnamed2312();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterInstanceGroupsListInstances--;
  return o;
}

checkInstanceGroupsListInstances(api.InstanceGroupsListInstances o) {
  buildCounterInstanceGroupsListInstances++;
  if (buildCounterInstanceGroupsListInstances < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2312(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterInstanceGroupsListInstances--;
}

core.int buildCounterInstanceGroupsListInstancesRequest = 0;
buildInstanceGroupsListInstancesRequest() {
  var o = new api.InstanceGroupsListInstancesRequest();
  buildCounterInstanceGroupsListInstancesRequest++;
  if (buildCounterInstanceGroupsListInstancesRequest < 3) {
    o.instanceState = "foo";
  }
  buildCounterInstanceGroupsListInstancesRequest--;
  return o;
}

checkInstanceGroupsListInstancesRequest(
    api.InstanceGroupsListInstancesRequest o) {
  buildCounterInstanceGroupsListInstancesRequest++;
  if (buildCounterInstanceGroupsListInstancesRequest < 3) {
    unittest.expect(o.instanceState, unittest.equals('foo'));
  }
  buildCounterInstanceGroupsListInstancesRequest--;
}

buildUnnamed2313() {
  var o = new core.List<api.InstanceReference>();
  o.add(buildInstanceReference());
  o.add(buildInstanceReference());
  return o;
}

checkUnnamed2313(core.List<api.InstanceReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceReference(o[0]);
  checkInstanceReference(o[1]);
}

core.int buildCounterInstanceGroupsRemoveInstancesRequest = 0;
buildInstanceGroupsRemoveInstancesRequest() {
  var o = new api.InstanceGroupsRemoveInstancesRequest();
  buildCounterInstanceGroupsRemoveInstancesRequest++;
  if (buildCounterInstanceGroupsRemoveInstancesRequest < 3) {
    o.instances = buildUnnamed2313();
  }
  buildCounterInstanceGroupsRemoveInstancesRequest--;
  return o;
}

checkInstanceGroupsRemoveInstancesRequest(
    api.InstanceGroupsRemoveInstancesRequest o) {
  buildCounterInstanceGroupsRemoveInstancesRequest++;
  if (buildCounterInstanceGroupsRemoveInstancesRequest < 3) {
    checkUnnamed2313(o.instances);
  }
  buildCounterInstanceGroupsRemoveInstancesRequest--;
}

buildUnnamed2314() {
  var o = new core.List<api.InstanceGroup>();
  o.add(buildInstanceGroup());
  o.add(buildInstanceGroup());
  return o;
}

checkUnnamed2314(core.List<api.InstanceGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceGroup(o[0]);
  checkInstanceGroup(o[1]);
}

core.int buildCounterInstanceGroupsScopedListWarningData = 0;
buildInstanceGroupsScopedListWarningData() {
  var o = new api.InstanceGroupsScopedListWarningData();
  buildCounterInstanceGroupsScopedListWarningData++;
  if (buildCounterInstanceGroupsScopedListWarningData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterInstanceGroupsScopedListWarningData--;
  return o;
}

checkInstanceGroupsScopedListWarningData(
    api.InstanceGroupsScopedListWarningData o) {
  buildCounterInstanceGroupsScopedListWarningData++;
  if (buildCounterInstanceGroupsScopedListWarningData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterInstanceGroupsScopedListWarningData--;
}

buildUnnamed2315() {
  var o = new core.List<api.InstanceGroupsScopedListWarningData>();
  o.add(buildInstanceGroupsScopedListWarningData());
  o.add(buildInstanceGroupsScopedListWarningData());
  return o;
}

checkUnnamed2315(core.List<api.InstanceGroupsScopedListWarningData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceGroupsScopedListWarningData(o[0]);
  checkInstanceGroupsScopedListWarningData(o[1]);
}

core.int buildCounterInstanceGroupsScopedListWarning = 0;
buildInstanceGroupsScopedListWarning() {
  var o = new api.InstanceGroupsScopedListWarning();
  buildCounterInstanceGroupsScopedListWarning++;
  if (buildCounterInstanceGroupsScopedListWarning < 3) {
    o.code = "foo";
    o.data = buildUnnamed2315();
    o.message = "foo";
  }
  buildCounterInstanceGroupsScopedListWarning--;
  return o;
}

checkInstanceGroupsScopedListWarning(api.InstanceGroupsScopedListWarning o) {
  buildCounterInstanceGroupsScopedListWarning++;
  if (buildCounterInstanceGroupsScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed2315(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterInstanceGroupsScopedListWarning--;
}

core.int buildCounterInstanceGroupsScopedList = 0;
buildInstanceGroupsScopedList() {
  var o = new api.InstanceGroupsScopedList();
  buildCounterInstanceGroupsScopedList++;
  if (buildCounterInstanceGroupsScopedList < 3) {
    o.instanceGroups = buildUnnamed2314();
    o.warning = buildInstanceGroupsScopedListWarning();
  }
  buildCounterInstanceGroupsScopedList--;
  return o;
}

checkInstanceGroupsScopedList(api.InstanceGroupsScopedList o) {
  buildCounterInstanceGroupsScopedList++;
  if (buildCounterInstanceGroupsScopedList < 3) {
    checkUnnamed2314(o.instanceGroups);
    checkInstanceGroupsScopedListWarning(o.warning);
  }
  buildCounterInstanceGroupsScopedList--;
}

buildUnnamed2316() {
  var o = new core.List<api.NamedPort>();
  o.add(buildNamedPort());
  o.add(buildNamedPort());
  return o;
}

checkUnnamed2316(core.List<api.NamedPort> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedPort(o[0]);
  checkNamedPort(o[1]);
}

core.int buildCounterInstanceGroupsSetNamedPortsRequest = 0;
buildInstanceGroupsSetNamedPortsRequest() {
  var o = new api.InstanceGroupsSetNamedPortsRequest();
  buildCounterInstanceGroupsSetNamedPortsRequest++;
  if (buildCounterInstanceGroupsSetNamedPortsRequest < 3) {
    o.fingerprint = "foo";
    o.namedPorts = buildUnnamed2316();
  }
  buildCounterInstanceGroupsSetNamedPortsRequest--;
  return o;
}

checkInstanceGroupsSetNamedPortsRequest(
    api.InstanceGroupsSetNamedPortsRequest o) {
  buildCounterInstanceGroupsSetNamedPortsRequest++;
  if (buildCounterInstanceGroupsSetNamedPortsRequest < 3) {
    unittest.expect(o.fingerprint, unittest.equals('foo'));
    checkUnnamed2316(o.namedPorts);
  }
  buildCounterInstanceGroupsSetNamedPortsRequest--;
}

buildUnnamed2317() {
  var o = new core.List<api.Instance>();
  o.add(buildInstance());
  o.add(buildInstance());
  return o;
}

checkUnnamed2317(core.List<api.Instance> o) {
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
    o.items = buildUnnamed2317();
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
    checkUnnamed2317(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterInstanceList--;
}

core.int buildCounterInstanceMoveRequest = 0;
buildInstanceMoveRequest() {
  var o = new api.InstanceMoveRequest();
  buildCounterInstanceMoveRequest++;
  if (buildCounterInstanceMoveRequest < 3) {
    o.destinationZone = "foo";
    o.targetInstance = "foo";
  }
  buildCounterInstanceMoveRequest--;
  return o;
}

checkInstanceMoveRequest(api.InstanceMoveRequest o) {
  buildCounterInstanceMoveRequest++;
  if (buildCounterInstanceMoveRequest < 3) {
    unittest.expect(o.destinationZone, unittest.equals('foo'));
    unittest.expect(o.targetInstance, unittest.equals('foo'));
  }
  buildCounterInstanceMoveRequest--;
}

buildUnnamed2318() {
  var o = new core.List<api.AttachedDisk>();
  o.add(buildAttachedDisk());
  o.add(buildAttachedDisk());
  return o;
}

checkUnnamed2318(core.List<api.AttachedDisk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachedDisk(o[0]);
  checkAttachedDisk(o[1]);
}

buildUnnamed2319() {
  var o = new core.List<api.AcceleratorConfig>();
  o.add(buildAcceleratorConfig());
  o.add(buildAcceleratorConfig());
  return o;
}

checkUnnamed2319(core.List<api.AcceleratorConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcceleratorConfig(o[0]);
  checkAcceleratorConfig(o[1]);
}

buildUnnamed2320() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2320(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed2321() {
  var o = new core.List<api.NetworkInterface>();
  o.add(buildNetworkInterface());
  o.add(buildNetworkInterface());
  return o;
}

checkUnnamed2321(core.List<api.NetworkInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkInterface(o[0]);
  checkNetworkInterface(o[1]);
}

buildUnnamed2322() {
  var o = new core.List<api.ServiceAccount>();
  o.add(buildServiceAccount());
  o.add(buildServiceAccount());
  return o;
}

checkUnnamed2322(core.List<api.ServiceAccount> o) {
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
    o.disks = buildUnnamed2318();
    o.guestAccelerators = buildUnnamed2319();
    o.labels = buildUnnamed2320();
    o.machineType = "foo";
    o.metadata = buildMetadata();
    o.networkInterfaces = buildUnnamed2321();
    o.scheduling = buildScheduling();
    o.serviceAccounts = buildUnnamed2322();
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
    checkUnnamed2318(o.disks);
    checkUnnamed2319(o.guestAccelerators);
    checkUnnamed2320(o.labels);
    unittest.expect(o.machineType, unittest.equals('foo'));
    checkMetadata(o.metadata);
    checkUnnamed2321(o.networkInterfaces);
    checkScheduling(o.scheduling);
    checkUnnamed2322(o.serviceAccounts);
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

buildUnnamed2323() {
  var o = new core.List<api.InstanceTemplate>();
  o.add(buildInstanceTemplate());
  o.add(buildInstanceTemplate());
  return o;
}

checkUnnamed2323(core.List<api.InstanceTemplate> o) {
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
    o.items = buildUnnamed2323();
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
    checkUnnamed2323(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterInstanceTemplateList--;
}

buildUnnamed2324() {
  var o = new core.List<api.NamedPort>();
  o.add(buildNamedPort());
  o.add(buildNamedPort());
  return o;
}

checkUnnamed2324(core.List<api.NamedPort> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedPort(o[0]);
  checkNamedPort(o[1]);
}

core.int buildCounterInstanceWithNamedPorts = 0;
buildInstanceWithNamedPorts() {
  var o = new api.InstanceWithNamedPorts();
  buildCounterInstanceWithNamedPorts++;
  if (buildCounterInstanceWithNamedPorts < 3) {
    o.instance = "foo";
    o.namedPorts = buildUnnamed2324();
    o.status = "foo";
  }
  buildCounterInstanceWithNamedPorts--;
  return o;
}

checkInstanceWithNamedPorts(api.InstanceWithNamedPorts o) {
  buildCounterInstanceWithNamedPorts++;
  if (buildCounterInstanceWithNamedPorts < 3) {
    unittest.expect(o.instance, unittest.equals('foo'));
    checkUnnamed2324(o.namedPorts);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterInstanceWithNamedPorts--;
}

buildUnnamed2325() {
  var o = new core.List<api.Instance>();
  o.add(buildInstance());
  o.add(buildInstance());
  return o;
}

checkUnnamed2325(core.List<api.Instance> o) {
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

buildUnnamed2326() {
  var o = new core.List<api.InstancesScopedListWarningData>();
  o.add(buildInstancesScopedListWarningData());
  o.add(buildInstancesScopedListWarningData());
  return o;
}

checkUnnamed2326(core.List<api.InstancesScopedListWarningData> o) {
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
    o.data = buildUnnamed2326();
    o.message = "foo";
  }
  buildCounterInstancesScopedListWarning--;
  return o;
}

checkInstancesScopedListWarning(api.InstancesScopedListWarning o) {
  buildCounterInstancesScopedListWarning++;
  if (buildCounterInstancesScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed2326(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterInstancesScopedListWarning--;
}

core.int buildCounterInstancesScopedList = 0;
buildInstancesScopedList() {
  var o = new api.InstancesScopedList();
  buildCounterInstancesScopedList++;
  if (buildCounterInstancesScopedList < 3) {
    o.instances = buildUnnamed2325();
    o.warning = buildInstancesScopedListWarning();
  }
  buildCounterInstancesScopedList--;
  return o;
}

checkInstancesScopedList(api.InstancesScopedList o) {
  buildCounterInstancesScopedList++;
  if (buildCounterInstancesScopedList < 3) {
    checkUnnamed2325(o.instances);
    checkInstancesScopedListWarning(o.warning);
  }
  buildCounterInstancesScopedList--;
}

buildUnnamed2327() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2327(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterInstancesSetLabelsRequest = 0;
buildInstancesSetLabelsRequest() {
  var o = new api.InstancesSetLabelsRequest();
  buildCounterInstancesSetLabelsRequest++;
  if (buildCounterInstancesSetLabelsRequest < 3) {
    o.labelFingerprint = "foo";
    o.labels = buildUnnamed2327();
  }
  buildCounterInstancesSetLabelsRequest--;
  return o;
}

checkInstancesSetLabelsRequest(api.InstancesSetLabelsRequest o) {
  buildCounterInstancesSetLabelsRequest++;
  if (buildCounterInstancesSetLabelsRequest < 3) {
    unittest.expect(o.labelFingerprint, unittest.equals('foo'));
    checkUnnamed2327(o.labels);
  }
  buildCounterInstancesSetLabelsRequest--;
}

buildUnnamed2328() {
  var o = new core.List<api.AcceleratorConfig>();
  o.add(buildAcceleratorConfig());
  o.add(buildAcceleratorConfig());
  return o;
}

checkUnnamed2328(core.List<api.AcceleratorConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcceleratorConfig(o[0]);
  checkAcceleratorConfig(o[1]);
}

core.int buildCounterInstancesSetMachineResourcesRequest = 0;
buildInstancesSetMachineResourcesRequest() {
  var o = new api.InstancesSetMachineResourcesRequest();
  buildCounterInstancesSetMachineResourcesRequest++;
  if (buildCounterInstancesSetMachineResourcesRequest < 3) {
    o.guestAccelerators = buildUnnamed2328();
  }
  buildCounterInstancesSetMachineResourcesRequest--;
  return o;
}

checkInstancesSetMachineResourcesRequest(
    api.InstancesSetMachineResourcesRequest o) {
  buildCounterInstancesSetMachineResourcesRequest++;
  if (buildCounterInstancesSetMachineResourcesRequest < 3) {
    checkUnnamed2328(o.guestAccelerators);
  }
  buildCounterInstancesSetMachineResourcesRequest--;
}

core.int buildCounterInstancesSetMachineTypeRequest = 0;
buildInstancesSetMachineTypeRequest() {
  var o = new api.InstancesSetMachineTypeRequest();
  buildCounterInstancesSetMachineTypeRequest++;
  if (buildCounterInstancesSetMachineTypeRequest < 3) {
    o.machineType = "foo";
  }
  buildCounterInstancesSetMachineTypeRequest--;
  return o;
}

checkInstancesSetMachineTypeRequest(api.InstancesSetMachineTypeRequest o) {
  buildCounterInstancesSetMachineTypeRequest++;
  if (buildCounterInstancesSetMachineTypeRequest < 3) {
    unittest.expect(o.machineType, unittest.equals('foo'));
  }
  buildCounterInstancesSetMachineTypeRequest--;
}

buildUnnamed2329() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2329(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInstancesSetServiceAccountRequest = 0;
buildInstancesSetServiceAccountRequest() {
  var o = new api.InstancesSetServiceAccountRequest();
  buildCounterInstancesSetServiceAccountRequest++;
  if (buildCounterInstancesSetServiceAccountRequest < 3) {
    o.email = "foo";
    o.scopes = buildUnnamed2329();
  }
  buildCounterInstancesSetServiceAccountRequest--;
  return o;
}

checkInstancesSetServiceAccountRequest(
    api.InstancesSetServiceAccountRequest o) {
  buildCounterInstancesSetServiceAccountRequest++;
  if (buildCounterInstancesSetServiceAccountRequest < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    checkUnnamed2329(o.scopes);
  }
  buildCounterInstancesSetServiceAccountRequest--;
}

buildUnnamed2330() {
  var o = new core.List<api.CustomerEncryptionKeyProtectedDisk>();
  o.add(buildCustomerEncryptionKeyProtectedDisk());
  o.add(buildCustomerEncryptionKeyProtectedDisk());
  return o;
}

checkUnnamed2330(core.List<api.CustomerEncryptionKeyProtectedDisk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomerEncryptionKeyProtectedDisk(o[0]);
  checkCustomerEncryptionKeyProtectedDisk(o[1]);
}

core.int buildCounterInstancesStartWithEncryptionKeyRequest = 0;
buildInstancesStartWithEncryptionKeyRequest() {
  var o = new api.InstancesStartWithEncryptionKeyRequest();
  buildCounterInstancesStartWithEncryptionKeyRequest++;
  if (buildCounterInstancesStartWithEncryptionKeyRequest < 3) {
    o.disks = buildUnnamed2330();
  }
  buildCounterInstancesStartWithEncryptionKeyRequest--;
  return o;
}

checkInstancesStartWithEncryptionKeyRequest(
    api.InstancesStartWithEncryptionKeyRequest o) {
  buildCounterInstancesStartWithEncryptionKeyRequest++;
  if (buildCounterInstancesStartWithEncryptionKeyRequest < 3) {
    checkUnnamed2330(o.disks);
  }
  buildCounterInstancesStartWithEncryptionKeyRequest--;
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

buildUnnamed2331() {
  var o = new core.List<api.MachineTypeScratchDisks>();
  o.add(buildMachineTypeScratchDisks());
  o.add(buildMachineTypeScratchDisks());
  return o;
}

checkUnnamed2331(core.List<api.MachineTypeScratchDisks> o) {
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
    o.isSharedCpu = true;
    o.kind = "foo";
    o.maximumPersistentDisks = 42;
    o.maximumPersistentDisksSizeGb = "foo";
    o.memoryMb = 42;
    o.name = "foo";
    o.scratchDisks = buildUnnamed2331();
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
    unittest.expect(o.isSharedCpu, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.maximumPersistentDisks, unittest.equals(42));
    unittest.expect(o.maximumPersistentDisksSizeGb, unittest.equals('foo'));
    unittest.expect(o.memoryMb, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2331(o.scratchDisks);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterMachineType--;
}

buildUnnamed2332() {
  var o = new core.Map<core.String, api.MachineTypesScopedList>();
  o["x"] = buildMachineTypesScopedList();
  o["y"] = buildMachineTypesScopedList();
  return o;
}

checkUnnamed2332(core.Map<core.String, api.MachineTypesScopedList> o) {
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
    o.items = buildUnnamed2332();
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
    checkUnnamed2332(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterMachineTypeAggregatedList--;
}

buildUnnamed2333() {
  var o = new core.List<api.MachineType>();
  o.add(buildMachineType());
  o.add(buildMachineType());
  return o;
}

checkUnnamed2333(core.List<api.MachineType> o) {
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
    o.items = buildUnnamed2333();
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
    checkUnnamed2333(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterMachineTypeList--;
}

buildUnnamed2334() {
  var o = new core.List<api.MachineType>();
  o.add(buildMachineType());
  o.add(buildMachineType());
  return o;
}

checkUnnamed2334(core.List<api.MachineType> o) {
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

checkMachineTypesScopedListWarningData(
    api.MachineTypesScopedListWarningData o) {
  buildCounterMachineTypesScopedListWarningData++;
  if (buildCounterMachineTypesScopedListWarningData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterMachineTypesScopedListWarningData--;
}

buildUnnamed2335() {
  var o = new core.List<api.MachineTypesScopedListWarningData>();
  o.add(buildMachineTypesScopedListWarningData());
  o.add(buildMachineTypesScopedListWarningData());
  return o;
}

checkUnnamed2335(core.List<api.MachineTypesScopedListWarningData> o) {
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
    o.data = buildUnnamed2335();
    o.message = "foo";
  }
  buildCounterMachineTypesScopedListWarning--;
  return o;
}

checkMachineTypesScopedListWarning(api.MachineTypesScopedListWarning o) {
  buildCounterMachineTypesScopedListWarning++;
  if (buildCounterMachineTypesScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed2335(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterMachineTypesScopedListWarning--;
}

core.int buildCounterMachineTypesScopedList = 0;
buildMachineTypesScopedList() {
  var o = new api.MachineTypesScopedList();
  buildCounterMachineTypesScopedList++;
  if (buildCounterMachineTypesScopedList < 3) {
    o.machineTypes = buildUnnamed2334();
    o.warning = buildMachineTypesScopedListWarning();
  }
  buildCounterMachineTypesScopedList--;
  return o;
}

checkMachineTypesScopedList(api.MachineTypesScopedList o) {
  buildCounterMachineTypesScopedList++;
  if (buildCounterMachineTypesScopedList < 3) {
    checkUnnamed2334(o.machineTypes);
    checkMachineTypesScopedListWarning(o.warning);
  }
  buildCounterMachineTypesScopedList--;
}

core.int buildCounterManagedInstance = 0;
buildManagedInstance() {
  var o = new api.ManagedInstance();
  buildCounterManagedInstance++;
  if (buildCounterManagedInstance < 3) {
    o.currentAction = "foo";
    o.id = "foo";
    o.instance = "foo";
    o.instanceStatus = "foo";
    o.lastAttempt = buildManagedInstanceLastAttempt();
  }
  buildCounterManagedInstance--;
  return o;
}

checkManagedInstance(api.ManagedInstance o) {
  buildCounterManagedInstance++;
  if (buildCounterManagedInstance < 3) {
    unittest.expect(o.currentAction, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.instance, unittest.equals('foo'));
    unittest.expect(o.instanceStatus, unittest.equals('foo'));
    checkManagedInstanceLastAttempt(o.lastAttempt);
  }
  buildCounterManagedInstance--;
}

core.int buildCounterManagedInstanceLastAttemptErrorsErrors = 0;
buildManagedInstanceLastAttemptErrorsErrors() {
  var o = new api.ManagedInstanceLastAttemptErrorsErrors();
  buildCounterManagedInstanceLastAttemptErrorsErrors++;
  if (buildCounterManagedInstanceLastAttemptErrorsErrors < 3) {
    o.code = "foo";
    o.location = "foo";
    o.message = "foo";
  }
  buildCounterManagedInstanceLastAttemptErrorsErrors--;
  return o;
}

checkManagedInstanceLastAttemptErrorsErrors(
    api.ManagedInstanceLastAttemptErrorsErrors o) {
  buildCounterManagedInstanceLastAttemptErrorsErrors++;
  if (buildCounterManagedInstanceLastAttemptErrorsErrors < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterManagedInstanceLastAttemptErrorsErrors--;
}

buildUnnamed2336() {
  var o = new core.List<api.ManagedInstanceLastAttemptErrorsErrors>();
  o.add(buildManagedInstanceLastAttemptErrorsErrors());
  o.add(buildManagedInstanceLastAttemptErrorsErrors());
  return o;
}

checkUnnamed2336(core.List<api.ManagedInstanceLastAttemptErrorsErrors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedInstanceLastAttemptErrorsErrors(o[0]);
  checkManagedInstanceLastAttemptErrorsErrors(o[1]);
}

core.int buildCounterManagedInstanceLastAttemptErrors = 0;
buildManagedInstanceLastAttemptErrors() {
  var o = new api.ManagedInstanceLastAttemptErrors();
  buildCounterManagedInstanceLastAttemptErrors++;
  if (buildCounterManagedInstanceLastAttemptErrors < 3) {
    o.errors = buildUnnamed2336();
  }
  buildCounterManagedInstanceLastAttemptErrors--;
  return o;
}

checkManagedInstanceLastAttemptErrors(api.ManagedInstanceLastAttemptErrors o) {
  buildCounterManagedInstanceLastAttemptErrors++;
  if (buildCounterManagedInstanceLastAttemptErrors < 3) {
    checkUnnamed2336(o.errors);
  }
  buildCounterManagedInstanceLastAttemptErrors--;
}

core.int buildCounterManagedInstanceLastAttempt = 0;
buildManagedInstanceLastAttempt() {
  var o = new api.ManagedInstanceLastAttempt();
  buildCounterManagedInstanceLastAttempt++;
  if (buildCounterManagedInstanceLastAttempt < 3) {
    o.errors = buildManagedInstanceLastAttemptErrors();
  }
  buildCounterManagedInstanceLastAttempt--;
  return o;
}

checkManagedInstanceLastAttempt(api.ManagedInstanceLastAttempt o) {
  buildCounterManagedInstanceLastAttempt++;
  if (buildCounterManagedInstanceLastAttempt < 3) {
    checkManagedInstanceLastAttemptErrors(o.errors);
  }
  buildCounterManagedInstanceLastAttempt--;
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

buildUnnamed2337() {
  var o = new core.List<api.MetadataItems>();
  o.add(buildMetadataItems());
  o.add(buildMetadataItems());
  return o;
}

checkUnnamed2337(core.List<api.MetadataItems> o) {
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
    o.items = buildUnnamed2337();
    o.kind = "foo";
  }
  buildCounterMetadata--;
  return o;
}

checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    unittest.expect(o.fingerprint, unittest.equals('foo'));
    checkUnnamed2337(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterMetadata--;
}

core.int buildCounterNamedPort = 0;
buildNamedPort() {
  var o = new api.NamedPort();
  buildCounterNamedPort++;
  if (buildCounterNamedPort < 3) {
    o.name = "foo";
    o.port = 42;
  }
  buildCounterNamedPort--;
  return o;
}

checkNamedPort(api.NamedPort o) {
  buildCounterNamedPort++;
  if (buildCounterNamedPort < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.port, unittest.equals(42));
  }
  buildCounterNamedPort--;
}

buildUnnamed2338() {
  var o = new core.List<api.NetworkPeering>();
  o.add(buildNetworkPeering());
  o.add(buildNetworkPeering());
  return o;
}

checkUnnamed2338(core.List<api.NetworkPeering> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkPeering(o[0]);
  checkNetworkPeering(o[1]);
}

buildUnnamed2339() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2339(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNetwork = 0;
buildNetwork() {
  var o = new api.Network();
  buildCounterNetwork++;
  if (buildCounterNetwork < 3) {
    o.IPv4Range = "foo";
    o.autoCreateSubnetworks = true;
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.gatewayIPv4 = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.peerings = buildUnnamed2338();
    o.selfLink = "foo";
    o.subnetworks = buildUnnamed2339();
  }
  buildCounterNetwork--;
  return o;
}

checkNetwork(api.Network o) {
  buildCounterNetwork++;
  if (buildCounterNetwork < 3) {
    unittest.expect(o.IPv4Range, unittest.equals('foo'));
    unittest.expect(o.autoCreateSubnetworks, unittest.isTrue);
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.gatewayIPv4, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2338(o.peerings);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkUnnamed2339(o.subnetworks);
  }
  buildCounterNetwork--;
}

buildUnnamed2340() {
  var o = new core.List<api.AccessConfig>();
  o.add(buildAccessConfig());
  o.add(buildAccessConfig());
  return o;
}

checkUnnamed2340(core.List<api.AccessConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccessConfig(o[0]);
  checkAccessConfig(o[1]);
}

buildUnnamed2341() {
  var o = new core.List<api.AliasIpRange>();
  o.add(buildAliasIpRange());
  o.add(buildAliasIpRange());
  return o;
}

checkUnnamed2341(core.List<api.AliasIpRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAliasIpRange(o[0]);
  checkAliasIpRange(o[1]);
}

core.int buildCounterNetworkInterface = 0;
buildNetworkInterface() {
  var o = new api.NetworkInterface();
  buildCounterNetworkInterface++;
  if (buildCounterNetworkInterface < 3) {
    o.accessConfigs = buildUnnamed2340();
    o.aliasIpRanges = buildUnnamed2341();
    o.kind = "foo";
    o.name = "foo";
    o.network = "foo";
    o.networkIP = "foo";
    o.subnetwork = "foo";
  }
  buildCounterNetworkInterface--;
  return o;
}

checkNetworkInterface(api.NetworkInterface o) {
  buildCounterNetworkInterface++;
  if (buildCounterNetworkInterface < 3) {
    checkUnnamed2340(o.accessConfigs);
    checkUnnamed2341(o.aliasIpRanges);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.networkIP, unittest.equals('foo'));
    unittest.expect(o.subnetwork, unittest.equals('foo'));
  }
  buildCounterNetworkInterface--;
}

buildUnnamed2342() {
  var o = new core.List<api.Network>();
  o.add(buildNetwork());
  o.add(buildNetwork());
  return o;
}

checkUnnamed2342(core.List<api.Network> o) {
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
    o.items = buildUnnamed2342();
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
    checkUnnamed2342(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterNetworkList--;
}

core.int buildCounterNetworkPeering = 0;
buildNetworkPeering() {
  var o = new api.NetworkPeering();
  buildCounterNetworkPeering++;
  if (buildCounterNetworkPeering < 3) {
    o.autoCreateRoutes = true;
    o.name = "foo";
    o.network = "foo";
    o.state = "foo";
    o.stateDetails = "foo";
  }
  buildCounterNetworkPeering--;
  return o;
}

checkNetworkPeering(api.NetworkPeering o) {
  buildCounterNetworkPeering++;
  if (buildCounterNetworkPeering < 3) {
    unittest.expect(o.autoCreateRoutes, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateDetails, unittest.equals('foo'));
  }
  buildCounterNetworkPeering--;
}

core.int buildCounterNetworksAddPeeringRequest = 0;
buildNetworksAddPeeringRequest() {
  var o = new api.NetworksAddPeeringRequest();
  buildCounterNetworksAddPeeringRequest++;
  if (buildCounterNetworksAddPeeringRequest < 3) {
    o.autoCreateRoutes = true;
    o.name = "foo";
    o.peerNetwork = "foo";
  }
  buildCounterNetworksAddPeeringRequest--;
  return o;
}

checkNetworksAddPeeringRequest(api.NetworksAddPeeringRequest o) {
  buildCounterNetworksAddPeeringRequest++;
  if (buildCounterNetworksAddPeeringRequest < 3) {
    unittest.expect(o.autoCreateRoutes, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.peerNetwork, unittest.equals('foo'));
  }
  buildCounterNetworksAddPeeringRequest--;
}

core.int buildCounterNetworksRemovePeeringRequest = 0;
buildNetworksRemovePeeringRequest() {
  var o = new api.NetworksRemovePeeringRequest();
  buildCounterNetworksRemovePeeringRequest++;
  if (buildCounterNetworksRemovePeeringRequest < 3) {
    o.name = "foo";
  }
  buildCounterNetworksRemovePeeringRequest--;
  return o;
}

checkNetworksRemovePeeringRequest(api.NetworksRemovePeeringRequest o) {
  buildCounterNetworksRemovePeeringRequest++;
  if (buildCounterNetworksRemovePeeringRequest < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterNetworksRemovePeeringRequest--;
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

buildUnnamed2343() {
  var o = new core.List<api.OperationErrorErrors>();
  o.add(buildOperationErrorErrors());
  o.add(buildOperationErrorErrors());
  return o;
}

checkUnnamed2343(core.List<api.OperationErrorErrors> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationErrorErrors(o[0]);
  checkOperationErrorErrors(o[1]);
}

core.int buildCounterOperationError = 0;
buildOperationError() {
  var o = new api.OperationError();
  buildCounterOperationError++;
  if (buildCounterOperationError < 3) {
    o.errors = buildUnnamed2343();
  }
  buildCounterOperationError--;
  return o;
}

checkOperationError(api.OperationError o) {
  buildCounterOperationError++;
  if (buildCounterOperationError < 3) {
    checkUnnamed2343(o.errors);
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

buildUnnamed2344() {
  var o = new core.List<api.OperationWarningsData>();
  o.add(buildOperationWarningsData());
  o.add(buildOperationWarningsData());
  return o;
}

checkUnnamed2344(core.List<api.OperationWarningsData> o) {
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
    o.data = buildUnnamed2344();
    o.message = "foo";
  }
  buildCounterOperationWarnings--;
  return o;
}

checkOperationWarnings(api.OperationWarnings o) {
  buildCounterOperationWarnings++;
  if (buildCounterOperationWarnings < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed2344(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterOperationWarnings--;
}

buildUnnamed2345() {
  var o = new core.List<api.OperationWarnings>();
  o.add(buildOperationWarnings());
  o.add(buildOperationWarnings());
  return o;
}

checkUnnamed2345(core.List<api.OperationWarnings> o) {
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
    o.description = "foo";
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
    o.warnings = buildUnnamed2345();
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
    unittest.expect(o.description, unittest.equals('foo'));
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
    checkUnnamed2345(o.warnings);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterOperation--;
}

buildUnnamed2346() {
  var o = new core.Map<core.String, api.OperationsScopedList>();
  o["x"] = buildOperationsScopedList();
  o["y"] = buildOperationsScopedList();
  return o;
}

checkUnnamed2346(core.Map<core.String, api.OperationsScopedList> o) {
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
    o.items = buildUnnamed2346();
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
    checkUnnamed2346(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterOperationAggregatedList--;
}

buildUnnamed2347() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed2347(core.List<api.Operation> o) {
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
    o.items = buildUnnamed2347();
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
    checkUnnamed2347(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterOperationList--;
}

buildUnnamed2348() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed2348(core.List<api.Operation> o) {
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

buildUnnamed2349() {
  var o = new core.List<api.OperationsScopedListWarningData>();
  o.add(buildOperationsScopedListWarningData());
  o.add(buildOperationsScopedListWarningData());
  return o;
}

checkUnnamed2349(core.List<api.OperationsScopedListWarningData> o) {
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
    o.data = buildUnnamed2349();
    o.message = "foo";
  }
  buildCounterOperationsScopedListWarning--;
  return o;
}

checkOperationsScopedListWarning(api.OperationsScopedListWarning o) {
  buildCounterOperationsScopedListWarning++;
  if (buildCounterOperationsScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed2349(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterOperationsScopedListWarning--;
}

core.int buildCounterOperationsScopedList = 0;
buildOperationsScopedList() {
  var o = new api.OperationsScopedList();
  buildCounterOperationsScopedList++;
  if (buildCounterOperationsScopedList < 3) {
    o.operations = buildUnnamed2348();
    o.warning = buildOperationsScopedListWarning();
  }
  buildCounterOperationsScopedList--;
  return o;
}

checkOperationsScopedList(api.OperationsScopedList o) {
  buildCounterOperationsScopedList++;
  if (buildCounterOperationsScopedList < 3) {
    checkUnnamed2348(o.operations);
    checkOperationsScopedListWarning(o.warning);
  }
  buildCounterOperationsScopedList--;
}

buildUnnamed2350() {
  var o = new core.List<api.PathRule>();
  o.add(buildPathRule());
  o.add(buildPathRule());
  return o;
}

checkUnnamed2350(core.List<api.PathRule> o) {
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
    o.pathRules = buildUnnamed2350();
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
    checkUnnamed2350(o.pathRules);
  }
  buildCounterPathMatcher--;
}

buildUnnamed2351() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2351(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPathRule = 0;
buildPathRule() {
  var o = new api.PathRule();
  buildCounterPathRule++;
  if (buildCounterPathRule < 3) {
    o.paths = buildUnnamed2351();
    o.service = "foo";
  }
  buildCounterPathRule--;
  return o;
}

checkPathRule(api.PathRule o) {
  buildCounterPathRule++;
  if (buildCounterPathRule < 3) {
    checkUnnamed2351(o.paths);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterPathRule--;
}

buildUnnamed2352() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2352(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2353() {
  var o = new core.List<api.Quota>();
  o.add(buildQuota());
  o.add(buildQuota());
  return o;
}

checkUnnamed2353(core.List<api.Quota> o) {
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
    o.defaultServiceAccount = "foo";
    o.description = "foo";
    o.enabledFeatures = buildUnnamed2352();
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.quotas = buildUnnamed2353();
    o.selfLink = "foo";
    o.usageExportLocation = buildUsageExportLocation();
    o.xpnProjectStatus = "foo";
  }
  buildCounterProject--;
  return o;
}

checkProject(api.Project o) {
  buildCounterProject++;
  if (buildCounterProject < 3) {
    checkMetadata(o.commonInstanceMetadata);
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.defaultServiceAccount, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed2352(o.enabledFeatures);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2353(o.quotas);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkUsageExportLocation(o.usageExportLocation);
    unittest.expect(o.xpnProjectStatus, unittest.equals('foo'));
  }
  buildCounterProject--;
}

core.int buildCounterProjectsDisableXpnResourceRequest = 0;
buildProjectsDisableXpnResourceRequest() {
  var o = new api.ProjectsDisableXpnResourceRequest();
  buildCounterProjectsDisableXpnResourceRequest++;
  if (buildCounterProjectsDisableXpnResourceRequest < 3) {
    o.xpnResource = buildXpnResourceId();
  }
  buildCounterProjectsDisableXpnResourceRequest--;
  return o;
}

checkProjectsDisableXpnResourceRequest(
    api.ProjectsDisableXpnResourceRequest o) {
  buildCounterProjectsDisableXpnResourceRequest++;
  if (buildCounterProjectsDisableXpnResourceRequest < 3) {
    checkXpnResourceId(o.xpnResource);
  }
  buildCounterProjectsDisableXpnResourceRequest--;
}

core.int buildCounterProjectsEnableXpnResourceRequest = 0;
buildProjectsEnableXpnResourceRequest() {
  var o = new api.ProjectsEnableXpnResourceRequest();
  buildCounterProjectsEnableXpnResourceRequest++;
  if (buildCounterProjectsEnableXpnResourceRequest < 3) {
    o.xpnResource = buildXpnResourceId();
  }
  buildCounterProjectsEnableXpnResourceRequest--;
  return o;
}

checkProjectsEnableXpnResourceRequest(api.ProjectsEnableXpnResourceRequest o) {
  buildCounterProjectsEnableXpnResourceRequest++;
  if (buildCounterProjectsEnableXpnResourceRequest < 3) {
    checkXpnResourceId(o.xpnResource);
  }
  buildCounterProjectsEnableXpnResourceRequest--;
}

buildUnnamed2354() {
  var o = new core.List<api.XpnResourceId>();
  o.add(buildXpnResourceId());
  o.add(buildXpnResourceId());
  return o;
}

checkUnnamed2354(core.List<api.XpnResourceId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkXpnResourceId(o[0]);
  checkXpnResourceId(o[1]);
}

core.int buildCounterProjectsGetXpnResources = 0;
buildProjectsGetXpnResources() {
  var o = new api.ProjectsGetXpnResources();
  buildCounterProjectsGetXpnResources++;
  if (buildCounterProjectsGetXpnResources < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed2354();
  }
  buildCounterProjectsGetXpnResources--;
  return o;
}

checkProjectsGetXpnResources(api.ProjectsGetXpnResources o) {
  buildCounterProjectsGetXpnResources++;
  if (buildCounterProjectsGetXpnResources < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2354(o.resources);
  }
  buildCounterProjectsGetXpnResources--;
}

core.int buildCounterProjectsListXpnHostsRequest = 0;
buildProjectsListXpnHostsRequest() {
  var o = new api.ProjectsListXpnHostsRequest();
  buildCounterProjectsListXpnHostsRequest++;
  if (buildCounterProjectsListXpnHostsRequest < 3) {
    o.organization = "foo";
  }
  buildCounterProjectsListXpnHostsRequest--;
  return o;
}

checkProjectsListXpnHostsRequest(api.ProjectsListXpnHostsRequest o) {
  buildCounterProjectsListXpnHostsRequest++;
  if (buildCounterProjectsListXpnHostsRequest < 3) {
    unittest.expect(o.organization, unittest.equals('foo'));
  }
  buildCounterProjectsListXpnHostsRequest--;
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

buildUnnamed2355() {
  var o = new core.List<api.Quota>();
  o.add(buildQuota());
  o.add(buildQuota());
  return o;
}

checkUnnamed2355(core.List<api.Quota> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuota(o[0]);
  checkQuota(o[1]);
}

buildUnnamed2356() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2356(core.List<core.String> o) {
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
    o.quotas = buildUnnamed2355();
    o.selfLink = "foo";
    o.status = "foo";
    o.zones = buildUnnamed2356();
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
    checkUnnamed2355(o.quotas);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    checkUnnamed2356(o.zones);
  }
  buildCounterRegion--;
}

buildUnnamed2357() {
  var o = new core.List<api.Autoscaler>();
  o.add(buildAutoscaler());
  o.add(buildAutoscaler());
  return o;
}

checkUnnamed2357(core.List<api.Autoscaler> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutoscaler(o[0]);
  checkAutoscaler(o[1]);
}

core.int buildCounterRegionAutoscalerList = 0;
buildRegionAutoscalerList() {
  var o = new api.RegionAutoscalerList();
  buildCounterRegionAutoscalerList++;
  if (buildCounterRegionAutoscalerList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2357();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterRegionAutoscalerList--;
  return o;
}

checkRegionAutoscalerList(api.RegionAutoscalerList o) {
  buildCounterRegionAutoscalerList++;
  if (buildCounterRegionAutoscalerList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2357(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterRegionAutoscalerList--;
}

buildUnnamed2358() {
  var o = new core.List<api.InstanceGroup>();
  o.add(buildInstanceGroup());
  o.add(buildInstanceGroup());
  return o;
}

checkUnnamed2358(core.List<api.InstanceGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceGroup(o[0]);
  checkInstanceGroup(o[1]);
}

core.int buildCounterRegionInstanceGroupList = 0;
buildRegionInstanceGroupList() {
  var o = new api.RegionInstanceGroupList();
  buildCounterRegionInstanceGroupList++;
  if (buildCounterRegionInstanceGroupList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2358();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterRegionInstanceGroupList--;
  return o;
}

checkRegionInstanceGroupList(api.RegionInstanceGroupList o) {
  buildCounterRegionInstanceGroupList++;
  if (buildCounterRegionInstanceGroupList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2358(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterRegionInstanceGroupList--;
}

buildUnnamed2359() {
  var o = new core.List<api.InstanceGroupManager>();
  o.add(buildInstanceGroupManager());
  o.add(buildInstanceGroupManager());
  return o;
}

checkUnnamed2359(core.List<api.InstanceGroupManager> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceGroupManager(o[0]);
  checkInstanceGroupManager(o[1]);
}

core.int buildCounterRegionInstanceGroupManagerList = 0;
buildRegionInstanceGroupManagerList() {
  var o = new api.RegionInstanceGroupManagerList();
  buildCounterRegionInstanceGroupManagerList++;
  if (buildCounterRegionInstanceGroupManagerList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2359();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterRegionInstanceGroupManagerList--;
  return o;
}

checkRegionInstanceGroupManagerList(api.RegionInstanceGroupManagerList o) {
  buildCounterRegionInstanceGroupManagerList++;
  if (buildCounterRegionInstanceGroupManagerList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2359(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterRegionInstanceGroupManagerList--;
}

buildUnnamed2360() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2360(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRegionInstanceGroupManagersAbandonInstancesRequest = 0;
buildRegionInstanceGroupManagersAbandonInstancesRequest() {
  var o = new api.RegionInstanceGroupManagersAbandonInstancesRequest();
  buildCounterRegionInstanceGroupManagersAbandonInstancesRequest++;
  if (buildCounterRegionInstanceGroupManagersAbandonInstancesRequest < 3) {
    o.instances = buildUnnamed2360();
  }
  buildCounterRegionInstanceGroupManagersAbandonInstancesRequest--;
  return o;
}

checkRegionInstanceGroupManagersAbandonInstancesRequest(
    api.RegionInstanceGroupManagersAbandonInstancesRequest o) {
  buildCounterRegionInstanceGroupManagersAbandonInstancesRequest++;
  if (buildCounterRegionInstanceGroupManagersAbandonInstancesRequest < 3) {
    checkUnnamed2360(o.instances);
  }
  buildCounterRegionInstanceGroupManagersAbandonInstancesRequest--;
}

buildUnnamed2361() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2361(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRegionInstanceGroupManagersDeleteInstancesRequest = 0;
buildRegionInstanceGroupManagersDeleteInstancesRequest() {
  var o = new api.RegionInstanceGroupManagersDeleteInstancesRequest();
  buildCounterRegionInstanceGroupManagersDeleteInstancesRequest++;
  if (buildCounterRegionInstanceGroupManagersDeleteInstancesRequest < 3) {
    o.instances = buildUnnamed2361();
  }
  buildCounterRegionInstanceGroupManagersDeleteInstancesRequest--;
  return o;
}

checkRegionInstanceGroupManagersDeleteInstancesRequest(
    api.RegionInstanceGroupManagersDeleteInstancesRequest o) {
  buildCounterRegionInstanceGroupManagersDeleteInstancesRequest++;
  if (buildCounterRegionInstanceGroupManagersDeleteInstancesRequest < 3) {
    checkUnnamed2361(o.instances);
  }
  buildCounterRegionInstanceGroupManagersDeleteInstancesRequest--;
}

buildUnnamed2362() {
  var o = new core.List<api.ManagedInstance>();
  o.add(buildManagedInstance());
  o.add(buildManagedInstance());
  return o;
}

checkUnnamed2362(core.List<api.ManagedInstance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedInstance(o[0]);
  checkManagedInstance(o[1]);
}

core.int buildCounterRegionInstanceGroupManagersListInstancesResponse = 0;
buildRegionInstanceGroupManagersListInstancesResponse() {
  var o = new api.RegionInstanceGroupManagersListInstancesResponse();
  buildCounterRegionInstanceGroupManagersListInstancesResponse++;
  if (buildCounterRegionInstanceGroupManagersListInstancesResponse < 3) {
    o.managedInstances = buildUnnamed2362();
  }
  buildCounterRegionInstanceGroupManagersListInstancesResponse--;
  return o;
}

checkRegionInstanceGroupManagersListInstancesResponse(
    api.RegionInstanceGroupManagersListInstancesResponse o) {
  buildCounterRegionInstanceGroupManagersListInstancesResponse++;
  if (buildCounterRegionInstanceGroupManagersListInstancesResponse < 3) {
    checkUnnamed2362(o.managedInstances);
  }
  buildCounterRegionInstanceGroupManagersListInstancesResponse--;
}

buildUnnamed2363() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2363(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRegionInstanceGroupManagersRecreateRequest = 0;
buildRegionInstanceGroupManagersRecreateRequest() {
  var o = new api.RegionInstanceGroupManagersRecreateRequest();
  buildCounterRegionInstanceGroupManagersRecreateRequest++;
  if (buildCounterRegionInstanceGroupManagersRecreateRequest < 3) {
    o.instances = buildUnnamed2363();
  }
  buildCounterRegionInstanceGroupManagersRecreateRequest--;
  return o;
}

checkRegionInstanceGroupManagersRecreateRequest(
    api.RegionInstanceGroupManagersRecreateRequest o) {
  buildCounterRegionInstanceGroupManagersRecreateRequest++;
  if (buildCounterRegionInstanceGroupManagersRecreateRequest < 3) {
    checkUnnamed2363(o.instances);
  }
  buildCounterRegionInstanceGroupManagersRecreateRequest--;
}

buildUnnamed2364() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2364(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRegionInstanceGroupManagersSetTargetPoolsRequest = 0;
buildRegionInstanceGroupManagersSetTargetPoolsRequest() {
  var o = new api.RegionInstanceGroupManagersSetTargetPoolsRequest();
  buildCounterRegionInstanceGroupManagersSetTargetPoolsRequest++;
  if (buildCounterRegionInstanceGroupManagersSetTargetPoolsRequest < 3) {
    o.fingerprint = "foo";
    o.targetPools = buildUnnamed2364();
  }
  buildCounterRegionInstanceGroupManagersSetTargetPoolsRequest--;
  return o;
}

checkRegionInstanceGroupManagersSetTargetPoolsRequest(
    api.RegionInstanceGroupManagersSetTargetPoolsRequest o) {
  buildCounterRegionInstanceGroupManagersSetTargetPoolsRequest++;
  if (buildCounterRegionInstanceGroupManagersSetTargetPoolsRequest < 3) {
    unittest.expect(o.fingerprint, unittest.equals('foo'));
    checkUnnamed2364(o.targetPools);
  }
  buildCounterRegionInstanceGroupManagersSetTargetPoolsRequest--;
}

core.int buildCounterRegionInstanceGroupManagersSetTemplateRequest = 0;
buildRegionInstanceGroupManagersSetTemplateRequest() {
  var o = new api.RegionInstanceGroupManagersSetTemplateRequest();
  buildCounterRegionInstanceGroupManagersSetTemplateRequest++;
  if (buildCounterRegionInstanceGroupManagersSetTemplateRequest < 3) {
    o.instanceTemplate = "foo";
  }
  buildCounterRegionInstanceGroupManagersSetTemplateRequest--;
  return o;
}

checkRegionInstanceGroupManagersSetTemplateRequest(
    api.RegionInstanceGroupManagersSetTemplateRequest o) {
  buildCounterRegionInstanceGroupManagersSetTemplateRequest++;
  if (buildCounterRegionInstanceGroupManagersSetTemplateRequest < 3) {
    unittest.expect(o.instanceTemplate, unittest.equals('foo'));
  }
  buildCounterRegionInstanceGroupManagersSetTemplateRequest--;
}

buildUnnamed2365() {
  var o = new core.List<api.InstanceWithNamedPorts>();
  o.add(buildInstanceWithNamedPorts());
  o.add(buildInstanceWithNamedPorts());
  return o;
}

checkUnnamed2365(core.List<api.InstanceWithNamedPorts> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceWithNamedPorts(o[0]);
  checkInstanceWithNamedPorts(o[1]);
}

core.int buildCounterRegionInstanceGroupsListInstances = 0;
buildRegionInstanceGroupsListInstances() {
  var o = new api.RegionInstanceGroupsListInstances();
  buildCounterRegionInstanceGroupsListInstances++;
  if (buildCounterRegionInstanceGroupsListInstances < 3) {
    o.id = "foo";
    o.items = buildUnnamed2365();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterRegionInstanceGroupsListInstances--;
  return o;
}

checkRegionInstanceGroupsListInstances(
    api.RegionInstanceGroupsListInstances o) {
  buildCounterRegionInstanceGroupsListInstances++;
  if (buildCounterRegionInstanceGroupsListInstances < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2365(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterRegionInstanceGroupsListInstances--;
}

core.int buildCounterRegionInstanceGroupsListInstancesRequest = 0;
buildRegionInstanceGroupsListInstancesRequest() {
  var o = new api.RegionInstanceGroupsListInstancesRequest();
  buildCounterRegionInstanceGroupsListInstancesRequest++;
  if (buildCounterRegionInstanceGroupsListInstancesRequest < 3) {
    o.instanceState = "foo";
    o.portName = "foo";
  }
  buildCounterRegionInstanceGroupsListInstancesRequest--;
  return o;
}

checkRegionInstanceGroupsListInstancesRequest(
    api.RegionInstanceGroupsListInstancesRequest o) {
  buildCounterRegionInstanceGroupsListInstancesRequest++;
  if (buildCounterRegionInstanceGroupsListInstancesRequest < 3) {
    unittest.expect(o.instanceState, unittest.equals('foo'));
    unittest.expect(o.portName, unittest.equals('foo'));
  }
  buildCounterRegionInstanceGroupsListInstancesRequest--;
}

buildUnnamed2366() {
  var o = new core.List<api.NamedPort>();
  o.add(buildNamedPort());
  o.add(buildNamedPort());
  return o;
}

checkUnnamed2366(core.List<api.NamedPort> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedPort(o[0]);
  checkNamedPort(o[1]);
}

core.int buildCounterRegionInstanceGroupsSetNamedPortsRequest = 0;
buildRegionInstanceGroupsSetNamedPortsRequest() {
  var o = new api.RegionInstanceGroupsSetNamedPortsRequest();
  buildCounterRegionInstanceGroupsSetNamedPortsRequest++;
  if (buildCounterRegionInstanceGroupsSetNamedPortsRequest < 3) {
    o.fingerprint = "foo";
    o.namedPorts = buildUnnamed2366();
  }
  buildCounterRegionInstanceGroupsSetNamedPortsRequest--;
  return o;
}

checkRegionInstanceGroupsSetNamedPortsRequest(
    api.RegionInstanceGroupsSetNamedPortsRequest o) {
  buildCounterRegionInstanceGroupsSetNamedPortsRequest++;
  if (buildCounterRegionInstanceGroupsSetNamedPortsRequest < 3) {
    unittest.expect(o.fingerprint, unittest.equals('foo'));
    checkUnnamed2366(o.namedPorts);
  }
  buildCounterRegionInstanceGroupsSetNamedPortsRequest--;
}

buildUnnamed2367() {
  var o = new core.List<api.Region>();
  o.add(buildRegion());
  o.add(buildRegion());
  return o;
}

checkUnnamed2367(core.List<api.Region> o) {
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
    o.items = buildUnnamed2367();
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
    checkUnnamed2367(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterRegionList--;
}

core.int buildCounterResourceCommitment = 0;
buildResourceCommitment() {
  var o = new api.ResourceCommitment();
  buildCounterResourceCommitment++;
  if (buildCounterResourceCommitment < 3) {
    o.amount = "foo";
    o.type = "foo";
  }
  buildCounterResourceCommitment--;
  return o;
}

checkResourceCommitment(api.ResourceCommitment o) {
  buildCounterResourceCommitment++;
  if (buildCounterResourceCommitment < 3) {
    unittest.expect(o.amount, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterResourceCommitment--;
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

buildUnnamed2368() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2368(core.List<core.String> o) {
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

buildUnnamed2369() {
  var o = new core.List<api.RouteWarningsData>();
  o.add(buildRouteWarningsData());
  o.add(buildRouteWarningsData());
  return o;
}

checkUnnamed2369(core.List<api.RouteWarningsData> o) {
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
    o.data = buildUnnamed2369();
    o.message = "foo";
  }
  buildCounterRouteWarnings--;
  return o;
}

checkRouteWarnings(api.RouteWarnings o) {
  buildCounterRouteWarnings++;
  if (buildCounterRouteWarnings < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed2369(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterRouteWarnings--;
}

buildUnnamed2370() {
  var o = new core.List<api.RouteWarnings>();
  o.add(buildRouteWarnings());
  o.add(buildRouteWarnings());
  return o;
}

checkUnnamed2370(core.List<api.RouteWarnings> o) {
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
    o.nextHopPeering = "foo";
    o.nextHopVpnTunnel = "foo";
    o.priority = 42;
    o.selfLink = "foo";
    o.tags = buildUnnamed2368();
    o.warnings = buildUnnamed2370();
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
    unittest.expect(o.nextHopPeering, unittest.equals('foo'));
    unittest.expect(o.nextHopVpnTunnel, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkUnnamed2368(o.tags);
    checkUnnamed2370(o.warnings);
  }
  buildCounterRoute--;
}

buildUnnamed2371() {
  var o = new core.List<api.Route>();
  o.add(buildRoute());
  o.add(buildRoute());
  return o;
}

checkUnnamed2371(core.List<api.Route> o) {
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
    o.items = buildUnnamed2371();
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
    checkUnnamed2371(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterRouteList--;
}

buildUnnamed2372() {
  var o = new core.List<api.RouterBgpPeer>();
  o.add(buildRouterBgpPeer());
  o.add(buildRouterBgpPeer());
  return o;
}

checkUnnamed2372(core.List<api.RouterBgpPeer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRouterBgpPeer(o[0]);
  checkRouterBgpPeer(o[1]);
}

buildUnnamed2373() {
  var o = new core.List<api.RouterInterface>();
  o.add(buildRouterInterface());
  o.add(buildRouterInterface());
  return o;
}

checkUnnamed2373(core.List<api.RouterInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRouterInterface(o[0]);
  checkRouterInterface(o[1]);
}

core.int buildCounterRouter = 0;
buildRouter() {
  var o = new api.Router();
  buildCounterRouter++;
  if (buildCounterRouter < 3) {
    o.bgp = buildRouterBgp();
    o.bgpPeers = buildUnnamed2372();
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.id = "foo";
    o.interfaces = buildUnnamed2373();
    o.kind = "foo";
    o.name = "foo";
    o.network = "foo";
    o.region = "foo";
    o.selfLink = "foo";
  }
  buildCounterRouter--;
  return o;
}

checkRouter(api.Router o) {
  buildCounterRouter++;
  if (buildCounterRouter < 3) {
    checkRouterBgp(o.bgp);
    checkUnnamed2372(o.bgpPeers);
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2373(o.interfaces);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterRouter--;
}

buildUnnamed2374() {
  var o = new core.Map<core.String, api.RoutersScopedList>();
  o["x"] = buildRoutersScopedList();
  o["y"] = buildRoutersScopedList();
  return o;
}

checkUnnamed2374(core.Map<core.String, api.RoutersScopedList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoutersScopedList(o["x"]);
  checkRoutersScopedList(o["y"]);
}

core.int buildCounterRouterAggregatedList = 0;
buildRouterAggregatedList() {
  var o = new api.RouterAggregatedList();
  buildCounterRouterAggregatedList++;
  if (buildCounterRouterAggregatedList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2374();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterRouterAggregatedList--;
  return o;
}

checkRouterAggregatedList(api.RouterAggregatedList o) {
  buildCounterRouterAggregatedList++;
  if (buildCounterRouterAggregatedList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2374(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterRouterAggregatedList--;
}

core.int buildCounterRouterBgp = 0;
buildRouterBgp() {
  var o = new api.RouterBgp();
  buildCounterRouterBgp++;
  if (buildCounterRouterBgp < 3) {
    o.asn = 42;
  }
  buildCounterRouterBgp--;
  return o;
}

checkRouterBgp(api.RouterBgp o) {
  buildCounterRouterBgp++;
  if (buildCounterRouterBgp < 3) {
    unittest.expect(o.asn, unittest.equals(42));
  }
  buildCounterRouterBgp--;
}

core.int buildCounterRouterBgpPeer = 0;
buildRouterBgpPeer() {
  var o = new api.RouterBgpPeer();
  buildCounterRouterBgpPeer++;
  if (buildCounterRouterBgpPeer < 3) {
    o.advertisedRoutePriority = 42;
    o.interfaceName = "foo";
    o.ipAddress = "foo";
    o.name = "foo";
    o.peerAsn = 42;
    o.peerIpAddress = "foo";
  }
  buildCounterRouterBgpPeer--;
  return o;
}

checkRouterBgpPeer(api.RouterBgpPeer o) {
  buildCounterRouterBgpPeer++;
  if (buildCounterRouterBgpPeer < 3) {
    unittest.expect(o.advertisedRoutePriority, unittest.equals(42));
    unittest.expect(o.interfaceName, unittest.equals('foo'));
    unittest.expect(o.ipAddress, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.peerAsn, unittest.equals(42));
    unittest.expect(o.peerIpAddress, unittest.equals('foo'));
  }
  buildCounterRouterBgpPeer--;
}

core.int buildCounterRouterInterface = 0;
buildRouterInterface() {
  var o = new api.RouterInterface();
  buildCounterRouterInterface++;
  if (buildCounterRouterInterface < 3) {
    o.ipRange = "foo";
    o.linkedVpnTunnel = "foo";
    o.name = "foo";
  }
  buildCounterRouterInterface--;
  return o;
}

checkRouterInterface(api.RouterInterface o) {
  buildCounterRouterInterface++;
  if (buildCounterRouterInterface < 3) {
    unittest.expect(o.ipRange, unittest.equals('foo'));
    unittest.expect(o.linkedVpnTunnel, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterRouterInterface--;
}

buildUnnamed2375() {
  var o = new core.List<api.Router>();
  o.add(buildRouter());
  o.add(buildRouter());
  return o;
}

checkUnnamed2375(core.List<api.Router> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRouter(o[0]);
  checkRouter(o[1]);
}

core.int buildCounterRouterList = 0;
buildRouterList() {
  var o = new api.RouterList();
  buildCounterRouterList++;
  if (buildCounterRouterList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2375();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterRouterList--;
  return o;
}

checkRouterList(api.RouterList o) {
  buildCounterRouterList++;
  if (buildCounterRouterList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2375(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterRouterList--;
}

buildUnnamed2376() {
  var o = new core.List<api.Route>();
  o.add(buildRoute());
  o.add(buildRoute());
  return o;
}

checkUnnamed2376(core.List<api.Route> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoute(o[0]);
  checkRoute(o[1]);
}

buildUnnamed2377() {
  var o = new core.List<api.Route>();
  o.add(buildRoute());
  o.add(buildRoute());
  return o;
}

checkUnnamed2377(core.List<api.Route> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoute(o[0]);
  checkRoute(o[1]);
}

buildUnnamed2378() {
  var o = new core.List<api.RouterStatusBgpPeerStatus>();
  o.add(buildRouterStatusBgpPeerStatus());
  o.add(buildRouterStatusBgpPeerStatus());
  return o;
}

checkUnnamed2378(core.List<api.RouterStatusBgpPeerStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRouterStatusBgpPeerStatus(o[0]);
  checkRouterStatusBgpPeerStatus(o[1]);
}

core.int buildCounterRouterStatus = 0;
buildRouterStatus() {
  var o = new api.RouterStatus();
  buildCounterRouterStatus++;
  if (buildCounterRouterStatus < 3) {
    o.bestRoutes = buildUnnamed2376();
    o.bestRoutesForRouter = buildUnnamed2377();
    o.bgpPeerStatus = buildUnnamed2378();
    o.network = "foo";
  }
  buildCounterRouterStatus--;
  return o;
}

checkRouterStatus(api.RouterStatus o) {
  buildCounterRouterStatus++;
  if (buildCounterRouterStatus < 3) {
    checkUnnamed2376(o.bestRoutes);
    checkUnnamed2377(o.bestRoutesForRouter);
    checkUnnamed2378(o.bgpPeerStatus);
    unittest.expect(o.network, unittest.equals('foo'));
  }
  buildCounterRouterStatus--;
}

buildUnnamed2379() {
  var o = new core.List<api.Route>();
  o.add(buildRoute());
  o.add(buildRoute());
  return o;
}

checkUnnamed2379(core.List<api.Route> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoute(o[0]);
  checkRoute(o[1]);
}

core.int buildCounterRouterStatusBgpPeerStatus = 0;
buildRouterStatusBgpPeerStatus() {
  var o = new api.RouterStatusBgpPeerStatus();
  buildCounterRouterStatusBgpPeerStatus++;
  if (buildCounterRouterStatusBgpPeerStatus < 3) {
    o.advertisedRoutes = buildUnnamed2379();
    o.ipAddress = "foo";
    o.linkedVpnTunnel = "foo";
    o.name = "foo";
    o.numLearnedRoutes = 42;
    o.peerIpAddress = "foo";
    o.state = "foo";
    o.status = "foo";
    o.uptime = "foo";
    o.uptimeSeconds = "foo";
  }
  buildCounterRouterStatusBgpPeerStatus--;
  return o;
}

checkRouterStatusBgpPeerStatus(api.RouterStatusBgpPeerStatus o) {
  buildCounterRouterStatusBgpPeerStatus++;
  if (buildCounterRouterStatusBgpPeerStatus < 3) {
    checkUnnamed2379(o.advertisedRoutes);
    unittest.expect(o.ipAddress, unittest.equals('foo'));
    unittest.expect(o.linkedVpnTunnel, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.numLearnedRoutes, unittest.equals(42));
    unittest.expect(o.peerIpAddress, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.uptime, unittest.equals('foo'));
    unittest.expect(o.uptimeSeconds, unittest.equals('foo'));
  }
  buildCounterRouterStatusBgpPeerStatus--;
}

core.int buildCounterRouterStatusResponse = 0;
buildRouterStatusResponse() {
  var o = new api.RouterStatusResponse();
  buildCounterRouterStatusResponse++;
  if (buildCounterRouterStatusResponse < 3) {
    o.kind = "foo";
    o.result = buildRouterStatus();
  }
  buildCounterRouterStatusResponse--;
  return o;
}

checkRouterStatusResponse(api.RouterStatusResponse o) {
  buildCounterRouterStatusResponse++;
  if (buildCounterRouterStatusResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkRouterStatus(o.result);
  }
  buildCounterRouterStatusResponse--;
}

core.int buildCounterRoutersPreviewResponse = 0;
buildRoutersPreviewResponse() {
  var o = new api.RoutersPreviewResponse();
  buildCounterRoutersPreviewResponse++;
  if (buildCounterRoutersPreviewResponse < 3) {
    o.resource = buildRouter();
  }
  buildCounterRoutersPreviewResponse--;
  return o;
}

checkRoutersPreviewResponse(api.RoutersPreviewResponse o) {
  buildCounterRoutersPreviewResponse++;
  if (buildCounterRoutersPreviewResponse < 3) {
    checkRouter(o.resource);
  }
  buildCounterRoutersPreviewResponse--;
}

buildUnnamed2380() {
  var o = new core.List<api.Router>();
  o.add(buildRouter());
  o.add(buildRouter());
  return o;
}

checkUnnamed2380(core.List<api.Router> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRouter(o[0]);
  checkRouter(o[1]);
}

core.int buildCounterRoutersScopedListWarningData = 0;
buildRoutersScopedListWarningData() {
  var o = new api.RoutersScopedListWarningData();
  buildCounterRoutersScopedListWarningData++;
  if (buildCounterRoutersScopedListWarningData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterRoutersScopedListWarningData--;
  return o;
}

checkRoutersScopedListWarningData(api.RoutersScopedListWarningData o) {
  buildCounterRoutersScopedListWarningData++;
  if (buildCounterRoutersScopedListWarningData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterRoutersScopedListWarningData--;
}

buildUnnamed2381() {
  var o = new core.List<api.RoutersScopedListWarningData>();
  o.add(buildRoutersScopedListWarningData());
  o.add(buildRoutersScopedListWarningData());
  return o;
}

checkUnnamed2381(core.List<api.RoutersScopedListWarningData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoutersScopedListWarningData(o[0]);
  checkRoutersScopedListWarningData(o[1]);
}

core.int buildCounterRoutersScopedListWarning = 0;
buildRoutersScopedListWarning() {
  var o = new api.RoutersScopedListWarning();
  buildCounterRoutersScopedListWarning++;
  if (buildCounterRoutersScopedListWarning < 3) {
    o.code = "foo";
    o.data = buildUnnamed2381();
    o.message = "foo";
  }
  buildCounterRoutersScopedListWarning--;
  return o;
}

checkRoutersScopedListWarning(api.RoutersScopedListWarning o) {
  buildCounterRoutersScopedListWarning++;
  if (buildCounterRoutersScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed2381(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterRoutersScopedListWarning--;
}

core.int buildCounterRoutersScopedList = 0;
buildRoutersScopedList() {
  var o = new api.RoutersScopedList();
  buildCounterRoutersScopedList++;
  if (buildCounterRoutersScopedList < 3) {
    o.routers = buildUnnamed2380();
    o.warning = buildRoutersScopedListWarning();
  }
  buildCounterRoutersScopedList--;
  return o;
}

checkRoutersScopedList(api.RoutersScopedList o) {
  buildCounterRoutersScopedList++;
  if (buildCounterRoutersScopedList < 3) {
    checkUnnamed2380(o.routers);
    checkRoutersScopedListWarning(o.warning);
  }
  buildCounterRoutersScopedList--;
}

core.int buildCounterSSLHealthCheck = 0;
buildSSLHealthCheck() {
  var o = new api.SSLHealthCheck();
  buildCounterSSLHealthCheck++;
  if (buildCounterSSLHealthCheck < 3) {
    o.port = 42;
    o.portName = "foo";
    o.proxyHeader = "foo";
    o.request = "foo";
    o.response = "foo";
  }
  buildCounterSSLHealthCheck--;
  return o;
}

checkSSLHealthCheck(api.SSLHealthCheck o) {
  buildCounterSSLHealthCheck++;
  if (buildCounterSSLHealthCheck < 3) {
    unittest.expect(o.port, unittest.equals(42));
    unittest.expect(o.portName, unittest.equals('foo'));
    unittest.expect(o.proxyHeader, unittest.equals('foo'));
    unittest.expect(o.request, unittest.equals('foo'));
    unittest.expect(o.response, unittest.equals('foo'));
  }
  buildCounterSSLHealthCheck--;
}

core.int buildCounterScheduling = 0;
buildScheduling() {
  var o = new api.Scheduling();
  buildCounterScheduling++;
  if (buildCounterScheduling < 3) {
    o.automaticRestart = true;
    o.onHostMaintenance = "foo";
    o.preemptible = true;
  }
  buildCounterScheduling--;
  return o;
}

checkScheduling(api.Scheduling o) {
  buildCounterScheduling++;
  if (buildCounterScheduling < 3) {
    unittest.expect(o.automaticRestart, unittest.isTrue);
    unittest.expect(o.onHostMaintenance, unittest.equals('foo'));
    unittest.expect(o.preemptible, unittest.isTrue);
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
    o.next = "foo";
    o.selfLink = "foo";
    o.start = "foo";
  }
  buildCounterSerialPortOutput--;
  return o;
}

checkSerialPortOutput(api.SerialPortOutput o) {
  buildCounterSerialPortOutput++;
  if (buildCounterSerialPortOutput < 3) {
    unittest.expect(o.contents, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.next, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
  }
  buildCounterSerialPortOutput--;
}

buildUnnamed2382() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2382(core.List<core.String> o) {
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
    o.scopes = buildUnnamed2382();
  }
  buildCounterServiceAccount--;
  return o;
}

checkServiceAccount(api.ServiceAccount o) {
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    checkUnnamed2382(o.scopes);
  }
  buildCounterServiceAccount--;
}

buildUnnamed2383() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2383(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed2384() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2384(core.List<core.String> o) {
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
    o.labelFingerprint = "foo";
    o.labels = buildUnnamed2383();
    o.licenses = buildUnnamed2384();
    o.name = "foo";
    o.selfLink = "foo";
    o.snapshotEncryptionKey = buildCustomerEncryptionKey();
    o.sourceDisk = "foo";
    o.sourceDiskEncryptionKey = buildCustomerEncryptionKey();
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
    unittest.expect(o.labelFingerprint, unittest.equals('foo'));
    checkUnnamed2383(o.labels);
    checkUnnamed2384(o.licenses);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkCustomerEncryptionKey(o.snapshotEncryptionKey);
    unittest.expect(o.sourceDisk, unittest.equals('foo'));
    checkCustomerEncryptionKey(o.sourceDiskEncryptionKey);
    unittest.expect(o.sourceDiskId, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.storageBytes, unittest.equals('foo'));
    unittest.expect(o.storageBytesStatus, unittest.equals('foo'));
  }
  buildCounterSnapshot--;
}

buildUnnamed2385() {
  var o = new core.List<api.Snapshot>();
  o.add(buildSnapshot());
  o.add(buildSnapshot());
  return o;
}

checkUnnamed2385(core.List<api.Snapshot> o) {
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
    o.items = buildUnnamed2385();
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
    checkUnnamed2385(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterSnapshotList--;
}

core.int buildCounterSslCertificate = 0;
buildSslCertificate() {
  var o = new api.SslCertificate();
  buildCounterSslCertificate++;
  if (buildCounterSslCertificate < 3) {
    o.certificate = "foo";
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.privateKey = "foo";
    o.selfLink = "foo";
  }
  buildCounterSslCertificate--;
  return o;
}

checkSslCertificate(api.SslCertificate o) {
  buildCounterSslCertificate++;
  if (buildCounterSslCertificate < 3) {
    unittest.expect(o.certificate, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.privateKey, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterSslCertificate--;
}

buildUnnamed2386() {
  var o = new core.List<api.SslCertificate>();
  o.add(buildSslCertificate());
  o.add(buildSslCertificate());
  return o;
}

checkUnnamed2386(core.List<api.SslCertificate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSslCertificate(o[0]);
  checkSslCertificate(o[1]);
}

core.int buildCounterSslCertificateList = 0;
buildSslCertificateList() {
  var o = new api.SslCertificateList();
  buildCounterSslCertificateList++;
  if (buildCounterSslCertificateList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2386();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterSslCertificateList--;
  return o;
}

checkSslCertificateList(api.SslCertificateList o) {
  buildCounterSslCertificateList++;
  if (buildCounterSslCertificateList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2386(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterSslCertificateList--;
}

buildUnnamed2387() {
  var o = new core.List<api.SubnetworkSecondaryRange>();
  o.add(buildSubnetworkSecondaryRange());
  o.add(buildSubnetworkSecondaryRange());
  return o;
}

checkUnnamed2387(core.List<api.SubnetworkSecondaryRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubnetworkSecondaryRange(o[0]);
  checkSubnetworkSecondaryRange(o[1]);
}

core.int buildCounterSubnetwork = 0;
buildSubnetwork() {
  var o = new api.Subnetwork();
  buildCounterSubnetwork++;
  if (buildCounterSubnetwork < 3) {
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.gatewayAddress = "foo";
    o.id = "foo";
    o.ipCidrRange = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.network = "foo";
    o.privateIpGoogleAccess = true;
    o.region = "foo";
    o.secondaryIpRanges = buildUnnamed2387();
    o.selfLink = "foo";
  }
  buildCounterSubnetwork--;
  return o;
}

checkSubnetwork(api.Subnetwork o) {
  buildCounterSubnetwork++;
  if (buildCounterSubnetwork < 3) {
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.gatewayAddress, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.ipCidrRange, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.privateIpGoogleAccess, unittest.isTrue);
    unittest.expect(o.region, unittest.equals('foo'));
    checkUnnamed2387(o.secondaryIpRanges);
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterSubnetwork--;
}

buildUnnamed2388() {
  var o = new core.Map<core.String, api.SubnetworksScopedList>();
  o["x"] = buildSubnetworksScopedList();
  o["y"] = buildSubnetworksScopedList();
  return o;
}

checkUnnamed2388(core.Map<core.String, api.SubnetworksScopedList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubnetworksScopedList(o["x"]);
  checkSubnetworksScopedList(o["y"]);
}

core.int buildCounterSubnetworkAggregatedList = 0;
buildSubnetworkAggregatedList() {
  var o = new api.SubnetworkAggregatedList();
  buildCounterSubnetworkAggregatedList++;
  if (buildCounterSubnetworkAggregatedList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2388();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterSubnetworkAggregatedList--;
  return o;
}

checkSubnetworkAggregatedList(api.SubnetworkAggregatedList o) {
  buildCounterSubnetworkAggregatedList++;
  if (buildCounterSubnetworkAggregatedList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2388(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterSubnetworkAggregatedList--;
}

buildUnnamed2389() {
  var o = new core.List<api.Subnetwork>();
  o.add(buildSubnetwork());
  o.add(buildSubnetwork());
  return o;
}

checkUnnamed2389(core.List<api.Subnetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubnetwork(o[0]);
  checkSubnetwork(o[1]);
}

core.int buildCounterSubnetworkList = 0;
buildSubnetworkList() {
  var o = new api.SubnetworkList();
  buildCounterSubnetworkList++;
  if (buildCounterSubnetworkList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2389();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterSubnetworkList--;
  return o;
}

checkSubnetworkList(api.SubnetworkList o) {
  buildCounterSubnetworkList++;
  if (buildCounterSubnetworkList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2389(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterSubnetworkList--;
}

core.int buildCounterSubnetworkSecondaryRange = 0;
buildSubnetworkSecondaryRange() {
  var o = new api.SubnetworkSecondaryRange();
  buildCounterSubnetworkSecondaryRange++;
  if (buildCounterSubnetworkSecondaryRange < 3) {
    o.ipCidrRange = "foo";
    o.rangeName = "foo";
  }
  buildCounterSubnetworkSecondaryRange--;
  return o;
}

checkSubnetworkSecondaryRange(api.SubnetworkSecondaryRange o) {
  buildCounterSubnetworkSecondaryRange++;
  if (buildCounterSubnetworkSecondaryRange < 3) {
    unittest.expect(o.ipCidrRange, unittest.equals('foo'));
    unittest.expect(o.rangeName, unittest.equals('foo'));
  }
  buildCounterSubnetworkSecondaryRange--;
}

core.int buildCounterSubnetworksExpandIpCidrRangeRequest = 0;
buildSubnetworksExpandIpCidrRangeRequest() {
  var o = new api.SubnetworksExpandIpCidrRangeRequest();
  buildCounterSubnetworksExpandIpCidrRangeRequest++;
  if (buildCounterSubnetworksExpandIpCidrRangeRequest < 3) {
    o.ipCidrRange = "foo";
  }
  buildCounterSubnetworksExpandIpCidrRangeRequest--;
  return o;
}

checkSubnetworksExpandIpCidrRangeRequest(
    api.SubnetworksExpandIpCidrRangeRequest o) {
  buildCounterSubnetworksExpandIpCidrRangeRequest++;
  if (buildCounterSubnetworksExpandIpCidrRangeRequest < 3) {
    unittest.expect(o.ipCidrRange, unittest.equals('foo'));
  }
  buildCounterSubnetworksExpandIpCidrRangeRequest--;
}

buildUnnamed2390() {
  var o = new core.List<api.Subnetwork>();
  o.add(buildSubnetwork());
  o.add(buildSubnetwork());
  return o;
}

checkUnnamed2390(core.List<api.Subnetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubnetwork(o[0]);
  checkSubnetwork(o[1]);
}

core.int buildCounterSubnetworksScopedListWarningData = 0;
buildSubnetworksScopedListWarningData() {
  var o = new api.SubnetworksScopedListWarningData();
  buildCounterSubnetworksScopedListWarningData++;
  if (buildCounterSubnetworksScopedListWarningData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterSubnetworksScopedListWarningData--;
  return o;
}

checkSubnetworksScopedListWarningData(api.SubnetworksScopedListWarningData o) {
  buildCounterSubnetworksScopedListWarningData++;
  if (buildCounterSubnetworksScopedListWarningData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterSubnetworksScopedListWarningData--;
}

buildUnnamed2391() {
  var o = new core.List<api.SubnetworksScopedListWarningData>();
  o.add(buildSubnetworksScopedListWarningData());
  o.add(buildSubnetworksScopedListWarningData());
  return o;
}

checkUnnamed2391(core.List<api.SubnetworksScopedListWarningData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubnetworksScopedListWarningData(o[0]);
  checkSubnetworksScopedListWarningData(o[1]);
}

core.int buildCounterSubnetworksScopedListWarning = 0;
buildSubnetworksScopedListWarning() {
  var o = new api.SubnetworksScopedListWarning();
  buildCounterSubnetworksScopedListWarning++;
  if (buildCounterSubnetworksScopedListWarning < 3) {
    o.code = "foo";
    o.data = buildUnnamed2391();
    o.message = "foo";
  }
  buildCounterSubnetworksScopedListWarning--;
  return o;
}

checkSubnetworksScopedListWarning(api.SubnetworksScopedListWarning o) {
  buildCounterSubnetworksScopedListWarning++;
  if (buildCounterSubnetworksScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed2391(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterSubnetworksScopedListWarning--;
}

core.int buildCounterSubnetworksScopedList = 0;
buildSubnetworksScopedList() {
  var o = new api.SubnetworksScopedList();
  buildCounterSubnetworksScopedList++;
  if (buildCounterSubnetworksScopedList < 3) {
    o.subnetworks = buildUnnamed2390();
    o.warning = buildSubnetworksScopedListWarning();
  }
  buildCounterSubnetworksScopedList--;
  return o;
}

checkSubnetworksScopedList(api.SubnetworksScopedList o) {
  buildCounterSubnetworksScopedList++;
  if (buildCounterSubnetworksScopedList < 3) {
    checkUnnamed2390(o.subnetworks);
    checkSubnetworksScopedListWarning(o.warning);
  }
  buildCounterSubnetworksScopedList--;
}

core.int buildCounterSubnetworksSetPrivateIpGoogleAccessRequest = 0;
buildSubnetworksSetPrivateIpGoogleAccessRequest() {
  var o = new api.SubnetworksSetPrivateIpGoogleAccessRequest();
  buildCounterSubnetworksSetPrivateIpGoogleAccessRequest++;
  if (buildCounterSubnetworksSetPrivateIpGoogleAccessRequest < 3) {
    o.privateIpGoogleAccess = true;
  }
  buildCounterSubnetworksSetPrivateIpGoogleAccessRequest--;
  return o;
}

checkSubnetworksSetPrivateIpGoogleAccessRequest(
    api.SubnetworksSetPrivateIpGoogleAccessRequest o) {
  buildCounterSubnetworksSetPrivateIpGoogleAccessRequest++;
  if (buildCounterSubnetworksSetPrivateIpGoogleAccessRequest < 3) {
    unittest.expect(o.privateIpGoogleAccess, unittest.isTrue);
  }
  buildCounterSubnetworksSetPrivateIpGoogleAccessRequest--;
}

core.int buildCounterTCPHealthCheck = 0;
buildTCPHealthCheck() {
  var o = new api.TCPHealthCheck();
  buildCounterTCPHealthCheck++;
  if (buildCounterTCPHealthCheck < 3) {
    o.port = 42;
    o.portName = "foo";
    o.proxyHeader = "foo";
    o.request = "foo";
    o.response = "foo";
  }
  buildCounterTCPHealthCheck--;
  return o;
}

checkTCPHealthCheck(api.TCPHealthCheck o) {
  buildCounterTCPHealthCheck++;
  if (buildCounterTCPHealthCheck < 3) {
    unittest.expect(o.port, unittest.equals(42));
    unittest.expect(o.portName, unittest.equals('foo'));
    unittest.expect(o.proxyHeader, unittest.equals('foo'));
    unittest.expect(o.request, unittest.equals('foo'));
    unittest.expect(o.response, unittest.equals('foo'));
  }
  buildCounterTCPHealthCheck--;
}

buildUnnamed2392() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2392(core.List<core.String> o) {
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
    o.items = buildUnnamed2392();
  }
  buildCounterTags--;
  return o;
}

checkTags(api.Tags o) {
  buildCounterTags++;
  if (buildCounterTags < 3) {
    unittest.expect(o.fingerprint, unittest.equals('foo'));
    checkUnnamed2392(o.items);
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

buildUnnamed2393() {
  var o = new core.List<api.TargetHttpProxy>();
  o.add(buildTargetHttpProxy());
  o.add(buildTargetHttpProxy());
  return o;
}

checkUnnamed2393(core.List<api.TargetHttpProxy> o) {
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
    o.items = buildUnnamed2393();
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
    checkUnnamed2393(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterTargetHttpProxyList--;
}

buildUnnamed2394() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2394(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTargetHttpsProxiesSetSslCertificatesRequest = 0;
buildTargetHttpsProxiesSetSslCertificatesRequest() {
  var o = new api.TargetHttpsProxiesSetSslCertificatesRequest();
  buildCounterTargetHttpsProxiesSetSslCertificatesRequest++;
  if (buildCounterTargetHttpsProxiesSetSslCertificatesRequest < 3) {
    o.sslCertificates = buildUnnamed2394();
  }
  buildCounterTargetHttpsProxiesSetSslCertificatesRequest--;
  return o;
}

checkTargetHttpsProxiesSetSslCertificatesRequest(
    api.TargetHttpsProxiesSetSslCertificatesRequest o) {
  buildCounterTargetHttpsProxiesSetSslCertificatesRequest++;
  if (buildCounterTargetHttpsProxiesSetSslCertificatesRequest < 3) {
    checkUnnamed2394(o.sslCertificates);
  }
  buildCounterTargetHttpsProxiesSetSslCertificatesRequest--;
}

buildUnnamed2395() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2395(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTargetHttpsProxy = 0;
buildTargetHttpsProxy() {
  var o = new api.TargetHttpsProxy();
  buildCounterTargetHttpsProxy++;
  if (buildCounterTargetHttpsProxy < 3) {
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.selfLink = "foo";
    o.sslCertificates = buildUnnamed2395();
    o.urlMap = "foo";
  }
  buildCounterTargetHttpsProxy--;
  return o;
}

checkTargetHttpsProxy(api.TargetHttpsProxy o) {
  buildCounterTargetHttpsProxy++;
  if (buildCounterTargetHttpsProxy < 3) {
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkUnnamed2395(o.sslCertificates);
    unittest.expect(o.urlMap, unittest.equals('foo'));
  }
  buildCounterTargetHttpsProxy--;
}

buildUnnamed2396() {
  var o = new core.List<api.TargetHttpsProxy>();
  o.add(buildTargetHttpsProxy());
  o.add(buildTargetHttpsProxy());
  return o;
}

checkUnnamed2396(core.List<api.TargetHttpsProxy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetHttpsProxy(o[0]);
  checkTargetHttpsProxy(o[1]);
}

core.int buildCounterTargetHttpsProxyList = 0;
buildTargetHttpsProxyList() {
  var o = new api.TargetHttpsProxyList();
  buildCounterTargetHttpsProxyList++;
  if (buildCounterTargetHttpsProxyList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2396();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterTargetHttpsProxyList--;
  return o;
}

checkTargetHttpsProxyList(api.TargetHttpsProxyList o) {
  buildCounterTargetHttpsProxyList++;
  if (buildCounterTargetHttpsProxyList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2396(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterTargetHttpsProxyList--;
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

buildUnnamed2397() {
  var o = new core.Map<core.String, api.TargetInstancesScopedList>();
  o["x"] = buildTargetInstancesScopedList();
  o["y"] = buildTargetInstancesScopedList();
  return o;
}

checkUnnamed2397(core.Map<core.String, api.TargetInstancesScopedList> o) {
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
    o.items = buildUnnamed2397();
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
    checkUnnamed2397(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterTargetInstanceAggregatedList--;
}

buildUnnamed2398() {
  var o = new core.List<api.TargetInstance>();
  o.add(buildTargetInstance());
  o.add(buildTargetInstance());
  return o;
}

checkUnnamed2398(core.List<api.TargetInstance> o) {
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
    o.items = buildUnnamed2398();
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
    checkUnnamed2398(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterTargetInstanceList--;
}

buildUnnamed2399() {
  var o = new core.List<api.TargetInstance>();
  o.add(buildTargetInstance());
  o.add(buildTargetInstance());
  return o;
}

checkUnnamed2399(core.List<api.TargetInstance> o) {
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

checkTargetInstancesScopedListWarningData(
    api.TargetInstancesScopedListWarningData o) {
  buildCounterTargetInstancesScopedListWarningData++;
  if (buildCounterTargetInstancesScopedListWarningData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterTargetInstancesScopedListWarningData--;
}

buildUnnamed2400() {
  var o = new core.List<api.TargetInstancesScopedListWarningData>();
  o.add(buildTargetInstancesScopedListWarningData());
  o.add(buildTargetInstancesScopedListWarningData());
  return o;
}

checkUnnamed2400(core.List<api.TargetInstancesScopedListWarningData> o) {
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
    o.data = buildUnnamed2400();
    o.message = "foo";
  }
  buildCounterTargetInstancesScopedListWarning--;
  return o;
}

checkTargetInstancesScopedListWarning(api.TargetInstancesScopedListWarning o) {
  buildCounterTargetInstancesScopedListWarning++;
  if (buildCounterTargetInstancesScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed2400(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterTargetInstancesScopedListWarning--;
}

core.int buildCounterTargetInstancesScopedList = 0;
buildTargetInstancesScopedList() {
  var o = new api.TargetInstancesScopedList();
  buildCounterTargetInstancesScopedList++;
  if (buildCounterTargetInstancesScopedList < 3) {
    o.targetInstances = buildUnnamed2399();
    o.warning = buildTargetInstancesScopedListWarning();
  }
  buildCounterTargetInstancesScopedList--;
  return o;
}

checkTargetInstancesScopedList(api.TargetInstancesScopedList o) {
  buildCounterTargetInstancesScopedList++;
  if (buildCounterTargetInstancesScopedList < 3) {
    checkUnnamed2399(o.targetInstances);
    checkTargetInstancesScopedListWarning(o.warning);
  }
  buildCounterTargetInstancesScopedList--;
}

buildUnnamed2401() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2401(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2402() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2402(core.List<core.String> o) {
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
    o.healthChecks = buildUnnamed2401();
    o.id = "foo";
    o.instances = buildUnnamed2402();
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
    checkUnnamed2401(o.healthChecks);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2402(o.instances);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.sessionAffinity, unittest.equals('foo'));
  }
  buildCounterTargetPool--;
}

buildUnnamed2403() {
  var o = new core.Map<core.String, api.TargetPoolsScopedList>();
  o["x"] = buildTargetPoolsScopedList();
  o["y"] = buildTargetPoolsScopedList();
  return o;
}

checkUnnamed2403(core.Map<core.String, api.TargetPoolsScopedList> o) {
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
    o.items = buildUnnamed2403();
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
    checkUnnamed2403(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterTargetPoolAggregatedList--;
}

buildUnnamed2404() {
  var o = new core.List<api.HealthStatus>();
  o.add(buildHealthStatus());
  o.add(buildHealthStatus());
  return o;
}

checkUnnamed2404(core.List<api.HealthStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHealthStatus(o[0]);
  checkHealthStatus(o[1]);
}

core.int buildCounterTargetPoolInstanceHealth = 0;
buildTargetPoolInstanceHealth() {
  var o = new api.TargetPoolInstanceHealth();
  buildCounterTargetPoolInstanceHealth++;
  if (buildCounterTargetPoolInstanceHealth < 3) {
    o.healthStatus = buildUnnamed2404();
    o.kind = "foo";
  }
  buildCounterTargetPoolInstanceHealth--;
  return o;
}

checkTargetPoolInstanceHealth(api.TargetPoolInstanceHealth o) {
  buildCounterTargetPoolInstanceHealth++;
  if (buildCounterTargetPoolInstanceHealth < 3) {
    checkUnnamed2404(o.healthStatus);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterTargetPoolInstanceHealth--;
}

buildUnnamed2405() {
  var o = new core.List<api.TargetPool>();
  o.add(buildTargetPool());
  o.add(buildTargetPool());
  return o;
}

checkUnnamed2405(core.List<api.TargetPool> o) {
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
    o.items = buildUnnamed2405();
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
    checkUnnamed2405(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterTargetPoolList--;
}

buildUnnamed2406() {
  var o = new core.List<api.HealthCheckReference>();
  o.add(buildHealthCheckReference());
  o.add(buildHealthCheckReference());
  return o;
}

checkUnnamed2406(core.List<api.HealthCheckReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHealthCheckReference(o[0]);
  checkHealthCheckReference(o[1]);
}

core.int buildCounterTargetPoolsAddHealthCheckRequest = 0;
buildTargetPoolsAddHealthCheckRequest() {
  var o = new api.TargetPoolsAddHealthCheckRequest();
  buildCounterTargetPoolsAddHealthCheckRequest++;
  if (buildCounterTargetPoolsAddHealthCheckRequest < 3) {
    o.healthChecks = buildUnnamed2406();
  }
  buildCounterTargetPoolsAddHealthCheckRequest--;
  return o;
}

checkTargetPoolsAddHealthCheckRequest(api.TargetPoolsAddHealthCheckRequest o) {
  buildCounterTargetPoolsAddHealthCheckRequest++;
  if (buildCounterTargetPoolsAddHealthCheckRequest < 3) {
    checkUnnamed2406(o.healthChecks);
  }
  buildCounterTargetPoolsAddHealthCheckRequest--;
}

buildUnnamed2407() {
  var o = new core.List<api.InstanceReference>();
  o.add(buildInstanceReference());
  o.add(buildInstanceReference());
  return o;
}

checkUnnamed2407(core.List<api.InstanceReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceReference(o[0]);
  checkInstanceReference(o[1]);
}

core.int buildCounterTargetPoolsAddInstanceRequest = 0;
buildTargetPoolsAddInstanceRequest() {
  var o = new api.TargetPoolsAddInstanceRequest();
  buildCounterTargetPoolsAddInstanceRequest++;
  if (buildCounterTargetPoolsAddInstanceRequest < 3) {
    o.instances = buildUnnamed2407();
  }
  buildCounterTargetPoolsAddInstanceRequest--;
  return o;
}

checkTargetPoolsAddInstanceRequest(api.TargetPoolsAddInstanceRequest o) {
  buildCounterTargetPoolsAddInstanceRequest++;
  if (buildCounterTargetPoolsAddInstanceRequest < 3) {
    checkUnnamed2407(o.instances);
  }
  buildCounterTargetPoolsAddInstanceRequest--;
}

buildUnnamed2408() {
  var o = new core.List<api.HealthCheckReference>();
  o.add(buildHealthCheckReference());
  o.add(buildHealthCheckReference());
  return o;
}

checkUnnamed2408(core.List<api.HealthCheckReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHealthCheckReference(o[0]);
  checkHealthCheckReference(o[1]);
}

core.int buildCounterTargetPoolsRemoveHealthCheckRequest = 0;
buildTargetPoolsRemoveHealthCheckRequest() {
  var o = new api.TargetPoolsRemoveHealthCheckRequest();
  buildCounterTargetPoolsRemoveHealthCheckRequest++;
  if (buildCounterTargetPoolsRemoveHealthCheckRequest < 3) {
    o.healthChecks = buildUnnamed2408();
  }
  buildCounterTargetPoolsRemoveHealthCheckRequest--;
  return o;
}

checkTargetPoolsRemoveHealthCheckRequest(
    api.TargetPoolsRemoveHealthCheckRequest o) {
  buildCounterTargetPoolsRemoveHealthCheckRequest++;
  if (buildCounterTargetPoolsRemoveHealthCheckRequest < 3) {
    checkUnnamed2408(o.healthChecks);
  }
  buildCounterTargetPoolsRemoveHealthCheckRequest--;
}

buildUnnamed2409() {
  var o = new core.List<api.InstanceReference>();
  o.add(buildInstanceReference());
  o.add(buildInstanceReference());
  return o;
}

checkUnnamed2409(core.List<api.InstanceReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceReference(o[0]);
  checkInstanceReference(o[1]);
}

core.int buildCounterTargetPoolsRemoveInstanceRequest = 0;
buildTargetPoolsRemoveInstanceRequest() {
  var o = new api.TargetPoolsRemoveInstanceRequest();
  buildCounterTargetPoolsRemoveInstanceRequest++;
  if (buildCounterTargetPoolsRemoveInstanceRequest < 3) {
    o.instances = buildUnnamed2409();
  }
  buildCounterTargetPoolsRemoveInstanceRequest--;
  return o;
}

checkTargetPoolsRemoveInstanceRequest(api.TargetPoolsRemoveInstanceRequest o) {
  buildCounterTargetPoolsRemoveInstanceRequest++;
  if (buildCounterTargetPoolsRemoveInstanceRequest < 3) {
    checkUnnamed2409(o.instances);
  }
  buildCounterTargetPoolsRemoveInstanceRequest--;
}

buildUnnamed2410() {
  var o = new core.List<api.TargetPool>();
  o.add(buildTargetPool());
  o.add(buildTargetPool());
  return o;
}

checkUnnamed2410(core.List<api.TargetPool> o) {
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

buildUnnamed2411() {
  var o = new core.List<api.TargetPoolsScopedListWarningData>();
  o.add(buildTargetPoolsScopedListWarningData());
  o.add(buildTargetPoolsScopedListWarningData());
  return o;
}

checkUnnamed2411(core.List<api.TargetPoolsScopedListWarningData> o) {
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
    o.data = buildUnnamed2411();
    o.message = "foo";
  }
  buildCounterTargetPoolsScopedListWarning--;
  return o;
}

checkTargetPoolsScopedListWarning(api.TargetPoolsScopedListWarning o) {
  buildCounterTargetPoolsScopedListWarning++;
  if (buildCounterTargetPoolsScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed2411(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterTargetPoolsScopedListWarning--;
}

core.int buildCounterTargetPoolsScopedList = 0;
buildTargetPoolsScopedList() {
  var o = new api.TargetPoolsScopedList();
  buildCounterTargetPoolsScopedList++;
  if (buildCounterTargetPoolsScopedList < 3) {
    o.targetPools = buildUnnamed2410();
    o.warning = buildTargetPoolsScopedListWarning();
  }
  buildCounterTargetPoolsScopedList--;
  return o;
}

checkTargetPoolsScopedList(api.TargetPoolsScopedList o) {
  buildCounterTargetPoolsScopedList++;
  if (buildCounterTargetPoolsScopedList < 3) {
    checkUnnamed2410(o.targetPools);
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

core.int buildCounterTargetSslProxiesSetBackendServiceRequest = 0;
buildTargetSslProxiesSetBackendServiceRequest() {
  var o = new api.TargetSslProxiesSetBackendServiceRequest();
  buildCounterTargetSslProxiesSetBackendServiceRequest++;
  if (buildCounterTargetSslProxiesSetBackendServiceRequest < 3) {
    o.service = "foo";
  }
  buildCounterTargetSslProxiesSetBackendServiceRequest--;
  return o;
}

checkTargetSslProxiesSetBackendServiceRequest(
    api.TargetSslProxiesSetBackendServiceRequest o) {
  buildCounterTargetSslProxiesSetBackendServiceRequest++;
  if (buildCounterTargetSslProxiesSetBackendServiceRequest < 3) {
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterTargetSslProxiesSetBackendServiceRequest--;
}

core.int buildCounterTargetSslProxiesSetProxyHeaderRequest = 0;
buildTargetSslProxiesSetProxyHeaderRequest() {
  var o = new api.TargetSslProxiesSetProxyHeaderRequest();
  buildCounterTargetSslProxiesSetProxyHeaderRequest++;
  if (buildCounterTargetSslProxiesSetProxyHeaderRequest < 3) {
    o.proxyHeader = "foo";
  }
  buildCounterTargetSslProxiesSetProxyHeaderRequest--;
  return o;
}

checkTargetSslProxiesSetProxyHeaderRequest(
    api.TargetSslProxiesSetProxyHeaderRequest o) {
  buildCounterTargetSslProxiesSetProxyHeaderRequest++;
  if (buildCounterTargetSslProxiesSetProxyHeaderRequest < 3) {
    unittest.expect(o.proxyHeader, unittest.equals('foo'));
  }
  buildCounterTargetSslProxiesSetProxyHeaderRequest--;
}

buildUnnamed2412() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2412(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTargetSslProxiesSetSslCertificatesRequest = 0;
buildTargetSslProxiesSetSslCertificatesRequest() {
  var o = new api.TargetSslProxiesSetSslCertificatesRequest();
  buildCounterTargetSslProxiesSetSslCertificatesRequest++;
  if (buildCounterTargetSslProxiesSetSslCertificatesRequest < 3) {
    o.sslCertificates = buildUnnamed2412();
  }
  buildCounterTargetSslProxiesSetSslCertificatesRequest--;
  return o;
}

checkTargetSslProxiesSetSslCertificatesRequest(
    api.TargetSslProxiesSetSslCertificatesRequest o) {
  buildCounterTargetSslProxiesSetSslCertificatesRequest++;
  if (buildCounterTargetSslProxiesSetSslCertificatesRequest < 3) {
    checkUnnamed2412(o.sslCertificates);
  }
  buildCounterTargetSslProxiesSetSslCertificatesRequest--;
}

buildUnnamed2413() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2413(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTargetSslProxy = 0;
buildTargetSslProxy() {
  var o = new api.TargetSslProxy();
  buildCounterTargetSslProxy++;
  if (buildCounterTargetSslProxy < 3) {
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.proxyHeader = "foo";
    o.selfLink = "foo";
    o.service = "foo";
    o.sslCertificates = buildUnnamed2413();
  }
  buildCounterTargetSslProxy--;
  return o;
}

checkTargetSslProxy(api.TargetSslProxy o) {
  buildCounterTargetSslProxy++;
  if (buildCounterTargetSslProxy < 3) {
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.proxyHeader, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.service, unittest.equals('foo'));
    checkUnnamed2413(o.sslCertificates);
  }
  buildCounterTargetSslProxy--;
}

buildUnnamed2414() {
  var o = new core.List<api.TargetSslProxy>();
  o.add(buildTargetSslProxy());
  o.add(buildTargetSslProxy());
  return o;
}

checkUnnamed2414(core.List<api.TargetSslProxy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetSslProxy(o[0]);
  checkTargetSslProxy(o[1]);
}

core.int buildCounterTargetSslProxyList = 0;
buildTargetSslProxyList() {
  var o = new api.TargetSslProxyList();
  buildCounterTargetSslProxyList++;
  if (buildCounterTargetSslProxyList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2414();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterTargetSslProxyList--;
  return o;
}

checkTargetSslProxyList(api.TargetSslProxyList o) {
  buildCounterTargetSslProxyList++;
  if (buildCounterTargetSslProxyList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2414(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterTargetSslProxyList--;
}

core.int buildCounterTargetTcpProxiesSetBackendServiceRequest = 0;
buildTargetTcpProxiesSetBackendServiceRequest() {
  var o = new api.TargetTcpProxiesSetBackendServiceRequest();
  buildCounterTargetTcpProxiesSetBackendServiceRequest++;
  if (buildCounterTargetTcpProxiesSetBackendServiceRequest < 3) {
    o.service = "foo";
  }
  buildCounterTargetTcpProxiesSetBackendServiceRequest--;
  return o;
}

checkTargetTcpProxiesSetBackendServiceRequest(
    api.TargetTcpProxiesSetBackendServiceRequest o) {
  buildCounterTargetTcpProxiesSetBackendServiceRequest++;
  if (buildCounterTargetTcpProxiesSetBackendServiceRequest < 3) {
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterTargetTcpProxiesSetBackendServiceRequest--;
}

core.int buildCounterTargetTcpProxiesSetProxyHeaderRequest = 0;
buildTargetTcpProxiesSetProxyHeaderRequest() {
  var o = new api.TargetTcpProxiesSetProxyHeaderRequest();
  buildCounterTargetTcpProxiesSetProxyHeaderRequest++;
  if (buildCounterTargetTcpProxiesSetProxyHeaderRequest < 3) {
    o.proxyHeader = "foo";
  }
  buildCounterTargetTcpProxiesSetProxyHeaderRequest--;
  return o;
}

checkTargetTcpProxiesSetProxyHeaderRequest(
    api.TargetTcpProxiesSetProxyHeaderRequest o) {
  buildCounterTargetTcpProxiesSetProxyHeaderRequest++;
  if (buildCounterTargetTcpProxiesSetProxyHeaderRequest < 3) {
    unittest.expect(o.proxyHeader, unittest.equals('foo'));
  }
  buildCounterTargetTcpProxiesSetProxyHeaderRequest--;
}

core.int buildCounterTargetTcpProxy = 0;
buildTargetTcpProxy() {
  var o = new api.TargetTcpProxy();
  buildCounterTargetTcpProxy++;
  if (buildCounterTargetTcpProxy < 3) {
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.proxyHeader = "foo";
    o.selfLink = "foo";
    o.service = "foo";
  }
  buildCounterTargetTcpProxy--;
  return o;
}

checkTargetTcpProxy(api.TargetTcpProxy o) {
  buildCounterTargetTcpProxy++;
  if (buildCounterTargetTcpProxy < 3) {
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.proxyHeader, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterTargetTcpProxy--;
}

buildUnnamed2415() {
  var o = new core.List<api.TargetTcpProxy>();
  o.add(buildTargetTcpProxy());
  o.add(buildTargetTcpProxy());
  return o;
}

checkUnnamed2415(core.List<api.TargetTcpProxy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetTcpProxy(o[0]);
  checkTargetTcpProxy(o[1]);
}

core.int buildCounterTargetTcpProxyList = 0;
buildTargetTcpProxyList() {
  var o = new api.TargetTcpProxyList();
  buildCounterTargetTcpProxyList++;
  if (buildCounterTargetTcpProxyList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2415();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterTargetTcpProxyList--;
  return o;
}

checkTargetTcpProxyList(api.TargetTcpProxyList o) {
  buildCounterTargetTcpProxyList++;
  if (buildCounterTargetTcpProxyList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2415(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterTargetTcpProxyList--;
}

buildUnnamed2416() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2416(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2417() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2417(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTargetVpnGateway = 0;
buildTargetVpnGateway() {
  var o = new api.TargetVpnGateway();
  buildCounterTargetVpnGateway++;
  if (buildCounterTargetVpnGateway < 3) {
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.forwardingRules = buildUnnamed2416();
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.network = "foo";
    o.region = "foo";
    o.selfLink = "foo";
    o.status = "foo";
    o.tunnels = buildUnnamed2417();
  }
  buildCounterTargetVpnGateway--;
  return o;
}

checkTargetVpnGateway(api.TargetVpnGateway o) {
  buildCounterTargetVpnGateway++;
  if (buildCounterTargetVpnGateway < 3) {
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed2416(o.forwardingRules);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    checkUnnamed2417(o.tunnels);
  }
  buildCounterTargetVpnGateway--;
}

buildUnnamed2418() {
  var o = new core.Map<core.String, api.TargetVpnGatewaysScopedList>();
  o["x"] = buildTargetVpnGatewaysScopedList();
  o["y"] = buildTargetVpnGatewaysScopedList();
  return o;
}

checkUnnamed2418(core.Map<core.String, api.TargetVpnGatewaysScopedList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetVpnGatewaysScopedList(o["x"]);
  checkTargetVpnGatewaysScopedList(o["y"]);
}

core.int buildCounterTargetVpnGatewayAggregatedList = 0;
buildTargetVpnGatewayAggregatedList() {
  var o = new api.TargetVpnGatewayAggregatedList();
  buildCounterTargetVpnGatewayAggregatedList++;
  if (buildCounterTargetVpnGatewayAggregatedList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2418();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterTargetVpnGatewayAggregatedList--;
  return o;
}

checkTargetVpnGatewayAggregatedList(api.TargetVpnGatewayAggregatedList o) {
  buildCounterTargetVpnGatewayAggregatedList++;
  if (buildCounterTargetVpnGatewayAggregatedList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2418(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterTargetVpnGatewayAggregatedList--;
}

buildUnnamed2419() {
  var o = new core.List<api.TargetVpnGateway>();
  o.add(buildTargetVpnGateway());
  o.add(buildTargetVpnGateway());
  return o;
}

checkUnnamed2419(core.List<api.TargetVpnGateway> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetVpnGateway(o[0]);
  checkTargetVpnGateway(o[1]);
}

core.int buildCounterTargetVpnGatewayList = 0;
buildTargetVpnGatewayList() {
  var o = new api.TargetVpnGatewayList();
  buildCounterTargetVpnGatewayList++;
  if (buildCounterTargetVpnGatewayList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2419();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterTargetVpnGatewayList--;
  return o;
}

checkTargetVpnGatewayList(api.TargetVpnGatewayList o) {
  buildCounterTargetVpnGatewayList++;
  if (buildCounterTargetVpnGatewayList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2419(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterTargetVpnGatewayList--;
}

buildUnnamed2420() {
  var o = new core.List<api.TargetVpnGateway>();
  o.add(buildTargetVpnGateway());
  o.add(buildTargetVpnGateway());
  return o;
}

checkUnnamed2420(core.List<api.TargetVpnGateway> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetVpnGateway(o[0]);
  checkTargetVpnGateway(o[1]);
}

core.int buildCounterTargetVpnGatewaysScopedListWarningData = 0;
buildTargetVpnGatewaysScopedListWarningData() {
  var o = new api.TargetVpnGatewaysScopedListWarningData();
  buildCounterTargetVpnGatewaysScopedListWarningData++;
  if (buildCounterTargetVpnGatewaysScopedListWarningData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterTargetVpnGatewaysScopedListWarningData--;
  return o;
}

checkTargetVpnGatewaysScopedListWarningData(
    api.TargetVpnGatewaysScopedListWarningData o) {
  buildCounterTargetVpnGatewaysScopedListWarningData++;
  if (buildCounterTargetVpnGatewaysScopedListWarningData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterTargetVpnGatewaysScopedListWarningData--;
}

buildUnnamed2421() {
  var o = new core.List<api.TargetVpnGatewaysScopedListWarningData>();
  o.add(buildTargetVpnGatewaysScopedListWarningData());
  o.add(buildTargetVpnGatewaysScopedListWarningData());
  return o;
}

checkUnnamed2421(core.List<api.TargetVpnGatewaysScopedListWarningData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetVpnGatewaysScopedListWarningData(o[0]);
  checkTargetVpnGatewaysScopedListWarningData(o[1]);
}

core.int buildCounterTargetVpnGatewaysScopedListWarning = 0;
buildTargetVpnGatewaysScopedListWarning() {
  var o = new api.TargetVpnGatewaysScopedListWarning();
  buildCounterTargetVpnGatewaysScopedListWarning++;
  if (buildCounterTargetVpnGatewaysScopedListWarning < 3) {
    o.code = "foo";
    o.data = buildUnnamed2421();
    o.message = "foo";
  }
  buildCounterTargetVpnGatewaysScopedListWarning--;
  return o;
}

checkTargetVpnGatewaysScopedListWarning(
    api.TargetVpnGatewaysScopedListWarning o) {
  buildCounterTargetVpnGatewaysScopedListWarning++;
  if (buildCounterTargetVpnGatewaysScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed2421(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterTargetVpnGatewaysScopedListWarning--;
}

core.int buildCounterTargetVpnGatewaysScopedList = 0;
buildTargetVpnGatewaysScopedList() {
  var o = new api.TargetVpnGatewaysScopedList();
  buildCounterTargetVpnGatewaysScopedList++;
  if (buildCounterTargetVpnGatewaysScopedList < 3) {
    o.targetVpnGateways = buildUnnamed2420();
    o.warning = buildTargetVpnGatewaysScopedListWarning();
  }
  buildCounterTargetVpnGatewaysScopedList--;
  return o;
}

checkTargetVpnGatewaysScopedList(api.TargetVpnGatewaysScopedList o) {
  buildCounterTargetVpnGatewaysScopedList++;
  if (buildCounterTargetVpnGatewaysScopedList < 3) {
    checkUnnamed2420(o.targetVpnGateways);
    checkTargetVpnGatewaysScopedListWarning(o.warning);
  }
  buildCounterTargetVpnGatewaysScopedList--;
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

buildUnnamed2422() {
  var o = new core.List<api.HostRule>();
  o.add(buildHostRule());
  o.add(buildHostRule());
  return o;
}

checkUnnamed2422(core.List<api.HostRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHostRule(o[0]);
  checkHostRule(o[1]);
}

buildUnnamed2423() {
  var o = new core.List<api.PathMatcher>();
  o.add(buildPathMatcher());
  o.add(buildPathMatcher());
  return o;
}

checkUnnamed2423(core.List<api.PathMatcher> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPathMatcher(o[0]);
  checkPathMatcher(o[1]);
}

buildUnnamed2424() {
  var o = new core.List<api.UrlMapTest>();
  o.add(buildUrlMapTest());
  o.add(buildUrlMapTest());
  return o;
}

checkUnnamed2424(core.List<api.UrlMapTest> o) {
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
    o.hostRules = buildUnnamed2422();
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.pathMatchers = buildUnnamed2423();
    o.selfLink = "foo";
    o.tests = buildUnnamed2424();
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
    checkUnnamed2422(o.hostRules);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2423(o.pathMatchers);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    checkUnnamed2424(o.tests);
  }
  buildCounterUrlMap--;
}

buildUnnamed2425() {
  var o = new core.List<api.UrlMap>();
  o.add(buildUrlMap());
  o.add(buildUrlMap());
  return o;
}

checkUnnamed2425(core.List<api.UrlMap> o) {
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
    o.items = buildUnnamed2425();
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
    checkUnnamed2425(o.items);
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

buildUnnamed2426() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2426(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2427() {
  var o = new core.List<api.TestFailure>();
  o.add(buildTestFailure());
  o.add(buildTestFailure());
  return o;
}

checkUnnamed2427(core.List<api.TestFailure> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestFailure(o[0]);
  checkTestFailure(o[1]);
}

core.int buildCounterUrlMapValidationResult = 0;
buildUrlMapValidationResult() {
  var o = new api.UrlMapValidationResult();
  buildCounterUrlMapValidationResult++;
  if (buildCounterUrlMapValidationResult < 3) {
    o.loadErrors = buildUnnamed2426();
    o.loadSucceeded = true;
    o.testFailures = buildUnnamed2427();
    o.testPassed = true;
  }
  buildCounterUrlMapValidationResult--;
  return o;
}

checkUrlMapValidationResult(api.UrlMapValidationResult o) {
  buildCounterUrlMapValidationResult++;
  if (buildCounterUrlMapValidationResult < 3) {
    checkUnnamed2426(o.loadErrors);
    unittest.expect(o.loadSucceeded, unittest.isTrue);
    checkUnnamed2427(o.testFailures);
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

buildUnnamed2428() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2428(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2429() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2429(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVpnTunnel = 0;
buildVpnTunnel() {
  var o = new api.VpnTunnel();
  buildCounterVpnTunnel++;
  if (buildCounterVpnTunnel < 3) {
    o.creationTimestamp = "foo";
    o.description = "foo";
    o.detailedStatus = "foo";
    o.id = "foo";
    o.ikeVersion = 42;
    o.kind = "foo";
    o.localTrafficSelector = buildUnnamed2428();
    o.name = "foo";
    o.peerIp = "foo";
    o.region = "foo";
    o.remoteTrafficSelector = buildUnnamed2429();
    o.router = "foo";
    o.selfLink = "foo";
    o.sharedSecret = "foo";
    o.sharedSecretHash = "foo";
    o.status = "foo";
    o.targetVpnGateway = "foo";
  }
  buildCounterVpnTunnel--;
  return o;
}

checkVpnTunnel(api.VpnTunnel o) {
  buildCounterVpnTunnel++;
  if (buildCounterVpnTunnel < 3) {
    unittest.expect(o.creationTimestamp, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.detailedStatus, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.ikeVersion, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed2428(o.localTrafficSelector);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.peerIp, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    checkUnnamed2429(o.remoteTrafficSelector);
    unittest.expect(o.router, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.sharedSecret, unittest.equals('foo'));
    unittest.expect(o.sharedSecretHash, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.targetVpnGateway, unittest.equals('foo'));
  }
  buildCounterVpnTunnel--;
}

buildUnnamed2430() {
  var o = new core.Map<core.String, api.VpnTunnelsScopedList>();
  o["x"] = buildVpnTunnelsScopedList();
  o["y"] = buildVpnTunnelsScopedList();
  return o;
}

checkUnnamed2430(core.Map<core.String, api.VpnTunnelsScopedList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVpnTunnelsScopedList(o["x"]);
  checkVpnTunnelsScopedList(o["y"]);
}

core.int buildCounterVpnTunnelAggregatedList = 0;
buildVpnTunnelAggregatedList() {
  var o = new api.VpnTunnelAggregatedList();
  buildCounterVpnTunnelAggregatedList++;
  if (buildCounterVpnTunnelAggregatedList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2430();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterVpnTunnelAggregatedList--;
  return o;
}

checkVpnTunnelAggregatedList(api.VpnTunnelAggregatedList o) {
  buildCounterVpnTunnelAggregatedList++;
  if (buildCounterVpnTunnelAggregatedList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2430(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterVpnTunnelAggregatedList--;
}

buildUnnamed2431() {
  var o = new core.List<api.VpnTunnel>();
  o.add(buildVpnTunnel());
  o.add(buildVpnTunnel());
  return o;
}

checkUnnamed2431(core.List<api.VpnTunnel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVpnTunnel(o[0]);
  checkVpnTunnel(o[1]);
}

core.int buildCounterVpnTunnelList = 0;
buildVpnTunnelList() {
  var o = new api.VpnTunnelList();
  buildCounterVpnTunnelList++;
  if (buildCounterVpnTunnelList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2431();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterVpnTunnelList--;
  return o;
}

checkVpnTunnelList(api.VpnTunnelList o) {
  buildCounterVpnTunnelList++;
  if (buildCounterVpnTunnelList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2431(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterVpnTunnelList--;
}

buildUnnamed2432() {
  var o = new core.List<api.VpnTunnel>();
  o.add(buildVpnTunnel());
  o.add(buildVpnTunnel());
  return o;
}

checkUnnamed2432(core.List<api.VpnTunnel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVpnTunnel(o[0]);
  checkVpnTunnel(o[1]);
}

core.int buildCounterVpnTunnelsScopedListWarningData = 0;
buildVpnTunnelsScopedListWarningData() {
  var o = new api.VpnTunnelsScopedListWarningData();
  buildCounterVpnTunnelsScopedListWarningData++;
  if (buildCounterVpnTunnelsScopedListWarningData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterVpnTunnelsScopedListWarningData--;
  return o;
}

checkVpnTunnelsScopedListWarningData(api.VpnTunnelsScopedListWarningData o) {
  buildCounterVpnTunnelsScopedListWarningData++;
  if (buildCounterVpnTunnelsScopedListWarningData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterVpnTunnelsScopedListWarningData--;
}

buildUnnamed2433() {
  var o = new core.List<api.VpnTunnelsScopedListWarningData>();
  o.add(buildVpnTunnelsScopedListWarningData());
  o.add(buildVpnTunnelsScopedListWarningData());
  return o;
}

checkUnnamed2433(core.List<api.VpnTunnelsScopedListWarningData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVpnTunnelsScopedListWarningData(o[0]);
  checkVpnTunnelsScopedListWarningData(o[1]);
}

core.int buildCounterVpnTunnelsScopedListWarning = 0;
buildVpnTunnelsScopedListWarning() {
  var o = new api.VpnTunnelsScopedListWarning();
  buildCounterVpnTunnelsScopedListWarning++;
  if (buildCounterVpnTunnelsScopedListWarning < 3) {
    o.code = "foo";
    o.data = buildUnnamed2433();
    o.message = "foo";
  }
  buildCounterVpnTunnelsScopedListWarning--;
  return o;
}

checkVpnTunnelsScopedListWarning(api.VpnTunnelsScopedListWarning o) {
  buildCounterVpnTunnelsScopedListWarning++;
  if (buildCounterVpnTunnelsScopedListWarning < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed2433(o.data);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterVpnTunnelsScopedListWarning--;
}

core.int buildCounterVpnTunnelsScopedList = 0;
buildVpnTunnelsScopedList() {
  var o = new api.VpnTunnelsScopedList();
  buildCounterVpnTunnelsScopedList++;
  if (buildCounterVpnTunnelsScopedList < 3) {
    o.vpnTunnels = buildUnnamed2432();
    o.warning = buildVpnTunnelsScopedListWarning();
  }
  buildCounterVpnTunnelsScopedList--;
  return o;
}

checkVpnTunnelsScopedList(api.VpnTunnelsScopedList o) {
  buildCounterVpnTunnelsScopedList++;
  if (buildCounterVpnTunnelsScopedList < 3) {
    checkUnnamed2432(o.vpnTunnels);
    checkVpnTunnelsScopedListWarning(o.warning);
  }
  buildCounterVpnTunnelsScopedList--;
}

buildUnnamed2434() {
  var o = new core.List<api.Project>();
  o.add(buildProject());
  o.add(buildProject());
  return o;
}

checkUnnamed2434(core.List<api.Project> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProject(o[0]);
  checkProject(o[1]);
}

core.int buildCounterXpnHostList = 0;
buildXpnHostList() {
  var o = new api.XpnHostList();
  buildCounterXpnHostList++;
  if (buildCounterXpnHostList < 3) {
    o.id = "foo";
    o.items = buildUnnamed2434();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
  }
  buildCounterXpnHostList--;
  return o;
}

checkXpnHostList(api.XpnHostList o) {
  buildCounterXpnHostList++;
  if (buildCounterXpnHostList < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2434(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterXpnHostList--;
}

core.int buildCounterXpnResourceId = 0;
buildXpnResourceId() {
  var o = new api.XpnResourceId();
  buildCounterXpnResourceId++;
  if (buildCounterXpnResourceId < 3) {
    o.id = "foo";
    o.type = "foo";
  }
  buildCounterXpnResourceId--;
  return o;
}

checkXpnResourceId(api.XpnResourceId o) {
  buildCounterXpnResourceId++;
  if (buildCounterXpnResourceId < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterXpnResourceId--;
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterZone--;
}

buildUnnamed2435() {
  var o = new core.List<api.Zone>();
  o.add(buildZone());
  o.add(buildZone());
  return o;
}

checkUnnamed2435(core.List<api.Zone> o) {
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
    o.items = buildUnnamed2435();
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
    checkUnnamed2435(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterZoneList--;
}

buildUnnamed2436() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2436(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterZoneSetLabelsRequest = 0;
buildZoneSetLabelsRequest() {
  var o = new api.ZoneSetLabelsRequest();
  buildCounterZoneSetLabelsRequest++;
  if (buildCounterZoneSetLabelsRequest < 3) {
    o.labelFingerprint = "foo";
    o.labels = buildUnnamed2436();
  }
  buildCounterZoneSetLabelsRequest--;
  return o;
}

checkZoneSetLabelsRequest(api.ZoneSetLabelsRequest o) {
  buildCounterZoneSetLabelsRequest++;
  if (buildCounterZoneSetLabelsRequest < 3) {
    unittest.expect(o.labelFingerprint, unittest.equals('foo'));
    checkUnnamed2436(o.labels);
  }
  buildCounterZoneSetLabelsRequest--;
}

main() {
  unittest.group("obj-schema-AcceleratorConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAcceleratorConfig();
      var od = new api.AcceleratorConfig.fromJson(o.toJson());
      checkAcceleratorConfig(od);
    });
  });

  unittest.group("obj-schema-AcceleratorType", () {
    unittest.test("to-json--from-json", () {
      var o = buildAcceleratorType();
      var od = new api.AcceleratorType.fromJson(o.toJson());
      checkAcceleratorType(od);
    });
  });

  unittest.group("obj-schema-AcceleratorTypeAggregatedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildAcceleratorTypeAggregatedList();
      var od = new api.AcceleratorTypeAggregatedList.fromJson(o.toJson());
      checkAcceleratorTypeAggregatedList(od);
    });
  });

  unittest.group("obj-schema-AcceleratorTypeList", () {
    unittest.test("to-json--from-json", () {
      var o = buildAcceleratorTypeList();
      var od = new api.AcceleratorTypeList.fromJson(o.toJson());
      checkAcceleratorTypeList(od);
    });
  });

  unittest.group("obj-schema-AcceleratorTypesScopedListWarningData", () {
    unittest.test("to-json--from-json", () {
      var o = buildAcceleratorTypesScopedListWarningData();
      var od =
          new api.AcceleratorTypesScopedListWarningData.fromJson(o.toJson());
      checkAcceleratorTypesScopedListWarningData(od);
    });
  });

  unittest.group("obj-schema-AcceleratorTypesScopedListWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildAcceleratorTypesScopedListWarning();
      var od = new api.AcceleratorTypesScopedListWarning.fromJson(o.toJson());
      checkAcceleratorTypesScopedListWarning(od);
    });
  });

  unittest.group("obj-schema-AcceleratorTypesScopedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildAcceleratorTypesScopedList();
      var od = new api.AcceleratorTypesScopedList.fromJson(o.toJson());
      checkAcceleratorTypesScopedList(od);
    });
  });

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

  unittest.group("obj-schema-AliasIpRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildAliasIpRange();
      var od = new api.AliasIpRange.fromJson(o.toJson());
      checkAliasIpRange(od);
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

  unittest.group("obj-schema-Autoscaler", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoscaler();
      var od = new api.Autoscaler.fromJson(o.toJson());
      checkAutoscaler(od);
    });
  });

  unittest.group("obj-schema-AutoscalerAggregatedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoscalerAggregatedList();
      var od = new api.AutoscalerAggregatedList.fromJson(o.toJson());
      checkAutoscalerAggregatedList(od);
    });
  });

  unittest.group("obj-schema-AutoscalerList", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoscalerList();
      var od = new api.AutoscalerList.fromJson(o.toJson());
      checkAutoscalerList(od);
    });
  });

  unittest.group("obj-schema-AutoscalerStatusDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoscalerStatusDetails();
      var od = new api.AutoscalerStatusDetails.fromJson(o.toJson());
      checkAutoscalerStatusDetails(od);
    });
  });

  unittest.group("obj-schema-AutoscalersScopedListWarningData", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoscalersScopedListWarningData();
      var od = new api.AutoscalersScopedListWarningData.fromJson(o.toJson());
      checkAutoscalersScopedListWarningData(od);
    });
  });

  unittest.group("obj-schema-AutoscalersScopedListWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoscalersScopedListWarning();
      var od = new api.AutoscalersScopedListWarning.fromJson(o.toJson());
      checkAutoscalersScopedListWarning(od);
    });
  });

  unittest.group("obj-schema-AutoscalersScopedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoscalersScopedList();
      var od = new api.AutoscalersScopedList.fromJson(o.toJson());
      checkAutoscalersScopedList(od);
    });
  });

  unittest.group("obj-schema-AutoscalingPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoscalingPolicy();
      var od = new api.AutoscalingPolicy.fromJson(o.toJson());
      checkAutoscalingPolicy(od);
    });
  });

  unittest.group("obj-schema-AutoscalingPolicyCpuUtilization", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoscalingPolicyCpuUtilization();
      var od = new api.AutoscalingPolicyCpuUtilization.fromJson(o.toJson());
      checkAutoscalingPolicyCpuUtilization(od);
    });
  });

  unittest.group("obj-schema-AutoscalingPolicyCustomMetricUtilization", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoscalingPolicyCustomMetricUtilization();
      var od =
          new api.AutoscalingPolicyCustomMetricUtilization.fromJson(o.toJson());
      checkAutoscalingPolicyCustomMetricUtilization(od);
    });
  });

  unittest.group("obj-schema-AutoscalingPolicyLoadBalancingUtilization", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoscalingPolicyLoadBalancingUtilization();
      var od = new api.AutoscalingPolicyLoadBalancingUtilization.fromJson(
          o.toJson());
      checkAutoscalingPolicyLoadBalancingUtilization(od);
    });
  });

  unittest.group("obj-schema-Backend", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackend();
      var od = new api.Backend.fromJson(o.toJson());
      checkBackend(od);
    });
  });

  unittest.group("obj-schema-BackendBucket", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackendBucket();
      var od = new api.BackendBucket.fromJson(o.toJson());
      checkBackendBucket(od);
    });
  });

  unittest.group("obj-schema-BackendBucketList", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackendBucketList();
      var od = new api.BackendBucketList.fromJson(o.toJson());
      checkBackendBucketList(od);
    });
  });

  unittest.group("obj-schema-BackendService", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackendService();
      var od = new api.BackendService.fromJson(o.toJson());
      checkBackendService(od);
    });
  });

  unittest.group("obj-schema-BackendServiceAggregatedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackendServiceAggregatedList();
      var od = new api.BackendServiceAggregatedList.fromJson(o.toJson());
      checkBackendServiceAggregatedList(od);
    });
  });

  unittest.group("obj-schema-BackendServiceCdnPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackendServiceCdnPolicy();
      var od = new api.BackendServiceCdnPolicy.fromJson(o.toJson());
      checkBackendServiceCdnPolicy(od);
    });
  });

  unittest.group("obj-schema-BackendServiceGroupHealth", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackendServiceGroupHealth();
      var od = new api.BackendServiceGroupHealth.fromJson(o.toJson());
      checkBackendServiceGroupHealth(od);
    });
  });

  unittest.group("obj-schema-BackendServiceIAP", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackendServiceIAP();
      var od = new api.BackendServiceIAP.fromJson(o.toJson());
      checkBackendServiceIAP(od);
    });
  });

  unittest.group("obj-schema-BackendServiceList", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackendServiceList();
      var od = new api.BackendServiceList.fromJson(o.toJson());
      checkBackendServiceList(od);
    });
  });

  unittest.group("obj-schema-BackendServicesScopedListWarningData", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackendServicesScopedListWarningData();
      var od =
          new api.BackendServicesScopedListWarningData.fromJson(o.toJson());
      checkBackendServicesScopedListWarningData(od);
    });
  });

  unittest.group("obj-schema-BackendServicesScopedListWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackendServicesScopedListWarning();
      var od = new api.BackendServicesScopedListWarning.fromJson(o.toJson());
      checkBackendServicesScopedListWarning(od);
    });
  });

  unittest.group("obj-schema-BackendServicesScopedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackendServicesScopedList();
      var od = new api.BackendServicesScopedList.fromJson(o.toJson());
      checkBackendServicesScopedList(od);
    });
  });

  unittest.group("obj-schema-CacheInvalidationRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildCacheInvalidationRule();
      var od = new api.CacheInvalidationRule.fromJson(o.toJson());
      checkCacheInvalidationRule(od);
    });
  });

  unittest.group("obj-schema-CacheKeyPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildCacheKeyPolicy();
      var od = new api.CacheKeyPolicy.fromJson(o.toJson());
      checkCacheKeyPolicy(od);
    });
  });

  unittest.group("obj-schema-Commitment", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommitment();
      var od = new api.Commitment.fromJson(o.toJson());
      checkCommitment(od);
    });
  });

  unittest.group("obj-schema-CommitmentAggregatedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommitmentAggregatedList();
      var od = new api.CommitmentAggregatedList.fromJson(o.toJson());
      checkCommitmentAggregatedList(od);
    });
  });

  unittest.group("obj-schema-CommitmentList", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommitmentList();
      var od = new api.CommitmentList.fromJson(o.toJson());
      checkCommitmentList(od);
    });
  });

  unittest.group("obj-schema-CommitmentsScopedListWarningData", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommitmentsScopedListWarningData();
      var od = new api.CommitmentsScopedListWarningData.fromJson(o.toJson());
      checkCommitmentsScopedListWarningData(od);
    });
  });

  unittest.group("obj-schema-CommitmentsScopedListWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommitmentsScopedListWarning();
      var od = new api.CommitmentsScopedListWarning.fromJson(o.toJson());
      checkCommitmentsScopedListWarning(od);
    });
  });

  unittest.group("obj-schema-CommitmentsScopedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommitmentsScopedList();
      var od = new api.CommitmentsScopedList.fromJson(o.toJson());
      checkCommitmentsScopedList(od);
    });
  });

  unittest.group("obj-schema-ConnectionDraining", () {
    unittest.test("to-json--from-json", () {
      var o = buildConnectionDraining();
      var od = new api.ConnectionDraining.fromJson(o.toJson());
      checkConnectionDraining(od);
    });
  });

  unittest.group("obj-schema-CustomerEncryptionKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomerEncryptionKey();
      var od = new api.CustomerEncryptionKey.fromJson(o.toJson());
      checkCustomerEncryptionKey(od);
    });
  });

  unittest.group("obj-schema-CustomerEncryptionKeyProtectedDisk", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomerEncryptionKeyProtectedDisk();
      var od = new api.CustomerEncryptionKeyProtectedDisk.fromJson(o.toJson());
      checkCustomerEncryptionKeyProtectedDisk(od);
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

  unittest.group("obj-schema-DiskMoveRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiskMoveRequest();
      var od = new api.DiskMoveRequest.fromJson(o.toJson());
      checkDiskMoveRequest(od);
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

  unittest.group("obj-schema-DisksResizeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDisksResizeRequest();
      var od = new api.DisksResizeRequest.fromJson(o.toJson());
      checkDisksResizeRequest(od);
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

  unittest.group("obj-schema-FirewallDenied", () {
    unittest.test("to-json--from-json", () {
      var o = buildFirewallDenied();
      var od = new api.FirewallDenied.fromJson(o.toJson());
      checkFirewallDenied(od);
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
      var od =
          new api.ForwardingRulesScopedListWarningData.fromJson(o.toJson());
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

  unittest.group("obj-schema-GlobalSetLabelsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGlobalSetLabelsRequest();
      var od = new api.GlobalSetLabelsRequest.fromJson(o.toJson());
      checkGlobalSetLabelsRequest(od);
    });
  });

  unittest.group("obj-schema-GuestOsFeature", () {
    unittest.test("to-json--from-json", () {
      var o = buildGuestOsFeature();
      var od = new api.GuestOsFeature.fromJson(o.toJson());
      checkGuestOsFeature(od);
    });
  });

  unittest.group("obj-schema-HTTPHealthCheck", () {
    unittest.test("to-json--from-json", () {
      var o = buildHTTPHealthCheck();
      var od = new api.HTTPHealthCheck.fromJson(o.toJson());
      checkHTTPHealthCheck(od);
    });
  });

  unittest.group("obj-schema-HTTPSHealthCheck", () {
    unittest.test("to-json--from-json", () {
      var o = buildHTTPSHealthCheck();
      var od = new api.HTTPSHealthCheck.fromJson(o.toJson());
      checkHTTPSHealthCheck(od);
    });
  });

  unittest.group("obj-schema-HealthCheck", () {
    unittest.test("to-json--from-json", () {
      var o = buildHealthCheck();
      var od = new api.HealthCheck.fromJson(o.toJson());
      checkHealthCheck(od);
    });
  });

  unittest.group("obj-schema-HealthCheckList", () {
    unittest.test("to-json--from-json", () {
      var o = buildHealthCheckList();
      var od = new api.HealthCheckList.fromJson(o.toJson());
      checkHealthCheckList(od);
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

  unittest.group("obj-schema-HttpsHealthCheck", () {
    unittest.test("to-json--from-json", () {
      var o = buildHttpsHealthCheck();
      var od = new api.HttpsHealthCheck.fromJson(o.toJson());
      checkHttpsHealthCheck(od);
    });
  });

  unittest.group("obj-schema-HttpsHealthCheckList", () {
    unittest.test("to-json--from-json", () {
      var o = buildHttpsHealthCheckList();
      var od = new api.HttpsHealthCheckList.fromJson(o.toJson());
      checkHttpsHealthCheckList(od);
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

  unittest.group("obj-schema-InstanceGroup", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroup();
      var od = new api.InstanceGroup.fromJson(o.toJson());
      checkInstanceGroup(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupAggregatedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupAggregatedList();
      var od = new api.InstanceGroupAggregatedList.fromJson(o.toJson());
      checkInstanceGroupAggregatedList(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupList", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupList();
      var od = new api.InstanceGroupList.fromJson(o.toJson());
      checkInstanceGroupList(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupManager", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupManager();
      var od = new api.InstanceGroupManager.fromJson(o.toJson());
      checkInstanceGroupManager(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupManagerActionsSummary", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupManagerActionsSummary();
      var od = new api.InstanceGroupManagerActionsSummary.fromJson(o.toJson());
      checkInstanceGroupManagerActionsSummary(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupManagerAggregatedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupManagerAggregatedList();
      var od = new api.InstanceGroupManagerAggregatedList.fromJson(o.toJson());
      checkInstanceGroupManagerAggregatedList(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupManagerList", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupManagerList();
      var od = new api.InstanceGroupManagerList.fromJson(o.toJson());
      checkInstanceGroupManagerList(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupManagersAbandonInstancesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupManagersAbandonInstancesRequest();
      var od = new api.InstanceGroupManagersAbandonInstancesRequest.fromJson(
          o.toJson());
      checkInstanceGroupManagersAbandonInstancesRequest(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupManagersDeleteInstancesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupManagersDeleteInstancesRequest();
      var od = new api.InstanceGroupManagersDeleteInstancesRequest.fromJson(
          o.toJson());
      checkInstanceGroupManagersDeleteInstancesRequest(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupManagersListManagedInstancesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupManagersListManagedInstancesResponse();
      var od =
          new api.InstanceGroupManagersListManagedInstancesResponse.fromJson(
              o.toJson());
      checkInstanceGroupManagersListManagedInstancesResponse(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupManagersRecreateInstancesRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupManagersRecreateInstancesRequest();
      var od = new api.InstanceGroupManagersRecreateInstancesRequest.fromJson(
          o.toJson());
      checkInstanceGroupManagersRecreateInstancesRequest(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupManagersScopedListWarningData", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupManagersScopedListWarningData();
      var od = new api.InstanceGroupManagersScopedListWarningData.fromJson(
          o.toJson());
      checkInstanceGroupManagersScopedListWarningData(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupManagersScopedListWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupManagersScopedListWarning();
      var od =
          new api.InstanceGroupManagersScopedListWarning.fromJson(o.toJson());
      checkInstanceGroupManagersScopedListWarning(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupManagersScopedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupManagersScopedList();
      var od = new api.InstanceGroupManagersScopedList.fromJson(o.toJson());
      checkInstanceGroupManagersScopedList(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupManagersSetInstanceTemplateRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupManagersSetInstanceTemplateRequest();
      var od = new api.InstanceGroupManagersSetInstanceTemplateRequest.fromJson(
          o.toJson());
      checkInstanceGroupManagersSetInstanceTemplateRequest(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupManagersSetTargetPoolsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupManagersSetTargetPoolsRequest();
      var od = new api.InstanceGroupManagersSetTargetPoolsRequest.fromJson(
          o.toJson());
      checkInstanceGroupManagersSetTargetPoolsRequest(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupsAddInstancesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupsAddInstancesRequest();
      var od = new api.InstanceGroupsAddInstancesRequest.fromJson(o.toJson());
      checkInstanceGroupsAddInstancesRequest(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupsListInstances", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupsListInstances();
      var od = new api.InstanceGroupsListInstances.fromJson(o.toJson());
      checkInstanceGroupsListInstances(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupsListInstancesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupsListInstancesRequest();
      var od = new api.InstanceGroupsListInstancesRequest.fromJson(o.toJson());
      checkInstanceGroupsListInstancesRequest(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupsRemoveInstancesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupsRemoveInstancesRequest();
      var od =
          new api.InstanceGroupsRemoveInstancesRequest.fromJson(o.toJson());
      checkInstanceGroupsRemoveInstancesRequest(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupsScopedListWarningData", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupsScopedListWarningData();
      var od = new api.InstanceGroupsScopedListWarningData.fromJson(o.toJson());
      checkInstanceGroupsScopedListWarningData(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupsScopedListWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupsScopedListWarning();
      var od = new api.InstanceGroupsScopedListWarning.fromJson(o.toJson());
      checkInstanceGroupsScopedListWarning(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupsScopedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupsScopedList();
      var od = new api.InstanceGroupsScopedList.fromJson(o.toJson());
      checkInstanceGroupsScopedList(od);
    });
  });

  unittest.group("obj-schema-InstanceGroupsSetNamedPortsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupsSetNamedPortsRequest();
      var od = new api.InstanceGroupsSetNamedPortsRequest.fromJson(o.toJson());
      checkInstanceGroupsSetNamedPortsRequest(od);
    });
  });

  unittest.group("obj-schema-InstanceList", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceList();
      var od = new api.InstanceList.fromJson(o.toJson());
      checkInstanceList(od);
    });
  });

  unittest.group("obj-schema-InstanceMoveRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceMoveRequest();
      var od = new api.InstanceMoveRequest.fromJson(o.toJson());
      checkInstanceMoveRequest(od);
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

  unittest.group("obj-schema-InstanceWithNamedPorts", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceWithNamedPorts();
      var od = new api.InstanceWithNamedPorts.fromJson(o.toJson());
      checkInstanceWithNamedPorts(od);
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

  unittest.group("obj-schema-InstancesSetLabelsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstancesSetLabelsRequest();
      var od = new api.InstancesSetLabelsRequest.fromJson(o.toJson());
      checkInstancesSetLabelsRequest(od);
    });
  });

  unittest.group("obj-schema-InstancesSetMachineResourcesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstancesSetMachineResourcesRequest();
      var od = new api.InstancesSetMachineResourcesRequest.fromJson(o.toJson());
      checkInstancesSetMachineResourcesRequest(od);
    });
  });

  unittest.group("obj-schema-InstancesSetMachineTypeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstancesSetMachineTypeRequest();
      var od = new api.InstancesSetMachineTypeRequest.fromJson(o.toJson());
      checkInstancesSetMachineTypeRequest(od);
    });
  });

  unittest.group("obj-schema-InstancesSetServiceAccountRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstancesSetServiceAccountRequest();
      var od = new api.InstancesSetServiceAccountRequest.fromJson(o.toJson());
      checkInstancesSetServiceAccountRequest(od);
    });
  });

  unittest.group("obj-schema-InstancesStartWithEncryptionKeyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstancesStartWithEncryptionKeyRequest();
      var od =
          new api.InstancesStartWithEncryptionKeyRequest.fromJson(o.toJson());
      checkInstancesStartWithEncryptionKeyRequest(od);
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

  unittest.group("obj-schema-ManagedInstance", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedInstance();
      var od = new api.ManagedInstance.fromJson(o.toJson());
      checkManagedInstance(od);
    });
  });

  unittest.group("obj-schema-ManagedInstanceLastAttemptErrorsErrors", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedInstanceLastAttemptErrorsErrors();
      var od =
          new api.ManagedInstanceLastAttemptErrorsErrors.fromJson(o.toJson());
      checkManagedInstanceLastAttemptErrorsErrors(od);
    });
  });

  unittest.group("obj-schema-ManagedInstanceLastAttemptErrors", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedInstanceLastAttemptErrors();
      var od = new api.ManagedInstanceLastAttemptErrors.fromJson(o.toJson());
      checkManagedInstanceLastAttemptErrors(od);
    });
  });

  unittest.group("obj-schema-ManagedInstanceLastAttempt", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedInstanceLastAttempt();
      var od = new api.ManagedInstanceLastAttempt.fromJson(o.toJson());
      checkManagedInstanceLastAttempt(od);
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

  unittest.group("obj-schema-NamedPort", () {
    unittest.test("to-json--from-json", () {
      var o = buildNamedPort();
      var od = new api.NamedPort.fromJson(o.toJson());
      checkNamedPort(od);
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

  unittest.group("obj-schema-NetworkPeering", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetworkPeering();
      var od = new api.NetworkPeering.fromJson(o.toJson());
      checkNetworkPeering(od);
    });
  });

  unittest.group("obj-schema-NetworksAddPeeringRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetworksAddPeeringRequest();
      var od = new api.NetworksAddPeeringRequest.fromJson(o.toJson());
      checkNetworksAddPeeringRequest(od);
    });
  });

  unittest.group("obj-schema-NetworksRemovePeeringRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetworksRemovePeeringRequest();
      var od = new api.NetworksRemovePeeringRequest.fromJson(o.toJson());
      checkNetworksRemovePeeringRequest(od);
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

  unittest.group("obj-schema-ProjectsDisableXpnResourceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildProjectsDisableXpnResourceRequest();
      var od = new api.ProjectsDisableXpnResourceRequest.fromJson(o.toJson());
      checkProjectsDisableXpnResourceRequest(od);
    });
  });

  unittest.group("obj-schema-ProjectsEnableXpnResourceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildProjectsEnableXpnResourceRequest();
      var od = new api.ProjectsEnableXpnResourceRequest.fromJson(o.toJson());
      checkProjectsEnableXpnResourceRequest(od);
    });
  });

  unittest.group("obj-schema-ProjectsGetXpnResources", () {
    unittest.test("to-json--from-json", () {
      var o = buildProjectsGetXpnResources();
      var od = new api.ProjectsGetXpnResources.fromJson(o.toJson());
      checkProjectsGetXpnResources(od);
    });
  });

  unittest.group("obj-schema-ProjectsListXpnHostsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildProjectsListXpnHostsRequest();
      var od = new api.ProjectsListXpnHostsRequest.fromJson(o.toJson());
      checkProjectsListXpnHostsRequest(od);
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

  unittest.group("obj-schema-RegionAutoscalerList", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionAutoscalerList();
      var od = new api.RegionAutoscalerList.fromJson(o.toJson());
      checkRegionAutoscalerList(od);
    });
  });

  unittest.group("obj-schema-RegionInstanceGroupList", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionInstanceGroupList();
      var od = new api.RegionInstanceGroupList.fromJson(o.toJson());
      checkRegionInstanceGroupList(od);
    });
  });

  unittest.group("obj-schema-RegionInstanceGroupManagerList", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionInstanceGroupManagerList();
      var od = new api.RegionInstanceGroupManagerList.fromJson(o.toJson());
      checkRegionInstanceGroupManagerList(od);
    });
  });

  unittest.group(
      "obj-schema-RegionInstanceGroupManagersAbandonInstancesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionInstanceGroupManagersAbandonInstancesRequest();
      var od =
          new api.RegionInstanceGroupManagersAbandonInstancesRequest.fromJson(
              o.toJson());
      checkRegionInstanceGroupManagersAbandonInstancesRequest(od);
    });
  });

  unittest.group("obj-schema-RegionInstanceGroupManagersDeleteInstancesRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionInstanceGroupManagersDeleteInstancesRequest();
      var od =
          new api.RegionInstanceGroupManagersDeleteInstancesRequest.fromJson(
              o.toJson());
      checkRegionInstanceGroupManagersDeleteInstancesRequest(od);
    });
  });

  unittest.group("obj-schema-RegionInstanceGroupManagersListInstancesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionInstanceGroupManagersListInstancesResponse();
      var od =
          new api.RegionInstanceGroupManagersListInstancesResponse.fromJson(
              o.toJson());
      checkRegionInstanceGroupManagersListInstancesResponse(od);
    });
  });

  unittest.group("obj-schema-RegionInstanceGroupManagersRecreateRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionInstanceGroupManagersRecreateRequest();
      var od = new api.RegionInstanceGroupManagersRecreateRequest.fromJson(
          o.toJson());
      checkRegionInstanceGroupManagersRecreateRequest(od);
    });
  });

  unittest.group("obj-schema-RegionInstanceGroupManagersSetTargetPoolsRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionInstanceGroupManagersSetTargetPoolsRequest();
      var od =
          new api.RegionInstanceGroupManagersSetTargetPoolsRequest.fromJson(
              o.toJson());
      checkRegionInstanceGroupManagersSetTargetPoolsRequest(od);
    });
  });

  unittest.group("obj-schema-RegionInstanceGroupManagersSetTemplateRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionInstanceGroupManagersSetTemplateRequest();
      var od = new api.RegionInstanceGroupManagersSetTemplateRequest.fromJson(
          o.toJson());
      checkRegionInstanceGroupManagersSetTemplateRequest(od);
    });
  });

  unittest.group("obj-schema-RegionInstanceGroupsListInstances", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionInstanceGroupsListInstances();
      var od = new api.RegionInstanceGroupsListInstances.fromJson(o.toJson());
      checkRegionInstanceGroupsListInstances(od);
    });
  });

  unittest.group("obj-schema-RegionInstanceGroupsListInstancesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionInstanceGroupsListInstancesRequest();
      var od =
          new api.RegionInstanceGroupsListInstancesRequest.fromJson(o.toJson());
      checkRegionInstanceGroupsListInstancesRequest(od);
    });
  });

  unittest.group("obj-schema-RegionInstanceGroupsSetNamedPortsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionInstanceGroupsSetNamedPortsRequest();
      var od =
          new api.RegionInstanceGroupsSetNamedPortsRequest.fromJson(o.toJson());
      checkRegionInstanceGroupsSetNamedPortsRequest(od);
    });
  });

  unittest.group("obj-schema-RegionList", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionList();
      var od = new api.RegionList.fromJson(o.toJson());
      checkRegionList(od);
    });
  });

  unittest.group("obj-schema-ResourceCommitment", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceCommitment();
      var od = new api.ResourceCommitment.fromJson(o.toJson());
      checkResourceCommitment(od);
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

  unittest.group("obj-schema-Router", () {
    unittest.test("to-json--from-json", () {
      var o = buildRouter();
      var od = new api.Router.fromJson(o.toJson());
      checkRouter(od);
    });
  });

  unittest.group("obj-schema-RouterAggregatedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildRouterAggregatedList();
      var od = new api.RouterAggregatedList.fromJson(o.toJson());
      checkRouterAggregatedList(od);
    });
  });

  unittest.group("obj-schema-RouterBgp", () {
    unittest.test("to-json--from-json", () {
      var o = buildRouterBgp();
      var od = new api.RouterBgp.fromJson(o.toJson());
      checkRouterBgp(od);
    });
  });

  unittest.group("obj-schema-RouterBgpPeer", () {
    unittest.test("to-json--from-json", () {
      var o = buildRouterBgpPeer();
      var od = new api.RouterBgpPeer.fromJson(o.toJson());
      checkRouterBgpPeer(od);
    });
  });

  unittest.group("obj-schema-RouterInterface", () {
    unittest.test("to-json--from-json", () {
      var o = buildRouterInterface();
      var od = new api.RouterInterface.fromJson(o.toJson());
      checkRouterInterface(od);
    });
  });

  unittest.group("obj-schema-RouterList", () {
    unittest.test("to-json--from-json", () {
      var o = buildRouterList();
      var od = new api.RouterList.fromJson(o.toJson());
      checkRouterList(od);
    });
  });

  unittest.group("obj-schema-RouterStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildRouterStatus();
      var od = new api.RouterStatus.fromJson(o.toJson());
      checkRouterStatus(od);
    });
  });

  unittest.group("obj-schema-RouterStatusBgpPeerStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildRouterStatusBgpPeerStatus();
      var od = new api.RouterStatusBgpPeerStatus.fromJson(o.toJson());
      checkRouterStatusBgpPeerStatus(od);
    });
  });

  unittest.group("obj-schema-RouterStatusResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRouterStatusResponse();
      var od = new api.RouterStatusResponse.fromJson(o.toJson());
      checkRouterStatusResponse(od);
    });
  });

  unittest.group("obj-schema-RoutersPreviewResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRoutersPreviewResponse();
      var od = new api.RoutersPreviewResponse.fromJson(o.toJson());
      checkRoutersPreviewResponse(od);
    });
  });

  unittest.group("obj-schema-RoutersScopedListWarningData", () {
    unittest.test("to-json--from-json", () {
      var o = buildRoutersScopedListWarningData();
      var od = new api.RoutersScopedListWarningData.fromJson(o.toJson());
      checkRoutersScopedListWarningData(od);
    });
  });

  unittest.group("obj-schema-RoutersScopedListWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildRoutersScopedListWarning();
      var od = new api.RoutersScopedListWarning.fromJson(o.toJson());
      checkRoutersScopedListWarning(od);
    });
  });

  unittest.group("obj-schema-RoutersScopedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildRoutersScopedList();
      var od = new api.RoutersScopedList.fromJson(o.toJson());
      checkRoutersScopedList(od);
    });
  });

  unittest.group("obj-schema-SSLHealthCheck", () {
    unittest.test("to-json--from-json", () {
      var o = buildSSLHealthCheck();
      var od = new api.SSLHealthCheck.fromJson(o.toJson());
      checkSSLHealthCheck(od);
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

  unittest.group("obj-schema-SslCertificate", () {
    unittest.test("to-json--from-json", () {
      var o = buildSslCertificate();
      var od = new api.SslCertificate.fromJson(o.toJson());
      checkSslCertificate(od);
    });
  });

  unittest.group("obj-schema-SslCertificateList", () {
    unittest.test("to-json--from-json", () {
      var o = buildSslCertificateList();
      var od = new api.SslCertificateList.fromJson(o.toJson());
      checkSslCertificateList(od);
    });
  });

  unittest.group("obj-schema-Subnetwork", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubnetwork();
      var od = new api.Subnetwork.fromJson(o.toJson());
      checkSubnetwork(od);
    });
  });

  unittest.group("obj-schema-SubnetworkAggregatedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubnetworkAggregatedList();
      var od = new api.SubnetworkAggregatedList.fromJson(o.toJson());
      checkSubnetworkAggregatedList(od);
    });
  });

  unittest.group("obj-schema-SubnetworkList", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubnetworkList();
      var od = new api.SubnetworkList.fromJson(o.toJson());
      checkSubnetworkList(od);
    });
  });

  unittest.group("obj-schema-SubnetworkSecondaryRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubnetworkSecondaryRange();
      var od = new api.SubnetworkSecondaryRange.fromJson(o.toJson());
      checkSubnetworkSecondaryRange(od);
    });
  });

  unittest.group("obj-schema-SubnetworksExpandIpCidrRangeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubnetworksExpandIpCidrRangeRequest();
      var od = new api.SubnetworksExpandIpCidrRangeRequest.fromJson(o.toJson());
      checkSubnetworksExpandIpCidrRangeRequest(od);
    });
  });

  unittest.group("obj-schema-SubnetworksScopedListWarningData", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubnetworksScopedListWarningData();
      var od = new api.SubnetworksScopedListWarningData.fromJson(o.toJson());
      checkSubnetworksScopedListWarningData(od);
    });
  });

  unittest.group("obj-schema-SubnetworksScopedListWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubnetworksScopedListWarning();
      var od = new api.SubnetworksScopedListWarning.fromJson(o.toJson());
      checkSubnetworksScopedListWarning(od);
    });
  });

  unittest.group("obj-schema-SubnetworksScopedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubnetworksScopedList();
      var od = new api.SubnetworksScopedList.fromJson(o.toJson());
      checkSubnetworksScopedList(od);
    });
  });

  unittest.group("obj-schema-SubnetworksSetPrivateIpGoogleAccessRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubnetworksSetPrivateIpGoogleAccessRequest();
      var od = new api.SubnetworksSetPrivateIpGoogleAccessRequest.fromJson(
          o.toJson());
      checkSubnetworksSetPrivateIpGoogleAccessRequest(od);
    });
  });

  unittest.group("obj-schema-TCPHealthCheck", () {
    unittest.test("to-json--from-json", () {
      var o = buildTCPHealthCheck();
      var od = new api.TCPHealthCheck.fromJson(o.toJson());
      checkTCPHealthCheck(od);
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

  unittest.group("obj-schema-TargetHttpsProxiesSetSslCertificatesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetHttpsProxiesSetSslCertificatesRequest();
      var od = new api.TargetHttpsProxiesSetSslCertificatesRequest.fromJson(
          o.toJson());
      checkTargetHttpsProxiesSetSslCertificatesRequest(od);
    });
  });

  unittest.group("obj-schema-TargetHttpsProxy", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetHttpsProxy();
      var od = new api.TargetHttpsProxy.fromJson(o.toJson());
      checkTargetHttpsProxy(od);
    });
  });

  unittest.group("obj-schema-TargetHttpsProxyList", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetHttpsProxyList();
      var od = new api.TargetHttpsProxyList.fromJson(o.toJson());
      checkTargetHttpsProxyList(od);
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
      var od =
          new api.TargetInstancesScopedListWarningData.fromJson(o.toJson());
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

  unittest.group("obj-schema-TargetSslProxiesSetBackendServiceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetSslProxiesSetBackendServiceRequest();
      var od =
          new api.TargetSslProxiesSetBackendServiceRequest.fromJson(o.toJson());
      checkTargetSslProxiesSetBackendServiceRequest(od);
    });
  });

  unittest.group("obj-schema-TargetSslProxiesSetProxyHeaderRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetSslProxiesSetProxyHeaderRequest();
      var od =
          new api.TargetSslProxiesSetProxyHeaderRequest.fromJson(o.toJson());
      checkTargetSslProxiesSetProxyHeaderRequest(od);
    });
  });

  unittest.group("obj-schema-TargetSslProxiesSetSslCertificatesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetSslProxiesSetSslCertificatesRequest();
      var od = new api.TargetSslProxiesSetSslCertificatesRequest.fromJson(
          o.toJson());
      checkTargetSslProxiesSetSslCertificatesRequest(od);
    });
  });

  unittest.group("obj-schema-TargetSslProxy", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetSslProxy();
      var od = new api.TargetSslProxy.fromJson(o.toJson());
      checkTargetSslProxy(od);
    });
  });

  unittest.group("obj-schema-TargetSslProxyList", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetSslProxyList();
      var od = new api.TargetSslProxyList.fromJson(o.toJson());
      checkTargetSslProxyList(od);
    });
  });

  unittest.group("obj-schema-TargetTcpProxiesSetBackendServiceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetTcpProxiesSetBackendServiceRequest();
      var od =
          new api.TargetTcpProxiesSetBackendServiceRequest.fromJson(o.toJson());
      checkTargetTcpProxiesSetBackendServiceRequest(od);
    });
  });

  unittest.group("obj-schema-TargetTcpProxiesSetProxyHeaderRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetTcpProxiesSetProxyHeaderRequest();
      var od =
          new api.TargetTcpProxiesSetProxyHeaderRequest.fromJson(o.toJson());
      checkTargetTcpProxiesSetProxyHeaderRequest(od);
    });
  });

  unittest.group("obj-schema-TargetTcpProxy", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetTcpProxy();
      var od = new api.TargetTcpProxy.fromJson(o.toJson());
      checkTargetTcpProxy(od);
    });
  });

  unittest.group("obj-schema-TargetTcpProxyList", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetTcpProxyList();
      var od = new api.TargetTcpProxyList.fromJson(o.toJson());
      checkTargetTcpProxyList(od);
    });
  });

  unittest.group("obj-schema-TargetVpnGateway", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetVpnGateway();
      var od = new api.TargetVpnGateway.fromJson(o.toJson());
      checkTargetVpnGateway(od);
    });
  });

  unittest.group("obj-schema-TargetVpnGatewayAggregatedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetVpnGatewayAggregatedList();
      var od = new api.TargetVpnGatewayAggregatedList.fromJson(o.toJson());
      checkTargetVpnGatewayAggregatedList(od);
    });
  });

  unittest.group("obj-schema-TargetVpnGatewayList", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetVpnGatewayList();
      var od = new api.TargetVpnGatewayList.fromJson(o.toJson());
      checkTargetVpnGatewayList(od);
    });
  });

  unittest.group("obj-schema-TargetVpnGatewaysScopedListWarningData", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetVpnGatewaysScopedListWarningData();
      var od =
          new api.TargetVpnGatewaysScopedListWarningData.fromJson(o.toJson());
      checkTargetVpnGatewaysScopedListWarningData(od);
    });
  });

  unittest.group("obj-schema-TargetVpnGatewaysScopedListWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetVpnGatewaysScopedListWarning();
      var od = new api.TargetVpnGatewaysScopedListWarning.fromJson(o.toJson());
      checkTargetVpnGatewaysScopedListWarning(od);
    });
  });

  unittest.group("obj-schema-TargetVpnGatewaysScopedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildTargetVpnGatewaysScopedList();
      var od = new api.TargetVpnGatewaysScopedList.fromJson(o.toJson());
      checkTargetVpnGatewaysScopedList(od);
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

  unittest.group("obj-schema-VpnTunnel", () {
    unittest.test("to-json--from-json", () {
      var o = buildVpnTunnel();
      var od = new api.VpnTunnel.fromJson(o.toJson());
      checkVpnTunnel(od);
    });
  });

  unittest.group("obj-schema-VpnTunnelAggregatedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildVpnTunnelAggregatedList();
      var od = new api.VpnTunnelAggregatedList.fromJson(o.toJson());
      checkVpnTunnelAggregatedList(od);
    });
  });

  unittest.group("obj-schema-VpnTunnelList", () {
    unittest.test("to-json--from-json", () {
      var o = buildVpnTunnelList();
      var od = new api.VpnTunnelList.fromJson(o.toJson());
      checkVpnTunnelList(od);
    });
  });

  unittest.group("obj-schema-VpnTunnelsScopedListWarningData", () {
    unittest.test("to-json--from-json", () {
      var o = buildVpnTunnelsScopedListWarningData();
      var od = new api.VpnTunnelsScopedListWarningData.fromJson(o.toJson());
      checkVpnTunnelsScopedListWarningData(od);
    });
  });

  unittest.group("obj-schema-VpnTunnelsScopedListWarning", () {
    unittest.test("to-json--from-json", () {
      var o = buildVpnTunnelsScopedListWarning();
      var od = new api.VpnTunnelsScopedListWarning.fromJson(o.toJson());
      checkVpnTunnelsScopedListWarning(od);
    });
  });

  unittest.group("obj-schema-VpnTunnelsScopedList", () {
    unittest.test("to-json--from-json", () {
      var o = buildVpnTunnelsScopedList();
      var od = new api.VpnTunnelsScopedList.fromJson(o.toJson());
      checkVpnTunnelsScopedList(od);
    });
  });

  unittest.group("obj-schema-XpnHostList", () {
    unittest.test("to-json--from-json", () {
      var o = buildXpnHostList();
      var od = new api.XpnHostList.fromJson(o.toJson());
      checkXpnHostList(od);
    });
  });

  unittest.group("obj-schema-XpnResourceId", () {
    unittest.test("to-json--from-json", () {
      var o = buildXpnResourceId();
      var od = new api.XpnResourceId.fromJson(o.toJson());
      checkXpnResourceId(od);
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

  unittest.group("obj-schema-ZoneSetLabelsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildZoneSetLabelsRequest();
      var od = new api.ZoneSetLabelsRequest.fromJson(o.toJson());
      checkZoneSetLabelsRequest(od);
    });
  });

  unittest.group("resource-AcceleratorTypesResourceApi", () {
    unittest.test("method--aggregatedList", () {
      var mock = new HttpServerMock();
      api.AcceleratorTypesResourceApi res =
          new api.ComputeApi(mock).acceleratorTypes;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAcceleratorTypeAggregatedList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .aggregatedList(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest
              .expectAsync1(((api.AcceleratorTypeAggregatedList response) {
        checkAcceleratorTypeAggregatedList(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AcceleratorTypesResourceApi res =
          new api.ComputeApi(mock).acceleratorTypes;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_acceleratorType = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAcceleratorType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_zone, arg_acceleratorType)
          .then(unittest.expectAsync1(((api.AcceleratorType response) {
        checkAcceleratorType(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AcceleratorTypesResourceApi res =
          new api.ComputeApi(mock).acceleratorTypes;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAcceleratorTypeList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_zone,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.AcceleratorTypeList response) {
        checkAcceleratorTypeList(response);
      })));
    });
  });

  unittest.group("resource-AddressesResourceApi", () {
    unittest.test("method--aggregatedList", () {
      var mock = new HttpServerMock();
      api.AddressesResourceApi res = new api.ComputeApi(mock).addresses;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAddressAggregatedList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .aggregatedList(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.AddressAggregatedList response) {
        checkAddressAggregatedList(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.AddressesResourceApi res = new api.ComputeApi(mock).addresses;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_address = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_region, arg_address,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AddressesResourceApi res = new api.ComputeApi(mock).addresses;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_address = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAddress());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_region, arg_address)
          .then(unittest.expectAsync1(((api.Address response) {
        checkAddress(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.AddressesResourceApi res = new api.ComputeApi(mock).addresses;
      var arg_request = buildAddress();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Address.fromJson(json);
        checkAddress(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, arg_region,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AddressesResourceApi res = new api.ComputeApi(mock).addresses;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAddressList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_region,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.AddressList response) {
        checkAddressList(response);
      })));
    });
  });

  unittest.group("resource-AutoscalersResourceApi", () {
    unittest.test("method--aggregatedList", () {
      var mock = new HttpServerMock();
      api.AutoscalersResourceApi res = new api.ComputeApi(mock).autoscalers;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAutoscalerAggregatedList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .aggregatedList(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.AutoscalerAggregatedList response) {
        checkAutoscalerAggregatedList(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.AutoscalersResourceApi res = new api.ComputeApi(mock).autoscalers;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_autoscaler = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_zone, arg_autoscaler,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AutoscalersResourceApi res = new api.ComputeApi(mock).autoscalers;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_autoscaler = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAutoscaler());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_zone, arg_autoscaler)
          .then(unittest.expectAsync1(((api.Autoscaler response) {
        checkAutoscaler(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.AutoscalersResourceApi res = new api.ComputeApi(mock).autoscalers;
      var arg_request = buildAutoscaler();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Autoscaler.fromJson(json);
        checkAutoscaler(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, arg_zone, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AutoscalersResourceApi res = new api.ComputeApi(mock).autoscalers;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAutoscalerList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_zone,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.AutoscalerList response) {
        checkAutoscalerList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.AutoscalersResourceApi res = new api.ComputeApi(mock).autoscalers;
      var arg_request = buildAutoscaler();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_autoscaler = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Autoscaler.fromJson(json);
        checkAutoscaler(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["autoscaler"].first, unittest.equals(arg_autoscaler));
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_project, arg_zone,
              autoscaler: arg_autoscaler, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.AutoscalersResourceApi res = new api.ComputeApi(mock).autoscalers;
      var arg_request = buildAutoscaler();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_autoscaler = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Autoscaler.fromJson(json);
        checkAutoscaler(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["autoscaler"].first, unittest.equals(arg_autoscaler));
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_project, arg_zone,
              autoscaler: arg_autoscaler, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-BackendBucketsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.BackendBucketsResourceApi res =
          new api.ComputeApi(mock).backendBuckets;
      var arg_project = "foo";
      var arg_backendBucket = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_backendBucket, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.BackendBucketsResourceApi res =
          new api.ComputeApi(mock).backendBuckets;
      var arg_project = "foo";
      var arg_backendBucket = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBackendBucket());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_backendBucket)
          .then(unittest.expectAsync1(((api.BackendBucket response) {
        checkBackendBucket(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.BackendBucketsResourceApi res =
          new api.ComputeApi(mock).backendBuckets;
      var arg_request = buildBackendBucket();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BackendBucket.fromJson(json);
        checkBackendBucket(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BackendBucketsResourceApi res =
          new api.ComputeApi(mock).backendBuckets;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBackendBucketList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.BackendBucketList response) {
        checkBackendBucketList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.BackendBucketsResourceApi res =
          new api.ComputeApi(mock).backendBuckets;
      var arg_request = buildBackendBucket();
      var arg_project = "foo";
      var arg_backendBucket = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BackendBucket.fromJson(json);
        checkBackendBucket(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_project, arg_backendBucket,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.BackendBucketsResourceApi res =
          new api.ComputeApi(mock).backendBuckets;
      var arg_request = buildBackendBucket();
      var arg_project = "foo";
      var arg_backendBucket = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BackendBucket.fromJson(json);
        checkBackendBucket(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_project, arg_backendBucket,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-BackendServicesResourceApi", () {
    unittest.test("method--aggregatedList", () {
      var mock = new HttpServerMock();
      api.BackendServicesResourceApi res =
          new api.ComputeApi(mock).backendServices;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBackendServiceAggregatedList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .aggregatedList(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest
              .expectAsync1(((api.BackendServiceAggregatedList response) {
        checkBackendServiceAggregatedList(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.BackendServicesResourceApi res =
          new api.ComputeApi(mock).backendServices;
      var arg_project = "foo";
      var arg_backendService = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_backendService, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.BackendServicesResourceApi res =
          new api.ComputeApi(mock).backendServices;
      var arg_project = "foo";
      var arg_backendService = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBackendService());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_backendService)
          .then(unittest.expectAsync1(((api.BackendService response) {
        checkBackendService(response);
      })));
    });

    unittest.test("method--getHealth", () {
      var mock = new HttpServerMock();
      api.BackendServicesResourceApi res =
          new api.ComputeApi(mock).backendServices;
      var arg_request = buildResourceGroupReference();
      var arg_project = "foo";
      var arg_backendService = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ResourceGroupReference.fromJson(json);
        checkResourceGroupReference(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBackendServiceGroupHealth());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getHealth(arg_request, arg_project, arg_backendService).then(
          unittest.expectAsync1(((api.BackendServiceGroupHealth response) {
        checkBackendServiceGroupHealth(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.BackendServicesResourceApi res =
          new api.ComputeApi(mock).backendServices;
      var arg_request = buildBackendService();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BackendService.fromJson(json);
        checkBackendService(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.BackendServicesResourceApi res =
          new api.ComputeApi(mock).backendServices;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBackendServiceList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.BackendServiceList response) {
        checkBackendServiceList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.BackendServicesResourceApi res =
          new api.ComputeApi(mock).backendServices;
      var arg_request = buildBackendService();
      var arg_project = "foo";
      var arg_backendService = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BackendService.fromJson(json);
        checkBackendService(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_project, arg_backendService,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.BackendServicesResourceApi res =
          new api.ComputeApi(mock).backendServices;
      var arg_request = buildBackendService();
      var arg_project = "foo";
      var arg_backendService = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BackendService.fromJson(json);
        checkBackendService(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_project, arg_backendService,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-DiskTypesResourceApi", () {
    unittest.test("method--aggregatedList", () {
      var mock = new HttpServerMock();
      api.DiskTypesResourceApi res = new api.ComputeApi(mock).diskTypes;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDiskTypeAggregatedList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .aggregatedList(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.DiskTypeAggregatedList response) {
        checkDiskTypeAggregatedList(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.DiskTypesResourceApi res = new api.ComputeApi(mock).diskTypes;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_diskType = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDiskType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_zone, arg_diskType)
          .then(unittest.expectAsync1(((api.DiskType response) {
        checkDiskType(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.DiskTypesResourceApi res = new api.ComputeApi(mock).diskTypes;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDiskTypeList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_zone,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.DiskTypeList response) {
        checkDiskTypeList(response);
      })));
    });
  });

  unittest.group("resource-DisksResourceApi", () {
    unittest.test("method--aggregatedList", () {
      var mock = new HttpServerMock();
      api.DisksResourceApi res = new api.ComputeApi(mock).disks;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDiskAggregatedList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .aggregatedList(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.DiskAggregatedList response) {
        checkDiskAggregatedList(response);
      })));
    });

    unittest.test("method--createSnapshot", () {
      var mock = new HttpServerMock();
      api.DisksResourceApi res = new api.ComputeApi(mock).disks;
      var arg_request = buildSnapshot();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_disk = "foo";
      var arg_guestFlush = true;
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Snapshot.fromJson(json);
        checkSnapshot(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["guestFlush"].first, unittest.equals("$arg_guestFlush"));
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createSnapshot(arg_request, arg_project, arg_zone, arg_disk,
              guestFlush: arg_guestFlush, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.DisksResourceApi res = new api.ComputeApi(mock).disks;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_disk = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_zone, arg_disk, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.DisksResourceApi res = new api.ComputeApi(mock).disks;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_disk = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDisk());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_zone, arg_disk)
          .then(unittest.expectAsync1(((api.Disk response) {
        checkDisk(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.DisksResourceApi res = new api.ComputeApi(mock).disks;
      var arg_request = buildDisk();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_requestId = "foo";
      var arg_sourceImage = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Disk.fromJson(json);
        checkDisk(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(
            queryMap["sourceImage"].first, unittest.equals(arg_sourceImage));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, arg_zone,
              requestId: arg_requestId, sourceImage: arg_sourceImage)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.DisksResourceApi res = new api.ComputeApi(mock).disks;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDiskList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_zone,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.DiskList response) {
        checkDiskList(response);
      })));
    });

    unittest.test("method--resize", () {
      var mock = new HttpServerMock();
      api.DisksResourceApi res = new api.ComputeApi(mock).disks;
      var arg_request = buildDisksResizeRequest();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_disk = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DisksResizeRequest.fromJson(json);
        checkDisksResizeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resize(arg_request, arg_project, arg_zone, arg_disk,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setLabels", () {
      var mock = new HttpServerMock();
      api.DisksResourceApi res = new api.ComputeApi(mock).disks;
      var arg_request = buildZoneSetLabelsRequest();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_resource = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ZoneSetLabelsRequest.fromJson(json);
        checkZoneSetLabelsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setLabels(arg_request, arg_project, arg_zone, arg_resource,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-FirewallsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.FirewallsResourceApi res = new api.ComputeApi(mock).firewalls;
      var arg_project = "foo";
      var arg_firewall = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_firewall, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.FirewallsResourceApi res = new api.ComputeApi(mock).firewalls;
      var arg_project = "foo";
      var arg_firewall = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildFirewall());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_firewall)
          .then(unittest.expectAsync1(((api.Firewall response) {
        checkFirewall(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.FirewallsResourceApi res = new api.ComputeApi(mock).firewalls;
      var arg_request = buildFirewall();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Firewall.fromJson(json);
        checkFirewall(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.FirewallsResourceApi res = new api.ComputeApi(mock).firewalls;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildFirewallList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.FirewallList response) {
        checkFirewallList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.FirewallsResourceApi res = new api.ComputeApi(mock).firewalls;
      var arg_request = buildFirewall();
      var arg_project = "foo";
      var arg_firewall = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Firewall.fromJson(json);
        checkFirewall(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_project, arg_firewall,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.FirewallsResourceApi res = new api.ComputeApi(mock).firewalls;
      var arg_request = buildFirewall();
      var arg_project = "foo";
      var arg_firewall = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Firewall.fromJson(json);
        checkFirewall(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_project, arg_firewall,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ForwardingRulesResourceApi", () {
    unittest.test("method--aggregatedList", () {
      var mock = new HttpServerMock();
      api.ForwardingRulesResourceApi res =
          new api.ComputeApi(mock).forwardingRules;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildForwardingRuleAggregatedList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .aggregatedList(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest
              .expectAsync1(((api.ForwardingRuleAggregatedList response) {
        checkForwardingRuleAggregatedList(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ForwardingRulesResourceApi res =
          new api.ComputeApi(mock).forwardingRules;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_forwardingRule = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_region, arg_forwardingRule,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ForwardingRulesResourceApi res =
          new api.ComputeApi(mock).forwardingRules;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_forwardingRule = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildForwardingRule());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_region, arg_forwardingRule)
          .then(unittest.expectAsync1(((api.ForwardingRule response) {
        checkForwardingRule(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.ForwardingRulesResourceApi res =
          new api.ComputeApi(mock).forwardingRules;
      var arg_request = buildForwardingRule();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ForwardingRule.fromJson(json);
        checkForwardingRule(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, arg_region,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ForwardingRulesResourceApi res =
          new api.ComputeApi(mock).forwardingRules;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildForwardingRuleList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_region,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.ForwardingRuleList response) {
        checkForwardingRuleList(response);
      })));
    });

    unittest.test("method--setTarget", () {
      var mock = new HttpServerMock();
      api.ForwardingRulesResourceApi res =
          new api.ComputeApi(mock).forwardingRules;
      var arg_request = buildTargetReference();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_forwardingRule = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TargetReference.fromJson(json);
        checkTargetReference(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setTarget(arg_request, arg_project, arg_region, arg_forwardingRule,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-GlobalAddressesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.GlobalAddressesResourceApi res =
          new api.ComputeApi(mock).globalAddresses;
      var arg_project = "foo";
      var arg_address = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_address, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.GlobalAddressesResourceApi res =
          new api.ComputeApi(mock).globalAddresses;
      var arg_project = "foo";
      var arg_address = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAddress());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_address)
          .then(unittest.expectAsync1(((api.Address response) {
        checkAddress(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.GlobalAddressesResourceApi res =
          new api.ComputeApi(mock).globalAddresses;
      var arg_request = buildAddress();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Address.fromJson(json);
        checkAddress(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.GlobalAddressesResourceApi res =
          new api.ComputeApi(mock).globalAddresses;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAddressList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.AddressList response) {
        checkAddressList(response);
      })));
    });
  });

  unittest.group("resource-GlobalForwardingRulesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.GlobalForwardingRulesResourceApi res =
          new api.ComputeApi(mock).globalForwardingRules;
      var arg_project = "foo";
      var arg_forwardingRule = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_forwardingRule, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.GlobalForwardingRulesResourceApi res =
          new api.ComputeApi(mock).globalForwardingRules;
      var arg_project = "foo";
      var arg_forwardingRule = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildForwardingRule());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_forwardingRule)
          .then(unittest.expectAsync1(((api.ForwardingRule response) {
        checkForwardingRule(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.GlobalForwardingRulesResourceApi res =
          new api.ComputeApi(mock).globalForwardingRules;
      var arg_request = buildForwardingRule();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ForwardingRule.fromJson(json);
        checkForwardingRule(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.GlobalForwardingRulesResourceApi res =
          new api.ComputeApi(mock).globalForwardingRules;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildForwardingRuleList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.ForwardingRuleList response) {
        checkForwardingRuleList(response);
      })));
    });

    unittest.test("method--setTarget", () {
      var mock = new HttpServerMock();
      api.GlobalForwardingRulesResourceApi res =
          new api.ComputeApi(mock).globalForwardingRules;
      var arg_request = buildTargetReference();
      var arg_project = "foo";
      var arg_forwardingRule = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TargetReference.fromJson(json);
        checkTargetReference(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setTarget(arg_request, arg_project, arg_forwardingRule,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-GlobalOperationsResourceApi", () {
    unittest.test("method--aggregatedList", () {
      var mock = new HttpServerMock();
      api.GlobalOperationsResourceApi res =
          new api.ComputeApi(mock).globalOperations;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperationAggregatedList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .aggregatedList(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.OperationAggregatedList response) {
        checkOperationAggregatedList(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.GlobalOperationsResourceApi res =
          new api.ComputeApi(mock).globalOperations;
      var arg_project = "foo";
      var arg_operation = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_operation)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.GlobalOperationsResourceApi res =
          new api.ComputeApi(mock).globalOperations;
      var arg_project = "foo";
      var arg_operation = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_operation)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.GlobalOperationsResourceApi res =
          new api.ComputeApi(mock).globalOperations;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperationList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.OperationList response) {
        checkOperationList(response);
      })));
    });
  });

  unittest.group("resource-HealthChecksResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.HealthChecksResourceApi res = new api.ComputeApi(mock).healthChecks;
      var arg_project = "foo";
      var arg_healthCheck = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_healthCheck, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.HealthChecksResourceApi res = new api.ComputeApi(mock).healthChecks;
      var arg_project = "foo";
      var arg_healthCheck = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildHealthCheck());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_healthCheck)
          .then(unittest.expectAsync1(((api.HealthCheck response) {
        checkHealthCheck(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.HealthChecksResourceApi res = new api.ComputeApi(mock).healthChecks;
      var arg_request = buildHealthCheck();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.HealthCheck.fromJson(json);
        checkHealthCheck(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.HealthChecksResourceApi res = new api.ComputeApi(mock).healthChecks;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildHealthCheckList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.HealthCheckList response) {
        checkHealthCheckList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.HealthChecksResourceApi res = new api.ComputeApi(mock).healthChecks;
      var arg_request = buildHealthCheck();
      var arg_project = "foo";
      var arg_healthCheck = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.HealthCheck.fromJson(json);
        checkHealthCheck(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_project, arg_healthCheck,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.HealthChecksResourceApi res = new api.ComputeApi(mock).healthChecks;
      var arg_request = buildHealthCheck();
      var arg_project = "foo";
      var arg_healthCheck = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.HealthCheck.fromJson(json);
        checkHealthCheck(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_project, arg_healthCheck,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-HttpHealthChecksResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.HttpHealthChecksResourceApi res =
          new api.ComputeApi(mock).httpHealthChecks;
      var arg_project = "foo";
      var arg_httpHealthCheck = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_httpHealthCheck, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.HttpHealthChecksResourceApi res =
          new api.ComputeApi(mock).httpHealthChecks;
      var arg_project = "foo";
      var arg_httpHealthCheck = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildHttpHealthCheck());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_httpHealthCheck)
          .then(unittest.expectAsync1(((api.HttpHealthCheck response) {
        checkHttpHealthCheck(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.HttpHealthChecksResourceApi res =
          new api.ComputeApi(mock).httpHealthChecks;
      var arg_request = buildHttpHealthCheck();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.HttpHealthCheck.fromJson(json);
        checkHttpHealthCheck(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.HttpHealthChecksResourceApi res =
          new api.ComputeApi(mock).httpHealthChecks;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildHttpHealthCheckList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.HttpHealthCheckList response) {
        checkHttpHealthCheckList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.HttpHealthChecksResourceApi res =
          new api.ComputeApi(mock).httpHealthChecks;
      var arg_request = buildHttpHealthCheck();
      var arg_project = "foo";
      var arg_httpHealthCheck = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.HttpHealthCheck.fromJson(json);
        checkHttpHealthCheck(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_project, arg_httpHealthCheck,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.HttpHealthChecksResourceApi res =
          new api.ComputeApi(mock).httpHealthChecks;
      var arg_request = buildHttpHealthCheck();
      var arg_project = "foo";
      var arg_httpHealthCheck = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.HttpHealthCheck.fromJson(json);
        checkHttpHealthCheck(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_project, arg_httpHealthCheck,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-HttpsHealthChecksResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.HttpsHealthChecksResourceApi res =
          new api.ComputeApi(mock).httpsHealthChecks;
      var arg_project = "foo";
      var arg_httpsHealthCheck = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_httpsHealthCheck, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.HttpsHealthChecksResourceApi res =
          new api.ComputeApi(mock).httpsHealthChecks;
      var arg_project = "foo";
      var arg_httpsHealthCheck = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildHttpsHealthCheck());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_httpsHealthCheck)
          .then(unittest.expectAsync1(((api.HttpsHealthCheck response) {
        checkHttpsHealthCheck(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.HttpsHealthChecksResourceApi res =
          new api.ComputeApi(mock).httpsHealthChecks;
      var arg_request = buildHttpsHealthCheck();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.HttpsHealthCheck.fromJson(json);
        checkHttpsHealthCheck(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.HttpsHealthChecksResourceApi res =
          new api.ComputeApi(mock).httpsHealthChecks;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildHttpsHealthCheckList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.HttpsHealthCheckList response) {
        checkHttpsHealthCheckList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.HttpsHealthChecksResourceApi res =
          new api.ComputeApi(mock).httpsHealthChecks;
      var arg_request = buildHttpsHealthCheck();
      var arg_project = "foo";
      var arg_httpsHealthCheck = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.HttpsHealthCheck.fromJson(json);
        checkHttpsHealthCheck(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_project, arg_httpsHealthCheck,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.HttpsHealthChecksResourceApi res =
          new api.ComputeApi(mock).httpsHealthChecks;
      var arg_request = buildHttpsHealthCheck();
      var arg_project = "foo";
      var arg_httpsHealthCheck = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.HttpsHealthCheck.fromJson(json);
        checkHttpsHealthCheck(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_project, arg_httpsHealthCheck,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ImagesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ImagesResourceApi res = new api.ComputeApi(mock).images;
      var arg_project = "foo";
      var arg_image = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_image, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--deprecate", () {
      var mock = new HttpServerMock();
      api.ImagesResourceApi res = new api.ComputeApi(mock).images;
      var arg_request = buildDeprecationStatus();
      var arg_project = "foo";
      var arg_image = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DeprecationStatus.fromJson(json);
        checkDeprecationStatus(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deprecate(arg_request, arg_project, arg_image,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ImagesResourceApi res = new api.ComputeApi(mock).images;
      var arg_project = "foo";
      var arg_image = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildImage());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_image)
          .then(unittest.expectAsync1(((api.Image response) {
        checkImage(response);
      })));
    });

    unittest.test("method--getFromFamily", () {
      var mock = new HttpServerMock();
      api.ImagesResourceApi res = new api.ComputeApi(mock).images;
      var arg_project = "foo";
      var arg_family = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildImage());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getFromFamily(arg_project, arg_family)
          .then(unittest.expectAsync1(((api.Image response) {
        checkImage(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.ImagesResourceApi res = new api.ComputeApi(mock).images;
      var arg_request = buildImage();
      var arg_project = "foo";
      var arg_forceCreate = true;
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Image.fromJson(json);
        checkImage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["forceCreate"].first, unittest.equals("$arg_forceCreate"));
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project,
              forceCreate: arg_forceCreate, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ImagesResourceApi res = new api.ComputeApi(mock).images;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildImageList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.ImageList response) {
        checkImageList(response);
      })));
    });

    unittest.test("method--setLabels", () {
      var mock = new HttpServerMock();
      api.ImagesResourceApi res = new api.ComputeApi(mock).images;
      var arg_request = buildGlobalSetLabelsRequest();
      var arg_project = "foo";
      var arg_resource = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GlobalSetLabelsRequest.fromJson(json);
        checkGlobalSetLabelsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setLabels(arg_request, arg_project, arg_resource)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-InstanceGroupManagersResourceApi", () {
    unittest.test("method--abandonInstances", () {
      var mock = new HttpServerMock();
      api.InstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).instanceGroupManagers;
      var arg_request = buildInstanceGroupManagersAbandonInstancesRequest();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.InstanceGroupManagersAbandonInstancesRequest.fromJson(json);
        checkInstanceGroupManagersAbandonInstancesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .abandonInstances(
              arg_request, arg_project, arg_zone, arg_instanceGroupManager,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--aggregatedList", () {
      var mock = new HttpServerMock();
      api.InstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).instanceGroupManagers;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.JSON.encode(buildInstanceGroupManagerAggregatedList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .aggregatedList(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest
              .expectAsync1(((api.InstanceGroupManagerAggregatedList response) {
        checkInstanceGroupManagerAggregatedList(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.InstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).instanceGroupManagers;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_zone, arg_instanceGroupManager,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--deleteInstances", () {
      var mock = new HttpServerMock();
      api.InstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).instanceGroupManagers;
      var arg_request = buildInstanceGroupManagersDeleteInstancesRequest();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.InstanceGroupManagersDeleteInstancesRequest.fromJson(json);
        checkInstanceGroupManagersDeleteInstancesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteInstances(
              arg_request, arg_project, arg_zone, arg_instanceGroupManager,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.InstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).instanceGroupManagers;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInstanceGroupManager());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_zone, arg_instanceGroupManager)
          .then(unittest.expectAsync1(((api.InstanceGroupManager response) {
        checkInstanceGroupManager(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.InstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).instanceGroupManagers;
      var arg_request = buildInstanceGroupManager();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.InstanceGroupManager.fromJson(json);
        checkInstanceGroupManager(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, arg_zone, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.InstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).instanceGroupManagers;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInstanceGroupManagerList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_zone,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.InstanceGroupManagerList response) {
        checkInstanceGroupManagerList(response);
      })));
    });

    unittest.test("method--listManagedInstances", () {
      var mock = new HttpServerMock();
      api.InstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).instanceGroupManagers;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["order_by"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON
            .encode(buildInstanceGroupManagersListManagedInstancesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listManagedInstances(arg_project, arg_zone, arg_instanceGroupManager,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(
              ((api.InstanceGroupManagersListManagedInstancesResponse
                  response) {
        checkInstanceGroupManagersListManagedInstancesResponse(response);
      })));
    });

    unittest.test("method--recreateInstances", () {
      var mock = new HttpServerMock();
      api.InstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).instanceGroupManagers;
      var arg_request = buildInstanceGroupManagersRecreateInstancesRequest();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.InstanceGroupManagersRecreateInstancesRequest.fromJson(
                json);
        checkInstanceGroupManagersRecreateInstancesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .recreateInstances(
              arg_request, arg_project, arg_zone, arg_instanceGroupManager,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--resize", () {
      var mock = new HttpServerMock();
      api.InstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).instanceGroupManagers;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      var arg_size = 42;
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            core.int.parse(queryMap["size"].first), unittest.equals(arg_size));
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resize(arg_project, arg_zone, arg_instanceGroupManager, arg_size,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setInstanceTemplate", () {
      var mock = new HttpServerMock();
      api.InstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).instanceGroupManagers;
      var arg_request = buildInstanceGroupManagersSetInstanceTemplateRequest();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.InstanceGroupManagersSetInstanceTemplateRequest.fromJson(
                json);
        checkInstanceGroupManagersSetInstanceTemplateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setInstanceTemplate(
              arg_request, arg_project, arg_zone, arg_instanceGroupManager,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setTargetPools", () {
      var mock = new HttpServerMock();
      api.InstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).instanceGroupManagers;
      var arg_request = buildInstanceGroupManagersSetTargetPoolsRequest();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroupManager = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.InstanceGroupManagersSetTargetPoolsRequest.fromJson(json);
        checkInstanceGroupManagersSetTargetPoolsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setTargetPools(
              arg_request, arg_project, arg_zone, arg_instanceGroupManager,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-InstanceGroupsResourceApi", () {
    unittest.test("method--addInstances", () {
      var mock = new HttpServerMock();
      api.InstanceGroupsResourceApi res =
          new api.ComputeApi(mock).instanceGroups;
      var arg_request = buildInstanceGroupsAddInstancesRequest();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroup = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.InstanceGroupsAddInstancesRequest.fromJson(json);
        checkInstanceGroupsAddInstancesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addInstances(arg_request, arg_project, arg_zone, arg_instanceGroup,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--aggregatedList", () {
      var mock = new HttpServerMock();
      api.InstanceGroupsResourceApi res =
          new api.ComputeApi(mock).instanceGroups;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInstanceGroupAggregatedList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .aggregatedList(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest
              .expectAsync1(((api.InstanceGroupAggregatedList response) {
        checkInstanceGroupAggregatedList(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.InstanceGroupsResourceApi res =
          new api.ComputeApi(mock).instanceGroups;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroup = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_zone, arg_instanceGroup,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.InstanceGroupsResourceApi res =
          new api.ComputeApi(mock).instanceGroups;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroup = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInstanceGroup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_zone, arg_instanceGroup)
          .then(unittest.expectAsync1(((api.InstanceGroup response) {
        checkInstanceGroup(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.InstanceGroupsResourceApi res =
          new api.ComputeApi(mock).instanceGroups;
      var arg_request = buildInstanceGroup();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.InstanceGroup.fromJson(json);
        checkInstanceGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, arg_zone, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.InstanceGroupsResourceApi res =
          new api.ComputeApi(mock).instanceGroups;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInstanceGroupList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_zone,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.InstanceGroupList response) {
        checkInstanceGroupList(response);
      })));
    });

    unittest.test("method--listInstances", () {
      var mock = new HttpServerMock();
      api.InstanceGroupsResourceApi res =
          new api.ComputeApi(mock).instanceGroups;
      var arg_request = buildInstanceGroupsListInstancesRequest();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroup = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.InstanceGroupsListInstancesRequest.fromJson(json);
        checkInstanceGroupsListInstancesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInstanceGroupsListInstances());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listInstances(arg_request, arg_project, arg_zone, arg_instanceGroup,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest
              .expectAsync1(((api.InstanceGroupsListInstances response) {
        checkInstanceGroupsListInstances(response);
      })));
    });

    unittest.test("method--removeInstances", () {
      var mock = new HttpServerMock();
      api.InstanceGroupsResourceApi res =
          new api.ComputeApi(mock).instanceGroups;
      var arg_request = buildInstanceGroupsRemoveInstancesRequest();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroup = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.InstanceGroupsRemoveInstancesRequest.fromJson(json);
        checkInstanceGroupsRemoveInstancesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .removeInstances(
              arg_request, arg_project, arg_zone, arg_instanceGroup,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setNamedPorts", () {
      var mock = new HttpServerMock();
      api.InstanceGroupsResourceApi res =
          new api.ComputeApi(mock).instanceGroups;
      var arg_request = buildInstanceGroupsSetNamedPortsRequest();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instanceGroup = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.InstanceGroupsSetNamedPortsRequest.fromJson(json);
        checkInstanceGroupsSetNamedPortsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setNamedPorts(arg_request, arg_project, arg_zone, arg_instanceGroup,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-InstanceTemplatesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.InstanceTemplatesResourceApi res =
          new api.ComputeApi(mock).instanceTemplates;
      var arg_project = "foo";
      var arg_instanceTemplate = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_instanceTemplate, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.InstanceTemplatesResourceApi res =
          new api.ComputeApi(mock).instanceTemplates;
      var arg_project = "foo";
      var arg_instanceTemplate = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInstanceTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_instanceTemplate)
          .then(unittest.expectAsync1(((api.InstanceTemplate response) {
        checkInstanceTemplate(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.InstanceTemplatesResourceApi res =
          new api.ComputeApi(mock).instanceTemplates;
      var arg_request = buildInstanceTemplate();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.InstanceTemplate.fromJson(json);
        checkInstanceTemplate(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.InstanceTemplatesResourceApi res =
          new api.ComputeApi(mock).instanceTemplates;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInstanceTemplateList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.InstanceTemplateList response) {
        checkInstanceTemplateList(response);
      })));
    });
  });

  unittest.group("resource-InstancesResourceApi", () {
    unittest.test("method--addAccessConfig", () {
      var mock = new HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_request = buildAccessConfig();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      var arg_networkInterface = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AccessConfig.fromJson(json);
        checkAccessConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["networkInterface"].first,
            unittest.equals(arg_networkInterface));
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addAccessConfig(arg_request, arg_project, arg_zone, arg_instance,
              arg_networkInterface,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--aggregatedList", () {
      var mock = new HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInstanceAggregatedList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .aggregatedList(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.InstanceAggregatedList response) {
        checkInstanceAggregatedList(response);
      })));
    });

    unittest.test("method--attachDisk", () {
      var mock = new HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_request = buildAttachedDisk();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AttachedDisk.fromJson(json);
        checkAttachedDisk(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .attachDisk(arg_request, arg_project, arg_zone, arg_instance,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_zone, arg_instance, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--deleteAccessConfig", () {
      var mock = new HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      var arg_accessConfig = "foo";
      var arg_networkInterface = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["accessConfig"].first, unittest.equals(arg_accessConfig));
        unittest.expect(queryMap["networkInterface"].first,
            unittest.equals(arg_networkInterface));
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteAccessConfig(arg_project, arg_zone, arg_instance,
              arg_accessConfig, arg_networkInterface,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--detachDisk", () {
      var mock = new HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      var arg_deviceName = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["deviceName"].first, unittest.equals(arg_deviceName));
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .detachDisk(arg_project, arg_zone, arg_instance, arg_deviceName,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInstance());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_zone, arg_instance)
          .then(unittest.expectAsync1(((api.Instance response) {
        checkInstance(response);
      })));
    });

    unittest.test("method--getSerialPortOutput", () {
      var mock = new HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      var arg_port = 42;
      var arg_start_1 = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            core.int.parse(queryMap["port"].first), unittest.equals(arg_port));
        unittest.expect(queryMap["start"].first, unittest.equals(arg_start_1));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSerialPortOutput());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getSerialPortOutput(arg_project, arg_zone, arg_instance,
              port: arg_port, start_1: arg_start_1)
          .then(unittest.expectAsync1(((api.SerialPortOutput response) {
        checkSerialPortOutput(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_request = buildInstance();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Instance.fromJson(json);
        checkInstance(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, arg_zone, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInstanceList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_zone,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.InstanceList response) {
        checkInstanceList(response);
      })));
    });

    unittest.test("method--reset", () {
      var mock = new HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reset(arg_project, arg_zone, arg_instance, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setDiskAutoDelete", () {
      var mock = new HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      var arg_autoDelete = true;
      var arg_deviceName = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["autoDelete"].first, unittest.equals("$arg_autoDelete"));
        unittest.expect(
            queryMap["deviceName"].first, unittest.equals(arg_deviceName));
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setDiskAutoDelete(arg_project, arg_zone, arg_instance,
              arg_autoDelete, arg_deviceName,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setLabels", () {
      var mock = new HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_request = buildInstancesSetLabelsRequest();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.InstancesSetLabelsRequest.fromJson(json);
        checkInstancesSetLabelsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setLabels(arg_request, arg_project, arg_zone, arg_instance,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setMachineResources", () {
      var mock = new HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_request = buildInstancesSetMachineResourcesRequest();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.InstancesSetMachineResourcesRequest.fromJson(json);
        checkInstancesSetMachineResourcesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setMachineResources(arg_request, arg_project, arg_zone, arg_instance,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setMachineType", () {
      var mock = new HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_request = buildInstancesSetMachineTypeRequest();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.InstancesSetMachineTypeRequest.fromJson(json);
        checkInstancesSetMachineTypeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setMachineType(arg_request, arg_project, arg_zone, arg_instance,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setMetadata", () {
      var mock = new HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_request = buildMetadata();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Metadata.fromJson(json);
        checkMetadata(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setMetadata(arg_request, arg_project, arg_zone, arg_instance,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setScheduling", () {
      var mock = new HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_request = buildScheduling();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Scheduling.fromJson(json);
        checkScheduling(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setScheduling(arg_request, arg_project, arg_zone, arg_instance,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setServiceAccount", () {
      var mock = new HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_request = buildInstancesSetServiceAccountRequest();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.InstancesSetServiceAccountRequest.fromJson(json);
        checkInstancesSetServiceAccountRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setServiceAccount(arg_request, arg_project, arg_zone, arg_instance,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setTags", () {
      var mock = new HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_request = buildTags();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Tags.fromJson(json);
        checkTags(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setTags(arg_request, arg_project, arg_zone, arg_instance,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--start", () {
      var mock = new HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .start(arg_project, arg_zone, arg_instance, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--startWithEncryptionKey", () {
      var mock = new HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_request = buildInstancesStartWithEncryptionKeyRequest();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.InstancesStartWithEncryptionKeyRequest.fromJson(json);
        checkInstancesStartWithEncryptionKeyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .startWithEncryptionKey(
              arg_request, arg_project, arg_zone, arg_instance,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--stop", () {
      var mock = new HttpServerMock();
      api.InstancesResourceApi res = new api.ComputeApi(mock).instances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_instance = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .stop(arg_project, arg_zone, arg_instance, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-LicensesResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.LicensesResourceApi res = new api.ComputeApi(mock).licenses;
      var arg_project = "foo";
      var arg_license = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLicense());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_license)
          .then(unittest.expectAsync1(((api.License response) {
        checkLicense(response);
      })));
    });
  });

  unittest.group("resource-MachineTypesResourceApi", () {
    unittest.test("method--aggregatedList", () {
      var mock = new HttpServerMock();
      api.MachineTypesResourceApi res = new api.ComputeApi(mock).machineTypes;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMachineTypeAggregatedList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .aggregatedList(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(
              unittest.expectAsync1(((api.MachineTypeAggregatedList response) {
        checkMachineTypeAggregatedList(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.MachineTypesResourceApi res = new api.ComputeApi(mock).machineTypes;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_machineType = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMachineType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_zone, arg_machineType)
          .then(unittest.expectAsync1(((api.MachineType response) {
        checkMachineType(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.MachineTypesResourceApi res = new api.ComputeApi(mock).machineTypes;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMachineTypeList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_zone,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.MachineTypeList response) {
        checkMachineTypeList(response);
      })));
    });
  });

  unittest.group("resource-NetworksResourceApi", () {
    unittest.test("method--addPeering", () {
      var mock = new HttpServerMock();
      api.NetworksResourceApi res = new api.ComputeApi(mock).networks;
      var arg_request = buildNetworksAddPeeringRequest();
      var arg_project = "foo";
      var arg_network = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.NetworksAddPeeringRequest.fromJson(json);
        checkNetworksAddPeeringRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addPeering(arg_request, arg_project, arg_network,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.NetworksResourceApi res = new api.ComputeApi(mock).networks;
      var arg_project = "foo";
      var arg_network = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_network, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.NetworksResourceApi res = new api.ComputeApi(mock).networks;
      var arg_project = "foo";
      var arg_network = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildNetwork());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_network)
          .then(unittest.expectAsync1(((api.Network response) {
        checkNetwork(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.NetworksResourceApi res = new api.ComputeApi(mock).networks;
      var arg_request = buildNetwork();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Network.fromJson(json);
        checkNetwork(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.NetworksResourceApi res = new api.ComputeApi(mock).networks;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildNetworkList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.NetworkList response) {
        checkNetworkList(response);
      })));
    });

    unittest.test("method--removePeering", () {
      var mock = new HttpServerMock();
      api.NetworksResourceApi res = new api.ComputeApi(mock).networks;
      var arg_request = buildNetworksRemovePeeringRequest();
      var arg_project = "foo";
      var arg_network = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.NetworksRemovePeeringRequest.fromJson(json);
        checkNetworksRemovePeeringRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .removePeering(arg_request, arg_project, arg_network,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--switchToCustomMode", () {
      var mock = new HttpServerMock();
      api.NetworksResourceApi res = new api.ComputeApi(mock).networks;
      var arg_project = "foo";
      var arg_network = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .switchToCustomMode(arg_project, arg_network,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--disableXpnHost", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.ComputeApi(mock).projects;
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .disableXpnHost(arg_project, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--disableXpnResource", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.ComputeApi(mock).projects;
      var arg_request = buildProjectsDisableXpnResourceRequest();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ProjectsDisableXpnResourceRequest.fromJson(json);
        checkProjectsDisableXpnResourceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .disableXpnResource(arg_request, arg_project,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--enableXpnHost", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.ComputeApi(mock).projects;
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .enableXpnHost(arg_project, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--enableXpnResource", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.ComputeApi(mock).projects;
      var arg_request = buildProjectsEnableXpnResourceRequest();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ProjectsEnableXpnResourceRequest.fromJson(json);
        checkProjectsEnableXpnResourceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .enableXpnResource(arg_request, arg_project, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.ComputeApi(mock).projects;
      var arg_project = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildProject());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_project).then(unittest.expectAsync1(((api.Project response) {
        checkProject(response);
      })));
    });

    unittest.test("method--getXpnHost", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.ComputeApi(mock).projects;
      var arg_project = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildProject());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getXpnHost(arg_project)
          .then(unittest.expectAsync1(((api.Project response) {
        checkProject(response);
      })));
    });

    unittest.test("method--getXpnResources", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.ComputeApi(mock).projects;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["order_by"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildProjectsGetXpnResources());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getXpnResources(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.ProjectsGetXpnResources response) {
        checkProjectsGetXpnResources(response);
      })));
    });

    unittest.test("method--listXpnHosts", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.ComputeApi(mock).projects;
      var arg_request = buildProjectsListXpnHostsRequest();
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ProjectsListXpnHostsRequest.fromJson(json);
        checkProjectsListXpnHostsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["order_by"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildXpnHostList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listXpnHosts(arg_request, arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.XpnHostList response) {
        checkXpnHostList(response);
      })));
    });

    unittest.test("method--moveDisk", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.ComputeApi(mock).projects;
      var arg_request = buildDiskMoveRequest();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DiskMoveRequest.fromJson(json);
        checkDiskMoveRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .moveDisk(arg_request, arg_project, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--moveInstance", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.ComputeApi(mock).projects;
      var arg_request = buildInstanceMoveRequest();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.InstanceMoveRequest.fromJson(json);
        checkInstanceMoveRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .moveInstance(arg_request, arg_project, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setCommonInstanceMetadata", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.ComputeApi(mock).projects;
      var arg_request = buildMetadata();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Metadata.fromJson(json);
        checkMetadata(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setCommonInstanceMetadata(arg_request, arg_project,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setUsageExportBucket", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.ComputeApi(mock).projects;
      var arg_request = buildUsageExportLocation();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UsageExportLocation.fromJson(json);
        checkUsageExportLocation(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setUsageExportBucket(arg_request, arg_project,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-RegionAutoscalersResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.RegionAutoscalersResourceApi res =
          new api.ComputeApi(mock).regionAutoscalers;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_autoscaler = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_region, arg_autoscaler,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.RegionAutoscalersResourceApi res =
          new api.ComputeApi(mock).regionAutoscalers;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_autoscaler = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAutoscaler());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_region, arg_autoscaler)
          .then(unittest.expectAsync1(((api.Autoscaler response) {
        checkAutoscaler(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.RegionAutoscalersResourceApi res =
          new api.ComputeApi(mock).regionAutoscalers;
      var arg_request = buildAutoscaler();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Autoscaler.fromJson(json);
        checkAutoscaler(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, arg_region,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.RegionAutoscalersResourceApi res =
          new api.ComputeApi(mock).regionAutoscalers;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRegionAutoscalerList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_region,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.RegionAutoscalerList response) {
        checkRegionAutoscalerList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.RegionAutoscalersResourceApi res =
          new api.ComputeApi(mock).regionAutoscalers;
      var arg_request = buildAutoscaler();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_autoscaler = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Autoscaler.fromJson(json);
        checkAutoscaler(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["autoscaler"].first, unittest.equals(arg_autoscaler));
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_project, arg_region,
              autoscaler: arg_autoscaler, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.RegionAutoscalersResourceApi res =
          new api.ComputeApi(mock).regionAutoscalers;
      var arg_request = buildAutoscaler();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_autoscaler = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Autoscaler.fromJson(json);
        checkAutoscaler(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["autoscaler"].first, unittest.equals(arg_autoscaler));
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_project, arg_region,
              autoscaler: arg_autoscaler, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-RegionBackendServicesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.RegionBackendServicesResourceApi res =
          new api.ComputeApi(mock).regionBackendServices;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_backendService = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_region, arg_backendService,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.RegionBackendServicesResourceApi res =
          new api.ComputeApi(mock).regionBackendServices;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_backendService = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBackendService());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_region, arg_backendService)
          .then(unittest.expectAsync1(((api.BackendService response) {
        checkBackendService(response);
      })));
    });

    unittest.test("method--getHealth", () {
      var mock = new HttpServerMock();
      api.RegionBackendServicesResourceApi res =
          new api.ComputeApi(mock).regionBackendServices;
      var arg_request = buildResourceGroupReference();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_backendService = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ResourceGroupReference.fromJson(json);
        checkResourceGroupReference(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBackendServiceGroupHealth());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getHealth(arg_request, arg_project, arg_region, arg_backendService)
          .then(
              unittest.expectAsync1(((api.BackendServiceGroupHealth response) {
        checkBackendServiceGroupHealth(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.RegionBackendServicesResourceApi res =
          new api.ComputeApi(mock).regionBackendServices;
      var arg_request = buildBackendService();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BackendService.fromJson(json);
        checkBackendService(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, arg_region,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.RegionBackendServicesResourceApi res =
          new api.ComputeApi(mock).regionBackendServices;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBackendServiceList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_region,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.BackendServiceList response) {
        checkBackendServiceList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.RegionBackendServicesResourceApi res =
          new api.ComputeApi(mock).regionBackendServices;
      var arg_request = buildBackendService();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_backendService = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BackendService.fromJson(json);
        checkBackendService(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_project, arg_region, arg_backendService,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.RegionBackendServicesResourceApi res =
          new api.ComputeApi(mock).regionBackendServices;
      var arg_request = buildBackendService();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_backendService = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BackendService.fromJson(json);
        checkBackendService(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_project, arg_region, arg_backendService,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-RegionCommitmentsResourceApi", () {
    unittest.test("method--aggregatedList", () {
      var mock = new HttpServerMock();
      api.RegionCommitmentsResourceApi res =
          new api.ComputeApi(mock).regionCommitments;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommitmentAggregatedList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .aggregatedList(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.CommitmentAggregatedList response) {
        checkCommitmentAggregatedList(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.RegionCommitmentsResourceApi res =
          new api.ComputeApi(mock).regionCommitments;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_commitment = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommitment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_region, arg_commitment)
          .then(unittest.expectAsync1(((api.Commitment response) {
        checkCommitment(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.RegionCommitmentsResourceApi res =
          new api.ComputeApi(mock).regionCommitments;
      var arg_request = buildCommitment();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Commitment.fromJson(json);
        checkCommitment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, arg_region,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.RegionCommitmentsResourceApi res =
          new api.ComputeApi(mock).regionCommitments;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommitmentList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_region,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.CommitmentList response) {
        checkCommitmentList(response);
      })));
    });
  });

  unittest.group("resource-RegionInstanceGroupManagersResourceApi", () {
    unittest.test("method--abandonInstances", () {
      var mock = new HttpServerMock();
      api.RegionInstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).regionInstanceGroupManagers;
      var arg_request =
          buildRegionInstanceGroupManagersAbandonInstancesRequest();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_instanceGroupManager = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.RegionInstanceGroupManagersAbandonInstancesRequest.fromJson(
                json);
        checkRegionInstanceGroupManagersAbandonInstancesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .abandonInstances(
              arg_request, arg_project, arg_region, arg_instanceGroupManager,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.RegionInstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).regionInstanceGroupManagers;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_instanceGroupManager = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_region, arg_instanceGroupManager,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--deleteInstances", () {
      var mock = new HttpServerMock();
      api.RegionInstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).regionInstanceGroupManagers;
      var arg_request =
          buildRegionInstanceGroupManagersDeleteInstancesRequest();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_instanceGroupManager = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.RegionInstanceGroupManagersDeleteInstancesRequest.fromJson(
                json);
        checkRegionInstanceGroupManagersDeleteInstancesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteInstances(
              arg_request, arg_project, arg_region, arg_instanceGroupManager,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.RegionInstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).regionInstanceGroupManagers;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_instanceGroupManager = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInstanceGroupManager());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_region, arg_instanceGroupManager)
          .then(unittest.expectAsync1(((api.InstanceGroupManager response) {
        checkInstanceGroupManager(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.RegionInstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).regionInstanceGroupManagers;
      var arg_request = buildInstanceGroupManager();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.InstanceGroupManager.fromJson(json);
        checkInstanceGroupManager(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, arg_region,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.RegionInstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).regionInstanceGroupManagers;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRegionInstanceGroupManagerList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_region,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest
              .expectAsync1(((api.RegionInstanceGroupManagerList response) {
        checkRegionInstanceGroupManagerList(response);
      })));
    });

    unittest.test("method--listManagedInstances", () {
      var mock = new HttpServerMock();
      api.RegionInstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).regionInstanceGroupManagers;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_instanceGroupManager = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["order_by"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON
            .encode(buildRegionInstanceGroupManagersListInstancesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listManagedInstances(
              arg_project, arg_region, arg_instanceGroupManager,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(
              ((api.RegionInstanceGroupManagersListInstancesResponse response) {
        checkRegionInstanceGroupManagersListInstancesResponse(response);
      })));
    });

    unittest.test("method--recreateInstances", () {
      var mock = new HttpServerMock();
      api.RegionInstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).regionInstanceGroupManagers;
      var arg_request = buildRegionInstanceGroupManagersRecreateRequest();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_instanceGroupManager = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.RegionInstanceGroupManagersRecreateRequest.fromJson(json);
        checkRegionInstanceGroupManagersRecreateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .recreateInstances(
              arg_request, arg_project, arg_region, arg_instanceGroupManager,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--resize", () {
      var mock = new HttpServerMock();
      api.RegionInstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).regionInstanceGroupManagers;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_instanceGroupManager = "foo";
      var arg_size = 42;
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            core.int.parse(queryMap["size"].first), unittest.equals(arg_size));
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resize(arg_project, arg_region, arg_instanceGroupManager, arg_size,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setInstanceTemplate", () {
      var mock = new HttpServerMock();
      api.RegionInstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).regionInstanceGroupManagers;
      var arg_request = buildRegionInstanceGroupManagersSetTemplateRequest();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_instanceGroupManager = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.RegionInstanceGroupManagersSetTemplateRequest.fromJson(
                json);
        checkRegionInstanceGroupManagersSetTemplateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setInstanceTemplate(
              arg_request, arg_project, arg_region, arg_instanceGroupManager,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setTargetPools", () {
      var mock = new HttpServerMock();
      api.RegionInstanceGroupManagersResourceApi res =
          new api.ComputeApi(mock).regionInstanceGroupManagers;
      var arg_request = buildRegionInstanceGroupManagersSetTargetPoolsRequest();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_instanceGroupManager = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.RegionInstanceGroupManagersSetTargetPoolsRequest.fromJson(
                json);
        checkRegionInstanceGroupManagersSetTargetPoolsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setTargetPools(
              arg_request, arg_project, arg_region, arg_instanceGroupManager,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-RegionInstanceGroupsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.RegionInstanceGroupsResourceApi res =
          new api.ComputeApi(mock).regionInstanceGroups;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_instanceGroup = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInstanceGroup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_region, arg_instanceGroup)
          .then(unittest.expectAsync1(((api.InstanceGroup response) {
        checkInstanceGroup(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.RegionInstanceGroupsResourceApi res =
          new api.ComputeApi(mock).regionInstanceGroups;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRegionInstanceGroupList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_region,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.RegionInstanceGroupList response) {
        checkRegionInstanceGroupList(response);
      })));
    });

    unittest.test("method--listInstances", () {
      var mock = new HttpServerMock();
      api.RegionInstanceGroupsResourceApi res =
          new api.ComputeApi(mock).regionInstanceGroups;
      var arg_request = buildRegionInstanceGroupsListInstancesRequest();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_instanceGroup = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.RegionInstanceGroupsListInstancesRequest.fromJson(json);
        checkRegionInstanceGroupsListInstancesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.JSON.encode(buildRegionInstanceGroupsListInstances());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listInstances(
              arg_request, arg_project, arg_region, arg_instanceGroup,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest
              .expectAsync1(((api.RegionInstanceGroupsListInstances response) {
        checkRegionInstanceGroupsListInstances(response);
      })));
    });

    unittest.test("method--setNamedPorts", () {
      var mock = new HttpServerMock();
      api.RegionInstanceGroupsResourceApi res =
          new api.ComputeApi(mock).regionInstanceGroups;
      var arg_request = buildRegionInstanceGroupsSetNamedPortsRequest();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_instanceGroup = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.RegionInstanceGroupsSetNamedPortsRequest.fromJson(json);
        checkRegionInstanceGroupsSetNamedPortsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setNamedPorts(
              arg_request, arg_project, arg_region, arg_instanceGroup,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-RegionOperationsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.RegionOperationsResourceApi res =
          new api.ComputeApi(mock).regionOperations;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_operation = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_region, arg_operation)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.RegionOperationsResourceApi res =
          new api.ComputeApi(mock).regionOperations;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_operation = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_region, arg_operation)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.RegionOperationsResourceApi res =
          new api.ComputeApi(mock).regionOperations;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperationList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_region,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.OperationList response) {
        checkOperationList(response);
      })));
    });
  });

  unittest.group("resource-RegionsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.RegionsResourceApi res = new api.ComputeApi(mock).regions;
      var arg_project = "foo";
      var arg_region = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRegion());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_region)
          .then(unittest.expectAsync1(((api.Region response) {
        checkRegion(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.RegionsResourceApi res = new api.ComputeApi(mock).regions;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRegionList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.RegionList response) {
        checkRegionList(response);
      })));
    });
  });

  unittest.group("resource-RoutersResourceApi", () {
    unittest.test("method--aggregatedList", () {
      var mock = new HttpServerMock();
      api.RoutersResourceApi res = new api.ComputeApi(mock).routers;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRouterAggregatedList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .aggregatedList(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.RouterAggregatedList response) {
        checkRouterAggregatedList(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.RoutersResourceApi res = new api.ComputeApi(mock).routers;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_router = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_region, arg_router, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.RoutersResourceApi res = new api.ComputeApi(mock).routers;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_router = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRouter());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_region, arg_router)
          .then(unittest.expectAsync1(((api.Router response) {
        checkRouter(response);
      })));
    });

    unittest.test("method--getRouterStatus", () {
      var mock = new HttpServerMock();
      api.RoutersResourceApi res = new api.ComputeApi(mock).routers;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_router = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRouterStatusResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getRouterStatus(arg_project, arg_region, arg_router)
          .then(unittest.expectAsync1(((api.RouterStatusResponse response) {
        checkRouterStatusResponse(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.RoutersResourceApi res = new api.ComputeApi(mock).routers;
      var arg_request = buildRouter();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Router.fromJson(json);
        checkRouter(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, arg_region,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.RoutersResourceApi res = new api.ComputeApi(mock).routers;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRouterList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_region,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.RouterList response) {
        checkRouterList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.RoutersResourceApi res = new api.ComputeApi(mock).routers;
      var arg_request = buildRouter();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_router = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Router.fromJson(json);
        checkRouter(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_project, arg_region, arg_router,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--preview", () {
      var mock = new HttpServerMock();
      api.RoutersResourceApi res = new api.ComputeApi(mock).routers;
      var arg_request = buildRouter();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_router = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Router.fromJson(json);
        checkRouter(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRoutersPreviewResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .preview(arg_request, arg_project, arg_region, arg_router)
          .then(unittest.expectAsync1(((api.RoutersPreviewResponse response) {
        checkRoutersPreviewResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.RoutersResourceApi res = new api.ComputeApi(mock).routers;
      var arg_request = buildRouter();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_router = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Router.fromJson(json);
        checkRouter(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_project, arg_region, arg_router,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-RoutesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.RoutesResourceApi res = new api.ComputeApi(mock).routes;
      var arg_project = "foo";
      var arg_route = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_route, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.RoutesResourceApi res = new api.ComputeApi(mock).routes;
      var arg_project = "foo";
      var arg_route = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRoute());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_route)
          .then(unittest.expectAsync1(((api.Route response) {
        checkRoute(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.RoutesResourceApi res = new api.ComputeApi(mock).routes;
      var arg_request = buildRoute();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Route.fromJson(json);
        checkRoute(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.RoutesResourceApi res = new api.ComputeApi(mock).routes;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRouteList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.RouteList response) {
        checkRouteList(response);
      })));
    });
  });

  unittest.group("resource-SnapshotsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.SnapshotsResourceApi res = new api.ComputeApi(mock).snapshots;
      var arg_project = "foo";
      var arg_snapshot = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_snapshot, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.SnapshotsResourceApi res = new api.ComputeApi(mock).snapshots;
      var arg_project = "foo";
      var arg_snapshot = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSnapshot());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_snapshot)
          .then(unittest.expectAsync1(((api.Snapshot response) {
        checkSnapshot(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.SnapshotsResourceApi res = new api.ComputeApi(mock).snapshots;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSnapshotList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.SnapshotList response) {
        checkSnapshotList(response);
      })));
    });

    unittest.test("method--setLabels", () {
      var mock = new HttpServerMock();
      api.SnapshotsResourceApi res = new api.ComputeApi(mock).snapshots;
      var arg_request = buildGlobalSetLabelsRequest();
      var arg_project = "foo";
      var arg_resource = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GlobalSetLabelsRequest.fromJson(json);
        checkGlobalSetLabelsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setLabels(arg_request, arg_project, arg_resource)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-SslCertificatesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.SslCertificatesResourceApi res =
          new api.ComputeApi(mock).sslCertificates;
      var arg_project = "foo";
      var arg_sslCertificate = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_sslCertificate, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.SslCertificatesResourceApi res =
          new api.ComputeApi(mock).sslCertificates;
      var arg_project = "foo";
      var arg_sslCertificate = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSslCertificate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_sslCertificate)
          .then(unittest.expectAsync1(((api.SslCertificate response) {
        checkSslCertificate(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.SslCertificatesResourceApi res =
          new api.ComputeApi(mock).sslCertificates;
      var arg_request = buildSslCertificate();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SslCertificate.fromJson(json);
        checkSslCertificate(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.SslCertificatesResourceApi res =
          new api.ComputeApi(mock).sslCertificates;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSslCertificateList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.SslCertificateList response) {
        checkSslCertificateList(response);
      })));
    });
  });

  unittest.group("resource-SubnetworksResourceApi", () {
    unittest.test("method--aggregatedList", () {
      var mock = new HttpServerMock();
      api.SubnetworksResourceApi res = new api.ComputeApi(mock).subnetworks;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSubnetworkAggregatedList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .aggregatedList(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.SubnetworkAggregatedList response) {
        checkSubnetworkAggregatedList(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.SubnetworksResourceApi res = new api.ComputeApi(mock).subnetworks;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_subnetwork = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_region, arg_subnetwork,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--expandIpCidrRange", () {
      var mock = new HttpServerMock();
      api.SubnetworksResourceApi res = new api.ComputeApi(mock).subnetworks;
      var arg_request = buildSubnetworksExpandIpCidrRangeRequest();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_subnetwork = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SubnetworksExpandIpCidrRangeRequest.fromJson(json);
        checkSubnetworksExpandIpCidrRangeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .expandIpCidrRange(
              arg_request, arg_project, arg_region, arg_subnetwork,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.SubnetworksResourceApi res = new api.ComputeApi(mock).subnetworks;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_subnetwork = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSubnetwork());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_region, arg_subnetwork)
          .then(unittest.expectAsync1(((api.Subnetwork response) {
        checkSubnetwork(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.SubnetworksResourceApi res = new api.ComputeApi(mock).subnetworks;
      var arg_request = buildSubnetwork();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Subnetwork.fromJson(json);
        checkSubnetwork(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, arg_region,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.SubnetworksResourceApi res = new api.ComputeApi(mock).subnetworks;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSubnetworkList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_region,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.SubnetworkList response) {
        checkSubnetworkList(response);
      })));
    });

    unittest.test("method--setPrivateIpGoogleAccess", () {
      var mock = new HttpServerMock();
      api.SubnetworksResourceApi res = new api.ComputeApi(mock).subnetworks;
      var arg_request = buildSubnetworksSetPrivateIpGoogleAccessRequest();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_subnetwork = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.SubnetworksSetPrivateIpGoogleAccessRequest.fromJson(json);
        checkSubnetworksSetPrivateIpGoogleAccessRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setPrivateIpGoogleAccess(
              arg_request, arg_project, arg_region, arg_subnetwork,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-TargetHttpProxiesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.TargetHttpProxiesResourceApi res =
          new api.ComputeApi(mock).targetHttpProxies;
      var arg_project = "foo";
      var arg_targetHttpProxy = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_targetHttpProxy, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.TargetHttpProxiesResourceApi res =
          new api.ComputeApi(mock).targetHttpProxies;
      var arg_project = "foo";
      var arg_targetHttpProxy = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetHttpProxy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_targetHttpProxy)
          .then(unittest.expectAsync1(((api.TargetHttpProxy response) {
        checkTargetHttpProxy(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.TargetHttpProxiesResourceApi res =
          new api.ComputeApi(mock).targetHttpProxies;
      var arg_request = buildTargetHttpProxy();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TargetHttpProxy.fromJson(json);
        checkTargetHttpProxy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.TargetHttpProxiesResourceApi res =
          new api.ComputeApi(mock).targetHttpProxies;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetHttpProxyList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.TargetHttpProxyList response) {
        checkTargetHttpProxyList(response);
      })));
    });

    unittest.test("method--setUrlMap", () {
      var mock = new HttpServerMock();
      api.TargetHttpProxiesResourceApi res =
          new api.ComputeApi(mock).targetHttpProxies;
      var arg_request = buildUrlMapReference();
      var arg_project = "foo";
      var arg_targetHttpProxy = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UrlMapReference.fromJson(json);
        checkUrlMapReference(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setUrlMap(arg_request, arg_project, arg_targetHttpProxy,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-TargetHttpsProxiesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.TargetHttpsProxiesResourceApi res =
          new api.ComputeApi(mock).targetHttpsProxies;
      var arg_project = "foo";
      var arg_targetHttpsProxy = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_targetHttpsProxy, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.TargetHttpsProxiesResourceApi res =
          new api.ComputeApi(mock).targetHttpsProxies;
      var arg_project = "foo";
      var arg_targetHttpsProxy = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetHttpsProxy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_targetHttpsProxy)
          .then(unittest.expectAsync1(((api.TargetHttpsProxy response) {
        checkTargetHttpsProxy(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.TargetHttpsProxiesResourceApi res =
          new api.ComputeApi(mock).targetHttpsProxies;
      var arg_request = buildTargetHttpsProxy();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TargetHttpsProxy.fromJson(json);
        checkTargetHttpsProxy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.TargetHttpsProxiesResourceApi res =
          new api.ComputeApi(mock).targetHttpsProxies;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetHttpsProxyList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.TargetHttpsProxyList response) {
        checkTargetHttpsProxyList(response);
      })));
    });

    unittest.test("method--setSslCertificates", () {
      var mock = new HttpServerMock();
      api.TargetHttpsProxiesResourceApi res =
          new api.ComputeApi(mock).targetHttpsProxies;
      var arg_request = buildTargetHttpsProxiesSetSslCertificatesRequest();
      var arg_project = "foo";
      var arg_targetHttpsProxy = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.TargetHttpsProxiesSetSslCertificatesRequest.fromJson(json);
        checkTargetHttpsProxiesSetSslCertificatesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setSslCertificates(arg_request, arg_project, arg_targetHttpsProxy,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setUrlMap", () {
      var mock = new HttpServerMock();
      api.TargetHttpsProxiesResourceApi res =
          new api.ComputeApi(mock).targetHttpsProxies;
      var arg_request = buildUrlMapReference();
      var arg_project = "foo";
      var arg_targetHttpsProxy = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UrlMapReference.fromJson(json);
        checkUrlMapReference(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setUrlMap(arg_request, arg_project, arg_targetHttpsProxy,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-TargetInstancesResourceApi", () {
    unittest.test("method--aggregatedList", () {
      var mock = new HttpServerMock();
      api.TargetInstancesResourceApi res =
          new api.ComputeApi(mock).targetInstances;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetInstanceAggregatedList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .aggregatedList(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest
              .expectAsync1(((api.TargetInstanceAggregatedList response) {
        checkTargetInstanceAggregatedList(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.TargetInstancesResourceApi res =
          new api.ComputeApi(mock).targetInstances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_targetInstance = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_zone, arg_targetInstance,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.TargetInstancesResourceApi res =
          new api.ComputeApi(mock).targetInstances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_targetInstance = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetInstance());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_zone, arg_targetInstance)
          .then(unittest.expectAsync1(((api.TargetInstance response) {
        checkTargetInstance(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.TargetInstancesResourceApi res =
          new api.ComputeApi(mock).targetInstances;
      var arg_request = buildTargetInstance();
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TargetInstance.fromJson(json);
        checkTargetInstance(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, arg_zone, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.TargetInstancesResourceApi res =
          new api.ComputeApi(mock).targetInstances;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetInstanceList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_zone,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.TargetInstanceList response) {
        checkTargetInstanceList(response);
      })));
    });
  });

  unittest.group("resource-TargetPoolsResourceApi", () {
    unittest.test("method--addHealthCheck", () {
      var mock = new HttpServerMock();
      api.TargetPoolsResourceApi res = new api.ComputeApi(mock).targetPools;
      var arg_request = buildTargetPoolsAddHealthCheckRequest();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_targetPool = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TargetPoolsAddHealthCheckRequest.fromJson(json);
        checkTargetPoolsAddHealthCheckRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addHealthCheck(arg_request, arg_project, arg_region, arg_targetPool,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--addInstance", () {
      var mock = new HttpServerMock();
      api.TargetPoolsResourceApi res = new api.ComputeApi(mock).targetPools;
      var arg_request = buildTargetPoolsAddInstanceRequest();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_targetPool = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TargetPoolsAddInstanceRequest.fromJson(json);
        checkTargetPoolsAddInstanceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addInstance(arg_request, arg_project, arg_region, arg_targetPool,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--aggregatedList", () {
      var mock = new HttpServerMock();
      api.TargetPoolsResourceApi res = new api.ComputeApi(mock).targetPools;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetPoolAggregatedList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .aggregatedList(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.TargetPoolAggregatedList response) {
        checkTargetPoolAggregatedList(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.TargetPoolsResourceApi res = new api.ComputeApi(mock).targetPools;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_targetPool = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_region, arg_targetPool,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.TargetPoolsResourceApi res = new api.ComputeApi(mock).targetPools;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_targetPool = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetPool());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_region, arg_targetPool)
          .then(unittest.expectAsync1(((api.TargetPool response) {
        checkTargetPool(response);
      })));
    });

    unittest.test("method--getHealth", () {
      var mock = new HttpServerMock();
      api.TargetPoolsResourceApi res = new api.ComputeApi(mock).targetPools;
      var arg_request = buildInstanceReference();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_targetPool = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.InstanceReference.fromJson(json);
        checkInstanceReference(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetPoolInstanceHealth());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getHealth(arg_request, arg_project, arg_region, arg_targetPool)
          .then(unittest.expectAsync1(((api.TargetPoolInstanceHealth response) {
        checkTargetPoolInstanceHealth(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.TargetPoolsResourceApi res = new api.ComputeApi(mock).targetPools;
      var arg_request = buildTargetPool();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TargetPool.fromJson(json);
        checkTargetPool(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, arg_region,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.TargetPoolsResourceApi res = new api.ComputeApi(mock).targetPools;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetPoolList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_region,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.TargetPoolList response) {
        checkTargetPoolList(response);
      })));
    });

    unittest.test("method--removeHealthCheck", () {
      var mock = new HttpServerMock();
      api.TargetPoolsResourceApi res = new api.ComputeApi(mock).targetPools;
      var arg_request = buildTargetPoolsRemoveHealthCheckRequest();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_targetPool = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TargetPoolsRemoveHealthCheckRequest.fromJson(json);
        checkTargetPoolsRemoveHealthCheckRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .removeHealthCheck(
              arg_request, arg_project, arg_region, arg_targetPool,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--removeInstance", () {
      var mock = new HttpServerMock();
      api.TargetPoolsResourceApi res = new api.ComputeApi(mock).targetPools;
      var arg_request = buildTargetPoolsRemoveInstanceRequest();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_targetPool = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TargetPoolsRemoveInstanceRequest.fromJson(json);
        checkTargetPoolsRemoveInstanceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .removeInstance(arg_request, arg_project, arg_region, arg_targetPool,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setBackup", () {
      var mock = new HttpServerMock();
      api.TargetPoolsResourceApi res = new api.ComputeApi(mock).targetPools;
      var arg_request = buildTargetReference();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_targetPool = "foo";
      var arg_failoverRatio = 42.0;
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TargetReference.fromJson(json);
        checkTargetReference(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.num.parse(queryMap["failoverRatio"].first),
            unittest.equals(arg_failoverRatio));
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setBackup(arg_request, arg_project, arg_region, arg_targetPool,
              failoverRatio: arg_failoverRatio, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-TargetSslProxiesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.TargetSslProxiesResourceApi res =
          new api.ComputeApi(mock).targetSslProxies;
      var arg_project = "foo";
      var arg_targetSslProxy = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_targetSslProxy, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.TargetSslProxiesResourceApi res =
          new api.ComputeApi(mock).targetSslProxies;
      var arg_project = "foo";
      var arg_targetSslProxy = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetSslProxy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_targetSslProxy)
          .then(unittest.expectAsync1(((api.TargetSslProxy response) {
        checkTargetSslProxy(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.TargetSslProxiesResourceApi res =
          new api.ComputeApi(mock).targetSslProxies;
      var arg_request = buildTargetSslProxy();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TargetSslProxy.fromJson(json);
        checkTargetSslProxy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.TargetSslProxiesResourceApi res =
          new api.ComputeApi(mock).targetSslProxies;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetSslProxyList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.TargetSslProxyList response) {
        checkTargetSslProxyList(response);
      })));
    });

    unittest.test("method--setBackendService", () {
      var mock = new HttpServerMock();
      api.TargetSslProxiesResourceApi res =
          new api.ComputeApi(mock).targetSslProxies;
      var arg_request = buildTargetSslProxiesSetBackendServiceRequest();
      var arg_project = "foo";
      var arg_targetSslProxy = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.TargetSslProxiesSetBackendServiceRequest.fromJson(json);
        checkTargetSslProxiesSetBackendServiceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setBackendService(arg_request, arg_project, arg_targetSslProxy,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setProxyHeader", () {
      var mock = new HttpServerMock();
      api.TargetSslProxiesResourceApi res =
          new api.ComputeApi(mock).targetSslProxies;
      var arg_request = buildTargetSslProxiesSetProxyHeaderRequest();
      var arg_project = "foo";
      var arg_targetSslProxy = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TargetSslProxiesSetProxyHeaderRequest.fromJson(json);
        checkTargetSslProxiesSetProxyHeaderRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setProxyHeader(arg_request, arg_project, arg_targetSslProxy,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setSslCertificates", () {
      var mock = new HttpServerMock();
      api.TargetSslProxiesResourceApi res =
          new api.ComputeApi(mock).targetSslProxies;
      var arg_request = buildTargetSslProxiesSetSslCertificatesRequest();
      var arg_project = "foo";
      var arg_targetSslProxy = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.TargetSslProxiesSetSslCertificatesRequest.fromJson(json);
        checkTargetSslProxiesSetSslCertificatesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setSslCertificates(arg_request, arg_project, arg_targetSslProxy,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-TargetTcpProxiesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.TargetTcpProxiesResourceApi res =
          new api.ComputeApi(mock).targetTcpProxies;
      var arg_project = "foo";
      var arg_targetTcpProxy = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_targetTcpProxy, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.TargetTcpProxiesResourceApi res =
          new api.ComputeApi(mock).targetTcpProxies;
      var arg_project = "foo";
      var arg_targetTcpProxy = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetTcpProxy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_targetTcpProxy)
          .then(unittest.expectAsync1(((api.TargetTcpProxy response) {
        checkTargetTcpProxy(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.TargetTcpProxiesResourceApi res =
          new api.ComputeApi(mock).targetTcpProxies;
      var arg_request = buildTargetTcpProxy();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TargetTcpProxy.fromJson(json);
        checkTargetTcpProxy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.TargetTcpProxiesResourceApi res =
          new api.ComputeApi(mock).targetTcpProxies;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetTcpProxyList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.TargetTcpProxyList response) {
        checkTargetTcpProxyList(response);
      })));
    });

    unittest.test("method--setBackendService", () {
      var mock = new HttpServerMock();
      api.TargetTcpProxiesResourceApi res =
          new api.ComputeApi(mock).targetTcpProxies;
      var arg_request = buildTargetTcpProxiesSetBackendServiceRequest();
      var arg_project = "foo";
      var arg_targetTcpProxy = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.TargetTcpProxiesSetBackendServiceRequest.fromJson(json);
        checkTargetTcpProxiesSetBackendServiceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setBackendService(arg_request, arg_project, arg_targetTcpProxy,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--setProxyHeader", () {
      var mock = new HttpServerMock();
      api.TargetTcpProxiesResourceApi res =
          new api.ComputeApi(mock).targetTcpProxies;
      var arg_request = buildTargetTcpProxiesSetProxyHeaderRequest();
      var arg_project = "foo";
      var arg_targetTcpProxy = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TargetTcpProxiesSetProxyHeaderRequest.fromJson(json);
        checkTargetTcpProxiesSetProxyHeaderRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setProxyHeader(arg_request, arg_project, arg_targetTcpProxy,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-TargetVpnGatewaysResourceApi", () {
    unittest.test("method--aggregatedList", () {
      var mock = new HttpServerMock();
      api.TargetVpnGatewaysResourceApi res =
          new api.ComputeApi(mock).targetVpnGateways;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetVpnGatewayAggregatedList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .aggregatedList(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest
              .expectAsync1(((api.TargetVpnGatewayAggregatedList response) {
        checkTargetVpnGatewayAggregatedList(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.TargetVpnGatewaysResourceApi res =
          new api.ComputeApi(mock).targetVpnGateways;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_targetVpnGateway = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_region, arg_targetVpnGateway,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.TargetVpnGatewaysResourceApi res =
          new api.ComputeApi(mock).targetVpnGateways;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_targetVpnGateway = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetVpnGateway());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_region, arg_targetVpnGateway)
          .then(unittest.expectAsync1(((api.TargetVpnGateway response) {
        checkTargetVpnGateway(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.TargetVpnGatewaysResourceApi res =
          new api.ComputeApi(mock).targetVpnGateways;
      var arg_request = buildTargetVpnGateway();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TargetVpnGateway.fromJson(json);
        checkTargetVpnGateway(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, arg_region,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.TargetVpnGatewaysResourceApi res =
          new api.ComputeApi(mock).targetVpnGateways;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTargetVpnGatewayList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_region,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.TargetVpnGatewayList response) {
        checkTargetVpnGatewayList(response);
      })));
    });
  });

  unittest.group("resource-UrlMapsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.UrlMapsResourceApi res = new api.ComputeApi(mock).urlMaps;
      var arg_project = "foo";
      var arg_urlMap = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_urlMap, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.UrlMapsResourceApi res = new api.ComputeApi(mock).urlMaps;
      var arg_project = "foo";
      var arg_urlMap = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUrlMap());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_urlMap)
          .then(unittest.expectAsync1(((api.UrlMap response) {
        checkUrlMap(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.UrlMapsResourceApi res = new api.ComputeApi(mock).urlMaps;
      var arg_request = buildUrlMap();
      var arg_project = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UrlMap.fromJson(json);
        checkUrlMap(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--invalidateCache", () {
      var mock = new HttpServerMock();
      api.UrlMapsResourceApi res = new api.ComputeApi(mock).urlMaps;
      var arg_request = buildCacheInvalidationRule();
      var arg_project = "foo";
      var arg_urlMap = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CacheInvalidationRule.fromJson(json);
        checkCacheInvalidationRule(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .invalidateCache(arg_request, arg_project, arg_urlMap,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.UrlMapsResourceApi res = new api.ComputeApi(mock).urlMaps;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUrlMapList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.UrlMapList response) {
        checkUrlMapList(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.UrlMapsResourceApi res = new api.ComputeApi(mock).urlMaps;
      var arg_request = buildUrlMap();
      var arg_project = "foo";
      var arg_urlMap = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UrlMap.fromJson(json);
        checkUrlMap(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_project, arg_urlMap, requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.UrlMapsResourceApi res = new api.ComputeApi(mock).urlMaps;
      var arg_request = buildUrlMap();
      var arg_project = "foo";
      var arg_urlMap = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UrlMap.fromJson(json);
        checkUrlMap(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_project, arg_urlMap,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--validate", () {
      var mock = new HttpServerMock();
      api.UrlMapsResourceApi res = new api.ComputeApi(mock).urlMaps;
      var arg_request = buildUrlMapsValidateRequest();
      var arg_project = "foo";
      var arg_urlMap = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UrlMapsValidateRequest.fromJson(json);
        checkUrlMapsValidateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUrlMapsValidateResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .validate(arg_request, arg_project, arg_urlMap)
          .then(unittest.expectAsync1(((api.UrlMapsValidateResponse response) {
        checkUrlMapsValidateResponse(response);
      })));
    });
  });

  unittest.group("resource-VpnTunnelsResourceApi", () {
    unittest.test("method--aggregatedList", () {
      var mock = new HttpServerMock();
      api.VpnTunnelsResourceApi res = new api.ComputeApi(mock).vpnTunnels;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVpnTunnelAggregatedList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .aggregatedList(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.VpnTunnelAggregatedList response) {
        checkVpnTunnelAggregatedList(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.VpnTunnelsResourceApi res = new api.ComputeApi(mock).vpnTunnels;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_vpnTunnel = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_region, arg_vpnTunnel,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.VpnTunnelsResourceApi res = new api.ComputeApi(mock).vpnTunnels;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_vpnTunnel = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVpnTunnel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_region, arg_vpnTunnel)
          .then(unittest.expectAsync1(((api.VpnTunnel response) {
        checkVpnTunnel(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.VpnTunnelsResourceApi res = new api.ComputeApi(mock).vpnTunnels;
      var arg_request = buildVpnTunnel();
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_requestId = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.VpnTunnel.fromJson(json);
        checkVpnTunnel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["requestId"].first, unittest.equals(arg_requestId));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_project, arg_region,
              requestId: arg_requestId)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.VpnTunnelsResourceApi res = new api.ComputeApi(mock).vpnTunnels;
      var arg_project = "foo";
      var arg_region = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVpnTunnelList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_region,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.VpnTunnelList response) {
        checkVpnTunnelList(response);
      })));
    });
  });

  unittest.group("resource-ZoneOperationsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ZoneOperationsResourceApi res =
          new api.ComputeApi(mock).zoneOperations;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_operation = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_project, arg_zone, arg_operation)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ZoneOperationsResourceApi res =
          new api.ComputeApi(mock).zoneOperations;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_operation = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_zone, arg_operation)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ZoneOperationsResourceApi res =
          new api.ComputeApi(mock).zoneOperations;
      var arg_project = "foo";
      var arg_zone = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperationList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project, arg_zone,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.OperationList response) {
        checkOperationList(response);
      })));
    });
  });

  unittest.group("resource-ZonesResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ZonesResourceApi res = new api.ComputeApi(mock).zones;
      var arg_project = "foo";
      var arg_zone = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildZone());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_project, arg_zone)
          .then(unittest.expectAsync1(((api.Zone response) {
        checkZone(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ZonesResourceApi res = new api.ComputeApi(mock).zones;
      var arg_project = "foo";
      var arg_filter = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildZoneList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              filter: arg_filter,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken)
          .then(unittest.expectAsync1(((api.ZoneList response) {
        checkZoneList(response);
      })));
    });
  });
}
