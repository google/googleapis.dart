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

import 'package:googleapis_beta/tpu/v2alpha1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAcceleratorType = 0;
api.AcceleratorType buildAcceleratorType() {
  final o = api.AcceleratorType();
  buildCounterAcceleratorType++;
  if (buildCounterAcceleratorType < 3) {
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterAcceleratorType--;
  return o;
}

void checkAcceleratorType(api.AcceleratorType o) {
  buildCounterAcceleratorType++;
  if (buildCounterAcceleratorType < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAcceleratorType--;
}

core.int buildCounterAccessConfig = 0;
api.AccessConfig buildAccessConfig() {
  final o = api.AccessConfig();
  buildCounterAccessConfig++;
  if (buildCounterAccessConfig < 3) {
    o.externalIp = 'foo';
  }
  buildCounterAccessConfig--;
  return o;
}

void checkAccessConfig(api.AccessConfig o) {
  buildCounterAccessConfig++;
  if (buildCounterAccessConfig < 3) {
    unittest.expect(
      o.externalIp!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccessConfig--;
}

core.int buildCounterAttachedDisk = 0;
api.AttachedDisk buildAttachedDisk() {
  final o = api.AttachedDisk();
  buildCounterAttachedDisk++;
  if (buildCounterAttachedDisk < 3) {
    o.mode = 'foo';
    o.sourceDisk = 'foo';
  }
  buildCounterAttachedDisk--;
  return o;
}

void checkAttachedDisk(api.AttachedDisk o) {
  buildCounterAttachedDisk++;
  if (buildCounterAttachedDisk < 3) {
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceDisk!,
      unittest.equals('foo'),
    );
  }
  buildCounterAttachedDisk--;
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

core.int buildCounterGenerateServiceIdentityRequest = 0;
api.GenerateServiceIdentityRequest buildGenerateServiceIdentityRequest() {
  final o = api.GenerateServiceIdentityRequest();
  buildCounterGenerateServiceIdentityRequest++;
  if (buildCounterGenerateServiceIdentityRequest < 3) {}
  buildCounterGenerateServiceIdentityRequest--;
  return o;
}

void checkGenerateServiceIdentityRequest(api.GenerateServiceIdentityRequest o) {
  buildCounterGenerateServiceIdentityRequest++;
  if (buildCounterGenerateServiceIdentityRequest < 3) {}
  buildCounterGenerateServiceIdentityRequest--;
}

core.int buildCounterGenerateServiceIdentityResponse = 0;
api.GenerateServiceIdentityResponse buildGenerateServiceIdentityResponse() {
  final o = api.GenerateServiceIdentityResponse();
  buildCounterGenerateServiceIdentityResponse++;
  if (buildCounterGenerateServiceIdentityResponse < 3) {
    o.identity = buildServiceIdentity();
  }
  buildCounterGenerateServiceIdentityResponse--;
  return o;
}

void checkGenerateServiceIdentityResponse(
    api.GenerateServiceIdentityResponse o) {
  buildCounterGenerateServiceIdentityResponse++;
  if (buildCounterGenerateServiceIdentityResponse < 3) {
    checkServiceIdentity(o.identity!);
  }
  buildCounterGenerateServiceIdentityResponse--;
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

core.int buildCounterGetGuestAttributesRequest = 0;
api.GetGuestAttributesRequest buildGetGuestAttributesRequest() {
  final o = api.GetGuestAttributesRequest();
  buildCounterGetGuestAttributesRequest++;
  if (buildCounterGetGuestAttributesRequest < 3) {
    o.queryPath = 'foo';
    o.workerIds = buildUnnamed0();
  }
  buildCounterGetGuestAttributesRequest--;
  return o;
}

void checkGetGuestAttributesRequest(api.GetGuestAttributesRequest o) {
  buildCounterGetGuestAttributesRequest++;
  if (buildCounterGetGuestAttributesRequest < 3) {
    unittest.expect(
      o.queryPath!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.workerIds!);
  }
  buildCounterGetGuestAttributesRequest--;
}

core.List<api.GuestAttributes> buildUnnamed1() => [
      buildGuestAttributes(),
      buildGuestAttributes(),
    ];

void checkUnnamed1(core.List<api.GuestAttributes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGuestAttributes(o[0]);
  checkGuestAttributes(o[1]);
}

core.int buildCounterGetGuestAttributesResponse = 0;
api.GetGuestAttributesResponse buildGetGuestAttributesResponse() {
  final o = api.GetGuestAttributesResponse();
  buildCounterGetGuestAttributesResponse++;
  if (buildCounterGetGuestAttributesResponse < 3) {
    o.guestAttributes = buildUnnamed1();
  }
  buildCounterGetGuestAttributesResponse--;
  return o;
}

void checkGetGuestAttributesResponse(api.GetGuestAttributesResponse o) {
  buildCounterGetGuestAttributesResponse++;
  if (buildCounterGetGuestAttributesResponse < 3) {
    checkUnnamed1(o.guestAttributes!);
  }
  buildCounterGetGuestAttributesResponse--;
}

core.int buildCounterGuestAttributes = 0;
api.GuestAttributes buildGuestAttributes() {
  final o = api.GuestAttributes();
  buildCounterGuestAttributes++;
  if (buildCounterGuestAttributes < 3) {
    o.queryPath = 'foo';
    o.queryValue = buildGuestAttributesValue();
  }
  buildCounterGuestAttributes--;
  return o;
}

void checkGuestAttributes(api.GuestAttributes o) {
  buildCounterGuestAttributes++;
  if (buildCounterGuestAttributes < 3) {
    unittest.expect(
      o.queryPath!,
      unittest.equals('foo'),
    );
    checkGuestAttributesValue(o.queryValue!);
  }
  buildCounterGuestAttributes--;
}

core.int buildCounterGuestAttributesEntry = 0;
api.GuestAttributesEntry buildGuestAttributesEntry() {
  final o = api.GuestAttributesEntry();
  buildCounterGuestAttributesEntry++;
  if (buildCounterGuestAttributesEntry < 3) {
    o.key = 'foo';
    o.namespace = 'foo';
    o.value = 'foo';
  }
  buildCounterGuestAttributesEntry--;
  return o;
}

void checkGuestAttributesEntry(api.GuestAttributesEntry o) {
  buildCounterGuestAttributesEntry++;
  if (buildCounterGuestAttributesEntry < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.namespace!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGuestAttributesEntry--;
}

core.List<api.GuestAttributesEntry> buildUnnamed2() => [
      buildGuestAttributesEntry(),
      buildGuestAttributesEntry(),
    ];

void checkUnnamed2(core.List<api.GuestAttributesEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGuestAttributesEntry(o[0]);
  checkGuestAttributesEntry(o[1]);
}

core.int buildCounterGuestAttributesValue = 0;
api.GuestAttributesValue buildGuestAttributesValue() {
  final o = api.GuestAttributesValue();
  buildCounterGuestAttributesValue++;
  if (buildCounterGuestAttributesValue < 3) {
    o.items = buildUnnamed2();
  }
  buildCounterGuestAttributesValue--;
  return o;
}

void checkGuestAttributesValue(api.GuestAttributesValue o) {
  buildCounterGuestAttributesValue++;
  if (buildCounterGuestAttributesValue < 3) {
    checkUnnamed2(o.items!);
  }
  buildCounterGuestAttributesValue--;
}

core.List<api.AcceleratorType> buildUnnamed3() => [
      buildAcceleratorType(),
      buildAcceleratorType(),
    ];

void checkUnnamed3(core.List<api.AcceleratorType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcceleratorType(o[0]);
  checkAcceleratorType(o[1]);
}

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.int buildCounterListAcceleratorTypesResponse = 0;
api.ListAcceleratorTypesResponse buildListAcceleratorTypesResponse() {
  final o = api.ListAcceleratorTypesResponse();
  buildCounterListAcceleratorTypesResponse++;
  if (buildCounterListAcceleratorTypesResponse < 3) {
    o.acceleratorTypes = buildUnnamed3();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed4();
  }
  buildCounterListAcceleratorTypesResponse--;
  return o;
}

void checkListAcceleratorTypesResponse(api.ListAcceleratorTypesResponse o) {
  buildCounterListAcceleratorTypesResponse++;
  if (buildCounterListAcceleratorTypesResponse < 3) {
    checkUnnamed3(o.acceleratorTypes!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.unreachable!);
  }
  buildCounterListAcceleratorTypesResponse--;
}

core.List<api.Location> buildUnnamed5() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed5(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed5();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed5(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Node> buildUnnamed6() => [
      buildNode(),
      buildNode(),
    ];

void checkUnnamed6(core.List<api.Node> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNode(o[0]);
  checkNode(o[1]);
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

core.int buildCounterListNodesResponse = 0;
api.ListNodesResponse buildListNodesResponse() {
  final o = api.ListNodesResponse();
  buildCounterListNodesResponse++;
  if (buildCounterListNodesResponse < 3) {
    o.nextPageToken = 'foo';
    o.nodes = buildUnnamed6();
    o.unreachable = buildUnnamed7();
  }
  buildCounterListNodesResponse--;
  return o;
}

void checkListNodesResponse(api.ListNodesResponse o) {
  buildCounterListNodesResponse++;
  if (buildCounterListNodesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.nodes!);
    checkUnnamed7(o.unreachable!);
  }
  buildCounterListNodesResponse--;
}

core.List<api.Operation> buildUnnamed8() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed8(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed8();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.RuntimeVersion> buildUnnamed9() => [
      buildRuntimeVersion(),
      buildRuntimeVersion(),
    ];

void checkUnnamed9(core.List<api.RuntimeVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRuntimeVersion(o[0]);
  checkRuntimeVersion(o[1]);
}

core.List<core.String> buildUnnamed10() => [
      'foo',
      'foo',
    ];

void checkUnnamed10(core.List<core.String> o) {
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

core.int buildCounterListRuntimeVersionsResponse = 0;
api.ListRuntimeVersionsResponse buildListRuntimeVersionsResponse() {
  final o = api.ListRuntimeVersionsResponse();
  buildCounterListRuntimeVersionsResponse++;
  if (buildCounterListRuntimeVersionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.runtimeVersions = buildUnnamed9();
    o.unreachable = buildUnnamed10();
  }
  buildCounterListRuntimeVersionsResponse--;
  return o;
}

void checkListRuntimeVersionsResponse(api.ListRuntimeVersionsResponse o) {
  buildCounterListRuntimeVersionsResponse++;
  if (buildCounterListRuntimeVersionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.runtimeVersions!);
    checkUnnamed10(o.unreachable!);
  }
  buildCounterListRuntimeVersionsResponse--;
}

core.Map<core.String, core.String> buildUnnamed11() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed11(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed12() => {
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

void checkUnnamed12(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed11();
    o.locationId = 'foo';
    o.metadata = buildUnnamed12();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterNetworkConfig = 0;
api.NetworkConfig buildNetworkConfig() {
  final o = api.NetworkConfig();
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    o.canIpForward = true;
    o.enableExternalIps = true;
    o.network = 'foo';
    o.subnetwork = 'foo';
  }
  buildCounterNetworkConfig--;
  return o;
}

void checkNetworkConfig(api.NetworkConfig o) {
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    unittest.expect(o.canIpForward!, unittest.isTrue);
    unittest.expect(o.enableExternalIps!, unittest.isTrue);
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkConfig--;
}

core.int buildCounterNetworkEndpoint = 0;
api.NetworkEndpoint buildNetworkEndpoint() {
  final o = api.NetworkEndpoint();
  buildCounterNetworkEndpoint++;
  if (buildCounterNetworkEndpoint < 3) {
    o.accessConfig = buildAccessConfig();
    o.ipAddress = 'foo';
    o.port = 42;
  }
  buildCounterNetworkEndpoint--;
  return o;
}

void checkNetworkEndpoint(api.NetworkEndpoint o) {
  buildCounterNetworkEndpoint++;
  if (buildCounterNetworkEndpoint < 3) {
    checkAccessConfig(o.accessConfig!);
    unittest.expect(
      o.ipAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
  }
  buildCounterNetworkEndpoint--;
}

core.List<api.AttachedDisk> buildUnnamed13() => [
      buildAttachedDisk(),
      buildAttachedDisk(),
    ];

void checkUnnamed13(core.List<api.AttachedDisk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachedDisk(o[0]);
  checkAttachedDisk(o[1]);
}

core.Map<core.String, core.String> buildUnnamed14() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed14(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed15() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed15(core.Map<core.String, core.String> o) {
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

core.List<api.NetworkEndpoint> buildUnnamed16() => [
      buildNetworkEndpoint(),
      buildNetworkEndpoint(),
    ];

void checkUnnamed16(core.List<api.NetworkEndpoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkEndpoint(o[0]);
  checkNetworkEndpoint(o[1]);
}

core.List<api.Symptom> buildUnnamed17() => [
      buildSymptom(),
      buildSymptom(),
    ];

void checkUnnamed17(core.List<api.Symptom> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSymptom(o[0]);
  checkSymptom(o[1]);
}

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
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

core.int buildCounterNode = 0;
api.Node buildNode() {
  final o = api.Node();
  buildCounterNode++;
  if (buildCounterNode < 3) {
    o.acceleratorType = 'foo';
    o.apiVersion = 'foo';
    o.cidrBlock = 'foo';
    o.createTime = 'foo';
    o.dataDisks = buildUnnamed13();
    o.description = 'foo';
    o.health = 'foo';
    o.healthDescription = 'foo';
    o.id = 'foo';
    o.labels = buildUnnamed14();
    o.metadata = buildUnnamed15();
    o.name = 'foo';
    o.networkConfig = buildNetworkConfig();
    o.networkEndpoints = buildUnnamed16();
    o.runtimeVersion = 'foo';
    o.schedulingConfig = buildSchedulingConfig();
    o.serviceAccount = buildServiceAccount();
    o.state = 'foo';
    o.symptoms = buildUnnamed17();
    o.tags = buildUnnamed18();
  }
  buildCounterNode--;
  return o;
}

void checkNode(api.Node o) {
  buildCounterNode++;
  if (buildCounterNode < 3) {
    unittest.expect(
      o.acceleratorType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.dataDisks!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.health!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.healthDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.labels!);
    checkUnnamed15(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkNetworkConfig(o.networkConfig!);
    checkUnnamed16(o.networkEndpoints!);
    unittest.expect(
      o.runtimeVersion!,
      unittest.equals('foo'),
    );
    checkSchedulingConfig(o.schedulingConfig!);
    checkServiceAccount(o.serviceAccount!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.symptoms!);
    checkUnnamed18(o.tags!);
  }
  buildCounterNode--;
}

core.Map<core.String, core.Object?> buildUnnamed19() => {
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

void checkUnnamed19(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed20() => {
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

void checkUnnamed20(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed19();
    o.name = 'foo';
    o.response = buildUnnamed20();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed19(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterRuntimeVersion = 0;
api.RuntimeVersion buildRuntimeVersion() {
  final o = api.RuntimeVersion();
  buildCounterRuntimeVersion++;
  if (buildCounterRuntimeVersion < 3) {
    o.name = 'foo';
    o.version = 'foo';
  }
  buildCounterRuntimeVersion--;
  return o;
}

void checkRuntimeVersion(api.RuntimeVersion o) {
  buildCounterRuntimeVersion++;
  if (buildCounterRuntimeVersion < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterRuntimeVersion--;
}

core.int buildCounterSchedulingConfig = 0;
api.SchedulingConfig buildSchedulingConfig() {
  final o = api.SchedulingConfig();
  buildCounterSchedulingConfig++;
  if (buildCounterSchedulingConfig < 3) {
    o.preemptible = true;
    o.reserved = true;
  }
  buildCounterSchedulingConfig--;
  return o;
}

void checkSchedulingConfig(api.SchedulingConfig o) {
  buildCounterSchedulingConfig++;
  if (buildCounterSchedulingConfig < 3) {
    unittest.expect(o.preemptible!, unittest.isTrue);
    unittest.expect(o.reserved!, unittest.isTrue);
  }
  buildCounterSchedulingConfig--;
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

core.int buildCounterServiceAccount = 0;
api.ServiceAccount buildServiceAccount() {
  final o = api.ServiceAccount();
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    o.email = 'foo';
    o.scope = buildUnnamed21();
  }
  buildCounterServiceAccount--;
  return o;
}

void checkServiceAccount(api.ServiceAccount o) {
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.scope!);
  }
  buildCounterServiceAccount--;
}

core.int buildCounterServiceIdentity = 0;
api.ServiceIdentity buildServiceIdentity() {
  final o = api.ServiceIdentity();
  buildCounterServiceIdentity++;
  if (buildCounterServiceIdentity < 3) {
    o.email = 'foo';
  }
  buildCounterServiceIdentity--;
  return o;
}

void checkServiceIdentity(api.ServiceIdentity o) {
  buildCounterServiceIdentity++;
  if (buildCounterServiceIdentity < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceIdentity--;
}

core.int buildCounterStartNodeRequest = 0;
api.StartNodeRequest buildStartNodeRequest() {
  final o = api.StartNodeRequest();
  buildCounterStartNodeRequest++;
  if (buildCounterStartNodeRequest < 3) {}
  buildCounterStartNodeRequest--;
  return o;
}

void checkStartNodeRequest(api.StartNodeRequest o) {
  buildCounterStartNodeRequest++;
  if (buildCounterStartNodeRequest < 3) {}
  buildCounterStartNodeRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed22() => {
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

void checkUnnamed22(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
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
  var casted8 = (o['y']!) as core.Map;
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
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed23() => [
      buildUnnamed22(),
      buildUnnamed22(),
    ];

void checkUnnamed23(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed22(o[0]);
  checkUnnamed22(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed23();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed23(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterStopNodeRequest = 0;
api.StopNodeRequest buildStopNodeRequest() {
  final o = api.StopNodeRequest();
  buildCounterStopNodeRequest++;
  if (buildCounterStopNodeRequest < 3) {}
  buildCounterStopNodeRequest--;
  return o;
}

void checkStopNodeRequest(api.StopNodeRequest o) {
  buildCounterStopNodeRequest++;
  if (buildCounterStopNodeRequest < 3) {}
  buildCounterStopNodeRequest--;
}

core.int buildCounterSymptom = 0;
api.Symptom buildSymptom() {
  final o = api.Symptom();
  buildCounterSymptom++;
  if (buildCounterSymptom < 3) {
    o.createTime = 'foo';
    o.details = 'foo';
    o.symptomType = 'foo';
    o.workerId = 'foo';
  }
  buildCounterSymptom--;
  return o;
}

void checkSymptom(api.Symptom o) {
  buildCounterSymptom++;
  if (buildCounterSymptom < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.details!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.symptomType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSymptom--;
}

void main() {
  unittest.group('obj-schema-AcceleratorType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAcceleratorType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AcceleratorType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAcceleratorType(od);
    });
  });

  unittest.group('obj-schema-AccessConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccessConfig(od);
    });
  });

  unittest.group('obj-schema-AttachedDisk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttachedDisk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttachedDisk.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttachedDisk(od);
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

  unittest.group('obj-schema-GenerateServiceIdentityRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateServiceIdentityRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateServiceIdentityRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateServiceIdentityRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateServiceIdentityResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateServiceIdentityResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateServiceIdentityResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateServiceIdentityResponse(od);
    });
  });

  unittest.group('obj-schema-GetGuestAttributesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetGuestAttributesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetGuestAttributesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetGuestAttributesRequest(od);
    });
  });

  unittest.group('obj-schema-GetGuestAttributesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetGuestAttributesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetGuestAttributesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetGuestAttributesResponse(od);
    });
  });

  unittest.group('obj-schema-GuestAttributes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuestAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuestAttributes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGuestAttributes(od);
    });
  });

  unittest.group('obj-schema-GuestAttributesEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuestAttributesEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuestAttributesEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGuestAttributesEntry(od);
    });
  });

  unittest.group('obj-schema-GuestAttributesValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuestAttributesValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuestAttributesValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGuestAttributesValue(od);
    });
  });

  unittest.group('obj-schema-ListAcceleratorTypesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAcceleratorTypesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAcceleratorTypesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAcceleratorTypesResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListNodesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNodesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNodesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListNodesResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListRuntimeVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRuntimeVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRuntimeVersionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRuntimeVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-NetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-NetworkEndpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkEndpoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkEndpoint(od);
    });
  });

  unittest.group('obj-schema-Node', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Node.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNode(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-RuntimeVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRuntimeVersion(od);
    });
  });

  unittest.group('obj-schema-SchedulingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchedulingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchedulingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSchedulingConfig(od);
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

  unittest.group('obj-schema-ServiceIdentity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceIdentity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceIdentity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceIdentity(od);
    });
  });

  unittest.group('obj-schema-StartNodeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartNodeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartNodeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStartNodeRequest(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-StopNodeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopNodeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopNodeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStopNodeRequest(od);
    });
  });

  unittest.group('obj-schema-Symptom', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSymptom();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Symptom.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSymptom(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--generateServiceIdentity', () async {
      final mock = HttpServerMock();
      final res = api.TPUApi(mock).projects.locations;
      final arg_request = buildGenerateServiceIdentityRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GenerateServiceIdentityRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGenerateServiceIdentityRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2alpha1/'),
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
        final resp =
            convert.json.encode(buildGenerateServiceIdentityResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generateServiceIdentity(
          arg_request, arg_parent,
          $fields: arg_$fields);
      checkGenerateServiceIdentityResponse(
          response as api.GenerateServiceIdentityResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TPUApi(mock).projects.locations;
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
          unittest.equals('v2alpha1/'),
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
        final resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TPUApi(mock).projects.locations;
      final arg_name = 'foo';
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
          unittest.equals('v2alpha1/'),
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
        final resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsAcceleratorTypesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TPUApi(mock).projects.locations.acceleratorTypes;
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
          unittest.equals('v2alpha1/'),
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
        final resp = convert.json.encode(buildAcceleratorType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAcceleratorType(response as api.AcceleratorType);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TPUApi(mock).projects.locations.acceleratorTypes;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
          unittest.equals('v2alpha1/'),
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
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
        final resp = convert.json.encode(buildListAcceleratorTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAcceleratorTypesResponse(
          response as api.ListAcceleratorTypesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsNodesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TPUApi(mock).projects.locations.nodes;
      final arg_request = buildNode();
      final arg_parent = 'foo';
      final arg_nodeId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Node.fromJson(json as core.Map<core.String, core.dynamic>);
        checkNode(obj);

        final path = (req.url).path;
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
          unittest.equals('v2alpha1/'),
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
          queryMap['nodeId']!.first,
          unittest.equals(arg_nodeId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          nodeId: arg_nodeId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TPUApi(mock).projects.locations.nodes;
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
          unittest.equals('v2alpha1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TPUApi(mock).projects.locations.nodes;
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
          unittest.equals('v2alpha1/'),
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
        final resp = convert.json.encode(buildNode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNode(response as api.Node);
    });

    unittest.test('method--getGuestAttributes', () async {
      final mock = HttpServerMock();
      final res = api.TPUApi(mock).projects.locations.nodes;
      final arg_request = buildGetGuestAttributesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetGuestAttributesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetGuestAttributesRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2alpha1/'),
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
        final resp = convert.json.encode(buildGetGuestAttributesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getGuestAttributes(arg_request, arg_name,
          $fields: arg_$fields);
      checkGetGuestAttributesResponse(
          response as api.GetGuestAttributesResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TPUApi(mock).projects.locations.nodes;
      final arg_parent = 'foo';
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
          unittest.equals('v2alpha1/'),
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
        final resp = convert.json.encode(buildListNodesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListNodesResponse(response as api.ListNodesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.TPUApi(mock).projects.locations.nodes;
      final arg_request = buildNode();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Node.fromJson(json as core.Map<core.String, core.dynamic>);
        checkNode(obj);

        final path = (req.url).path;
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
          unittest.equals('v2alpha1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--start', () async {
      final mock = HttpServerMock();
      final res = api.TPUApi(mock).projects.locations.nodes;
      final arg_request = buildStartNodeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StartNodeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartNodeRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2alpha1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.start(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.TPUApi(mock).projects.locations.nodes;
      final arg_request = buildStopNodeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StopNodeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStopNodeRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2alpha1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.stop(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.TPUApi(mock).projects.locations.operations;
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
          unittest.equals('v2alpha1/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.cancel(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TPUApi(mock).projects.locations.operations;
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
          unittest.equals('v2alpha1/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TPUApi(mock).projects.locations.operations;
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
          unittest.equals('v2alpha1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TPUApi(mock).projects.locations.operations;
      final arg_name = 'foo';
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
          unittest.equals('v2alpha1/'),
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
        final resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsRuntimeVersionsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TPUApi(mock).projects.locations.runtimeVersions;
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
          unittest.equals('v2alpha1/'),
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
        final resp = convert.json.encode(buildRuntimeVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRuntimeVersion(response as api.RuntimeVersion);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TPUApi(mock).projects.locations.runtimeVersions;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
          unittest.equals('v2alpha1/'),
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
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
        final resp = convert.json.encode(buildListRuntimeVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListRuntimeVersionsResponse(
          response as api.ListRuntimeVersionsResponse);
    });
  });
}
