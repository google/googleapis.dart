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

import 'package:googleapis_beta/prod_tt_sasportal/v1alpha1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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

core.int buildCounterSasPortalAssignment = 0;
api.SasPortalAssignment buildSasPortalAssignment() {
  final o = api.SasPortalAssignment();
  buildCounterSasPortalAssignment++;
  if (buildCounterSasPortalAssignment < 3) {
    o.members = buildUnnamed0();
    o.role = 'foo';
  }
  buildCounterSasPortalAssignment--;
  return o;
}

void checkSasPortalAssignment(api.SasPortalAssignment o) {
  buildCounterSasPortalAssignment++;
  if (buildCounterSasPortalAssignment < 3) {
    checkUnnamed0(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterSasPortalAssignment--;
}

core.int buildCounterSasPortalChannelWithScore = 0;
api.SasPortalChannelWithScore buildSasPortalChannelWithScore() {
  final o = api.SasPortalChannelWithScore();
  buildCounterSasPortalChannelWithScore++;
  if (buildCounterSasPortalChannelWithScore < 3) {
    o.frequencyRange = buildSasPortalFrequencyRange();
    o.score = 42.0;
  }
  buildCounterSasPortalChannelWithScore--;
  return o;
}

void checkSasPortalChannelWithScore(api.SasPortalChannelWithScore o) {
  buildCounterSasPortalChannelWithScore++;
  if (buildCounterSasPortalChannelWithScore < 3) {
    checkSasPortalFrequencyRange(o.frequencyRange!);
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterSasPortalChannelWithScore--;
}

core.int buildCounterSasPortalCreateSignedDeviceRequest = 0;
api.SasPortalCreateSignedDeviceRequest
    buildSasPortalCreateSignedDeviceRequest() {
  final o = api.SasPortalCreateSignedDeviceRequest();
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
    unittest.expect(
      o.encodedDevice!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.installerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSasPortalCreateSignedDeviceRequest--;
}

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
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

core.int buildCounterSasPortalCustomer = 0;
api.SasPortalCustomer buildSasPortalCustomer() {
  final o = api.SasPortalCustomer();
  buildCounterSasPortalCustomer++;
  if (buildCounterSasPortalCustomer < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.sasUserIds = buildUnnamed1();
  }
  buildCounterSasPortalCustomer--;
  return o;
}

void checkSasPortalCustomer(api.SasPortalCustomer o) {
  buildCounterSasPortalCustomer++;
  if (buildCounterSasPortalCustomer < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.sasUserIds!);
  }
  buildCounterSasPortalCustomer--;
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

core.int buildCounterSasPortalDeployment = 0;
api.SasPortalDeployment buildSasPortalDeployment() {
  final o = api.SasPortalDeployment();
  buildCounterSasPortalDeployment++;
  if (buildCounterSasPortalDeployment < 3) {
    o.displayName = 'foo';
    o.frns = buildUnnamed2();
    o.name = 'foo';
    o.sasUserIds = buildUnnamed3();
  }
  buildCounterSasPortalDeployment--;
  return o;
}

void checkSasPortalDeployment(api.SasPortalDeployment o) {
  buildCounterSasPortalDeployment++;
  if (buildCounterSasPortalDeployment < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.frns!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.sasUserIds!);
  }
  buildCounterSasPortalDeployment--;
}

core.List<api.SasPortalChannelWithScore> buildUnnamed4() => [
      buildSasPortalChannelWithScore(),
      buildSasPortalChannelWithScore(),
    ];

void checkUnnamed4(core.List<api.SasPortalChannelWithScore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalChannelWithScore(o[0]);
  checkSasPortalChannelWithScore(o[1]);
}

core.List<api.SasPortalFrequencyRange> buildUnnamed5() => [
      buildSasPortalFrequencyRange(),
      buildSasPortalFrequencyRange(),
    ];

void checkUnnamed5(core.List<api.SasPortalFrequencyRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalFrequencyRange(o[0]);
  checkSasPortalFrequencyRange(o[1]);
}

core.List<api.SasPortalDeviceGrant> buildUnnamed6() => [
      buildSasPortalDeviceGrant(),
      buildSasPortalDeviceGrant(),
    ];

void checkUnnamed6(core.List<api.SasPortalDeviceGrant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalDeviceGrant(o[0]);
  checkSasPortalDeviceGrant(o[1]);
}

core.int buildCounterSasPortalDevice = 0;
api.SasPortalDevice buildSasPortalDevice() {
  final o = api.SasPortalDevice();
  buildCounterSasPortalDevice++;
  if (buildCounterSasPortalDevice < 3) {
    o.activeConfig = buildSasPortalDeviceConfig();
    o.currentChannels = buildUnnamed4();
    o.deviceMetadata = buildSasPortalDeviceMetadata();
    o.displayName = 'foo';
    o.fccId = 'foo';
    o.grantRangeAllowlists = buildUnnamed5();
    o.grants = buildUnnamed6();
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
    checkSasPortalDeviceConfig(o.activeConfig!);
    checkUnnamed4(o.currentChannels!);
    checkSasPortalDeviceMetadata(o.deviceMetadata!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fccId!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.grantRangeAllowlists!);
    checkUnnamed6(o.grants!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkSasPortalDeviceConfig(o.preloadedConfig!);
    unittest.expect(
      o.serialNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterSasPortalDevice--;
}

core.int buildCounterSasPortalDeviceAirInterface = 0;
api.SasPortalDeviceAirInterface buildSasPortalDeviceAirInterface() {
  final o = api.SasPortalDeviceAirInterface();
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
    unittest.expect(
      o.radioTechnology!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.supportedSpec!,
      unittest.equals('foo'),
    );
  }
  buildCounterSasPortalDeviceAirInterface--;
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

core.int buildCounterSasPortalDeviceConfig = 0;
api.SasPortalDeviceConfig buildSasPortalDeviceConfig() {
  final o = api.SasPortalDeviceConfig();
  buildCounterSasPortalDeviceConfig++;
  if (buildCounterSasPortalDeviceConfig < 3) {
    o.airInterface = buildSasPortalDeviceAirInterface();
    o.callSign = 'foo';
    o.category = 'foo';
    o.installationParams = buildSasPortalInstallationParams();
    o.isSigned = true;
    o.measurementCapabilities = buildUnnamed7();
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
    checkSasPortalDeviceAirInterface(o.airInterface!);
    unittest.expect(
      o.callSign!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    checkSasPortalInstallationParams(o.installationParams!);
    unittest.expect(o.isSigned!, unittest.isTrue);
    checkUnnamed7(o.measurementCapabilities!);
    checkSasPortalDeviceModel(o.model!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSasPortalDeviceConfig--;
}

core.List<api.SasPortalDpaMoveList> buildUnnamed8() => [
      buildSasPortalDpaMoveList(),
      buildSasPortalDpaMoveList(),
    ];

void checkUnnamed8(core.List<api.SasPortalDpaMoveList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalDpaMoveList(o[0]);
  checkSasPortalDpaMoveList(o[1]);
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

core.int buildCounterSasPortalDeviceGrant = 0;
api.SasPortalDeviceGrant buildSasPortalDeviceGrant() {
  final o = api.SasPortalDeviceGrant();
  buildCounterSasPortalDeviceGrant++;
  if (buildCounterSasPortalDeviceGrant < 3) {
    o.channelType = 'foo';
    o.expireTime = 'foo';
    o.frequencyRange = buildSasPortalFrequencyRange();
    o.grantId = 'foo';
    o.maxEirp = 42.0;
    o.moveList = buildUnnamed8();
    o.state = 'foo';
    o.suspensionReason = buildUnnamed9();
  }
  buildCounterSasPortalDeviceGrant--;
  return o;
}

void checkSasPortalDeviceGrant(api.SasPortalDeviceGrant o) {
  buildCounterSasPortalDeviceGrant++;
  if (buildCounterSasPortalDeviceGrant < 3) {
    unittest.expect(
      o.channelType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    checkSasPortalFrequencyRange(o.frequencyRange!);
    unittest.expect(
      o.grantId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxEirp!,
      unittest.equals(42.0),
    );
    checkUnnamed8(o.moveList!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.suspensionReason!);
  }
  buildCounterSasPortalDeviceGrant--;
}

core.int buildCounterSasPortalDeviceMetadata = 0;
api.SasPortalDeviceMetadata buildSasPortalDeviceMetadata() {
  final o = api.SasPortalDeviceMetadata();
  buildCounterSasPortalDeviceMetadata++;
  if (buildCounterSasPortalDeviceMetadata < 3) {
    o.antennaModel = 'foo';
    o.commonChannelGroup = 'foo';
    o.interferenceCoordinationGroup = 'foo';
  }
  buildCounterSasPortalDeviceMetadata--;
  return o;
}

void checkSasPortalDeviceMetadata(api.SasPortalDeviceMetadata o) {
  buildCounterSasPortalDeviceMetadata++;
  if (buildCounterSasPortalDeviceMetadata < 3) {
    unittest.expect(
      o.antennaModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.commonChannelGroup!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.interferenceCoordinationGroup!,
      unittest.equals('foo'),
    );
  }
  buildCounterSasPortalDeviceMetadata--;
}

core.int buildCounterSasPortalDeviceModel = 0;
api.SasPortalDeviceModel buildSasPortalDeviceModel() {
  final o = api.SasPortalDeviceModel();
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
    unittest.expect(
      o.firmwareVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hardwareVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.softwareVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vendor!,
      unittest.equals('foo'),
    );
  }
  buildCounterSasPortalDeviceModel--;
}

core.int buildCounterSasPortalDpaMoveList = 0;
api.SasPortalDpaMoveList buildSasPortalDpaMoveList() {
  final o = api.SasPortalDpaMoveList();
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
    unittest.expect(
      o.dpaId!,
      unittest.equals('foo'),
    );
    checkSasPortalFrequencyRange(o.frequencyRange!);
  }
  buildCounterSasPortalDpaMoveList--;
}

core.int buildCounterSasPortalEmpty = 0;
api.SasPortalEmpty buildSasPortalEmpty() {
  final o = api.SasPortalEmpty();
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
  final o = api.SasPortalFrequencyRange();
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
    unittest.expect(
      o.highFrequencyMhz!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.lowFrequencyMhz!,
      unittest.equals(42.0),
    );
  }
  buildCounterSasPortalFrequencyRange--;
}

core.int buildCounterSasPortalGenerateSecretRequest = 0;
api.SasPortalGenerateSecretRequest buildSasPortalGenerateSecretRequest() {
  final o = api.SasPortalGenerateSecretRequest();
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
  final o = api.SasPortalGenerateSecretResponse();
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
    unittest.expect(
      o.secret!,
      unittest.equals('foo'),
    );
  }
  buildCounterSasPortalGenerateSecretResponse--;
}

core.int buildCounterSasPortalGetPolicyRequest = 0;
api.SasPortalGetPolicyRequest buildSasPortalGetPolicyRequest() {
  final o = api.SasPortalGetPolicyRequest();
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
    unittest.expect(
      o.resource!,
      unittest.equals('foo'),
    );
  }
  buildCounterSasPortalGetPolicyRequest--;
}

core.int buildCounterSasPortalInstallationParams = 0;
api.SasPortalInstallationParams buildSasPortalInstallationParams() {
  final o = api.SasPortalInstallationParams();
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
    unittest.expect(
      o.antennaAzimuth!,
      unittest.equals(42),
    );
    unittest.expect(
      o.antennaBeamwidth!,
      unittest.equals(42),
    );
    unittest.expect(
      o.antennaDowntilt!,
      unittest.equals(42),
    );
    unittest.expect(
      o.antennaGain!,
      unittest.equals(42),
    );
    unittest.expect(
      o.antennaModel!,
      unittest.equals('foo'),
    );
    unittest.expect(o.cpeCbsdIndication!, unittest.isTrue);
    unittest.expect(
      o.eirpCapability!,
      unittest.equals(42),
    );
    unittest.expect(
      o.height!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.heightType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.horizontalAccuracy!,
      unittest.equals(42.0),
    );
    unittest.expect(o.indoorDeployment!, unittest.isTrue);
    unittest.expect(
      o.latitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.longitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.verticalAccuracy!,
      unittest.equals(42.0),
    );
  }
  buildCounterSasPortalInstallationParams--;
}

core.List<api.SasPortalCustomer> buildUnnamed10() => [
      buildSasPortalCustomer(),
      buildSasPortalCustomer(),
    ];

void checkUnnamed10(core.List<api.SasPortalCustomer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalCustomer(o[0]);
  checkSasPortalCustomer(o[1]);
}

core.int buildCounterSasPortalListCustomersResponse = 0;
api.SasPortalListCustomersResponse buildSasPortalListCustomersResponse() {
  final o = api.SasPortalListCustomersResponse();
  buildCounterSasPortalListCustomersResponse++;
  if (buildCounterSasPortalListCustomersResponse < 3) {
    o.customers = buildUnnamed10();
    o.nextPageToken = 'foo';
  }
  buildCounterSasPortalListCustomersResponse--;
  return o;
}

void checkSasPortalListCustomersResponse(api.SasPortalListCustomersResponse o) {
  buildCounterSasPortalListCustomersResponse++;
  if (buildCounterSasPortalListCustomersResponse < 3) {
    checkUnnamed10(o.customers!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSasPortalListCustomersResponse--;
}

core.List<api.SasPortalDeployment> buildUnnamed11() => [
      buildSasPortalDeployment(),
      buildSasPortalDeployment(),
    ];

void checkUnnamed11(core.List<api.SasPortalDeployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalDeployment(o[0]);
  checkSasPortalDeployment(o[1]);
}

core.int buildCounterSasPortalListDeploymentsResponse = 0;
api.SasPortalListDeploymentsResponse buildSasPortalListDeploymentsResponse() {
  final o = api.SasPortalListDeploymentsResponse();
  buildCounterSasPortalListDeploymentsResponse++;
  if (buildCounterSasPortalListDeploymentsResponse < 3) {
    o.deployments = buildUnnamed11();
    o.nextPageToken = 'foo';
  }
  buildCounterSasPortalListDeploymentsResponse--;
  return o;
}

void checkSasPortalListDeploymentsResponse(
    api.SasPortalListDeploymentsResponse o) {
  buildCounterSasPortalListDeploymentsResponse++;
  if (buildCounterSasPortalListDeploymentsResponse < 3) {
    checkUnnamed11(o.deployments!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSasPortalListDeploymentsResponse--;
}

core.List<api.SasPortalDevice> buildUnnamed12() => [
      buildSasPortalDevice(),
      buildSasPortalDevice(),
    ];

void checkUnnamed12(core.List<api.SasPortalDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalDevice(o[0]);
  checkSasPortalDevice(o[1]);
}

core.int buildCounterSasPortalListDevicesResponse = 0;
api.SasPortalListDevicesResponse buildSasPortalListDevicesResponse() {
  final o = api.SasPortalListDevicesResponse();
  buildCounterSasPortalListDevicesResponse++;
  if (buildCounterSasPortalListDevicesResponse < 3) {
    o.devices = buildUnnamed12();
    o.nextPageToken = 'foo';
  }
  buildCounterSasPortalListDevicesResponse--;
  return o;
}

void checkSasPortalListDevicesResponse(api.SasPortalListDevicesResponse o) {
  buildCounterSasPortalListDevicesResponse++;
  if (buildCounterSasPortalListDevicesResponse < 3) {
    checkUnnamed12(o.devices!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSasPortalListDevicesResponse--;
}

core.List<api.SasPortalNode> buildUnnamed13() => [
      buildSasPortalNode(),
      buildSasPortalNode(),
    ];

void checkUnnamed13(core.List<api.SasPortalNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalNode(o[0]);
  checkSasPortalNode(o[1]);
}

core.int buildCounterSasPortalListNodesResponse = 0;
api.SasPortalListNodesResponse buildSasPortalListNodesResponse() {
  final o = api.SasPortalListNodesResponse();
  buildCounterSasPortalListNodesResponse++;
  if (buildCounterSasPortalListNodesResponse < 3) {
    o.nextPageToken = 'foo';
    o.nodes = buildUnnamed13();
  }
  buildCounterSasPortalListNodesResponse--;
  return o;
}

void checkSasPortalListNodesResponse(api.SasPortalListNodesResponse o) {
  buildCounterSasPortalListNodesResponse++;
  if (buildCounterSasPortalListNodesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.nodes!);
  }
  buildCounterSasPortalListNodesResponse--;
}

core.int buildCounterSasPortalMoveDeploymentRequest = 0;
api.SasPortalMoveDeploymentRequest buildSasPortalMoveDeploymentRequest() {
  final o = api.SasPortalMoveDeploymentRequest();
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
    unittest.expect(
      o.destination!,
      unittest.equals('foo'),
    );
  }
  buildCounterSasPortalMoveDeploymentRequest--;
}

core.int buildCounterSasPortalMoveDeviceRequest = 0;
api.SasPortalMoveDeviceRequest buildSasPortalMoveDeviceRequest() {
  final o = api.SasPortalMoveDeviceRequest();
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
    unittest.expect(
      o.destination!,
      unittest.equals('foo'),
    );
  }
  buildCounterSasPortalMoveDeviceRequest--;
}

core.int buildCounterSasPortalMoveNodeRequest = 0;
api.SasPortalMoveNodeRequest buildSasPortalMoveNodeRequest() {
  final o = api.SasPortalMoveNodeRequest();
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
    unittest.expect(
      o.destination!,
      unittest.equals('foo'),
    );
  }
  buildCounterSasPortalMoveNodeRequest--;
}

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.int buildCounterSasPortalNode = 0;
api.SasPortalNode buildSasPortalNode() {
  final o = api.SasPortalNode();
  buildCounterSasPortalNode++;
  if (buildCounterSasPortalNode < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.sasUserIds = buildUnnamed14();
  }
  buildCounterSasPortalNode--;
  return o;
}

void checkSasPortalNode(api.SasPortalNode o) {
  buildCounterSasPortalNode++;
  if (buildCounterSasPortalNode < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.sasUserIds!);
  }
  buildCounterSasPortalNode--;
}

core.Map<core.String, core.Object?> buildUnnamed15() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed15(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
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
  var casted2 = (o['y']!) as core.Map;
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

core.Map<core.String, core.Object?> buildUnnamed16() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed16(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
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
  var casted4 = (o['y']!) as core.Map;
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
}

core.int buildCounterSasPortalOperation = 0;
api.SasPortalOperation buildSasPortalOperation() {
  final o = api.SasPortalOperation();
  buildCounterSasPortalOperation++;
  if (buildCounterSasPortalOperation < 3) {
    o.done = true;
    o.error = buildSasPortalStatus();
    o.metadata = buildUnnamed15();
    o.name = 'foo';
    o.response = buildUnnamed16();
  }
  buildCounterSasPortalOperation--;
  return o;
}

void checkSasPortalOperation(api.SasPortalOperation o) {
  buildCounterSasPortalOperation++;
  if (buildCounterSasPortalOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkSasPortalStatus(o.error!);
    checkUnnamed15(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.response!);
  }
  buildCounterSasPortalOperation--;
}

core.List<api.SasPortalAssignment> buildUnnamed17() => [
      buildSasPortalAssignment(),
      buildSasPortalAssignment(),
    ];

void checkUnnamed17(core.List<api.SasPortalAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSasPortalAssignment(o[0]);
  checkSasPortalAssignment(o[1]);
}

core.int buildCounterSasPortalPolicy = 0;
api.SasPortalPolicy buildSasPortalPolicy() {
  final o = api.SasPortalPolicy();
  buildCounterSasPortalPolicy++;
  if (buildCounterSasPortalPolicy < 3) {
    o.assignments = buildUnnamed17();
    o.etag = 'foo';
  }
  buildCounterSasPortalPolicy--;
  return o;
}

void checkSasPortalPolicy(api.SasPortalPolicy o) {
  buildCounterSasPortalPolicy++;
  if (buildCounterSasPortalPolicy < 3) {
    checkUnnamed17(o.assignments!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
  }
  buildCounterSasPortalPolicy--;
}

core.int buildCounterSasPortalSetPolicyRequest = 0;
api.SasPortalSetPolicyRequest buildSasPortalSetPolicyRequest() {
  final o = api.SasPortalSetPolicyRequest();
  buildCounterSasPortalSetPolicyRequest++;
  if (buildCounterSasPortalSetPolicyRequest < 3) {
    o.disableNotification = true;
    o.policy = buildSasPortalPolicy();
    o.resource = 'foo';
  }
  buildCounterSasPortalSetPolicyRequest--;
  return o;
}

void checkSasPortalSetPolicyRequest(api.SasPortalSetPolicyRequest o) {
  buildCounterSasPortalSetPolicyRequest++;
  if (buildCounterSasPortalSetPolicyRequest < 3) {
    unittest.expect(o.disableNotification!, unittest.isTrue);
    checkSasPortalPolicy(o.policy!);
    unittest.expect(
      o.resource!,
      unittest.equals('foo'),
    );
  }
  buildCounterSasPortalSetPolicyRequest--;
}

core.int buildCounterSasPortalSignDeviceRequest = 0;
api.SasPortalSignDeviceRequest buildSasPortalSignDeviceRequest() {
  final o = api.SasPortalSignDeviceRequest();
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
    checkSasPortalDevice(o.device!);
  }
  buildCounterSasPortalSignDeviceRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed18() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed18(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
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
  var casted6 = (o['y']!) as core.Map;
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
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed19() => [
      buildUnnamed18(),
      buildUnnamed18(),
    ];

void checkUnnamed19(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed18(o[0]);
  checkUnnamed18(o[1]);
}

core.int buildCounterSasPortalStatus = 0;
api.SasPortalStatus buildSasPortalStatus() {
  final o = api.SasPortalStatus();
  buildCounterSasPortalStatus++;
  if (buildCounterSasPortalStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed19();
    o.message = 'foo';
  }
  buildCounterSasPortalStatus--;
  return o;
}

void checkSasPortalStatus(api.SasPortalStatus o) {
  buildCounterSasPortalStatus++;
  if (buildCounterSasPortalStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed19(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterSasPortalStatus--;
}

core.List<core.String> buildUnnamed20() => [
      'foo',
      'foo',
    ];

void checkUnnamed20(core.List<core.String> o) {
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

core.int buildCounterSasPortalTestPermissionsRequest = 0;
api.SasPortalTestPermissionsRequest buildSasPortalTestPermissionsRequest() {
  final o = api.SasPortalTestPermissionsRequest();
  buildCounterSasPortalTestPermissionsRequest++;
  if (buildCounterSasPortalTestPermissionsRequest < 3) {
    o.permissions = buildUnnamed20();
    o.resource = 'foo';
  }
  buildCounterSasPortalTestPermissionsRequest--;
  return o;
}

void checkSasPortalTestPermissionsRequest(
    api.SasPortalTestPermissionsRequest o) {
  buildCounterSasPortalTestPermissionsRequest++;
  if (buildCounterSasPortalTestPermissionsRequest < 3) {
    checkUnnamed20(o.permissions!);
    unittest.expect(
      o.resource!,
      unittest.equals('foo'),
    );
  }
  buildCounterSasPortalTestPermissionsRequest--;
}

core.List<core.String> buildUnnamed21() => [
      'foo',
      'foo',
    ];

void checkUnnamed21(core.List<core.String> o) {
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

core.int buildCounterSasPortalTestPermissionsResponse = 0;
api.SasPortalTestPermissionsResponse buildSasPortalTestPermissionsResponse() {
  final o = api.SasPortalTestPermissionsResponse();
  buildCounterSasPortalTestPermissionsResponse++;
  if (buildCounterSasPortalTestPermissionsResponse < 3) {
    o.permissions = buildUnnamed21();
  }
  buildCounterSasPortalTestPermissionsResponse--;
  return o;
}

void checkSasPortalTestPermissionsResponse(
    api.SasPortalTestPermissionsResponse o) {
  buildCounterSasPortalTestPermissionsResponse++;
  if (buildCounterSasPortalTestPermissionsResponse < 3) {
    checkUnnamed21(o.permissions!);
  }
  buildCounterSasPortalTestPermissionsResponse--;
}

core.int buildCounterSasPortalUpdateSignedDeviceRequest = 0;
api.SasPortalUpdateSignedDeviceRequest
    buildSasPortalUpdateSignedDeviceRequest() {
  final o = api.SasPortalUpdateSignedDeviceRequest();
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
    unittest.expect(
      o.encodedDevice!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.installerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSasPortalUpdateSignedDeviceRequest--;
}

core.int buildCounterSasPortalValidateInstallerRequest = 0;
api.SasPortalValidateInstallerRequest buildSasPortalValidateInstallerRequest() {
  final o = api.SasPortalValidateInstallerRequest();
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
    unittest.expect(
      o.encodedSecret!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.installerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.secret!,
      unittest.equals('foo'),
    );
  }
  buildCounterSasPortalValidateInstallerRequest--;
}

core.int buildCounterSasPortalValidateInstallerResponse = 0;
api.SasPortalValidateInstallerResponse
    buildSasPortalValidateInstallerResponse() {
  final o = api.SasPortalValidateInstallerResponse();
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
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalAssignment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalAssignment(od);
    });
  });

  unittest.group('obj-schema-SasPortalChannelWithScore', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalChannelWithScore();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalChannelWithScore.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalChannelWithScore(od);
    });
  });

  unittest.group('obj-schema-SasPortalCreateSignedDeviceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalCreateSignedDeviceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalCreateSignedDeviceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalCreateSignedDeviceRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalCustomer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalCustomer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalCustomer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalCustomer(od);
    });
  });

  unittest.group('obj-schema-SasPortalDeployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalDeployment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalDeployment(od);
    });
  });

  unittest.group('obj-schema-SasPortalDevice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalDevice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalDevice(od);
    });
  });

  unittest.group('obj-schema-SasPortalDeviceAirInterface', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalDeviceAirInterface();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalDeviceAirInterface.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalDeviceAirInterface(od);
    });
  });

  unittest.group('obj-schema-SasPortalDeviceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalDeviceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalDeviceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalDeviceConfig(od);
    });
  });

  unittest.group('obj-schema-SasPortalDeviceGrant', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalDeviceGrant();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalDeviceGrant.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalDeviceGrant(od);
    });
  });

  unittest.group('obj-schema-SasPortalDeviceMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalDeviceMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalDeviceMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalDeviceMetadata(od);
    });
  });

  unittest.group('obj-schema-SasPortalDeviceModel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalDeviceModel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalDeviceModel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalDeviceModel(od);
    });
  });

  unittest.group('obj-schema-SasPortalDpaMoveList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalDpaMoveList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalDpaMoveList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalDpaMoveList(od);
    });
  });

  unittest.group('obj-schema-SasPortalEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalEmpty(od);
    });
  });

  unittest.group('obj-schema-SasPortalFrequencyRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalFrequencyRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalFrequencyRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalFrequencyRange(od);
    });
  });

  unittest.group('obj-schema-SasPortalGenerateSecretRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalGenerateSecretRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalGenerateSecretRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalGenerateSecretRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalGenerateSecretResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalGenerateSecretResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalGenerateSecretResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalGenerateSecretResponse(od);
    });
  });

  unittest.group('obj-schema-SasPortalGetPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalGetPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalGetPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalGetPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalInstallationParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalInstallationParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalInstallationParams.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalInstallationParams(od);
    });
  });

  unittest.group('obj-schema-SasPortalListCustomersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalListCustomersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalListCustomersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalListCustomersResponse(od);
    });
  });

  unittest.group('obj-schema-SasPortalListDeploymentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalListDeploymentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalListDeploymentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalListDeploymentsResponse(od);
    });
  });

  unittest.group('obj-schema-SasPortalListDevicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalListDevicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalListDevicesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalListDevicesResponse(od);
    });
  });

  unittest.group('obj-schema-SasPortalListNodesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalListNodesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalListNodesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalListNodesResponse(od);
    });
  });

  unittest.group('obj-schema-SasPortalMoveDeploymentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalMoveDeploymentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalMoveDeploymentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalMoveDeploymentRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalMoveDeviceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalMoveDeviceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalMoveDeviceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalMoveDeviceRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalMoveNodeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalMoveNodeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalMoveNodeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalMoveNodeRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalNode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalNode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalNode.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalNode(od);
    });
  });

  unittest.group('obj-schema-SasPortalOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalOperation(od);
    });
  });

  unittest.group('obj-schema-SasPortalPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalPolicy(od);
    });
  });

  unittest.group('obj-schema-SasPortalSetPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalSetPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalSetPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalSetPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalSignDeviceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalSignDeviceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalSignDeviceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalSignDeviceRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalStatus(od);
    });
  });

  unittest.group('obj-schema-SasPortalTestPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalTestPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalTestPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalTestPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalTestPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalTestPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalTestPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalTestPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-SasPortalUpdateSignedDeviceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalUpdateSignedDeviceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalUpdateSignedDeviceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalUpdateSignedDeviceRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalValidateInstallerRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalValidateInstallerRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalValidateInstallerRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalValidateInstallerRequest(od);
    });
  });

  unittest.group('obj-schema-SasPortalValidateInstallerResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSasPortalValidateInstallerResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SasPortalValidateInstallerResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSasPortalValidateInstallerResponse(od);
    });
  });

  unittest.group('resource-CustomersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers;
      final arg_request = buildSasPortalCustomer();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalCustomer.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalCustomer(obj);

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
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('v1alpha1/customers'),
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
        final resp = convert.json.encode(buildSasPortalCustomer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkSasPortalCustomer(response as api.SasPortalCustomer);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkSasPortalEmpty(response as api.SasPortalEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalCustomer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSasPortalCustomer(response as api.SasPortalCustomer);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers;
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
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('v1alpha1/customers'),
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
        final resp = convert.json.encode(buildSasPortalListCustomersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSasPortalListCustomersResponse(
          response as api.SasPortalListCustomersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers;
      final arg_request = buildSasPortalCustomer();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalCustomer.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalCustomer(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalCustomer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkSasPortalCustomer(response as api.SasPortalCustomer);
    });
  });

  unittest.group('resource-CustomersDeploymentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.deployments;
      final arg_request = buildSasPortalDeployment();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDeployment(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkSasPortalDeployment(response as api.SasPortalDeployment);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.deployments;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkSasPortalEmpty(response as api.SasPortalEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.deployments;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSasPortalDeployment(response as api.SasPortalDeployment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.deployments;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp =
            convert.json.encode(buildSasPortalListDeploymentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSasPortalListDeploymentsResponse(
          response as api.SasPortalListDeploymentsResponse);
    });

    unittest.test('method--move', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.deployments;
      final arg_request = buildSasPortalMoveDeploymentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalMoveDeploymentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalMoveDeploymentRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.move(arg_request, arg_name, $fields: arg_$fields);
      checkSasPortalOperation(response as api.SasPortalOperation);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.deployments;
      final arg_request = buildSasPortalDeployment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDeployment(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkSasPortalDeployment(response as api.SasPortalDeployment);
    });
  });

  unittest.group('resource-CustomersDeploymentsDevicesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.deployments.devices;
      final arg_request = buildSasPortalDevice();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDevice(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkSasPortalDevice(response as api.SasPortalDevice);
    });

    unittest.test('method--createSigned', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.deployments.devices;
      final arg_request = buildSasPortalCreateSignedDeviceRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalCreateSignedDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalCreateSignedDeviceRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.createSigned(arg_request, arg_parent, $fields: arg_$fields);
      checkSasPortalDevice(response as api.SasPortalDevice);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.deployments.devices;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSasPortalListDevicesResponse(
          response as api.SasPortalListDevicesResponse);
    });
  });

  unittest.group('resource-CustomersDevicesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.devices;
      final arg_request = buildSasPortalDevice();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDevice(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkSasPortalDevice(response as api.SasPortalDevice);
    });

    unittest.test('method--createSigned', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.devices;
      final arg_request = buildSasPortalCreateSignedDeviceRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalCreateSignedDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalCreateSignedDeviceRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.createSigned(arg_request, arg_parent, $fields: arg_$fields);
      checkSasPortalDevice(response as api.SasPortalDevice);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.devices;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkSasPortalEmpty(response as api.SasPortalEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.devices;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSasPortalDevice(response as api.SasPortalDevice);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.devices;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSasPortalListDevicesResponse(
          response as api.SasPortalListDevicesResponse);
    });

    unittest.test('method--move', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.devices;
      final arg_request = buildSasPortalMoveDeviceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalMoveDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalMoveDeviceRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.move(arg_request, arg_name, $fields: arg_$fields);
      checkSasPortalOperation(response as api.SasPortalOperation);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.devices;
      final arg_request = buildSasPortalDevice();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDevice(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkSasPortalDevice(response as api.SasPortalDevice);
    });

    unittest.test('method--signDevice', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.devices;
      final arg_request = buildSasPortalSignDeviceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalSignDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalSignDeviceRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.signDevice(arg_request, arg_name, $fields: arg_$fields);
      checkSasPortalEmpty(response as api.SasPortalEmpty);
    });

    unittest.test('method--updateSigned', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.devices;
      final arg_request = buildSasPortalUpdateSignedDeviceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalUpdateSignedDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalUpdateSignedDeviceRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.updateSigned(arg_request, arg_name, $fields: arg_$fields);
      checkSasPortalDevice(response as api.SasPortalDevice);
    });
  });

  unittest.group('resource-CustomersNodesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.nodes;
      final arg_request = buildSasPortalNode();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalNode.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalNode(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkSasPortalNode(response as api.SasPortalNode);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.nodes;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkSasPortalEmpty(response as api.SasPortalEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.nodes;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSasPortalNode(response as api.SasPortalNode);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.nodes;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalListNodesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSasPortalListNodesResponse(
          response as api.SasPortalListNodesResponse);
    });

    unittest.test('method--move', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.nodes;
      final arg_request = buildSasPortalMoveNodeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalMoveNodeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalMoveNodeRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.move(arg_request, arg_name, $fields: arg_$fields);
      checkSasPortalOperation(response as api.SasPortalOperation);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.nodes;
      final arg_request = buildSasPortalNode();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalNode.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalNode(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkSasPortalNode(response as api.SasPortalNode);
    });
  });

  unittest.group('resource-CustomersNodesDeploymentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.nodes.deployments;
      final arg_request = buildSasPortalDeployment();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDeployment(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkSasPortalDeployment(response as api.SasPortalDeployment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.nodes.deployments;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp =
            convert.json.encode(buildSasPortalListDeploymentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSasPortalListDeploymentsResponse(
          response as api.SasPortalListDeploymentsResponse);
    });
  });

  unittest.group('resource-CustomersNodesDevicesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.nodes.devices;
      final arg_request = buildSasPortalDevice();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDevice(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkSasPortalDevice(response as api.SasPortalDevice);
    });

    unittest.test('method--createSigned', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.nodes.devices;
      final arg_request = buildSasPortalCreateSignedDeviceRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalCreateSignedDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalCreateSignedDeviceRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.createSigned(arg_request, arg_parent, $fields: arg_$fields);
      checkSasPortalDevice(response as api.SasPortalDevice);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.nodes.devices;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSasPortalListDevicesResponse(
          response as api.SasPortalListDevicesResponse);
    });
  });

  unittest.group('resource-CustomersNodesNodesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.nodes.nodes;
      final arg_request = buildSasPortalNode();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalNode.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalNode(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkSasPortalNode(response as api.SasPortalNode);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).customers.nodes.nodes;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalListNodesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSasPortalListNodesResponse(
          response as api.SasPortalListNodesResponse);
    });
  });

  unittest.group('resource-DeploymentsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).deployments;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSasPortalDeployment(response as api.SasPortalDeployment);
    });
  });

  unittest.group('resource-DeploymentsDevicesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).deployments.devices;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkSasPortalEmpty(response as api.SasPortalEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).deployments.devices;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSasPortalDevice(response as api.SasPortalDevice);
    });

    unittest.test('method--move', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).deployments.devices;
      final arg_request = buildSasPortalMoveDeviceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalMoveDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalMoveDeviceRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.move(arg_request, arg_name, $fields: arg_$fields);
      checkSasPortalOperation(response as api.SasPortalOperation);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).deployments.devices;
      final arg_request = buildSasPortalDevice();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDevice(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkSasPortalDevice(response as api.SasPortalDevice);
    });

    unittest.test('method--signDevice', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).deployments.devices;
      final arg_request = buildSasPortalSignDeviceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalSignDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalSignDeviceRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.signDevice(arg_request, arg_name, $fields: arg_$fields);
      checkSasPortalEmpty(response as api.SasPortalEmpty);
    });

    unittest.test('method--updateSigned', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).deployments.devices;
      final arg_request = buildSasPortalUpdateSignedDeviceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalUpdateSignedDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalUpdateSignedDeviceRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.updateSigned(arg_request, arg_name, $fields: arg_$fields);
      checkSasPortalDevice(response as api.SasPortalDevice);
    });
  });

  unittest.group('resource-InstallerResource', () {
    unittest.test('method--generateSecret', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).installer;
      final arg_request = buildSasPortalGenerateSecretRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalGenerateSecretRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalGenerateSecretRequest(obj);

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
          unittest.equals('v1alpha1/installer:generateSecret'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildSasPortalGenerateSecretResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.generateSecret(arg_request, $fields: arg_$fields);
      checkSasPortalGenerateSecretResponse(
          response as api.SasPortalGenerateSecretResponse);
    });

    unittest.test('method--validate', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).installer;
      final arg_request = buildSasPortalValidateInstallerRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalValidateInstallerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalValidateInstallerRequest(obj);

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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('v1alpha1/installer:validate'),
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
        final resp =
            convert.json.encode(buildSasPortalValidateInstallerResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.validate(arg_request, $fields: arg_$fields);
      checkSasPortalValidateInstallerResponse(
          response as api.SasPortalValidateInstallerResponse);
    });
  });

  unittest.group('resource-NodesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSasPortalNode(response as api.SasPortalNode);
    });
  });

  unittest.group('resource-NodesDeploymentsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.deployments;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkSasPortalEmpty(response as api.SasPortalEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.deployments;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSasPortalDeployment(response as api.SasPortalDeployment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.deployments;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp =
            convert.json.encode(buildSasPortalListDeploymentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSasPortalListDeploymentsResponse(
          response as api.SasPortalListDeploymentsResponse);
    });

    unittest.test('method--move', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.deployments;
      final arg_request = buildSasPortalMoveDeploymentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalMoveDeploymentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalMoveDeploymentRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.move(arg_request, arg_name, $fields: arg_$fields);
      checkSasPortalOperation(response as api.SasPortalOperation);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.deployments;
      final arg_request = buildSasPortalDeployment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDeployment(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkSasPortalDeployment(response as api.SasPortalDeployment);
    });
  });

  unittest.group('resource-NodesDeploymentsDevicesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.deployments.devices;
      final arg_request = buildSasPortalDevice();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDevice(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkSasPortalDevice(response as api.SasPortalDevice);
    });

    unittest.test('method--createSigned', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.deployments.devices;
      final arg_request = buildSasPortalCreateSignedDeviceRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalCreateSignedDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalCreateSignedDeviceRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.createSigned(arg_request, arg_parent, $fields: arg_$fields);
      checkSasPortalDevice(response as api.SasPortalDevice);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.deployments.devices;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSasPortalListDevicesResponse(
          response as api.SasPortalListDevicesResponse);
    });
  });

  unittest.group('resource-NodesDevicesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.devices;
      final arg_request = buildSasPortalDevice();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDevice(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkSasPortalDevice(response as api.SasPortalDevice);
    });

    unittest.test('method--createSigned', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.devices;
      final arg_request = buildSasPortalCreateSignedDeviceRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalCreateSignedDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalCreateSignedDeviceRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.createSigned(arg_request, arg_parent, $fields: arg_$fields);
      checkSasPortalDevice(response as api.SasPortalDevice);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.devices;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkSasPortalEmpty(response as api.SasPortalEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.devices;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSasPortalDevice(response as api.SasPortalDevice);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.devices;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSasPortalListDevicesResponse(
          response as api.SasPortalListDevicesResponse);
    });

    unittest.test('method--move', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.devices;
      final arg_request = buildSasPortalMoveDeviceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalMoveDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalMoveDeviceRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.move(arg_request, arg_name, $fields: arg_$fields);
      checkSasPortalOperation(response as api.SasPortalOperation);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.devices;
      final arg_request = buildSasPortalDevice();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDevice(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkSasPortalDevice(response as api.SasPortalDevice);
    });

    unittest.test('method--signDevice', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.devices;
      final arg_request = buildSasPortalSignDeviceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalSignDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalSignDeviceRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.signDevice(arg_request, arg_name, $fields: arg_$fields);
      checkSasPortalEmpty(response as api.SasPortalEmpty);
    });

    unittest.test('method--updateSigned', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.devices;
      final arg_request = buildSasPortalUpdateSignedDeviceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalUpdateSignedDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalUpdateSignedDeviceRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.updateSigned(arg_request, arg_name, $fields: arg_$fields);
      checkSasPortalDevice(response as api.SasPortalDevice);
    });
  });

  unittest.group('resource-NodesNodesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.nodes;
      final arg_request = buildSasPortalNode();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalNode.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalNode(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkSasPortalNode(response as api.SasPortalNode);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.nodes;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkSasPortalEmpty(response as api.SasPortalEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.nodes;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSasPortalNode(response as api.SasPortalNode);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.nodes;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalListNodesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSasPortalListNodesResponse(
          response as api.SasPortalListNodesResponse);
    });

    unittest.test('method--move', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.nodes;
      final arg_request = buildSasPortalMoveNodeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalMoveNodeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalMoveNodeRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.move(arg_request, arg_name, $fields: arg_$fields);
      checkSasPortalOperation(response as api.SasPortalOperation);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.nodes;
      final arg_request = buildSasPortalNode();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalNode.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalNode(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkSasPortalNode(response as api.SasPortalNode);
    });
  });

  unittest.group('resource-NodesNodesDeploymentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.nodes.deployments;
      final arg_request = buildSasPortalDeployment();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDeployment(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDeployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkSasPortalDeployment(response as api.SasPortalDeployment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.nodes.deployments;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp =
            convert.json.encode(buildSasPortalListDeploymentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSasPortalListDeploymentsResponse(
          response as api.SasPortalListDeploymentsResponse);
    });
  });

  unittest.group('resource-NodesNodesDevicesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.nodes.devices;
      final arg_request = buildSasPortalDevice();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalDevice(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkSasPortalDevice(response as api.SasPortalDevice);
    });

    unittest.test('method--createSigned', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.nodes.devices;
      final arg_request = buildSasPortalCreateSignedDeviceRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalCreateSignedDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalCreateSignedDeviceRequest(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.createSigned(arg_request, arg_parent, $fields: arg_$fields);
      checkSasPortalDevice(response as api.SasPortalDevice);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.nodes.devices;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSasPortalListDevicesResponse(
          response as api.SasPortalListDevicesResponse);
    });
  });

  unittest.group('resource-NodesNodesNodesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.nodes.nodes;
      final arg_request = buildSasPortalNode();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalNode.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalNode(obj);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkSasPortalNode(response as api.SasPortalNode);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).nodes.nodes.nodes;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1alpha1/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildSasPortalListNodesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSasPortalListNodesResponse(
          response as api.SasPortalListNodesResponse);
    });
  });

  unittest.group('resource-PoliciesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).policies;
      final arg_request = buildSasPortalGetPolicyRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalGetPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalGetPolicyRequest(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('v1alpha1/policies:get'),
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
        final resp = convert.json.encode(buildSasPortalPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_request, $fields: arg_$fields);
      checkSasPortalPolicy(response as api.SasPortalPolicy);
    });

    unittest.test('method--set', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).policies;
      final arg_request = buildSasPortalSetPolicyRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalSetPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalSetPolicyRequest(obj);

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
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('v1alpha1/policies:set'),
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
        final resp = convert.json.encode(buildSasPortalPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.set(arg_request, $fields: arg_$fields);
      checkSasPortalPolicy(response as api.SasPortalPolicy);
    });

    unittest.test('method--test', () async {
      final mock = HttpServerMock();
      final res = api.SASPortalTestingApi(mock).policies;
      final arg_request = buildSasPortalTestPermissionsRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SasPortalTestPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSasPortalTestPermissionsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('v1alpha1/policies:test'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildSasPortalTestPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.test(arg_request, $fields: arg_$fields);
      checkSasPortalTestPermissionsResponse(
          response as api.SasPortalTestPermissionsResponse);
    });
  });
}
