library googleapis_beta.prod_tt_sasportal.v1alpha1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/prod_tt_sasportal/v1alpha1.dart' as api;

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
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
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
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed5661() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5661(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSasPortalAssignment = 0;
buildSasPortalAssignment() {
  var o = new api.SasPortalAssignment();
  buildCounterSasPortalAssignment++;
  if (buildCounterSasPortalAssignment < 3) {
    o.members = buildUnnamed5661();
    o.role = "foo";
  }
  buildCounterSasPortalAssignment--;
  return o;
}

checkSasPortalAssignment(api.SasPortalAssignment o) {
  buildCounterSasPortalAssignment++;
  if (buildCounterSasPortalAssignment < 3) {
    checkUnnamed5661(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterSasPortalAssignment--;
}

core.int buildCounterSasPortalBulkCreateDeviceRequest = 0;
buildSasPortalBulkCreateDeviceRequest() {
  var o = new api.SasPortalBulkCreateDeviceRequest();
  buildCounterSasPortalBulkCreateDeviceRequest++;
  if (buildCounterSasPortalBulkCreateDeviceRequest < 3) {
    o.csv = "foo";
  }
  buildCounterSasPortalBulkCreateDeviceRequest--;
  return o;
}

checkSasPortalBulkCreateDeviceRequest(api.SasPortalBulkCreateDeviceRequest o) {
  buildCounterSasPortalBulkCreateDeviceRequest++;
  if (buildCounterSasPortalBulkCreateDeviceRequest < 3) {
    unittest.expect(o.csv, unittest.equals('foo'));
  }
  buildCounterSasPortalBulkCreateDeviceRequest--;
}

buildUnnamed5662() {
  var o = new core.List<api.SasPortalDevice>();
  o.add(buildSasPortalDevice());
  o.add(buildSasPortalDevice());
  return o;
}

checkUnnamed5662(core.List<api.SasPortalDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalDevice(o[0]);
  checkSasPortalDevice(o[1]);
}

core.int buildCounterSasPortalBulkCreateDeviceResponse = 0;
buildSasPortalBulkCreateDeviceResponse() {
  var o = new api.SasPortalBulkCreateDeviceResponse();
  buildCounterSasPortalBulkCreateDeviceResponse++;
  if (buildCounterSasPortalBulkCreateDeviceResponse < 3) {
    o.devices = buildUnnamed5662();
  }
  buildCounterSasPortalBulkCreateDeviceResponse--;
  return o;
}

checkSasPortalBulkCreateDeviceResponse(
    api.SasPortalBulkCreateDeviceResponse o) {
  buildCounterSasPortalBulkCreateDeviceResponse++;
  if (buildCounterSasPortalBulkCreateDeviceResponse < 3) {
    checkUnnamed5662(o.devices);
  }
  buildCounterSasPortalBulkCreateDeviceResponse--;
}

core.int buildCounterSasPortalCreateSignedDeviceRequest = 0;
buildSasPortalCreateSignedDeviceRequest() {
  var o = new api.SasPortalCreateSignedDeviceRequest();
  buildCounterSasPortalCreateSignedDeviceRequest++;
  if (buildCounterSasPortalCreateSignedDeviceRequest < 3) {
    o.encodedDevice = "foo";
    o.installerId = "foo";
  }
  buildCounterSasPortalCreateSignedDeviceRequest--;
  return o;
}

checkSasPortalCreateSignedDeviceRequest(
    api.SasPortalCreateSignedDeviceRequest o) {
  buildCounterSasPortalCreateSignedDeviceRequest++;
  if (buildCounterSasPortalCreateSignedDeviceRequest < 3) {
    unittest.expect(o.encodedDevice, unittest.equals('foo'));
    unittest.expect(o.installerId, unittest.equals('foo'));
  }
  buildCounterSasPortalCreateSignedDeviceRequest--;
}

buildUnnamed5663() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5663(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSasPortalCustomer = 0;
buildSasPortalCustomer() {
  var o = new api.SasPortalCustomer();
  buildCounterSasPortalCustomer++;
  if (buildCounterSasPortalCustomer < 3) {
    o.displayName = "foo";
    o.name = "foo";
    o.sasUserIds = buildUnnamed5663();
  }
  buildCounterSasPortalCustomer--;
  return o;
}

checkSasPortalCustomer(api.SasPortalCustomer o) {
  buildCounterSasPortalCustomer++;
  if (buildCounterSasPortalCustomer < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5663(o.sasUserIds);
  }
  buildCounterSasPortalCustomer--;
}

buildUnnamed5664() {
  var o = new core.List<api.SasPortalDeviceGrant>();
  o.add(buildSasPortalDeviceGrant());
  o.add(buildSasPortalDeviceGrant());
  return o;
}

checkUnnamed5664(core.List<api.SasPortalDeviceGrant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalDeviceGrant(o[0]);
  checkSasPortalDeviceGrant(o[1]);
}

core.int buildCounterSasPortalDevice = 0;
buildSasPortalDevice() {
  var o = new api.SasPortalDevice();
  buildCounterSasPortalDevice++;
  if (buildCounterSasPortalDevice < 3) {
    o.activeConfig = buildSasPortalDeviceConfig();
    o.displayName = "foo";
    o.fccId = "foo";
    o.grants = buildUnnamed5664();
    o.name = "foo";
    o.preloadedConfig = buildSasPortalDeviceConfig();
    o.serialNumber = "foo";
    o.state = "foo";
  }
  buildCounterSasPortalDevice--;
  return o;
}

checkSasPortalDevice(api.SasPortalDevice o) {
  buildCounterSasPortalDevice++;
  if (buildCounterSasPortalDevice < 3) {
    checkSasPortalDeviceConfig(o.activeConfig);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.fccId, unittest.equals('foo'));
    checkUnnamed5664(o.grants);
    unittest.expect(o.name, unittest.equals('foo'));
    checkSasPortalDeviceConfig(o.preloadedConfig);
    unittest.expect(o.serialNumber, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterSasPortalDevice--;
}

core.int buildCounterSasPortalDeviceAirInterface = 0;
buildSasPortalDeviceAirInterface() {
  var o = new api.SasPortalDeviceAirInterface();
  buildCounterSasPortalDeviceAirInterface++;
  if (buildCounterSasPortalDeviceAirInterface < 3) {
    o.radioTechnology = "foo";
    o.supportedSpec = "foo";
  }
  buildCounterSasPortalDeviceAirInterface--;
  return o;
}

checkSasPortalDeviceAirInterface(api.SasPortalDeviceAirInterface o) {
  buildCounterSasPortalDeviceAirInterface++;
  if (buildCounterSasPortalDeviceAirInterface < 3) {
    unittest.expect(o.radioTechnology, unittest.equals('foo'));
    unittest.expect(o.supportedSpec, unittest.equals('foo'));
  }
  buildCounterSasPortalDeviceAirInterface--;
}

buildUnnamed5665() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5665(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSasPortalDeviceConfig = 0;
buildSasPortalDeviceConfig() {
  var o = new api.SasPortalDeviceConfig();
  buildCounterSasPortalDeviceConfig++;
  if (buildCounterSasPortalDeviceConfig < 3) {
    o.airInterface = buildSasPortalDeviceAirInterface();
    o.callSign = "foo";
    o.category = "foo";
    o.installationParams = buildSasPortalInstallationParams();
    o.isSigned = true;
    o.measurementCapabilities = buildUnnamed5665();
    o.model = buildSasPortalDeviceModel();
    o.state = "foo";
    o.updateTime = "foo";
    o.userId = "foo";
  }
  buildCounterSasPortalDeviceConfig--;
  return o;
}

checkSasPortalDeviceConfig(api.SasPortalDeviceConfig o) {
  buildCounterSasPortalDeviceConfig++;
  if (buildCounterSasPortalDeviceConfig < 3) {
    checkSasPortalDeviceAirInterface(o.airInterface);
    unittest.expect(o.callSign, unittest.equals('foo'));
    unittest.expect(o.category, unittest.equals('foo'));
    checkSasPortalInstallationParams(o.installationParams);
    unittest.expect(o.isSigned, unittest.isTrue);
    checkUnnamed5665(o.measurementCapabilities);
    checkSasPortalDeviceModel(o.model);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterSasPortalDeviceConfig--;
}

buildUnnamed5666() {
  var o = new core.List<api.SasPortalDpaMoveList>();
  o.add(buildSasPortalDpaMoveList());
  o.add(buildSasPortalDpaMoveList());
  return o;
}

checkUnnamed5666(core.List<api.SasPortalDpaMoveList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalDpaMoveList(o[0]);
  checkSasPortalDpaMoveList(o[1]);
}

buildUnnamed5667() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5667(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSasPortalDeviceGrant = 0;
buildSasPortalDeviceGrant() {
  var o = new api.SasPortalDeviceGrant();
  buildCounterSasPortalDeviceGrant++;
  if (buildCounterSasPortalDeviceGrant < 3) {
    o.channelType = "foo";
    o.expireTime = "foo";
    o.frequencyRange = buildSasPortalFrequencyRange();
    o.maxEirp = 42.0;
    o.moveList = buildUnnamed5666();
    o.state = "foo";
    o.suspensionReason = buildUnnamed5667();
  }
  buildCounterSasPortalDeviceGrant--;
  return o;
}

checkSasPortalDeviceGrant(api.SasPortalDeviceGrant o) {
  buildCounterSasPortalDeviceGrant++;
  if (buildCounterSasPortalDeviceGrant < 3) {
    unittest.expect(o.channelType, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
    checkSasPortalFrequencyRange(o.frequencyRange);
    unittest.expect(o.maxEirp, unittest.equals(42.0));
    checkUnnamed5666(o.moveList);
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed5667(o.suspensionReason);
  }
  buildCounterSasPortalDeviceGrant--;
}

core.int buildCounterSasPortalDeviceModel = 0;
buildSasPortalDeviceModel() {
  var o = new api.SasPortalDeviceModel();
  buildCounterSasPortalDeviceModel++;
  if (buildCounterSasPortalDeviceModel < 3) {
    o.firmwareVersion = "foo";
    o.hardwareVersion = "foo";
    o.name = "foo";
    o.softwareVersion = "foo";
    o.vendor = "foo";
  }
  buildCounterSasPortalDeviceModel--;
  return o;
}

checkSasPortalDeviceModel(api.SasPortalDeviceModel o) {
  buildCounterSasPortalDeviceModel++;
  if (buildCounterSasPortalDeviceModel < 3) {
    unittest.expect(o.firmwareVersion, unittest.equals('foo'));
    unittest.expect(o.hardwareVersion, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.softwareVersion, unittest.equals('foo'));
    unittest.expect(o.vendor, unittest.equals('foo'));
  }
  buildCounterSasPortalDeviceModel--;
}

core.int buildCounterSasPortalDpaMoveList = 0;
buildSasPortalDpaMoveList() {
  var o = new api.SasPortalDpaMoveList();
  buildCounterSasPortalDpaMoveList++;
  if (buildCounterSasPortalDpaMoveList < 3) {
    o.dpaId = "foo";
    o.frequencyRange = buildSasPortalFrequencyRange();
  }
  buildCounterSasPortalDpaMoveList--;
  return o;
}

checkSasPortalDpaMoveList(api.SasPortalDpaMoveList o) {
  buildCounterSasPortalDpaMoveList++;
  if (buildCounterSasPortalDpaMoveList < 3) {
    unittest.expect(o.dpaId, unittest.equals('foo'));
    checkSasPortalFrequencyRange(o.frequencyRange);
  }
  buildCounterSasPortalDpaMoveList--;
}

core.int buildCounterSasPortalEmpty = 0;
buildSasPortalEmpty() {
  var o = new api.SasPortalEmpty();
  buildCounterSasPortalEmpty++;
  if (buildCounterSasPortalEmpty < 3) {}
  buildCounterSasPortalEmpty--;
  return o;
}

checkSasPortalEmpty(api.SasPortalEmpty o) {
  buildCounterSasPortalEmpty++;
  if (buildCounterSasPortalEmpty < 3) {}
  buildCounterSasPortalEmpty--;
}

core.int buildCounterSasPortalFrequencyRange = 0;
buildSasPortalFrequencyRange() {
  var o = new api.SasPortalFrequencyRange();
  buildCounterSasPortalFrequencyRange++;
  if (buildCounterSasPortalFrequencyRange < 3) {
    o.highFrequencyMhz = 42.0;
    o.lowFrequencyMhz = 42.0;
  }
  buildCounterSasPortalFrequencyRange--;
  return o;
}

checkSasPortalFrequencyRange(api.SasPortalFrequencyRange o) {
  buildCounterSasPortalFrequencyRange++;
  if (buildCounterSasPortalFrequencyRange < 3) {
    unittest.expect(o.highFrequencyMhz, unittest.equals(42.0));
    unittest.expect(o.lowFrequencyMhz, unittest.equals(42.0));
  }
  buildCounterSasPortalFrequencyRange--;
}

core.int buildCounterSasPortalGenerateSecretRequest = 0;
buildSasPortalGenerateSecretRequest() {
  var o = new api.SasPortalGenerateSecretRequest();
  buildCounterSasPortalGenerateSecretRequest++;
  if (buildCounterSasPortalGenerateSecretRequest < 3) {}
  buildCounterSasPortalGenerateSecretRequest--;
  return o;
}

checkSasPortalGenerateSecretRequest(api.SasPortalGenerateSecretRequest o) {
  buildCounterSasPortalGenerateSecretRequest++;
  if (buildCounterSasPortalGenerateSecretRequest < 3) {}
  buildCounterSasPortalGenerateSecretRequest--;
}

core.int buildCounterSasPortalGenerateSecretResponse = 0;
buildSasPortalGenerateSecretResponse() {
  var o = new api.SasPortalGenerateSecretResponse();
  buildCounterSasPortalGenerateSecretResponse++;
  if (buildCounterSasPortalGenerateSecretResponse < 3) {
    o.secret = "foo";
  }
  buildCounterSasPortalGenerateSecretResponse--;
  return o;
}

checkSasPortalGenerateSecretResponse(api.SasPortalGenerateSecretResponse o) {
  buildCounterSasPortalGenerateSecretResponse++;
  if (buildCounterSasPortalGenerateSecretResponse < 3) {
    unittest.expect(o.secret, unittest.equals('foo'));
  }
  buildCounterSasPortalGenerateSecretResponse--;
}

core.int buildCounterSasPortalGetPolicyRequest = 0;
buildSasPortalGetPolicyRequest() {
  var o = new api.SasPortalGetPolicyRequest();
  buildCounterSasPortalGetPolicyRequest++;
  if (buildCounterSasPortalGetPolicyRequest < 3) {
    o.resource = "foo";
  }
  buildCounterSasPortalGetPolicyRequest--;
  return o;
}

checkSasPortalGetPolicyRequest(api.SasPortalGetPolicyRequest o) {
  buildCounterSasPortalGetPolicyRequest++;
  if (buildCounterSasPortalGetPolicyRequest < 3) {
    unittest.expect(o.resource, unittest.equals('foo'));
  }
  buildCounterSasPortalGetPolicyRequest--;
}

core.int buildCounterSasPortalInstallationParams = 0;
buildSasPortalInstallationParams() {
  var o = new api.SasPortalInstallationParams();
  buildCounterSasPortalInstallationParams++;
  if (buildCounterSasPortalInstallationParams < 3) {
    o.antennaAzimuth = 42;
    o.antennaBeamwidth = 42;
    o.antennaDowntilt = 42;
    o.antennaGain = 42;
    o.antennaModel = "foo";
    o.cpeCbsdIndication = true;
    o.eirpCapability = 42;
    o.height = 42.0;
    o.heightType = "foo";
    o.horizontalAccuracy = 42.0;
    o.indoorDeployment = true;
    o.latitude = 42.0;
    o.longitude = 42.0;
    o.verticalAccuracy = 42.0;
  }
  buildCounterSasPortalInstallationParams--;
  return o;
}

checkSasPortalInstallationParams(api.SasPortalInstallationParams o) {
  buildCounterSasPortalInstallationParams++;
  if (buildCounterSasPortalInstallationParams < 3) {
    unittest.expect(o.antennaAzimuth, unittest.equals(42));
    unittest.expect(o.antennaBeamwidth, unittest.equals(42));
    unittest.expect(o.antennaDowntilt, unittest.equals(42));
    unittest.expect(o.antennaGain, unittest.equals(42));
    unittest.expect(o.antennaModel, unittest.equals('foo'));
    unittest.expect(o.cpeCbsdIndication, unittest.isTrue);
    unittest.expect(o.eirpCapability, unittest.equals(42));
    unittest.expect(o.height, unittest.equals(42.0));
    unittest.expect(o.heightType, unittest.equals('foo'));
    unittest.expect(o.horizontalAccuracy, unittest.equals(42.0));
    unittest.expect(o.indoorDeployment, unittest.isTrue);
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
    unittest.expect(o.verticalAccuracy, unittest.equals(42.0));
  }
  buildCounterSasPortalInstallationParams--;
}

buildUnnamed5668() {
  var o = new core.List<api.SasPortalCustomer>();
  o.add(buildSasPortalCustomer());
  o.add(buildSasPortalCustomer());
  return o;
}

checkUnnamed5668(core.List<api.SasPortalCustomer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalCustomer(o[0]);
  checkSasPortalCustomer(o[1]);
}

core.int buildCounterSasPortalListCustomersResponse = 0;
buildSasPortalListCustomersResponse() {
  var o = new api.SasPortalListCustomersResponse();
  buildCounterSasPortalListCustomersResponse++;
  if (buildCounterSasPortalListCustomersResponse < 3) {
    o.customers = buildUnnamed5668();
    o.nextPageToken = "foo";
  }
  buildCounterSasPortalListCustomersResponse--;
  return o;
}

checkSasPortalListCustomersResponse(api.SasPortalListCustomersResponse o) {
  buildCounterSasPortalListCustomersResponse++;
  if (buildCounterSasPortalListCustomersResponse < 3) {
    checkUnnamed5668(o.customers);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSasPortalListCustomersResponse--;
}

buildUnnamed5669() {
  var o = new core.List<api.SasPortalDevice>();
  o.add(buildSasPortalDevice());
  o.add(buildSasPortalDevice());
  return o;
}

checkUnnamed5669(core.List<api.SasPortalDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalDevice(o[0]);
  checkSasPortalDevice(o[1]);
}

core.int buildCounterSasPortalListDevicesResponse = 0;
buildSasPortalListDevicesResponse() {
  var o = new api.SasPortalListDevicesResponse();
  buildCounterSasPortalListDevicesResponse++;
  if (buildCounterSasPortalListDevicesResponse < 3) {
    o.devices = buildUnnamed5669();
    o.nextPageToken = "foo";
  }
  buildCounterSasPortalListDevicesResponse--;
  return o;
}

checkSasPortalListDevicesResponse(api.SasPortalListDevicesResponse o) {
  buildCounterSasPortalListDevicesResponse++;
  if (buildCounterSasPortalListDevicesResponse < 3) {
    checkUnnamed5669(o.devices);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSasPortalListDevicesResponse--;
}

buildUnnamed5670() {
  var o = new core.List<api.SasPortalNode>();
  o.add(buildSasPortalNode());
  o.add(buildSasPortalNode());
  return o;
}

checkUnnamed5670(core.List<api.SasPortalNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalNode(o[0]);
  checkSasPortalNode(o[1]);
}

core.int buildCounterSasPortalListNodesResponse = 0;
buildSasPortalListNodesResponse() {
  var o = new api.SasPortalListNodesResponse();
  buildCounterSasPortalListNodesResponse++;
  if (buildCounterSasPortalListNodesResponse < 3) {
    o.nextPageToken = "foo";
    o.nodes = buildUnnamed5670();
  }
  buildCounterSasPortalListNodesResponse--;
  return o;
}

checkSasPortalListNodesResponse(api.SasPortalListNodesResponse o) {
  buildCounterSasPortalListNodesResponse++;
  if (buildCounterSasPortalListNodesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5670(o.nodes);
  }
  buildCounterSasPortalListNodesResponse--;
}

core.int buildCounterSasPortalMoveDeviceRequest = 0;
buildSasPortalMoveDeviceRequest() {
  var o = new api.SasPortalMoveDeviceRequest();
  buildCounterSasPortalMoveDeviceRequest++;
  if (buildCounterSasPortalMoveDeviceRequest < 3) {
    o.destination = "foo";
  }
  buildCounterSasPortalMoveDeviceRequest--;
  return o;
}

checkSasPortalMoveDeviceRequest(api.SasPortalMoveDeviceRequest o) {
  buildCounterSasPortalMoveDeviceRequest++;
  if (buildCounterSasPortalMoveDeviceRequest < 3) {
    unittest.expect(o.destination, unittest.equals('foo'));
  }
  buildCounterSasPortalMoveDeviceRequest--;
}

core.int buildCounterSasPortalMoveNodeRequest = 0;
buildSasPortalMoveNodeRequest() {
  var o = new api.SasPortalMoveNodeRequest();
  buildCounterSasPortalMoveNodeRequest++;
  if (buildCounterSasPortalMoveNodeRequest < 3) {
    o.destination = "foo";
  }
  buildCounterSasPortalMoveNodeRequest--;
  return o;
}

checkSasPortalMoveNodeRequest(api.SasPortalMoveNodeRequest o) {
  buildCounterSasPortalMoveNodeRequest++;
  if (buildCounterSasPortalMoveNodeRequest < 3) {
    unittest.expect(o.destination, unittest.equals('foo'));
  }
  buildCounterSasPortalMoveNodeRequest--;
}

buildUnnamed5671() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5671(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSasPortalNode = 0;
buildSasPortalNode() {
  var o = new api.SasPortalNode();
  buildCounterSasPortalNode++;
  if (buildCounterSasPortalNode < 3) {
    o.displayName = "foo";
    o.name = "foo";
    o.sasUserIds = buildUnnamed5671();
  }
  buildCounterSasPortalNode--;
  return o;
}

checkSasPortalNode(api.SasPortalNode o) {
  buildCounterSasPortalNode++;
  if (buildCounterSasPortalNode < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5671(o.sasUserIds);
  }
  buildCounterSasPortalNode--;
}

buildUnnamed5672() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed5672(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed5673() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed5673(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o["y"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

core.int buildCounterSasPortalOperation = 0;
buildSasPortalOperation() {
  var o = new api.SasPortalOperation();
  buildCounterSasPortalOperation++;
  if (buildCounterSasPortalOperation < 3) {
    o.done = true;
    o.error = buildSasPortalStatus();
    o.metadata = buildUnnamed5672();
    o.name = "foo";
    o.response = buildUnnamed5673();
  }
  buildCounterSasPortalOperation--;
  return o;
}

checkSasPortalOperation(api.SasPortalOperation o) {
  buildCounterSasPortalOperation++;
  if (buildCounterSasPortalOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkSasPortalStatus(o.error);
    checkUnnamed5672(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5673(o.response);
  }
  buildCounterSasPortalOperation--;
}

buildUnnamed5674() {
  var o = new core.List<api.SasPortalAssignment>();
  o.add(buildSasPortalAssignment());
  o.add(buildSasPortalAssignment());
  return o;
}

checkUnnamed5674(core.List<api.SasPortalAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalAssignment(o[0]);
  checkSasPortalAssignment(o[1]);
}

core.int buildCounterSasPortalPolicy = 0;
buildSasPortalPolicy() {
  var o = new api.SasPortalPolicy();
  buildCounterSasPortalPolicy++;
  if (buildCounterSasPortalPolicy < 3) {
    o.assignments = buildUnnamed5674();
    o.etag = "foo";
  }
  buildCounterSasPortalPolicy--;
  return o;
}

checkSasPortalPolicy(api.SasPortalPolicy o) {
  buildCounterSasPortalPolicy++;
  if (buildCounterSasPortalPolicy < 3) {
    checkUnnamed5674(o.assignments);
    unittest.expect(o.etag, unittest.equals('foo'));
  }
  buildCounterSasPortalPolicy--;
}

core.int buildCounterSasPortalSetPolicyRequest = 0;
buildSasPortalSetPolicyRequest() {
  var o = new api.SasPortalSetPolicyRequest();
  buildCounterSasPortalSetPolicyRequest++;
  if (buildCounterSasPortalSetPolicyRequest < 3) {
    o.policy = buildSasPortalPolicy();
    o.resource = "foo";
  }
  buildCounterSasPortalSetPolicyRequest--;
  return o;
}

checkSasPortalSetPolicyRequest(api.SasPortalSetPolicyRequest o) {
  buildCounterSasPortalSetPolicyRequest++;
  if (buildCounterSasPortalSetPolicyRequest < 3) {
    checkSasPortalPolicy(o.policy);
    unittest.expect(o.resource, unittest.equals('foo'));
  }
  buildCounterSasPortalSetPolicyRequest--;
}

core.int buildCounterSasPortalSignDeviceRequest = 0;
buildSasPortalSignDeviceRequest() {
  var o = new api.SasPortalSignDeviceRequest();
  buildCounterSasPortalSignDeviceRequest++;
  if (buildCounterSasPortalSignDeviceRequest < 3) {
    o.device = buildSasPortalDevice();
  }
  buildCounterSasPortalSignDeviceRequest--;
  return o;
}

checkSasPortalSignDeviceRequest(api.SasPortalSignDeviceRequest o) {
  buildCounterSasPortalSignDeviceRequest++;
  if (buildCounterSasPortalSignDeviceRequest < 3) {
    checkSasPortalDevice(o.device);
  }
  buildCounterSasPortalSignDeviceRequest--;
}

buildUnnamed5675() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed5675(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o["y"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

buildUnnamed5676() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed5675());
  o.add(buildUnnamed5675());
  return o;
}

checkUnnamed5676(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5675(o[0]);
  checkUnnamed5675(o[1]);
}

core.int buildCounterSasPortalStatus = 0;
buildSasPortalStatus() {
  var o = new api.SasPortalStatus();
  buildCounterSasPortalStatus++;
  if (buildCounterSasPortalStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5676();
    o.message = "foo";
  }
  buildCounterSasPortalStatus--;
  return o;
}

checkSasPortalStatus(api.SasPortalStatus o) {
  buildCounterSasPortalStatus++;
  if (buildCounterSasPortalStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed5676(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterSasPortalStatus--;
}

buildUnnamed5677() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5677(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSasPortalTestPermissionsRequest = 0;
buildSasPortalTestPermissionsRequest() {
  var o = new api.SasPortalTestPermissionsRequest();
  buildCounterSasPortalTestPermissionsRequest++;
  if (buildCounterSasPortalTestPermissionsRequest < 3) {
    o.permissions = buildUnnamed5677();
    o.resource = "foo";
  }
  buildCounterSasPortalTestPermissionsRequest--;
  return o;
}

checkSasPortalTestPermissionsRequest(api.SasPortalTestPermissionsRequest o) {
  buildCounterSasPortalTestPermissionsRequest++;
  if (buildCounterSasPortalTestPermissionsRequest < 3) {
    checkUnnamed5677(o.permissions);
    unittest.expect(o.resource, unittest.equals('foo'));
  }
  buildCounterSasPortalTestPermissionsRequest--;
}

buildUnnamed5678() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5678(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSasPortalTestPermissionsResponse = 0;
buildSasPortalTestPermissionsResponse() {
  var o = new api.SasPortalTestPermissionsResponse();
  buildCounterSasPortalTestPermissionsResponse++;
  if (buildCounterSasPortalTestPermissionsResponse < 3) {
    o.permissions = buildUnnamed5678();
  }
  buildCounterSasPortalTestPermissionsResponse--;
  return o;
}

checkSasPortalTestPermissionsResponse(api.SasPortalTestPermissionsResponse o) {
  buildCounterSasPortalTestPermissionsResponse++;
  if (buildCounterSasPortalTestPermissionsResponse < 3) {
    checkUnnamed5678(o.permissions);
  }
  buildCounterSasPortalTestPermissionsResponse--;
}

core.int buildCounterSasPortalUpdateSignedDeviceRequest = 0;
buildSasPortalUpdateSignedDeviceRequest() {
  var o = new api.SasPortalUpdateSignedDeviceRequest();
  buildCounterSasPortalUpdateSignedDeviceRequest++;
  if (buildCounterSasPortalUpdateSignedDeviceRequest < 3) {
    o.encodedDevice = "foo";
    o.installerId = "foo";
  }
  buildCounterSasPortalUpdateSignedDeviceRequest--;
  return o;
}

checkSasPortalUpdateSignedDeviceRequest(
    api.SasPortalUpdateSignedDeviceRequest o) {
  buildCounterSasPortalUpdateSignedDeviceRequest++;
  if (buildCounterSasPortalUpdateSignedDeviceRequest < 3) {
    unittest.expect(o.encodedDevice, unittest.equals('foo'));
    unittest.expect(o.installerId, unittest.equals('foo'));
  }
  buildCounterSasPortalUpdateSignedDeviceRequest--;
}

core.int buildCounterSasPortalValidateInstallerRequest = 0;
buildSasPortalValidateInstallerRequest() {
  var o = new api.SasPortalValidateInstallerRequest();
  buildCounterSasPortalValidateInstallerRequest++;
  if (buildCounterSasPortalValidateInstallerRequest < 3) {
    o.encodedSecret = "foo";
    o.installerId = "foo";
    o.secret = "foo";
  }
  buildCounterSasPortalValidateInstallerRequest--;
  return o;
}

checkSasPortalValidateInstallerRequest(
    api.SasPortalValidateInstallerRequest o) {
  buildCounterSasPortalValidateInstallerRequest++;
  if (buildCounterSasPortalValidateInstallerRequest < 3) {
    unittest.expect(o.encodedSecret, unittest.equals('foo'));
    unittest.expect(o.installerId, unittest.equals('foo'));
    unittest.expect(o.secret, unittest.equals('foo'));
  }
  buildCounterSasPortalValidateInstallerRequest--;
}

core.int buildCounterSasPortalValidateInstallerResponse = 0;
buildSasPortalValidateInstallerResponse() {
  var o = new api.SasPortalValidateInstallerResponse();
  buildCounterSasPortalValidateInstallerResponse++;
  if (buildCounterSasPortalValidateInstallerResponse < 3) {}
  buildCounterSasPortalValidateInstallerResponse--;
  return o;
}

checkSasPortalValidateInstallerResponse(
    api.SasPortalValidateInstallerResponse o) {
  buildCounterSasPortalValidateInstallerResponse++;
  if (buildCounterSasPortalValidateInstallerResponse < 3) {}
  buildCounterSasPortalValidateInstallerResponse--;
}

main() {
  unittest.group("obj-schema-SasPortalAssignment", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalAssignment();
      var od = new api.SasPortalAssignment.fromJson(o.toJson());
      checkSasPortalAssignment(od);
    });
  });

  unittest.group("obj-schema-SasPortalBulkCreateDeviceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalBulkCreateDeviceRequest();
      var od = new api.SasPortalBulkCreateDeviceRequest.fromJson(o.toJson());
      checkSasPortalBulkCreateDeviceRequest(od);
    });
  });

  unittest.group("obj-schema-SasPortalBulkCreateDeviceResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalBulkCreateDeviceResponse();
      var od = new api.SasPortalBulkCreateDeviceResponse.fromJson(o.toJson());
      checkSasPortalBulkCreateDeviceResponse(od);
    });
  });

  unittest.group("obj-schema-SasPortalCreateSignedDeviceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalCreateSignedDeviceRequest();
      var od = new api.SasPortalCreateSignedDeviceRequest.fromJson(o.toJson());
      checkSasPortalCreateSignedDeviceRequest(od);
    });
  });

  unittest.group("obj-schema-SasPortalCustomer", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalCustomer();
      var od = new api.SasPortalCustomer.fromJson(o.toJson());
      checkSasPortalCustomer(od);
    });
  });

  unittest.group("obj-schema-SasPortalDevice", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalDevice();
      var od = new api.SasPortalDevice.fromJson(o.toJson());
      checkSasPortalDevice(od);
    });
  });

  unittest.group("obj-schema-SasPortalDeviceAirInterface", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalDeviceAirInterface();
      var od = new api.SasPortalDeviceAirInterface.fromJson(o.toJson());
      checkSasPortalDeviceAirInterface(od);
    });
  });

  unittest.group("obj-schema-SasPortalDeviceConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalDeviceConfig();
      var od = new api.SasPortalDeviceConfig.fromJson(o.toJson());
      checkSasPortalDeviceConfig(od);
    });
  });

  unittest.group("obj-schema-SasPortalDeviceGrant", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalDeviceGrant();
      var od = new api.SasPortalDeviceGrant.fromJson(o.toJson());
      checkSasPortalDeviceGrant(od);
    });
  });

  unittest.group("obj-schema-SasPortalDeviceModel", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalDeviceModel();
      var od = new api.SasPortalDeviceModel.fromJson(o.toJson());
      checkSasPortalDeviceModel(od);
    });
  });

  unittest.group("obj-schema-SasPortalDpaMoveList", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalDpaMoveList();
      var od = new api.SasPortalDpaMoveList.fromJson(o.toJson());
      checkSasPortalDpaMoveList(od);
    });
  });

  unittest.group("obj-schema-SasPortalEmpty", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalEmpty();
      var od = new api.SasPortalEmpty.fromJson(o.toJson());
      checkSasPortalEmpty(od);
    });
  });

  unittest.group("obj-schema-SasPortalFrequencyRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalFrequencyRange();
      var od = new api.SasPortalFrequencyRange.fromJson(o.toJson());
      checkSasPortalFrequencyRange(od);
    });
  });

  unittest.group("obj-schema-SasPortalGenerateSecretRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalGenerateSecretRequest();
      var od = new api.SasPortalGenerateSecretRequest.fromJson(o.toJson());
      checkSasPortalGenerateSecretRequest(od);
    });
  });

  unittest.group("obj-schema-SasPortalGenerateSecretResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalGenerateSecretResponse();
      var od = new api.SasPortalGenerateSecretResponse.fromJson(o.toJson());
      checkSasPortalGenerateSecretResponse(od);
    });
  });

  unittest.group("obj-schema-SasPortalGetPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalGetPolicyRequest();
      var od = new api.SasPortalGetPolicyRequest.fromJson(o.toJson());
      checkSasPortalGetPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-SasPortalInstallationParams", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalInstallationParams();
      var od = new api.SasPortalInstallationParams.fromJson(o.toJson());
      checkSasPortalInstallationParams(od);
    });
  });

  unittest.group("obj-schema-SasPortalListCustomersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalListCustomersResponse();
      var od = new api.SasPortalListCustomersResponse.fromJson(o.toJson());
      checkSasPortalListCustomersResponse(od);
    });
  });

  unittest.group("obj-schema-SasPortalListDevicesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalListDevicesResponse();
      var od = new api.SasPortalListDevicesResponse.fromJson(o.toJson());
      checkSasPortalListDevicesResponse(od);
    });
  });

  unittest.group("obj-schema-SasPortalListNodesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalListNodesResponse();
      var od = new api.SasPortalListNodesResponse.fromJson(o.toJson());
      checkSasPortalListNodesResponse(od);
    });
  });

  unittest.group("obj-schema-SasPortalMoveDeviceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalMoveDeviceRequest();
      var od = new api.SasPortalMoveDeviceRequest.fromJson(o.toJson());
      checkSasPortalMoveDeviceRequest(od);
    });
  });

  unittest.group("obj-schema-SasPortalMoveNodeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalMoveNodeRequest();
      var od = new api.SasPortalMoveNodeRequest.fromJson(o.toJson());
      checkSasPortalMoveNodeRequest(od);
    });
  });

  unittest.group("obj-schema-SasPortalNode", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalNode();
      var od = new api.SasPortalNode.fromJson(o.toJson());
      checkSasPortalNode(od);
    });
  });

  unittest.group("obj-schema-SasPortalOperation", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalOperation();
      var od = new api.SasPortalOperation.fromJson(o.toJson());
      checkSasPortalOperation(od);
    });
  });

  unittest.group("obj-schema-SasPortalPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalPolicy();
      var od = new api.SasPortalPolicy.fromJson(o.toJson());
      checkSasPortalPolicy(od);
    });
  });

  unittest.group("obj-schema-SasPortalSetPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalSetPolicyRequest();
      var od = new api.SasPortalSetPolicyRequest.fromJson(o.toJson());
      checkSasPortalSetPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-SasPortalSignDeviceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalSignDeviceRequest();
      var od = new api.SasPortalSignDeviceRequest.fromJson(o.toJson());
      checkSasPortalSignDeviceRequest(od);
    });
  });

  unittest.group("obj-schema-SasPortalStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalStatus();
      var od = new api.SasPortalStatus.fromJson(o.toJson());
      checkSasPortalStatus(od);
    });
  });

  unittest.group("obj-schema-SasPortalTestPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalTestPermissionsRequest();
      var od = new api.SasPortalTestPermissionsRequest.fromJson(o.toJson());
      checkSasPortalTestPermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-SasPortalTestPermissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalTestPermissionsResponse();
      var od = new api.SasPortalTestPermissionsResponse.fromJson(o.toJson());
      checkSasPortalTestPermissionsResponse(od);
    });
  });

  unittest.group("obj-schema-SasPortalUpdateSignedDeviceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalUpdateSignedDeviceRequest();
      var od = new api.SasPortalUpdateSignedDeviceRequest.fromJson(o.toJson());
      checkSasPortalUpdateSignedDeviceRequest(od);
    });
  });

  unittest.group("obj-schema-SasPortalValidateInstallerRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalValidateInstallerRequest();
      var od = new api.SasPortalValidateInstallerRequest.fromJson(o.toJson());
      checkSasPortalValidateInstallerRequest(od);
    });
  });

  unittest.group("obj-schema-SasPortalValidateInstallerResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSasPortalValidateInstallerResponse();
      var od = new api.SasPortalValidateInstallerResponse.fromJson(o.toJson());
      checkSasPortalValidateInstallerResponse(od);
    });
  });

  unittest.group("resource-CustomersResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.CustomersResourceApi res = new api.ProdTtSasportalApi(mock).customers;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalCustomer());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalCustomer(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CustomersResourceApi res = new api.ProdTtSasportalApi(mock).customers;
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1alpha1/customers"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalListCustomersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListCustomersResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.CustomersResourceApi res = new api.ProdTtSasportalApi(mock).customers;
      var arg_request = buildSasPortalCustomer();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalCustomer.fromJson(json);
        checkSasPortalCustomer(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalCustomer());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalCustomer(response);
      })));
    });
  });

  unittest.group("resource-CustomersDevicesResourceApi", () {
    unittest.test("method--bulk", () {
      var mock = new HttpServerMock();
      api.CustomersDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).customers.devices;
      var arg_request = buildSasPortalBulkCreateDeviceRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalBulkCreateDeviceRequest.fromJson(json);
        checkSasPortalBulkCreateDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildSasPortalBulkCreateDeviceResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .bulk(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalBulkCreateDeviceResponse(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.CustomersDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).customers.devices;
      var arg_request = buildSasPortalDevice();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalDevice.fromJson(json);
        checkSasPortalDevice(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test("method--createSigned", () {
      var mock = new HttpServerMock();
      api.CustomersDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).customers.devices;
      var arg_request = buildSasPortalCreateSignedDeviceRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalCreateSignedDeviceRequest.fromJson(json);
        checkSasPortalCreateSignedDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createSigned(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.CustomersDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).customers.devices;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.CustomersDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).customers.devices;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CustomersDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).customers.devices;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_filter = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalListDevicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              filter: arg_filter,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListDevicesResponse(response);
      })));
    });

    unittest.test("method--move", () {
      var mock = new HttpServerMock();
      api.CustomersDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).customers.devices;
      var arg_request = buildSasPortalMoveDeviceRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalMoveDeviceRequest.fromJson(json);
        checkSasPortalMoveDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .move(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalOperation(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.CustomersDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).customers.devices;
      var arg_request = buildSasPortalDevice();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalDevice.fromJson(json);
        checkSasPortalDevice(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test("method--signDevice", () {
      var mock = new HttpServerMock();
      api.CustomersDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).customers.devices;
      var arg_request = buildSasPortalSignDeviceRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalSignDeviceRequest.fromJson(json);
        checkSasPortalSignDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .signDevice(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response);
      })));
    });

    unittest.test("method--updateSigned", () {
      var mock = new HttpServerMock();
      api.CustomersDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).customers.devices;
      var arg_request = buildSasPortalUpdateSignedDeviceRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalUpdateSignedDeviceRequest.fromJson(json);
        checkSasPortalUpdateSignedDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateSigned(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });
  });

  unittest.group("resource-CustomersNodesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.CustomersNodesResourceApi res =
          new api.ProdTtSasportalApi(mock).customers.nodes;
      var arg_request = buildSasPortalNode();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalNode.fromJson(json);
        checkSasPortalNode(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalNode());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.CustomersNodesResourceApi res =
          new api.ProdTtSasportalApi(mock).customers.nodes;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.CustomersNodesResourceApi res =
          new api.ProdTtSasportalApi(mock).customers.nodes;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalNode());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CustomersNodesResourceApi res =
          new api.ProdTtSasportalApi(mock).customers.nodes;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalListNodesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListNodesResponse(response);
      })));
    });

    unittest.test("method--move", () {
      var mock = new HttpServerMock();
      api.CustomersNodesResourceApi res =
          new api.ProdTtSasportalApi(mock).customers.nodes;
      var arg_request = buildSasPortalMoveNodeRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalMoveNodeRequest.fromJson(json);
        checkSasPortalMoveNodeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .move(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalOperation(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.CustomersNodesResourceApi res =
          new api.ProdTtSasportalApi(mock).customers.nodes;
      var arg_request = buildSasPortalNode();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalNode.fromJson(json);
        checkSasPortalNode(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalNode());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response);
      })));
    });
  });

  unittest.group("resource-CustomersNodesNodesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.CustomersNodesNodesResourceApi res =
          new api.ProdTtSasportalApi(mock).customers.nodes.nodes;
      var arg_request = buildSasPortalNode();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalNode.fromJson(json);
        checkSasPortalNode(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalNode());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CustomersNodesNodesResourceApi res =
          new api.ProdTtSasportalApi(mock).customers.nodes.nodes;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalListNodesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListNodesResponse(response);
      })));
    });
  });

  unittest.group("resource-InstallerResourceApi", () {
    unittest.test("method--generateSecret", () {
      var mock = new HttpServerMock();
      api.InstallerResourceApi res = new api.ProdTtSasportalApi(mock).installer;
      var arg_request = buildSasPortalGenerateSecretRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalGenerateSecretRequest.fromJson(json);
        checkSasPortalGenerateSecretRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("v1alpha1/installer:generateSecret"));
        pathOffset += 33;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalGenerateSecretResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateSecret(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalGenerateSecretResponse(response);
      })));
    });

    unittest.test("method--validate", () {
      var mock = new HttpServerMock();
      api.InstallerResourceApi res = new api.ProdTtSasportalApi(mock).installer;
      var arg_request = buildSasPortalValidateInstallerRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalValidateInstallerRequest.fromJson(json);
        checkSasPortalValidateInstallerRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 27),
            unittest.equals("v1alpha1/installer:validate"));
        pathOffset += 27;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildSasPortalValidateInstallerResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .validate(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalValidateInstallerResponse(response);
      })));
    });
  });

  unittest.group("resource-NodesDevicesResourceApi", () {
    unittest.test("method--bulk", () {
      var mock = new HttpServerMock();
      api.NodesDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).nodes.devices;
      var arg_request = buildSasPortalBulkCreateDeviceRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalBulkCreateDeviceRequest.fromJson(json);
        checkSasPortalBulkCreateDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildSasPortalBulkCreateDeviceResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .bulk(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalBulkCreateDeviceResponse(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.NodesDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).nodes.devices;
      var arg_request = buildSasPortalDevice();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalDevice.fromJson(json);
        checkSasPortalDevice(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test("method--createSigned", () {
      var mock = new HttpServerMock();
      api.NodesDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).nodes.devices;
      var arg_request = buildSasPortalCreateSignedDeviceRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalCreateSignedDeviceRequest.fromJson(json);
        checkSasPortalCreateSignedDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createSigned(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.NodesDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).nodes.devices;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.NodesDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).nodes.devices;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.NodesDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).nodes.devices;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalListDevicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListDevicesResponse(response);
      })));
    });

    unittest.test("method--move", () {
      var mock = new HttpServerMock();
      api.NodesDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).nodes.devices;
      var arg_request = buildSasPortalMoveDeviceRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalMoveDeviceRequest.fromJson(json);
        checkSasPortalMoveDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .move(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalOperation(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.NodesDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).nodes.devices;
      var arg_request = buildSasPortalDevice();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalDevice.fromJson(json);
        checkSasPortalDevice(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test("method--signDevice", () {
      var mock = new HttpServerMock();
      api.NodesDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).nodes.devices;
      var arg_request = buildSasPortalSignDeviceRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalSignDeviceRequest.fromJson(json);
        checkSasPortalSignDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .signDevice(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response);
      })));
    });

    unittest.test("method--updateSigned", () {
      var mock = new HttpServerMock();
      api.NodesDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).nodes.devices;
      var arg_request = buildSasPortalUpdateSignedDeviceRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalUpdateSignedDeviceRequest.fromJson(json);
        checkSasPortalUpdateSignedDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateSigned(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });
  });

  unittest.group("resource-NodesNodesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.NodesNodesResourceApi res =
          new api.ProdTtSasportalApi(mock).nodes.nodes;
      var arg_request = buildSasPortalNode();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalNode.fromJson(json);
        checkSasPortalNode(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalNode());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.NodesNodesResourceApi res =
          new api.ProdTtSasportalApi(mock).nodes.nodes;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.NodesNodesResourceApi res =
          new api.ProdTtSasportalApi(mock).nodes.nodes;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalNode());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.NodesNodesResourceApi res =
          new api.ProdTtSasportalApi(mock).nodes.nodes;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalListNodesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListNodesResponse(response);
      })));
    });

    unittest.test("method--move", () {
      var mock = new HttpServerMock();
      api.NodesNodesResourceApi res =
          new api.ProdTtSasportalApi(mock).nodes.nodes;
      var arg_request = buildSasPortalMoveNodeRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalMoveNodeRequest.fromJson(json);
        checkSasPortalMoveNodeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .move(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalOperation(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.NodesNodesResourceApi res =
          new api.ProdTtSasportalApi(mock).nodes.nodes;
      var arg_request = buildSasPortalNode();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalNode.fromJson(json);
        checkSasPortalNode(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalNode());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response);
      })));
    });
  });

  unittest.group("resource-NodesNodesDevicesResourceApi", () {
    unittest.test("method--bulk", () {
      var mock = new HttpServerMock();
      api.NodesNodesDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).nodes.nodes.devices;
      var arg_request = buildSasPortalBulkCreateDeviceRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalBulkCreateDeviceRequest.fromJson(json);
        checkSasPortalBulkCreateDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildSasPortalBulkCreateDeviceResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .bulk(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalBulkCreateDeviceResponse(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.NodesNodesDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).nodes.nodes.devices;
      var arg_request = buildSasPortalDevice();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalDevice.fromJson(json);
        checkSasPortalDevice(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test("method--createSigned", () {
      var mock = new HttpServerMock();
      api.NodesNodesDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).nodes.nodes.devices;
      var arg_request = buildSasPortalCreateSignedDeviceRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalCreateSignedDeviceRequest.fromJson(json);
        checkSasPortalCreateSignedDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createSigned(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.NodesNodesDevicesResourceApi res =
          new api.ProdTtSasportalApi(mock).nodes.nodes.devices;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalListDevicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListDevicesResponse(response);
      })));
    });
  });

  unittest.group("resource-NodesNodesNodesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.NodesNodesNodesResourceApi res =
          new api.ProdTtSasportalApi(mock).nodes.nodes.nodes;
      var arg_request = buildSasPortalNode();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalNode.fromJson(json);
        checkSasPortalNode(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalNode());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.NodesNodesNodesResourceApi res =
          new api.ProdTtSasportalApi(mock).nodes.nodes.nodes;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalListNodesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListNodesResponse(response);
      })));
    });
  });

  unittest.group("resource-PoliciesResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.PoliciesResourceApi res = new api.ProdTtSasportalApi(mock).policies;
      var arg_request = buildSasPortalGetPolicyRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalGetPolicyRequest.fromJson(json);
        checkSasPortalGetPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("v1alpha1/policies:get"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalPolicy(response);
      })));
    });

    unittest.test("method--set", () {
      var mock = new HttpServerMock();
      api.PoliciesResourceApi res = new api.ProdTtSasportalApi(mock).policies;
      var arg_request = buildSasPortalSetPolicyRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalSetPolicyRequest.fromJson(json);
        checkSasPortalSetPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("v1alpha1/policies:set"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .set(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalPolicy(response);
      })));
    });

    unittest.test("method--test", () {
      var mock = new HttpServerMock();
      api.PoliciesResourceApi res = new api.ProdTtSasportalApi(mock).policies;
      var arg_request = buildSasPortalTestPermissionsRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SasPortalTestPermissionsRequest.fromJson(json);
        checkSasPortalTestPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("v1alpha1/policies:test"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSasPortalTestPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .test(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalTestPermissionsResponse(response);
      })));
    });
  });
}
