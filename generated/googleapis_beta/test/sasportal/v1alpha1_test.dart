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
import 'package:googleapis_beta/sasportal/v1alpha1.dart' as api;

import '../test_shared.dart';

core.List<core.String> buildUnnamed7354() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7354(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSasPortalAssignment = 0;
api.SasPortalAssignment buildSasPortalAssignment() {
  var o = api.SasPortalAssignment();
  buildCounterSasPortalAssignment++;
  if (buildCounterSasPortalAssignment < 3) {
    o.members = buildUnnamed7354();
    o.role = 'foo';
  }
  buildCounterSasPortalAssignment--;
  return o;
}

void checkSasPortalAssignment(api.SasPortalAssignment o) {
  buildCounterSasPortalAssignment++;
  if (buildCounterSasPortalAssignment < 3) {
    checkUnnamed7354(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterSasPortalAssignment--;
}

core.int buildCounterSasPortalCreateSignedDeviceRequest = 0;
api.SasPortalCreateSignedDeviceRequest
    buildSasPortalCreateSignedDeviceRequest() {
  var o = api.SasPortalCreateSignedDeviceRequest();
  buildCounterSasPortalCreateSignedDeviceRequest++;
  if (buildCounterSasPortalCreateSignedDeviceRequest < 3) {
    o.encodedDevice = 'foo';
    o.installerId = 'foo';
  }
  buildCounterSasPortalCreateSignedDeviceRequest--;
  return o;
}

void checkSasPortalCreateSignedDeviceRequest(
    api.SasPortalCreateSignedDeviceRequest o) {
  buildCounterSasPortalCreateSignedDeviceRequest++;
  if (buildCounterSasPortalCreateSignedDeviceRequest < 3) {
    unittest.expect(o.encodedDevice, unittest.equals('foo'));
    unittest.expect(o.installerId, unittest.equals('foo'));
  }
  buildCounterSasPortalCreateSignedDeviceRequest--;
}

core.List<core.String> buildUnnamed7355() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7355(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSasPortalCustomer = 0;
api.SasPortalCustomer buildSasPortalCustomer() {
  var o = api.SasPortalCustomer();
  buildCounterSasPortalCustomer++;
  if (buildCounterSasPortalCustomer < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.sasUserIds = buildUnnamed7355();
  }
  buildCounterSasPortalCustomer--;
  return o;
}

void checkSasPortalCustomer(api.SasPortalCustomer o) {
  buildCounterSasPortalCustomer++;
  if (buildCounterSasPortalCustomer < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed7355(o.sasUserIds);
  }
  buildCounterSasPortalCustomer--;
}

core.List<core.String> buildUnnamed7356() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7356(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed7357() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7357(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSasPortalDeployment = 0;
api.SasPortalDeployment buildSasPortalDeployment() {
  var o = api.SasPortalDeployment();
  buildCounterSasPortalDeployment++;
  if (buildCounterSasPortalDeployment < 3) {
    o.allowedBillingModes = buildUnnamed7356();
    o.defaultBillingMode = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.sasUserIds = buildUnnamed7357();
  }
  buildCounterSasPortalDeployment--;
  return o;
}

void checkSasPortalDeployment(api.SasPortalDeployment o) {
  buildCounterSasPortalDeployment++;
  if (buildCounterSasPortalDeployment < 3) {
    checkUnnamed7356(o.allowedBillingModes);
    unittest.expect(o.defaultBillingMode, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed7357(o.sasUserIds);
  }
  buildCounterSasPortalDeployment--;
}

core.List<api.SasPortalDeviceGrant> buildUnnamed7358() {
  var o = <api.SasPortalDeviceGrant>[];
  o.add(buildSasPortalDeviceGrant());
  o.add(buildSasPortalDeviceGrant());
  return o;
}

void checkUnnamed7358(core.List<api.SasPortalDeviceGrant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalDeviceGrant(o[0] as api.SasPortalDeviceGrant);
  checkSasPortalDeviceGrant(o[1] as api.SasPortalDeviceGrant);
}

core.int buildCounterSasPortalDevice = 0;
api.SasPortalDevice buildSasPortalDevice() {
  var o = api.SasPortalDevice();
  buildCounterSasPortalDevice++;
  if (buildCounterSasPortalDevice < 3) {
    o.activeConfig = buildSasPortalDeviceConfig();
    o.deviceMetadata = buildSasPortalDeviceMetadata();
    o.displayName = 'foo';
    o.fccId = 'foo';
    o.grants = buildUnnamed7358();
    o.name = 'foo';
    o.preloadedConfig = buildSasPortalDeviceConfig();
    o.serialNumber = 'foo';
    o.state = 'foo';
  }
  buildCounterSasPortalDevice--;
  return o;
}

void checkSasPortalDevice(api.SasPortalDevice o) {
  buildCounterSasPortalDevice++;
  if (buildCounterSasPortalDevice < 3) {
    checkSasPortalDeviceConfig(o.activeConfig as api.SasPortalDeviceConfig);
    checkSasPortalDeviceMetadata(
        o.deviceMetadata as api.SasPortalDeviceMetadata);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.fccId, unittest.equals('foo'));
    checkUnnamed7358(o.grants);
    unittest.expect(o.name, unittest.equals('foo'));
    checkSasPortalDeviceConfig(o.preloadedConfig as api.SasPortalDeviceConfig);
    unittest.expect(o.serialNumber, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterSasPortalDevice--;
}

core.int buildCounterSasPortalDeviceAirInterface = 0;
api.SasPortalDeviceAirInterface buildSasPortalDeviceAirInterface() {
  var o = api.SasPortalDeviceAirInterface();
  buildCounterSasPortalDeviceAirInterface++;
  if (buildCounterSasPortalDeviceAirInterface < 3) {
    o.radioTechnology = 'foo';
    o.supportedSpec = 'foo';
  }
  buildCounterSasPortalDeviceAirInterface--;
  return o;
}

void checkSasPortalDeviceAirInterface(api.SasPortalDeviceAirInterface o) {
  buildCounterSasPortalDeviceAirInterface++;
  if (buildCounterSasPortalDeviceAirInterface < 3) {
    unittest.expect(o.radioTechnology, unittest.equals('foo'));
    unittest.expect(o.supportedSpec, unittest.equals('foo'));
  }
  buildCounterSasPortalDeviceAirInterface--;
}

core.List<core.String> buildUnnamed7359() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7359(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSasPortalDeviceConfig = 0;
api.SasPortalDeviceConfig buildSasPortalDeviceConfig() {
  var o = api.SasPortalDeviceConfig();
  buildCounterSasPortalDeviceConfig++;
  if (buildCounterSasPortalDeviceConfig < 3) {
    o.airInterface = buildSasPortalDeviceAirInterface();
    o.callSign = 'foo';
    o.category = 'foo';
    o.installationParams = buildSasPortalInstallationParams();
    o.isSigned = true;
    o.measurementCapabilities = buildUnnamed7359();
    o.model = buildSasPortalDeviceModel();
    o.state = 'foo';
    o.updateTime = 'foo';
    o.userId = 'foo';
  }
  buildCounterSasPortalDeviceConfig--;
  return o;
}

void checkSasPortalDeviceConfig(api.SasPortalDeviceConfig o) {
  buildCounterSasPortalDeviceConfig++;
  if (buildCounterSasPortalDeviceConfig < 3) {
    checkSasPortalDeviceAirInterface(
        o.airInterface as api.SasPortalDeviceAirInterface);
    unittest.expect(o.callSign, unittest.equals('foo'));
    unittest.expect(o.category, unittest.equals('foo'));
    checkSasPortalInstallationParams(
        o.installationParams as api.SasPortalInstallationParams);
    unittest.expect(o.isSigned, unittest.isTrue);
    checkUnnamed7359(o.measurementCapabilities);
    checkSasPortalDeviceModel(o.model as api.SasPortalDeviceModel);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterSasPortalDeviceConfig--;
}

core.List<api.SasPortalDpaMoveList> buildUnnamed7360() {
  var o = <api.SasPortalDpaMoveList>[];
  o.add(buildSasPortalDpaMoveList());
  o.add(buildSasPortalDpaMoveList());
  return o;
}

void checkUnnamed7360(core.List<api.SasPortalDpaMoveList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalDpaMoveList(o[0] as api.SasPortalDpaMoveList);
  checkSasPortalDpaMoveList(o[1] as api.SasPortalDpaMoveList);
}

core.List<core.String> buildUnnamed7361() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7361(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSasPortalDeviceGrant = 0;
api.SasPortalDeviceGrant buildSasPortalDeviceGrant() {
  var o = api.SasPortalDeviceGrant();
  buildCounterSasPortalDeviceGrant++;
  if (buildCounterSasPortalDeviceGrant < 3) {
    o.channelType = 'foo';
    o.expireTime = 'foo';
    o.frequencyRange = buildSasPortalFrequencyRange();
    o.grantId = 'foo';
    o.maxEirp = 42.0;
    o.moveList = buildUnnamed7360();
    o.state = 'foo';
    o.suspensionReason = buildUnnamed7361();
  }
  buildCounterSasPortalDeviceGrant--;
  return o;
}

void checkSasPortalDeviceGrant(api.SasPortalDeviceGrant o) {
  buildCounterSasPortalDeviceGrant++;
  if (buildCounterSasPortalDeviceGrant < 3) {
    unittest.expect(o.channelType, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
    checkSasPortalFrequencyRange(
        o.frequencyRange as api.SasPortalFrequencyRange);
    unittest.expect(o.grantId, unittest.equals('foo'));
    unittest.expect(o.maxEirp, unittest.equals(42.0));
    checkUnnamed7360(o.moveList);
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed7361(o.suspensionReason);
  }
  buildCounterSasPortalDeviceGrant--;
}

core.int buildCounterSasPortalDeviceMetadata = 0;
api.SasPortalDeviceMetadata buildSasPortalDeviceMetadata() {
  var o = api.SasPortalDeviceMetadata();
  buildCounterSasPortalDeviceMetadata++;
  if (buildCounterSasPortalDeviceMetadata < 3) {}
  buildCounterSasPortalDeviceMetadata--;
  return o;
}

void checkSasPortalDeviceMetadata(api.SasPortalDeviceMetadata o) {
  buildCounterSasPortalDeviceMetadata++;
  if (buildCounterSasPortalDeviceMetadata < 3) {}
  buildCounterSasPortalDeviceMetadata--;
}

core.int buildCounterSasPortalDeviceModel = 0;
api.SasPortalDeviceModel buildSasPortalDeviceModel() {
  var o = api.SasPortalDeviceModel();
  buildCounterSasPortalDeviceModel++;
  if (buildCounterSasPortalDeviceModel < 3) {
    o.firmwareVersion = 'foo';
    o.hardwareVersion = 'foo';
    o.name = 'foo';
    o.softwareVersion = 'foo';
    o.vendor = 'foo';
  }
  buildCounterSasPortalDeviceModel--;
  return o;
}

void checkSasPortalDeviceModel(api.SasPortalDeviceModel o) {
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
api.SasPortalDpaMoveList buildSasPortalDpaMoveList() {
  var o = api.SasPortalDpaMoveList();
  buildCounterSasPortalDpaMoveList++;
  if (buildCounterSasPortalDpaMoveList < 3) {
    o.dpaId = 'foo';
    o.frequencyRange = buildSasPortalFrequencyRange();
  }
  buildCounterSasPortalDpaMoveList--;
  return o;
}

void checkSasPortalDpaMoveList(api.SasPortalDpaMoveList o) {
  buildCounterSasPortalDpaMoveList++;
  if (buildCounterSasPortalDpaMoveList < 3) {
    unittest.expect(o.dpaId, unittest.equals('foo'));
    checkSasPortalFrequencyRange(
        o.frequencyRange as api.SasPortalFrequencyRange);
  }
  buildCounterSasPortalDpaMoveList--;
}

core.int buildCounterSasPortalEmpty = 0;
api.SasPortalEmpty buildSasPortalEmpty() {
  var o = api.SasPortalEmpty();
  buildCounterSasPortalEmpty++;
  if (buildCounterSasPortalEmpty < 3) {}
  buildCounterSasPortalEmpty--;
  return o;
}

void checkSasPortalEmpty(api.SasPortalEmpty o) {
  buildCounterSasPortalEmpty++;
  if (buildCounterSasPortalEmpty < 3) {}
  buildCounterSasPortalEmpty--;
}

core.int buildCounterSasPortalFrequencyRange = 0;
api.SasPortalFrequencyRange buildSasPortalFrequencyRange() {
  var o = api.SasPortalFrequencyRange();
  buildCounterSasPortalFrequencyRange++;
  if (buildCounterSasPortalFrequencyRange < 3) {
    o.highFrequencyMhz = 42.0;
    o.lowFrequencyMhz = 42.0;
  }
  buildCounterSasPortalFrequencyRange--;
  return o;
}

void checkSasPortalFrequencyRange(api.SasPortalFrequencyRange o) {
  buildCounterSasPortalFrequencyRange++;
  if (buildCounterSasPortalFrequencyRange < 3) {
    unittest.expect(o.highFrequencyMhz, unittest.equals(42.0));
    unittest.expect(o.lowFrequencyMhz, unittest.equals(42.0));
  }
  buildCounterSasPortalFrequencyRange--;
}

core.int buildCounterSasPortalGenerateSecretRequest = 0;
api.SasPortalGenerateSecretRequest buildSasPortalGenerateSecretRequest() {
  var o = api.SasPortalGenerateSecretRequest();
  buildCounterSasPortalGenerateSecretRequest++;
  if (buildCounterSasPortalGenerateSecretRequest < 3) {}
  buildCounterSasPortalGenerateSecretRequest--;
  return o;
}

void checkSasPortalGenerateSecretRequest(api.SasPortalGenerateSecretRequest o) {
  buildCounterSasPortalGenerateSecretRequest++;
  if (buildCounterSasPortalGenerateSecretRequest < 3) {}
  buildCounterSasPortalGenerateSecretRequest--;
}

core.int buildCounterSasPortalGenerateSecretResponse = 0;
api.SasPortalGenerateSecretResponse buildSasPortalGenerateSecretResponse() {
  var o = api.SasPortalGenerateSecretResponse();
  buildCounterSasPortalGenerateSecretResponse++;
  if (buildCounterSasPortalGenerateSecretResponse < 3) {
    o.secret = 'foo';
  }
  buildCounterSasPortalGenerateSecretResponse--;
  return o;
}

void checkSasPortalGenerateSecretResponse(
    api.SasPortalGenerateSecretResponse o) {
  buildCounterSasPortalGenerateSecretResponse++;
  if (buildCounterSasPortalGenerateSecretResponse < 3) {
    unittest.expect(o.secret, unittest.equals('foo'));
  }
  buildCounterSasPortalGenerateSecretResponse--;
}

core.int buildCounterSasPortalGetPolicyRequest = 0;
api.SasPortalGetPolicyRequest buildSasPortalGetPolicyRequest() {
  var o = api.SasPortalGetPolicyRequest();
  buildCounterSasPortalGetPolicyRequest++;
  if (buildCounterSasPortalGetPolicyRequest < 3) {
    o.resource = 'foo';
  }
  buildCounterSasPortalGetPolicyRequest--;
  return o;
}

void checkSasPortalGetPolicyRequest(api.SasPortalGetPolicyRequest o) {
  buildCounterSasPortalGetPolicyRequest++;
  if (buildCounterSasPortalGetPolicyRequest < 3) {
    unittest.expect(o.resource, unittest.equals('foo'));
  }
  buildCounterSasPortalGetPolicyRequest--;
}

core.int buildCounterSasPortalInstallationParams = 0;
api.SasPortalInstallationParams buildSasPortalInstallationParams() {
  var o = api.SasPortalInstallationParams();
  buildCounterSasPortalInstallationParams++;
  if (buildCounterSasPortalInstallationParams < 3) {
    o.antennaAzimuth = 42;
    o.antennaBeamwidth = 42;
    o.antennaDowntilt = 42;
    o.antennaGain = 42;
    o.antennaModel = 'foo';
    o.cpeCbsdIndication = true;
    o.eirpCapability = 42;
    o.height = 42.0;
    o.heightType = 'foo';
    o.horizontalAccuracy = 42.0;
    o.indoorDeployment = true;
    o.latitude = 42.0;
    o.longitude = 42.0;
    o.verticalAccuracy = 42.0;
  }
  buildCounterSasPortalInstallationParams--;
  return o;
}

void checkSasPortalInstallationParams(api.SasPortalInstallationParams o) {
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

core.List<api.SasPortalCustomer> buildUnnamed7362() {
  var o = <api.SasPortalCustomer>[];
  o.add(buildSasPortalCustomer());
  o.add(buildSasPortalCustomer());
  return o;
}

void checkUnnamed7362(core.List<api.SasPortalCustomer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalCustomer(o[0] as api.SasPortalCustomer);
  checkSasPortalCustomer(o[1] as api.SasPortalCustomer);
}

core.int buildCounterSasPortalListCustomersResponse = 0;
api.SasPortalListCustomersResponse buildSasPortalListCustomersResponse() {
  var o = api.SasPortalListCustomersResponse();
  buildCounterSasPortalListCustomersResponse++;
  if (buildCounterSasPortalListCustomersResponse < 3) {
    o.customers = buildUnnamed7362();
    o.nextPageToken = 'foo';
  }
  buildCounterSasPortalListCustomersResponse--;
  return o;
}

void checkSasPortalListCustomersResponse(api.SasPortalListCustomersResponse o) {
  buildCounterSasPortalListCustomersResponse++;
  if (buildCounterSasPortalListCustomersResponse < 3) {
    checkUnnamed7362(o.customers);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSasPortalListCustomersResponse--;
}

core.List<api.SasPortalDeployment> buildUnnamed7363() {
  var o = <api.SasPortalDeployment>[];
  o.add(buildSasPortalDeployment());
  o.add(buildSasPortalDeployment());
  return o;
}

void checkUnnamed7363(core.List<api.SasPortalDeployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalDeployment(o[0] as api.SasPortalDeployment);
  checkSasPortalDeployment(o[1] as api.SasPortalDeployment);
}

core.int buildCounterSasPortalListDeploymentsResponse = 0;
api.SasPortalListDeploymentsResponse buildSasPortalListDeploymentsResponse() {
  var o = api.SasPortalListDeploymentsResponse();
  buildCounterSasPortalListDeploymentsResponse++;
  if (buildCounterSasPortalListDeploymentsResponse < 3) {
    o.deployments = buildUnnamed7363();
    o.nextPageToken = 'foo';
  }
  buildCounterSasPortalListDeploymentsResponse--;
  return o;
}

void checkSasPortalListDeploymentsResponse(
    api.SasPortalListDeploymentsResponse o) {
  buildCounterSasPortalListDeploymentsResponse++;
  if (buildCounterSasPortalListDeploymentsResponse < 3) {
    checkUnnamed7363(o.deployments);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSasPortalListDeploymentsResponse--;
}

core.List<api.SasPortalDevice> buildUnnamed7364() {
  var o = <api.SasPortalDevice>[];
  o.add(buildSasPortalDevice());
  o.add(buildSasPortalDevice());
  return o;
}

void checkUnnamed7364(core.List<api.SasPortalDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalDevice(o[0] as api.SasPortalDevice);
  checkSasPortalDevice(o[1] as api.SasPortalDevice);
}

core.int buildCounterSasPortalListDevicesResponse = 0;
api.SasPortalListDevicesResponse buildSasPortalListDevicesResponse() {
  var o = api.SasPortalListDevicesResponse();
  buildCounterSasPortalListDevicesResponse++;
  if (buildCounterSasPortalListDevicesResponse < 3) {
    o.devices = buildUnnamed7364();
    o.nextPageToken = 'foo';
  }
  buildCounterSasPortalListDevicesResponse--;
  return o;
}

void checkSasPortalListDevicesResponse(api.SasPortalListDevicesResponse o) {
  buildCounterSasPortalListDevicesResponse++;
  if (buildCounterSasPortalListDevicesResponse < 3) {
    checkUnnamed7364(o.devices);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSasPortalListDevicesResponse--;
}

core.List<api.SasPortalNode> buildUnnamed7365() {
  var o = <api.SasPortalNode>[];
  o.add(buildSasPortalNode());
  o.add(buildSasPortalNode());
  return o;
}

void checkUnnamed7365(core.List<api.SasPortalNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalNode(o[0] as api.SasPortalNode);
  checkSasPortalNode(o[1] as api.SasPortalNode);
}

core.int buildCounterSasPortalListNodesResponse = 0;
api.SasPortalListNodesResponse buildSasPortalListNodesResponse() {
  var o = api.SasPortalListNodesResponse();
  buildCounterSasPortalListNodesResponse++;
  if (buildCounterSasPortalListNodesResponse < 3) {
    o.nextPageToken = 'foo';
    o.nodes = buildUnnamed7365();
  }
  buildCounterSasPortalListNodesResponse--;
  return o;
}

void checkSasPortalListNodesResponse(api.SasPortalListNodesResponse o) {
  buildCounterSasPortalListNodesResponse++;
  if (buildCounterSasPortalListNodesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed7365(o.nodes);
  }
  buildCounterSasPortalListNodesResponse--;
}

core.int buildCounterSasPortalMoveDeploymentRequest = 0;
api.SasPortalMoveDeploymentRequest buildSasPortalMoveDeploymentRequest() {
  var o = api.SasPortalMoveDeploymentRequest();
  buildCounterSasPortalMoveDeploymentRequest++;
  if (buildCounterSasPortalMoveDeploymentRequest < 3) {
    o.destination = 'foo';
  }
  buildCounterSasPortalMoveDeploymentRequest--;
  return o;
}

void checkSasPortalMoveDeploymentRequest(api.SasPortalMoveDeploymentRequest o) {
  buildCounterSasPortalMoveDeploymentRequest++;
  if (buildCounterSasPortalMoveDeploymentRequest < 3) {
    unittest.expect(o.destination, unittest.equals('foo'));
  }
  buildCounterSasPortalMoveDeploymentRequest--;
}

core.int buildCounterSasPortalMoveDeviceRequest = 0;
api.SasPortalMoveDeviceRequest buildSasPortalMoveDeviceRequest() {
  var o = api.SasPortalMoveDeviceRequest();
  buildCounterSasPortalMoveDeviceRequest++;
  if (buildCounterSasPortalMoveDeviceRequest < 3) {
    o.destination = 'foo';
  }
  buildCounterSasPortalMoveDeviceRequest--;
  return o;
}

void checkSasPortalMoveDeviceRequest(api.SasPortalMoveDeviceRequest o) {
  buildCounterSasPortalMoveDeviceRequest++;
  if (buildCounterSasPortalMoveDeviceRequest < 3) {
    unittest.expect(o.destination, unittest.equals('foo'));
  }
  buildCounterSasPortalMoveDeviceRequest--;
}

core.int buildCounterSasPortalMoveNodeRequest = 0;
api.SasPortalMoveNodeRequest buildSasPortalMoveNodeRequest() {
  var o = api.SasPortalMoveNodeRequest();
  buildCounterSasPortalMoveNodeRequest++;
  if (buildCounterSasPortalMoveNodeRequest < 3) {
    o.destination = 'foo';
  }
  buildCounterSasPortalMoveNodeRequest--;
  return o;
}

void checkSasPortalMoveNodeRequest(api.SasPortalMoveNodeRequest o) {
  buildCounterSasPortalMoveNodeRequest++;
  if (buildCounterSasPortalMoveNodeRequest < 3) {
    unittest.expect(o.destination, unittest.equals('foo'));
  }
  buildCounterSasPortalMoveNodeRequest--;
}

core.List<core.String> buildUnnamed7366() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7366(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSasPortalNode = 0;
api.SasPortalNode buildSasPortalNode() {
  var o = api.SasPortalNode();
  buildCounterSasPortalNode++;
  if (buildCounterSasPortalNode < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.sasUserIds = buildUnnamed7366();
  }
  buildCounterSasPortalNode--;
  return o;
}

void checkSasPortalNode(api.SasPortalNode o) {
  buildCounterSasPortalNode++;
  if (buildCounterSasPortalNode < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed7366(o.sasUserIds);
  }
  buildCounterSasPortalNode--;
}

core.Map<core.String, core.Object> buildUnnamed7367() {
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

void checkUnnamed7367(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed7368() {
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

void checkUnnamed7368(core.Map<core.String, core.Object> o) {
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

core.int buildCounterSasPortalOperation = 0;
api.SasPortalOperation buildSasPortalOperation() {
  var o = api.SasPortalOperation();
  buildCounterSasPortalOperation++;
  if (buildCounterSasPortalOperation < 3) {
    o.done = true;
    o.error = buildSasPortalStatus();
    o.metadata = buildUnnamed7367();
    o.name = 'foo';
    o.response = buildUnnamed7368();
  }
  buildCounterSasPortalOperation--;
  return o;
}

void checkSasPortalOperation(api.SasPortalOperation o) {
  buildCounterSasPortalOperation++;
  if (buildCounterSasPortalOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkSasPortalStatus(o.error as api.SasPortalStatus);
    checkUnnamed7367(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed7368(o.response);
  }
  buildCounterSasPortalOperation--;
}

core.List<api.SasPortalAssignment> buildUnnamed7369() {
  var o = <api.SasPortalAssignment>[];
  o.add(buildSasPortalAssignment());
  o.add(buildSasPortalAssignment());
  return o;
}

void checkUnnamed7369(core.List<api.SasPortalAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalAssignment(o[0] as api.SasPortalAssignment);
  checkSasPortalAssignment(o[1] as api.SasPortalAssignment);
}

core.int buildCounterSasPortalPolicy = 0;
api.SasPortalPolicy buildSasPortalPolicy() {
  var o = api.SasPortalPolicy();
  buildCounterSasPortalPolicy++;
  if (buildCounterSasPortalPolicy < 3) {
    o.assignments = buildUnnamed7369();
    o.etag = 'foo';
  }
  buildCounterSasPortalPolicy--;
  return o;
}

void checkSasPortalPolicy(api.SasPortalPolicy o) {
  buildCounterSasPortalPolicy++;
  if (buildCounterSasPortalPolicy < 3) {
    checkUnnamed7369(o.assignments);
    unittest.expect(o.etag, unittest.equals('foo'));
  }
  buildCounterSasPortalPolicy--;
}

core.int buildCounterSasPortalSetPolicyRequest = 0;
api.SasPortalSetPolicyRequest buildSasPortalSetPolicyRequest() {
  var o = api.SasPortalSetPolicyRequest();
  buildCounterSasPortalSetPolicyRequest++;
  if (buildCounterSasPortalSetPolicyRequest < 3) {
    o.policy = buildSasPortalPolicy();
    o.resource = 'foo';
  }
  buildCounterSasPortalSetPolicyRequest--;
  return o;
}

void checkSasPortalSetPolicyRequest(api.SasPortalSetPolicyRequest o) {
  buildCounterSasPortalSetPolicyRequest++;
  if (buildCounterSasPortalSetPolicyRequest < 3) {
    checkSasPortalPolicy(o.policy as api.SasPortalPolicy);
    unittest.expect(o.resource, unittest.equals('foo'));
  }
  buildCounterSasPortalSetPolicyRequest--;
}

core.int buildCounterSasPortalSignDeviceRequest = 0;
api.SasPortalSignDeviceRequest buildSasPortalSignDeviceRequest() {
  var o = api.SasPortalSignDeviceRequest();
  buildCounterSasPortalSignDeviceRequest++;
  if (buildCounterSasPortalSignDeviceRequest < 3) {
    o.device = buildSasPortalDevice();
  }
  buildCounterSasPortalSignDeviceRequest--;
  return o;
}

void checkSasPortalSignDeviceRequest(api.SasPortalSignDeviceRequest o) {
  buildCounterSasPortalSignDeviceRequest++;
  if (buildCounterSasPortalSignDeviceRequest < 3) {
    checkSasPortalDevice(o.device as api.SasPortalDevice);
  }
  buildCounterSasPortalSignDeviceRequest--;
}

core.Map<core.String, core.Object> buildUnnamed7370() {
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

void checkUnnamed7370(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed7371() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed7370());
  o.add(buildUnnamed7370());
  return o;
}

void checkUnnamed7371(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7370(o[0]);
  checkUnnamed7370(o[1]);
}

core.int buildCounterSasPortalStatus = 0;
api.SasPortalStatus buildSasPortalStatus() {
  var o = api.SasPortalStatus();
  buildCounterSasPortalStatus++;
  if (buildCounterSasPortalStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed7371();
    o.message = 'foo';
  }
  buildCounterSasPortalStatus--;
  return o;
}

void checkSasPortalStatus(api.SasPortalStatus o) {
  buildCounterSasPortalStatus++;
  if (buildCounterSasPortalStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed7371(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterSasPortalStatus--;
}

core.List<core.String> buildUnnamed7372() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7372(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSasPortalTestPermissionsRequest = 0;
api.SasPortalTestPermissionsRequest buildSasPortalTestPermissionsRequest() {
  var o = api.SasPortalTestPermissionsRequest();
  buildCounterSasPortalTestPermissionsRequest++;
  if (buildCounterSasPortalTestPermissionsRequest < 3) {
    o.permissions = buildUnnamed7372();
    o.resource = 'foo';
  }
  buildCounterSasPortalTestPermissionsRequest--;
  return o;
}

void checkSasPortalTestPermissionsRequest(
    api.SasPortalTestPermissionsRequest o) {
  buildCounterSasPortalTestPermissionsRequest++;
  if (buildCounterSasPortalTestPermissionsRequest < 3) {
    checkUnnamed7372(o.permissions);
    unittest.expect(o.resource, unittest.equals('foo'));
  }
  buildCounterSasPortalTestPermissionsRequest--;
}

core.List<core.String> buildUnnamed7373() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7373(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSasPortalTestPermissionsResponse = 0;
api.SasPortalTestPermissionsResponse buildSasPortalTestPermissionsResponse() {
  var o = api.SasPortalTestPermissionsResponse();
  buildCounterSasPortalTestPermissionsResponse++;
  if (buildCounterSasPortalTestPermissionsResponse < 3) {
    o.permissions = buildUnnamed7373();
  }
  buildCounterSasPortalTestPermissionsResponse--;
  return o;
}

void checkSasPortalTestPermissionsResponse(
    api.SasPortalTestPermissionsResponse o) {
  buildCounterSasPortalTestPermissionsResponse++;
  if (buildCounterSasPortalTestPermissionsResponse < 3) {
    checkUnnamed7373(o.permissions);
  }
  buildCounterSasPortalTestPermissionsResponse--;
}

core.int buildCounterSasPortalUpdateSignedDeviceRequest = 0;
api.SasPortalUpdateSignedDeviceRequest
    buildSasPortalUpdateSignedDeviceRequest() {
  var o = api.SasPortalUpdateSignedDeviceRequest();
  buildCounterSasPortalUpdateSignedDeviceRequest++;
  if (buildCounterSasPortalUpdateSignedDeviceRequest < 3) {
    o.encodedDevice = 'foo';
    o.installerId = 'foo';
  }
  buildCounterSasPortalUpdateSignedDeviceRequest--;
  return o;
}

void checkSasPortalUpdateSignedDeviceRequest(
    api.SasPortalUpdateSignedDeviceRequest o) {
  buildCounterSasPortalUpdateSignedDeviceRequest++;
  if (buildCounterSasPortalUpdateSignedDeviceRequest < 3) {
    unittest.expect(o.encodedDevice, unittest.equals('foo'));
    unittest.expect(o.installerId, unittest.equals('foo'));
  }
  buildCounterSasPortalUpdateSignedDeviceRequest--;
}

core.int buildCounterSasPortalValidateInstallerRequest = 0;
api.SasPortalValidateInstallerRequest buildSasPortalValidateInstallerRequest() {
  var o = api.SasPortalValidateInstallerRequest();
  buildCounterSasPortalValidateInstallerRequest++;
  if (buildCounterSasPortalValidateInstallerRequest < 3) {
    o.encodedSecret = 'foo';
    o.installerId = 'foo';
    o.secret = 'foo';
  }
  buildCounterSasPortalValidateInstallerRequest--;
  return o;
}

void checkSasPortalValidateInstallerRequest(
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
api.SasPortalValidateInstallerResponse
    buildSasPortalValidateInstallerResponse() {
  var o = api.SasPortalValidateInstallerResponse();
  buildCounterSasPortalValidateInstallerResponse++;
  if (buildCounterSasPortalValidateInstallerResponse < 3) {}
  buildCounterSasPortalValidateInstallerResponse--;
  return o;
}

void checkSasPortalValidateInstallerResponse(
    api.SasPortalValidateInstallerResponse o) {
  buildCounterSasPortalValidateInstallerResponse++;
  if (buildCounterSasPortalValidateInstallerResponse < 3) {}
  buildCounterSasPortalValidateInstallerResponse--;
}

void main() {
  unittest.group('obj-schema-SasPortalAssignment', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalAssignment();
      var od = api.SasPortalAssignment.fromJson(o.toJson());
      checkSasPortalAssignment(od as api.SasPortalAssignment);
    });
  });

  unittest.group('obj-schema-SasPortalCreateSignedDeviceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalCreateSignedDeviceRequest();
      var od = api.SasPortalCreateSignedDeviceRequest.fromJson(o.toJson());
      checkSasPortalCreateSignedDeviceRequest(
          od as api.SasPortalCreateSignedDeviceRequest);
    });
  });

  unittest.group('obj-schema-SasPortalCustomer', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalCustomer();
      var od = api.SasPortalCustomer.fromJson(o.toJson());
      checkSasPortalCustomer(od as api.SasPortalCustomer);
    });
  });

  unittest.group('obj-schema-SasPortalDeployment', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalDeployment();
      var od = api.SasPortalDeployment.fromJson(o.toJson());
      checkSasPortalDeployment(od as api.SasPortalDeployment);
    });
  });

  unittest.group('obj-schema-SasPortalDevice', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalDevice();
      var od = api.SasPortalDevice.fromJson(o.toJson());
      checkSasPortalDevice(od as api.SasPortalDevice);
    });
  });

  unittest.group('obj-schema-SasPortalDeviceAirInterface', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalDeviceAirInterface();
      var od = api.SasPortalDeviceAirInterface.fromJson(o.toJson());
      checkSasPortalDeviceAirInterface(od as api.SasPortalDeviceAirInterface);
    });
  });

  unittest.group('obj-schema-SasPortalDeviceConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalDeviceConfig();
      var od = api.SasPortalDeviceConfig.fromJson(o.toJson());
      checkSasPortalDeviceConfig(od as api.SasPortalDeviceConfig);
    });
  });

  unittest.group('obj-schema-SasPortalDeviceGrant', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalDeviceGrant();
      var od = api.SasPortalDeviceGrant.fromJson(o.toJson());
      checkSasPortalDeviceGrant(od as api.SasPortalDeviceGrant);
    });
  });

  unittest.group('obj-schema-SasPortalDeviceMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalDeviceMetadata();
      var od = api.SasPortalDeviceMetadata.fromJson(o.toJson());
      checkSasPortalDeviceMetadata(od as api.SasPortalDeviceMetadata);
    });
  });

  unittest.group('obj-schema-SasPortalDeviceModel', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalDeviceModel();
      var od = api.SasPortalDeviceModel.fromJson(o.toJson());
      checkSasPortalDeviceModel(od as api.SasPortalDeviceModel);
    });
  });

  unittest.group('obj-schema-SasPortalDpaMoveList', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalDpaMoveList();
      var od = api.SasPortalDpaMoveList.fromJson(o.toJson());
      checkSasPortalDpaMoveList(od as api.SasPortalDpaMoveList);
    });
  });

  unittest.group('obj-schema-SasPortalEmpty', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalEmpty();
      var od = api.SasPortalEmpty.fromJson(o.toJson());
      checkSasPortalEmpty(od as api.SasPortalEmpty);
    });
  });

  unittest.group('obj-schema-SasPortalFrequencyRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalFrequencyRange();
      var od = api.SasPortalFrequencyRange.fromJson(o.toJson());
      checkSasPortalFrequencyRange(od as api.SasPortalFrequencyRange);
    });
  });

  unittest.group('obj-schema-SasPortalGenerateSecretRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalGenerateSecretRequest();
      var od = api.SasPortalGenerateSecretRequest.fromJson(o.toJson());
      checkSasPortalGenerateSecretRequest(
          od as api.SasPortalGenerateSecretRequest);
    });
  });

  unittest.group('obj-schema-SasPortalGenerateSecretResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalGenerateSecretResponse();
      var od = api.SasPortalGenerateSecretResponse.fromJson(o.toJson());
      checkSasPortalGenerateSecretResponse(
          od as api.SasPortalGenerateSecretResponse);
    });
  });

  unittest.group('obj-schema-SasPortalGetPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalGetPolicyRequest();
      var od = api.SasPortalGetPolicyRequest.fromJson(o.toJson());
      checkSasPortalGetPolicyRequest(od as api.SasPortalGetPolicyRequest);
    });
  });

  unittest.group('obj-schema-SasPortalInstallationParams', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalInstallationParams();
      var od = api.SasPortalInstallationParams.fromJson(o.toJson());
      checkSasPortalInstallationParams(od as api.SasPortalInstallationParams);
    });
  });

  unittest.group('obj-schema-SasPortalListCustomersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalListCustomersResponse();
      var od = api.SasPortalListCustomersResponse.fromJson(o.toJson());
      checkSasPortalListCustomersResponse(
          od as api.SasPortalListCustomersResponse);
    });
  });

  unittest.group('obj-schema-SasPortalListDeploymentsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalListDeploymentsResponse();
      var od = api.SasPortalListDeploymentsResponse.fromJson(o.toJson());
      checkSasPortalListDeploymentsResponse(
          od as api.SasPortalListDeploymentsResponse);
    });
  });

  unittest.group('obj-schema-SasPortalListDevicesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalListDevicesResponse();
      var od = api.SasPortalListDevicesResponse.fromJson(o.toJson());
      checkSasPortalListDevicesResponse(od as api.SasPortalListDevicesResponse);
    });
  });

  unittest.group('obj-schema-SasPortalListNodesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalListNodesResponse();
      var od = api.SasPortalListNodesResponse.fromJson(o.toJson());
      checkSasPortalListNodesResponse(od as api.SasPortalListNodesResponse);
    });
  });

  unittest.group('obj-schema-SasPortalMoveDeploymentRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalMoveDeploymentRequest();
      var od = api.SasPortalMoveDeploymentRequest.fromJson(o.toJson());
      checkSasPortalMoveDeploymentRequest(
          od as api.SasPortalMoveDeploymentRequest);
    });
  });

  unittest.group('obj-schema-SasPortalMoveDeviceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalMoveDeviceRequest();
      var od = api.SasPortalMoveDeviceRequest.fromJson(o.toJson());
      checkSasPortalMoveDeviceRequest(od as api.SasPortalMoveDeviceRequest);
    });
  });

  unittest.group('obj-schema-SasPortalMoveNodeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalMoveNodeRequest();
      var od = api.SasPortalMoveNodeRequest.fromJson(o.toJson());
      checkSasPortalMoveNodeRequest(od as api.SasPortalMoveNodeRequest);
    });
  });

  unittest.group('obj-schema-SasPortalNode', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalNode();
      var od = api.SasPortalNode.fromJson(o.toJson());
      checkSasPortalNode(od as api.SasPortalNode);
    });
  });

  unittest.group('obj-schema-SasPortalOperation', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalOperation();
      var od = api.SasPortalOperation.fromJson(o.toJson());
      checkSasPortalOperation(od as api.SasPortalOperation);
    });
  });

  unittest.group('obj-schema-SasPortalPolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalPolicy();
      var od = api.SasPortalPolicy.fromJson(o.toJson());
      checkSasPortalPolicy(od as api.SasPortalPolicy);
    });
  });

  unittest.group('obj-schema-SasPortalSetPolicyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalSetPolicyRequest();
      var od = api.SasPortalSetPolicyRequest.fromJson(o.toJson());
      checkSasPortalSetPolicyRequest(od as api.SasPortalSetPolicyRequest);
    });
  });

  unittest.group('obj-schema-SasPortalSignDeviceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalSignDeviceRequest();
      var od = api.SasPortalSignDeviceRequest.fromJson(o.toJson());
      checkSasPortalSignDeviceRequest(od as api.SasPortalSignDeviceRequest);
    });
  });

  unittest.group('obj-schema-SasPortalStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalStatus();
      var od = api.SasPortalStatus.fromJson(o.toJson());
      checkSasPortalStatus(od as api.SasPortalStatus);
    });
  });

  unittest.group('obj-schema-SasPortalTestPermissionsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalTestPermissionsRequest();
      var od = api.SasPortalTestPermissionsRequest.fromJson(o.toJson());
      checkSasPortalTestPermissionsRequest(
          od as api.SasPortalTestPermissionsRequest);
    });
  });

  unittest.group('obj-schema-SasPortalTestPermissionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalTestPermissionsResponse();
      var od = api.SasPortalTestPermissionsResponse.fromJson(o.toJson());
      checkSasPortalTestPermissionsResponse(
          od as api.SasPortalTestPermissionsResponse);
    });
  });

  unittest.group('obj-schema-SasPortalUpdateSignedDeviceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalUpdateSignedDeviceRequest();
      var od = api.SasPortalUpdateSignedDeviceRequest.fromJson(o.toJson());
      checkSasPortalUpdateSignedDeviceRequest(
          od as api.SasPortalUpdateSignedDeviceRequest);
    });
  });

  unittest.group('obj-schema-SasPortalValidateInstallerRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalValidateInstallerRequest();
      var od = api.SasPortalValidateInstallerRequest.fromJson(o.toJson());
      checkSasPortalValidateInstallerRequest(
          od as api.SasPortalValidateInstallerRequest);
    });
  });

  unittest.group('obj-schema-SasPortalValidateInstallerResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSasPortalValidateInstallerResponse();
      var od = api.SasPortalValidateInstallerResponse.fromJson(o.toJson());
      checkSasPortalValidateInstallerResponse(
          od as api.SasPortalValidateInstallerResponse);
    });
  });

  unittest.group('resource-CustomersResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalCustomer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalCustomer(response as api.SasPortalCustomer);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1alpha1/customers"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalListCustomersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListCustomersResponse(
            response as api.SasPortalListCustomersResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers;
      var arg_request = buildSasPortalCustomer();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalCustomer.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalCustomer(obj as api.SasPortalCustomer);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalCustomer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalCustomer(response as api.SasPortalCustomer);
      })));
    });
  });

  unittest.group('resource-CustomersDeploymentsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.deployments;
      var arg_request = buildSasPortalDeployment();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDeployment(obj as api.SasPortalDeployment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDeployment(response as api.SasPortalDeployment);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.deployments;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response as api.SasPortalEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.deployments;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDeployment(response as api.SasPortalDeployment);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.deployments;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalListDeploymentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListDeploymentsResponse(
            response as api.SasPortalListDeploymentsResponse);
      })));
    });

    unittest.test('method--move', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.deployments;
      var arg_request = buildSasPortalMoveDeploymentRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalMoveDeploymentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalMoveDeploymentRequest(
            obj as api.SasPortalMoveDeploymentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .move(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalOperation(response as api.SasPortalOperation);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.deployments;
      var arg_request = buildSasPortalDeployment();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDeployment(obj as api.SasPortalDeployment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDeployment(response as api.SasPortalDeployment);
      })));
    });
  });

  unittest.group('resource-CustomersDeploymentsDevicesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.deployments.devices;
      var arg_request = buildSasPortalDevice();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDevice(obj as api.SasPortalDevice);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response as api.SasPortalDevice);
      })));
    });

    unittest.test('method--createSigned', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.deployments.devices;
      var arg_request = buildSasPortalCreateSignedDeviceRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalCreateSignedDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalCreateSignedDeviceRequest(
            obj as api.SasPortalCreateSignedDeviceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createSigned(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response as api.SasPortalDevice);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.deployments.devices;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListDevicesResponse(
            response as api.SasPortalListDevicesResponse);
      })));
    });
  });

  unittest.group('resource-CustomersDevicesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.devices;
      var arg_request = buildSasPortalDevice();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDevice(obj as api.SasPortalDevice);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response as api.SasPortalDevice);
      })));
    });

    unittest.test('method--createSigned', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.devices;
      var arg_request = buildSasPortalCreateSignedDeviceRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalCreateSignedDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalCreateSignedDeviceRequest(
            obj as api.SasPortalCreateSignedDeviceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createSigned(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response as api.SasPortalDevice);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.devices;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response as api.SasPortalEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.devices;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response as api.SasPortalDevice);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.devices;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListDevicesResponse(
            response as api.SasPortalListDevicesResponse);
      })));
    });

    unittest.test('method--move', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.devices;
      var arg_request = buildSasPortalMoveDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalMoveDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalMoveDeviceRequest(obj as api.SasPortalMoveDeviceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .move(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalOperation(response as api.SasPortalOperation);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.devices;
      var arg_request = buildSasPortalDevice();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDevice(obj as api.SasPortalDevice);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response as api.SasPortalDevice);
      })));
    });

    unittest.test('method--signDevice', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.devices;
      var arg_request = buildSasPortalSignDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalSignDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalSignDeviceRequest(obj as api.SasPortalSignDeviceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .signDevice(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response as api.SasPortalEmpty);
      })));
    });

    unittest.test('method--updateSigned', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.devices;
      var arg_request = buildSasPortalUpdateSignedDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalUpdateSignedDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalUpdateSignedDeviceRequest(
            obj as api.SasPortalUpdateSignedDeviceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateSigned(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response as api.SasPortalDevice);
      })));
    });
  });

  unittest.group('resource-CustomersNodesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.nodes;
      var arg_request = buildSasPortalNode();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalNode.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalNode(obj as api.SasPortalNode);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response as api.SasPortalNode);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.nodes;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response as api.SasPortalEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.nodes;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response as api.SasPortalNode);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.nodes;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalListNodesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListNodesResponse(
            response as api.SasPortalListNodesResponse);
      })));
    });

    unittest.test('method--move', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.nodes;
      var arg_request = buildSasPortalMoveNodeRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalMoveNodeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalMoveNodeRequest(obj as api.SasPortalMoveNodeRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .move(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalOperation(response as api.SasPortalOperation);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.nodes;
      var arg_request = buildSasPortalNode();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalNode.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalNode(obj as api.SasPortalNode);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response as api.SasPortalNode);
      })));
    });
  });

  unittest.group('resource-CustomersNodesDeploymentsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.nodes.deployments;
      var arg_request = buildSasPortalDeployment();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDeployment(obj as api.SasPortalDeployment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDeployment(response as api.SasPortalDeployment);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.nodes.deployments;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalListDeploymentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListDeploymentsResponse(
            response as api.SasPortalListDeploymentsResponse);
      })));
    });
  });

  unittest.group('resource-CustomersNodesDevicesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.nodes.devices;
      var arg_request = buildSasPortalDevice();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDevice(obj as api.SasPortalDevice);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response as api.SasPortalDevice);
      })));
    });

    unittest.test('method--createSigned', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.nodes.devices;
      var arg_request = buildSasPortalCreateSignedDeviceRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalCreateSignedDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalCreateSignedDeviceRequest(
            obj as api.SasPortalCreateSignedDeviceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createSigned(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response as api.SasPortalDevice);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.nodes.devices;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListDevicesResponse(
            response as api.SasPortalListDevicesResponse);
      })));
    });
  });

  unittest.group('resource-CustomersNodesNodesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.nodes.nodes;
      var arg_request = buildSasPortalNode();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalNode.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalNode(obj as api.SasPortalNode);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response as api.SasPortalNode);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).customers.nodes.nodes;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalListNodesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListNodesResponse(
            response as api.SasPortalListNodesResponse);
      })));
    });
  });

  unittest.group('resource-DeploymentsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).deployments;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDeployment(response as api.SasPortalDeployment);
      })));
    });
  });

  unittest.group('resource-DeploymentsDevicesResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).deployments.devices;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response as api.SasPortalEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).deployments.devices;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response as api.SasPortalDevice);
      })));
    });

    unittest.test('method--move', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).deployments.devices;
      var arg_request = buildSasPortalMoveDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalMoveDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalMoveDeviceRequest(obj as api.SasPortalMoveDeviceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .move(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalOperation(response as api.SasPortalOperation);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).deployments.devices;
      var arg_request = buildSasPortalDevice();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDevice(obj as api.SasPortalDevice);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response as api.SasPortalDevice);
      })));
    });

    unittest.test('method--signDevice', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).deployments.devices;
      var arg_request = buildSasPortalSignDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalSignDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalSignDeviceRequest(obj as api.SasPortalSignDeviceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .signDevice(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response as api.SasPortalEmpty);
      })));
    });

    unittest.test('method--updateSigned', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).deployments.devices;
      var arg_request = buildSasPortalUpdateSignedDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalUpdateSignedDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalUpdateSignedDeviceRequest(
            obj as api.SasPortalUpdateSignedDeviceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateSigned(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response as api.SasPortalDevice);
      })));
    });
  });

  unittest.group('resource-InstallerResource', () {
    unittest.test('method--generateSecret', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).installer;
      var arg_request = buildSasPortalGenerateSecretRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalGenerateSecretRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalGenerateSecretRequest(
            obj as api.SasPortalGenerateSecretRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("v1alpha1/installer:generateSecret"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalGenerateSecretResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateSecret(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalGenerateSecretResponse(
            response as api.SasPortalGenerateSecretResponse);
      })));
    });

    unittest.test('method--validate', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).installer;
      var arg_request = buildSasPortalValidateInstallerRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalValidateInstallerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalValidateInstallerRequest(
            obj as api.SasPortalValidateInstallerRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 27),
            unittest.equals("v1alpha1/installer:validate"));
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
        var resp =
            convert.json.encode(buildSasPortalValidateInstallerResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .validate(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalValidateInstallerResponse(
            response as api.SasPortalValidateInstallerResponse);
      })));
    });
  });

  unittest.group('resource-NodesResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response as api.SasPortalNode);
      })));
    });
  });

  unittest.group('resource-NodesDeploymentsResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.deployments;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response as api.SasPortalEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.deployments;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDeployment(response as api.SasPortalDeployment);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.deployments;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalListDeploymentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListDeploymentsResponse(
            response as api.SasPortalListDeploymentsResponse);
      })));
    });

    unittest.test('method--move', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.deployments;
      var arg_request = buildSasPortalMoveDeploymentRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalMoveDeploymentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalMoveDeploymentRequest(
            obj as api.SasPortalMoveDeploymentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .move(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalOperation(response as api.SasPortalOperation);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.deployments;
      var arg_request = buildSasPortalDeployment();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDeployment(obj as api.SasPortalDeployment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDeployment(response as api.SasPortalDeployment);
      })));
    });
  });

  unittest.group('resource-NodesDeploymentsDevicesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.deployments.devices;
      var arg_request = buildSasPortalDevice();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDevice(obj as api.SasPortalDevice);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response as api.SasPortalDevice);
      })));
    });

    unittest.test('method--createSigned', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.deployments.devices;
      var arg_request = buildSasPortalCreateSignedDeviceRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalCreateSignedDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalCreateSignedDeviceRequest(
            obj as api.SasPortalCreateSignedDeviceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createSigned(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response as api.SasPortalDevice);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.deployments.devices;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListDevicesResponse(
            response as api.SasPortalListDevicesResponse);
      })));
    });
  });

  unittest.group('resource-NodesDevicesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.devices;
      var arg_request = buildSasPortalDevice();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDevice(obj as api.SasPortalDevice);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response as api.SasPortalDevice);
      })));
    });

    unittest.test('method--createSigned', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.devices;
      var arg_request = buildSasPortalCreateSignedDeviceRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalCreateSignedDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalCreateSignedDeviceRequest(
            obj as api.SasPortalCreateSignedDeviceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createSigned(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response as api.SasPortalDevice);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.devices;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response as api.SasPortalEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.devices;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response as api.SasPortalDevice);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.devices;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListDevicesResponse(
            response as api.SasPortalListDevicesResponse);
      })));
    });

    unittest.test('method--move', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.devices;
      var arg_request = buildSasPortalMoveDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalMoveDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalMoveDeviceRequest(obj as api.SasPortalMoveDeviceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .move(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalOperation(response as api.SasPortalOperation);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.devices;
      var arg_request = buildSasPortalDevice();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDevice(obj as api.SasPortalDevice);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response as api.SasPortalDevice);
      })));
    });

    unittest.test('method--signDevice', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.devices;
      var arg_request = buildSasPortalSignDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalSignDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalSignDeviceRequest(obj as api.SasPortalSignDeviceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .signDevice(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response as api.SasPortalEmpty);
      })));
    });

    unittest.test('method--updateSigned', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.devices;
      var arg_request = buildSasPortalUpdateSignedDeviceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalUpdateSignedDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalUpdateSignedDeviceRequest(
            obj as api.SasPortalUpdateSignedDeviceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateSigned(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response as api.SasPortalDevice);
      })));
    });
  });

  unittest.group('resource-NodesNodesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.nodes;
      var arg_request = buildSasPortalNode();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalNode.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalNode(obj as api.SasPortalNode);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response as api.SasPortalNode);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.nodes;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalEmpty(response as api.SasPortalEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.nodes;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response as api.SasPortalNode);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.nodes;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalListNodesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListNodesResponse(
            response as api.SasPortalListNodesResponse);
      })));
    });

    unittest.test('method--move', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.nodes;
      var arg_request = buildSasPortalMoveNodeRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalMoveNodeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalMoveNodeRequest(obj as api.SasPortalMoveNodeRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .move(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalOperation(response as api.SasPortalOperation);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.nodes;
      var arg_request = buildSasPortalNode();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalNode.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalNode(obj as api.SasPortalNode);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response as api.SasPortalNode);
      })));
    });
  });

  unittest.group('resource-NodesNodesDeploymentsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.nodes.deployments;
      var arg_request = buildSasPortalDeployment();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDeployment(obj as api.SasPortalDeployment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDeployment(response as api.SasPortalDeployment);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.nodes.deployments;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalListDeploymentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListDeploymentsResponse(
            response as api.SasPortalListDeploymentsResponse);
      })));
    });
  });

  unittest.group('resource-NodesNodesDevicesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.nodes.devices;
      var arg_request = buildSasPortalDevice();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDevice(obj as api.SasPortalDevice);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response as api.SasPortalDevice);
      })));
    });

    unittest.test('method--createSigned', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.nodes.devices;
      var arg_request = buildSasPortalCreateSignedDeviceRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalCreateSignedDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalCreateSignedDeviceRequest(
            obj as api.SasPortalCreateSignedDeviceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createSigned(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalDevice(response as api.SasPortalDevice);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.nodes.devices;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListDevicesResponse(
            response as api.SasPortalListDevicesResponse);
      })));
    });
  });

  unittest.group('resource-NodesNodesNodesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.nodes.nodes;
      var arg_request = buildSasPortalNode();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalNode.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalNode(obj as api.SasPortalNode);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        var resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalNode(response as api.SasPortalNode);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).nodes.nodes.nodes;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1alpha1/"));
        pathOffset += 9;
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
        var resp = convert.json.encode(buildSasPortalListNodesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalListNodesResponse(
            response as api.SasPortalListNodesResponse);
      })));
    });
  });

  unittest.group('resource-PoliciesResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).policies;
      var arg_request = buildSasPortalGetPolicyRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalGetPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalGetPolicyRequest(obj as api.SasPortalGetPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("v1alpha1/policies:get"));
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
        var resp = convert.json.encode(buildSasPortalPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalPolicy(response as api.SasPortalPolicy);
      })));
    });

    unittest.test('method--set', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).policies;
      var arg_request = buildSasPortalSetPolicyRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalSetPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalSetPolicyRequest(obj as api.SasPortalSetPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("v1alpha1/policies:set"));
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
        var resp = convert.json.encode(buildSasPortalPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .set(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalPolicy(response as api.SasPortalPolicy);
      })));
    });

    unittest.test('method--test', () {
      var mock = HttpServerMock();
      var res = api.SasportalApi(mock).policies;
      var arg_request = buildSasPortalTestPermissionsRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SasPortalTestPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalTestPermissionsRequest(
            obj as api.SasPortalTestPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("v1alpha1/policies:test"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSasPortalTestPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .test(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSasPortalTestPermissionsResponse(
            response as api.SasPortalTestPermissionsResponse);
      })));
    });
  });
}
