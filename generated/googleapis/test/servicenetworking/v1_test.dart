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

import 'package:googleapis/servicenetworking/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAddDnsRecordSetRequest = 0;
api.AddDnsRecordSetRequest buildAddDnsRecordSetRequest() {
  final o = api.AddDnsRecordSetRequest();
  buildCounterAddDnsRecordSetRequest++;
  if (buildCounterAddDnsRecordSetRequest < 3) {
    o.consumerNetwork = 'foo';
    o.dnsRecordSet = buildDnsRecordSet();
    o.zone = 'foo';
  }
  buildCounterAddDnsRecordSetRequest--;
  return o;
}

void checkAddDnsRecordSetRequest(api.AddDnsRecordSetRequest o) {
  buildCounterAddDnsRecordSetRequest++;
  if (buildCounterAddDnsRecordSetRequest < 3) {
    unittest.expect(
      o.consumerNetwork!,
      unittest.equals('foo'),
    );
    checkDnsRecordSet(o.dnsRecordSet!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterAddDnsRecordSetRequest--;
}

core.int buildCounterAddDnsZoneRequest = 0;
api.AddDnsZoneRequest buildAddDnsZoneRequest() {
  final o = api.AddDnsZoneRequest();
  buildCounterAddDnsZoneRequest++;
  if (buildCounterAddDnsZoneRequest < 3) {
    o.consumerNetwork = 'foo';
    o.dnsSuffix = 'foo';
    o.name = 'foo';
  }
  buildCounterAddDnsZoneRequest--;
  return o;
}

void checkAddDnsZoneRequest(api.AddDnsZoneRequest o) {
  buildCounterAddDnsZoneRequest++;
  if (buildCounterAddDnsZoneRequest < 3) {
    unittest.expect(
      o.consumerNetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dnsSuffix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterAddDnsZoneRequest--;
}

core.List<api.PolicyBinding> buildUnnamed0() => [
      buildPolicyBinding(),
      buildPolicyBinding(),
    ];

void checkUnnamed0(core.List<api.PolicyBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyBinding(o[0]);
  checkPolicyBinding(o[1]);
}

core.int buildCounterAddRolesRequest = 0;
api.AddRolesRequest buildAddRolesRequest() {
  final o = api.AddRolesRequest();
  buildCounterAddRolesRequest++;
  if (buildCounterAddRolesRequest < 3) {
    o.consumerNetwork = 'foo';
    o.policyBinding = buildUnnamed0();
  }
  buildCounterAddRolesRequest--;
  return o;
}

void checkAddRolesRequest(api.AddRolesRequest o) {
  buildCounterAddRolesRequest++;
  if (buildCounterAddRolesRequest < 3) {
    unittest.expect(
      o.consumerNetwork!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.policyBinding!);
  }
  buildCounterAddRolesRequest--;
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

core.List<api.SecondaryIpRangeSpec> buildUnnamed2() => [
      buildSecondaryIpRangeSpec(),
      buildSecondaryIpRangeSpec(),
    ];

void checkUnnamed2(core.List<api.SecondaryIpRangeSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecondaryIpRangeSpec(o[0]);
  checkSecondaryIpRangeSpec(o[1]);
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

core.int buildCounterAddSubnetworkRequest = 0;
api.AddSubnetworkRequest buildAddSubnetworkRequest() {
  final o = api.AddSubnetworkRequest();
  buildCounterAddSubnetworkRequest++;
  if (buildCounterAddSubnetworkRequest < 3) {
    o.checkServiceNetworkingUsePermission = true;
    o.consumer = 'foo';
    o.consumerNetwork = 'foo';
    o.description = 'foo';
    o.ipPrefixLength = 42;
    o.outsideAllocationPublicIpRange = 'foo';
    o.privateIpv6GoogleAccess = 'foo';
    o.purpose = 'foo';
    o.region = 'foo';
    o.requestedAddress = 'foo';
    o.requestedRanges = buildUnnamed1();
    o.secondaryIpRangeSpecs = buildUnnamed2();
    o.subnetwork = 'foo';
    o.subnetworkUsers = buildUnnamed3();
  }
  buildCounterAddSubnetworkRequest--;
  return o;
}

void checkAddSubnetworkRequest(api.AddSubnetworkRequest o) {
  buildCounterAddSubnetworkRequest++;
  if (buildCounterAddSubnetworkRequest < 3) {
    unittest.expect(o.checkServiceNetworkingUsePermission!, unittest.isTrue);
    unittest.expect(
      o.consumer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.consumerNetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipPrefixLength!,
      unittest.equals(42),
    );
    unittest.expect(
      o.outsideAllocationPublicIpRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privateIpv6GoogleAccess!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.purpose!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestedAddress!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.requestedRanges!);
    checkUnnamed2(o.secondaryIpRangeSpecs!);
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.subnetworkUsers!);
  }
  buildCounterAddSubnetworkRequest--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  final o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
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

core.int buildCounterConnection = 0;
api.Connection buildConnection() {
  final o = api.Connection();
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    o.network = 'foo';
    o.peering = 'foo';
    o.reservedPeeringRanges = buildUnnamed4();
    o.service = 'foo';
  }
  buildCounterConnection--;
  return o;
}

void checkConnection(api.Connection o) {
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.peering!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.reservedPeeringRanges!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnection--;
}

core.List<api.GoogleCloudServicenetworkingV1ConsumerConfigReservedRange>
    buildUnnamed5() => [
          buildGoogleCloudServicenetworkingV1ConsumerConfigReservedRange(),
          buildGoogleCloudServicenetworkingV1ConsumerConfigReservedRange(),
        ];

void checkUnnamed5(
    core.List<api.GoogleCloudServicenetworkingV1ConsumerConfigReservedRange>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudServicenetworkingV1ConsumerConfigReservedRange(o[0]);
  checkGoogleCloudServicenetworkingV1ConsumerConfigReservedRange(o[1]);
}

core.int buildCounterConsumerConfig = 0;
api.ConsumerConfig buildConsumerConfig() {
  final o = api.ConsumerConfig();
  buildCounterConsumerConfig++;
  if (buildCounterConsumerConfig < 3) {
    o.consumerExportCustomRoutes = true;
    o.consumerExportSubnetRoutesWithPublicIp = true;
    o.consumerImportCustomRoutes = true;
    o.consumerImportSubnetRoutesWithPublicIp = true;
    o.producerExportCustomRoutes = true;
    o.producerExportSubnetRoutesWithPublicIp = true;
    o.producerImportCustomRoutes = true;
    o.producerImportSubnetRoutesWithPublicIp = true;
    o.producerNetwork = 'foo';
    o.reservedRanges = buildUnnamed5();
    o.vpcScReferenceArchitectureEnabled = true;
  }
  buildCounterConsumerConfig--;
  return o;
}

void checkConsumerConfig(api.ConsumerConfig o) {
  buildCounterConsumerConfig++;
  if (buildCounterConsumerConfig < 3) {
    unittest.expect(o.consumerExportCustomRoutes!, unittest.isTrue);
    unittest.expect(o.consumerExportSubnetRoutesWithPublicIp!, unittest.isTrue);
    unittest.expect(o.consumerImportCustomRoutes!, unittest.isTrue);
    unittest.expect(o.consumerImportSubnetRoutesWithPublicIp!, unittest.isTrue);
    unittest.expect(o.producerExportCustomRoutes!, unittest.isTrue);
    unittest.expect(o.producerExportSubnetRoutesWithPublicIp!, unittest.isTrue);
    unittest.expect(o.producerImportCustomRoutes!, unittest.isTrue);
    unittest.expect(o.producerImportSubnetRoutesWithPublicIp!, unittest.isTrue);
    unittest.expect(
      o.producerNetwork!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.reservedRanges!);
    unittest.expect(o.vpcScReferenceArchitectureEnabled!, unittest.isTrue);
  }
  buildCounterConsumerConfig--;
}

core.int buildCounterConsumerProject = 0;
api.ConsumerProject buildConsumerProject() {
  final o = api.ConsumerProject();
  buildCounterConsumerProject++;
  if (buildCounterConsumerProject < 3) {
    o.projectNum = 'foo';
  }
  buildCounterConsumerProject--;
  return o;
}

void checkConsumerProject(api.ConsumerProject o) {
  buildCounterConsumerProject++;
  if (buildCounterConsumerProject < 3) {
    unittest.expect(
      o.projectNum!,
      unittest.equals('foo'),
    );
  }
  buildCounterConsumerProject--;
}

core.int buildCounterDeleteConnectionRequest = 0;
api.DeleteConnectionRequest buildDeleteConnectionRequest() {
  final o = api.DeleteConnectionRequest();
  buildCounterDeleteConnectionRequest++;
  if (buildCounterDeleteConnectionRequest < 3) {
    o.consumerNetwork = 'foo';
  }
  buildCounterDeleteConnectionRequest--;
  return o;
}

void checkDeleteConnectionRequest(api.DeleteConnectionRequest o) {
  buildCounterDeleteConnectionRequest++;
  if (buildCounterDeleteConnectionRequest < 3) {
    unittest.expect(
      o.consumerNetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeleteConnectionRequest--;
}

core.int buildCounterDisableVpcServiceControlsRequest = 0;
api.DisableVpcServiceControlsRequest buildDisableVpcServiceControlsRequest() {
  final o = api.DisableVpcServiceControlsRequest();
  buildCounterDisableVpcServiceControlsRequest++;
  if (buildCounterDisableVpcServiceControlsRequest < 3) {
    o.consumerNetwork = 'foo';
  }
  buildCounterDisableVpcServiceControlsRequest--;
  return o;
}

void checkDisableVpcServiceControlsRequest(
    api.DisableVpcServiceControlsRequest o) {
  buildCounterDisableVpcServiceControlsRequest++;
  if (buildCounterDisableVpcServiceControlsRequest < 3) {
    unittest.expect(
      o.consumerNetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterDisableVpcServiceControlsRequest--;
}

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.int buildCounterDnsRecordSet = 0;
api.DnsRecordSet buildDnsRecordSet() {
  final o = api.DnsRecordSet();
  buildCounterDnsRecordSet++;
  if (buildCounterDnsRecordSet < 3) {
    o.data = buildUnnamed6();
    o.domain = 'foo';
    o.ttl = 'foo';
    o.type = 'foo';
  }
  buildCounterDnsRecordSet--;
  return o;
}

void checkDnsRecordSet(api.DnsRecordSet o) {
  buildCounterDnsRecordSet++;
  if (buildCounterDnsRecordSet < 3) {
    checkUnnamed6(o.data!);
    unittest.expect(
      o.domain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ttl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterDnsRecordSet--;
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

core.int buildCounterEnableVpcServiceControlsRequest = 0;
api.EnableVpcServiceControlsRequest buildEnableVpcServiceControlsRequest() {
  final o = api.EnableVpcServiceControlsRequest();
  buildCounterEnableVpcServiceControlsRequest++;
  if (buildCounterEnableVpcServiceControlsRequest < 3) {
    o.consumerNetwork = 'foo';
  }
  buildCounterEnableVpcServiceControlsRequest--;
  return o;
}

void checkEnableVpcServiceControlsRequest(
    api.EnableVpcServiceControlsRequest o) {
  buildCounterEnableVpcServiceControlsRequest++;
  if (buildCounterEnableVpcServiceControlsRequest < 3) {
    unittest.expect(
      o.consumerNetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnableVpcServiceControlsRequest--;
}

core.int buildCounterGoogleCloudServicenetworkingV1ConsumerConfigReservedRange =
    0;
api.GoogleCloudServicenetworkingV1ConsumerConfigReservedRange
    buildGoogleCloudServicenetworkingV1ConsumerConfigReservedRange() {
  final o = api.GoogleCloudServicenetworkingV1ConsumerConfigReservedRange();
  buildCounterGoogleCloudServicenetworkingV1ConsumerConfigReservedRange++;
  if (buildCounterGoogleCloudServicenetworkingV1ConsumerConfigReservedRange <
      3) {
    o.address = 'foo';
    o.ipPrefixLength = 42;
    o.name = 'foo';
  }
  buildCounterGoogleCloudServicenetworkingV1ConsumerConfigReservedRange--;
  return o;
}

void checkGoogleCloudServicenetworkingV1ConsumerConfigReservedRange(
    api.GoogleCloudServicenetworkingV1ConsumerConfigReservedRange o) {
  buildCounterGoogleCloudServicenetworkingV1ConsumerConfigReservedRange++;
  if (buildCounterGoogleCloudServicenetworkingV1ConsumerConfigReservedRange <
      3) {
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipPrefixLength!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudServicenetworkingV1ConsumerConfigReservedRange--;
}

core.List<api.Connection> buildUnnamed7() => [
      buildConnection(),
      buildConnection(),
    ];

void checkUnnamed7(core.List<api.Connection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnection(o[0]);
  checkConnection(o[1]);
}

core.int buildCounterListConnectionsResponse = 0;
api.ListConnectionsResponse buildListConnectionsResponse() {
  final o = api.ListConnectionsResponse();
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    o.connections = buildUnnamed7();
  }
  buildCounterListConnectionsResponse--;
  return o;
}

void checkListConnectionsResponse(api.ListConnectionsResponse o) {
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    checkUnnamed7(o.connections!);
  }
  buildCounterListConnectionsResponse--;
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

core.List<api.PeeredDnsDomain> buildUnnamed9() => [
      buildPeeredDnsDomain(),
      buildPeeredDnsDomain(),
    ];

void checkUnnamed9(core.List<api.PeeredDnsDomain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPeeredDnsDomain(o[0]);
  checkPeeredDnsDomain(o[1]);
}

core.int buildCounterListPeeredDnsDomainsResponse = 0;
api.ListPeeredDnsDomainsResponse buildListPeeredDnsDomainsResponse() {
  final o = api.ListPeeredDnsDomainsResponse();
  buildCounterListPeeredDnsDomainsResponse++;
  if (buildCounterListPeeredDnsDomainsResponse < 3) {
    o.peeredDnsDomains = buildUnnamed9();
  }
  buildCounterListPeeredDnsDomainsResponse--;
  return o;
}

void checkListPeeredDnsDomainsResponse(api.ListPeeredDnsDomainsResponse o) {
  buildCounterListPeeredDnsDomainsResponse++;
  if (buildCounterListPeeredDnsDomainsResponse < 3) {
    checkUnnamed9(o.peeredDnsDomains!);
  }
  buildCounterListPeeredDnsDomainsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed10() => {
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

void checkUnnamed10(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed11() => {
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

void checkUnnamed11(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed10();
    o.name = 'foo';
    o.response = buildUnnamed11();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed10(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterPeeredDnsDomain = 0;
api.PeeredDnsDomain buildPeeredDnsDomain() {
  final o = api.PeeredDnsDomain();
  buildCounterPeeredDnsDomain++;
  if (buildCounterPeeredDnsDomain < 3) {
    o.dnsSuffix = 'foo';
    o.name = 'foo';
  }
  buildCounterPeeredDnsDomain--;
  return o;
}

void checkPeeredDnsDomain(api.PeeredDnsDomain o) {
  buildCounterPeeredDnsDomain++;
  if (buildCounterPeeredDnsDomain < 3) {
    unittest.expect(
      o.dnsSuffix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterPeeredDnsDomain--;
}

core.int buildCounterPolicyBinding = 0;
api.PolicyBinding buildPolicyBinding() {
  final o = api.PolicyBinding();
  buildCounterPolicyBinding++;
  if (buildCounterPolicyBinding < 3) {
    o.member = 'foo';
    o.role = 'foo';
  }
  buildCounterPolicyBinding--;
  return o;
}

void checkPolicyBinding(api.PolicyBinding o) {
  buildCounterPolicyBinding++;
  if (buildCounterPolicyBinding < 3) {
    unittest.expect(
      o.member!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterPolicyBinding--;
}

core.List<core.String> buildUnnamed12() => [
      'foo',
      'foo',
    ];

void checkUnnamed12(core.List<core.String> o) {
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

core.List<core.int> buildUnnamed13() => [
      42,
      42,
    ];

void checkUnnamed13(core.List<core.int> o) {
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

core.List<api.Subnetwork> buildUnnamed14() => [
      buildSubnetwork(),
      buildSubnetwork(),
    ];

void checkUnnamed14(core.List<api.Subnetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubnetwork(o[0]);
  checkSubnetwork(o[1]);
}

core.int buildCounterRangeReservation = 0;
api.RangeReservation buildRangeReservation() {
  final o = api.RangeReservation();
  buildCounterRangeReservation++;
  if (buildCounterRangeReservation < 3) {
    o.ipPrefixLength = 42;
    o.requestedRanges = buildUnnamed12();
    o.secondaryRangeIpPrefixLengths = buildUnnamed13();
    o.subnetworkCandidates = buildUnnamed14();
  }
  buildCounterRangeReservation--;
  return o;
}

void checkRangeReservation(api.RangeReservation o) {
  buildCounterRangeReservation++;
  if (buildCounterRangeReservation < 3) {
    unittest.expect(
      o.ipPrefixLength!,
      unittest.equals(42),
    );
    checkUnnamed12(o.requestedRanges!);
    checkUnnamed13(o.secondaryRangeIpPrefixLengths!);
    checkUnnamed14(o.subnetworkCandidates!);
  }
  buildCounterRangeReservation--;
}

core.int buildCounterRemoveDnsRecordSetRequest = 0;
api.RemoveDnsRecordSetRequest buildRemoveDnsRecordSetRequest() {
  final o = api.RemoveDnsRecordSetRequest();
  buildCounterRemoveDnsRecordSetRequest++;
  if (buildCounterRemoveDnsRecordSetRequest < 3) {
    o.consumerNetwork = 'foo';
    o.dnsRecordSet = buildDnsRecordSet();
    o.zone = 'foo';
  }
  buildCounterRemoveDnsRecordSetRequest--;
  return o;
}

void checkRemoveDnsRecordSetRequest(api.RemoveDnsRecordSetRequest o) {
  buildCounterRemoveDnsRecordSetRequest++;
  if (buildCounterRemoveDnsRecordSetRequest < 3) {
    unittest.expect(
      o.consumerNetwork!,
      unittest.equals('foo'),
    );
    checkDnsRecordSet(o.dnsRecordSet!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemoveDnsRecordSetRequest--;
}

core.int buildCounterRemoveDnsZoneRequest = 0;
api.RemoveDnsZoneRequest buildRemoveDnsZoneRequest() {
  final o = api.RemoveDnsZoneRequest();
  buildCounterRemoveDnsZoneRequest++;
  if (buildCounterRemoveDnsZoneRequest < 3) {
    o.consumerNetwork = 'foo';
    o.name = 'foo';
  }
  buildCounterRemoveDnsZoneRequest--;
  return o;
}

void checkRemoveDnsZoneRequest(api.RemoveDnsZoneRequest o) {
  buildCounterRemoveDnsZoneRequest++;
  if (buildCounterRemoveDnsZoneRequest < 3) {
    unittest.expect(
      o.consumerNetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemoveDnsZoneRequest--;
}

core.int buildCounterSearchRangeRequest = 0;
api.SearchRangeRequest buildSearchRangeRequest() {
  final o = api.SearchRangeRequest();
  buildCounterSearchRangeRequest++;
  if (buildCounterSearchRangeRequest < 3) {
    o.ipPrefixLength = 42;
    o.network = 'foo';
  }
  buildCounterSearchRangeRequest--;
  return o;
}

void checkSearchRangeRequest(api.SearchRangeRequest o) {
  buildCounterSearchRangeRequest++;
  if (buildCounterSearchRangeRequest < 3) {
    unittest.expect(
      o.ipPrefixLength!,
      unittest.equals(42),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchRangeRequest--;
}

core.int buildCounterSecondaryIpRange = 0;
api.SecondaryIpRange buildSecondaryIpRange() {
  final o = api.SecondaryIpRange();
  buildCounterSecondaryIpRange++;
  if (buildCounterSecondaryIpRange < 3) {
    o.ipCidrRange = 'foo';
    o.rangeName = 'foo';
  }
  buildCounterSecondaryIpRange--;
  return o;
}

void checkSecondaryIpRange(api.SecondaryIpRange o) {
  buildCounterSecondaryIpRange++;
  if (buildCounterSecondaryIpRange < 3) {
    unittest.expect(
      o.ipCidrRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rangeName!,
      unittest.equals('foo'),
    );
  }
  buildCounterSecondaryIpRange--;
}

core.int buildCounterSecondaryIpRangeSpec = 0;
api.SecondaryIpRangeSpec buildSecondaryIpRangeSpec() {
  final o = api.SecondaryIpRangeSpec();
  buildCounterSecondaryIpRangeSpec++;
  if (buildCounterSecondaryIpRangeSpec < 3) {
    o.ipPrefixLength = 42;
    o.outsideAllocationPublicIpRange = 'foo';
    o.rangeName = 'foo';
    o.requestedAddress = 'foo';
  }
  buildCounterSecondaryIpRangeSpec--;
  return o;
}

void checkSecondaryIpRangeSpec(api.SecondaryIpRangeSpec o) {
  buildCounterSecondaryIpRangeSpec++;
  if (buildCounterSecondaryIpRangeSpec < 3) {
    unittest.expect(
      o.ipPrefixLength!,
      unittest.equals(42),
    );
    unittest.expect(
      o.outsideAllocationPublicIpRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rangeName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestedAddress!,
      unittest.equals('foo'),
    );
  }
  buildCounterSecondaryIpRangeSpec--;
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed16() => [
      buildUnnamed15(),
      buildUnnamed15(),
    ];

void checkUnnamed16(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed15(o[0]);
  checkUnnamed15(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed16();
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
    checkUnnamed16(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<api.SecondaryIpRange> buildUnnamed17() => [
      buildSecondaryIpRange(),
      buildSecondaryIpRange(),
    ];

void checkUnnamed17(core.List<api.SecondaryIpRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecondaryIpRange(o[0]);
  checkSecondaryIpRange(o[1]);
}

core.int buildCounterSubnetwork = 0;
api.Subnetwork buildSubnetwork() {
  final o = api.Subnetwork();
  buildCounterSubnetwork++;
  if (buildCounterSubnetwork < 3) {
    o.ipCidrRange = 'foo';
    o.name = 'foo';
    o.network = 'foo';
    o.outsideAllocation = true;
    o.region = 'foo';
    o.secondaryIpRanges = buildUnnamed17();
  }
  buildCounterSubnetwork--;
  return o;
}

void checkSubnetwork(api.Subnetwork o) {
  buildCounterSubnetwork++;
  if (buildCounterSubnetwork < 3) {
    unittest.expect(
      o.ipCidrRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(o.outsideAllocation!, unittest.isTrue);
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.secondaryIpRanges!);
  }
  buildCounterSubnetwork--;
}

core.int buildCounterUpdateConsumerConfigRequest = 0;
api.UpdateConsumerConfigRequest buildUpdateConsumerConfigRequest() {
  final o = api.UpdateConsumerConfigRequest();
  buildCounterUpdateConsumerConfigRequest++;
  if (buildCounterUpdateConsumerConfigRequest < 3) {
    o.consumerConfig = buildConsumerConfig();
  }
  buildCounterUpdateConsumerConfigRequest--;
  return o;
}

void checkUpdateConsumerConfigRequest(api.UpdateConsumerConfigRequest o) {
  buildCounterUpdateConsumerConfigRequest++;
  if (buildCounterUpdateConsumerConfigRequest < 3) {
    checkConsumerConfig(o.consumerConfig!);
  }
  buildCounterUpdateConsumerConfigRequest--;
}

core.int buildCounterUpdateDnsRecordSetRequest = 0;
api.UpdateDnsRecordSetRequest buildUpdateDnsRecordSetRequest() {
  final o = api.UpdateDnsRecordSetRequest();
  buildCounterUpdateDnsRecordSetRequest++;
  if (buildCounterUpdateDnsRecordSetRequest < 3) {
    o.consumerNetwork = 'foo';
    o.existingDnsRecordSet = buildDnsRecordSet();
    o.newDnsRecordSet = buildDnsRecordSet();
    o.zone = 'foo';
  }
  buildCounterUpdateDnsRecordSetRequest--;
  return o;
}

void checkUpdateDnsRecordSetRequest(api.UpdateDnsRecordSetRequest o) {
  buildCounterUpdateDnsRecordSetRequest++;
  if (buildCounterUpdateDnsRecordSetRequest < 3) {
    unittest.expect(
      o.consumerNetwork!,
      unittest.equals('foo'),
    );
    checkDnsRecordSet(o.existingDnsRecordSet!);
    checkDnsRecordSet(o.newDnsRecordSet!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateDnsRecordSetRequest--;
}

core.int buildCounterValidateConsumerConfigRequest = 0;
api.ValidateConsumerConfigRequest buildValidateConsumerConfigRequest() {
  final o = api.ValidateConsumerConfigRequest();
  buildCounterValidateConsumerConfigRequest++;
  if (buildCounterValidateConsumerConfigRequest < 3) {
    o.checkServiceNetworkingUsePermission = true;
    o.consumerNetwork = 'foo';
    o.consumerProject = buildConsumerProject();
    o.rangeReservation = buildRangeReservation();
    o.validateNetwork = true;
  }
  buildCounterValidateConsumerConfigRequest--;
  return o;
}

void checkValidateConsumerConfigRequest(api.ValidateConsumerConfigRequest o) {
  buildCounterValidateConsumerConfigRequest++;
  if (buildCounterValidateConsumerConfigRequest < 3) {
    unittest.expect(o.checkServiceNetworkingUsePermission!, unittest.isTrue);
    unittest.expect(
      o.consumerNetwork!,
      unittest.equals('foo'),
    );
    checkConsumerProject(o.consumerProject!);
    checkRangeReservation(o.rangeReservation!);
    unittest.expect(o.validateNetwork!, unittest.isTrue);
  }
  buildCounterValidateConsumerConfigRequest--;
}

core.List<api.Subnetwork> buildUnnamed18() => [
      buildSubnetwork(),
      buildSubnetwork(),
    ];

void checkUnnamed18(core.List<api.Subnetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubnetwork(o[0]);
  checkSubnetwork(o[1]);
}

core.int buildCounterValidateConsumerConfigResponse = 0;
api.ValidateConsumerConfigResponse buildValidateConsumerConfigResponse() {
  final o = api.ValidateConsumerConfigResponse();
  buildCounterValidateConsumerConfigResponse++;
  if (buildCounterValidateConsumerConfigResponse < 3) {
    o.existingSubnetworkCandidates = buildUnnamed18();
    o.isValid = true;
    o.validationError = 'foo';
  }
  buildCounterValidateConsumerConfigResponse--;
  return o;
}

void checkValidateConsumerConfigResponse(api.ValidateConsumerConfigResponse o) {
  buildCounterValidateConsumerConfigResponse++;
  if (buildCounterValidateConsumerConfigResponse < 3) {
    checkUnnamed18(o.existingSubnetworkCandidates!);
    unittest.expect(o.isValid!, unittest.isTrue);
    unittest.expect(
      o.validationError!,
      unittest.equals('foo'),
    );
  }
  buildCounterValidateConsumerConfigResponse--;
}

void main() {
  unittest.group('obj-schema-AddDnsRecordSetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddDnsRecordSetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddDnsRecordSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddDnsRecordSetRequest(od);
    });
  });

  unittest.group('obj-schema-AddDnsZoneRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddDnsZoneRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddDnsZoneRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddDnsZoneRequest(od);
    });
  });

  unittest.group('obj-schema-AddRolesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddRolesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddRolesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddRolesRequest(od);
    });
  });

  unittest.group('obj-schema-AddSubnetworkRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddSubnetworkRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddSubnetworkRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddSubnetworkRequest(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-Connection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Connection.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkConnection(od);
    });
  });

  unittest.group('obj-schema-ConsumerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsumerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsumerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConsumerConfig(od);
    });
  });

  unittest.group('obj-schema-ConsumerProject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsumerProject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsumerProject.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConsumerProject(od);
    });
  });

  unittest.group('obj-schema-DeleteConnectionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteConnectionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteConnectionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteConnectionRequest(od);
    });
  });

  unittest.group('obj-schema-DisableVpcServiceControlsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisableVpcServiceControlsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisableVpcServiceControlsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisableVpcServiceControlsRequest(od);
    });
  });

  unittest.group('obj-schema-DnsRecordSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDnsRecordSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DnsRecordSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDnsRecordSet(od);
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

  unittest.group('obj-schema-EnableVpcServiceControlsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnableVpcServiceControlsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnableVpcServiceControlsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnableVpcServiceControlsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudServicenetworkingV1ConsumerConfigReservedRange',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudServicenetworkingV1ConsumerConfigReservedRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudServicenetworkingV1ConsumerConfigReservedRange
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudServicenetworkingV1ConsumerConfigReservedRange(od);
    });
  });

  unittest.group('obj-schema-ListConnectionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConnectionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConnectionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListConnectionsResponse(od);
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

  unittest.group('obj-schema-ListPeeredDnsDomainsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPeeredDnsDomainsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPeeredDnsDomainsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPeeredDnsDomainsResponse(od);
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

  unittest.group('obj-schema-PeeredDnsDomain', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPeeredDnsDomain();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PeeredDnsDomain.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPeeredDnsDomain(od);
    });
  });

  unittest.group('obj-schema-PolicyBinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyBinding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyBinding(od);
    });
  });

  unittest.group('obj-schema-RangeReservation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRangeReservation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RangeReservation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRangeReservation(od);
    });
  });

  unittest.group('obj-schema-RemoveDnsRecordSetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveDnsRecordSetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveDnsRecordSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveDnsRecordSetRequest(od);
    });
  });

  unittest.group('obj-schema-RemoveDnsZoneRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveDnsZoneRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveDnsZoneRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveDnsZoneRequest(od);
    });
  });

  unittest.group('obj-schema-SearchRangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchRangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchRangeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchRangeRequest(od);
    });
  });

  unittest.group('obj-schema-SecondaryIpRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecondaryIpRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecondaryIpRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecondaryIpRange(od);
    });
  });

  unittest.group('obj-schema-SecondaryIpRangeSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecondaryIpRangeSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecondaryIpRangeSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecondaryIpRangeSpec(od);
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

  unittest.group('obj-schema-Subnetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubnetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Subnetwork.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSubnetwork(od);
    });
  });

  unittest.group('obj-schema-UpdateConsumerConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateConsumerConfigRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateConsumerConfigRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateConsumerConfigRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateDnsRecordSetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateDnsRecordSetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateDnsRecordSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateDnsRecordSetRequest(od);
    });
  });

  unittest.group('obj-schema-ValidateConsumerConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidateConsumerConfigRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidateConsumerConfigRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValidateConsumerConfigRequest(od);
    });
  });

  unittest.group('obj-schema-ValidateConsumerConfigResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidateConsumerConfigResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidateConsumerConfigResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValidateConsumerConfigResponse(od);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).operations;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
      final res = api.ServiceNetworkingApi(mock).operations;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
      final res = api.ServiceNetworkingApi(mock).operations;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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

  unittest.group('resource-ServicesResource', () {
    unittest.test('method--addSubnetwork', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services;
      final arg_request = buildAddSubnetworkRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddSubnetworkRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddSubnetworkRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.addSubnetwork(arg_request, arg_parent,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--disableVpcServiceControls', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services;
      final arg_request = buildDisableVpcServiceControlsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DisableVpcServiceControlsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDisableVpcServiceControlsRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.disableVpcServiceControls(
          arg_request, arg_parent,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--enableVpcServiceControls', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services;
      final arg_request = buildEnableVpcServiceControlsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EnableVpcServiceControlsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnableVpcServiceControlsRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.enableVpcServiceControls(
          arg_request, arg_parent,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--searchRange', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services;
      final arg_request = buildSearchRangeRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SearchRangeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchRangeRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
          await res.searchRange(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--validate', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services;
      final arg_request = buildValidateConsumerConfigRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ValidateConsumerConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkValidateConsumerConfigRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp = convert.json.encode(buildValidateConsumerConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.validate(arg_request, arg_parent, $fields: arg_$fields);
      checkValidateConsumerConfigResponse(
          response as api.ValidateConsumerConfigResponse);
    });
  });

  unittest.group('resource-ServicesConnectionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services.connections;
      final arg_request = buildConnection();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Connection.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConnection(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--deleteConnection', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services.connections;
      final arg_request = buildDeleteConnectionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DeleteConnectionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeleteConnectionRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.deleteConnection(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services.connections;
      final arg_parent = 'foo';
      final arg_network = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
          queryMap['network']!.first,
          unittest.equals(arg_network),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListConnectionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          network: arg_network, $fields: arg_$fields);
      checkListConnectionsResponse(response as api.ListConnectionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services.connections;
      final arg_request = buildConnection();
      final arg_name = 'foo';
      final arg_force = true;
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Connection.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConnection(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          force: arg_force, updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ServicesDnsRecordSetsResource', () {
    unittest.test('method--add', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services.dnsRecordSets;
      final arg_request = buildAddDnsRecordSetRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddDnsRecordSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddDnsRecordSetRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
          await res.add(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--remove', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services.dnsRecordSets;
      final arg_request = buildRemoveDnsRecordSetRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemoveDnsRecordSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemoveDnsRecordSetRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
          await res.remove(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services.dnsRecordSets;
      final arg_request = buildUpdateDnsRecordSetRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateDnsRecordSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateDnsRecordSetRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
          await res.update(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ServicesDnsZonesResource', () {
    unittest.test('method--add', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services.dnsZones;
      final arg_request = buildAddDnsZoneRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddDnsZoneRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddDnsZoneRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
          await res.add(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--remove', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services.dnsZones;
      final arg_request = buildRemoveDnsZoneRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemoveDnsZoneRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemoveDnsZoneRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
          await res.remove(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ServicesProjectsGlobalNetworksResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ServiceNetworkingApi(mock).services.projects.global.networks;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildConsumerConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConsumerConfig(response as api.ConsumerConfig);
    });

    unittest.test('method--updateConsumerConfig', () async {
      final mock = HttpServerMock();
      final res =
          api.ServiceNetworkingApi(mock).services.projects.global.networks;
      final arg_request = buildUpdateConsumerConfigRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateConsumerConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateConsumerConfigRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.updateConsumerConfig(arg_request, arg_parent,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ServicesProjectsGlobalNetworksPeeredDnsDomainsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock)
          .services
          .projects
          .global
          .networks
          .peeredDnsDomains;
      final arg_request = buildPeeredDnsDomain();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PeeredDnsDomain.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPeeredDnsDomain(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock)
          .services
          .projects
          .global
          .networks
          .peeredDnsDomains;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock)
          .services
          .projects
          .global
          .networks
          .peeredDnsDomains;
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildListPeeredDnsDomainsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent, $fields: arg_$fields);
      checkListPeeredDnsDomainsResponse(
          response as api.ListPeeredDnsDomainsResponse);
    });
  });

  unittest.group('resource-ServicesRolesResource', () {
    unittest.test('method--add', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services.roles;
      final arg_request = buildAddRolesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddRolesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddRolesRequest(obj);

        final path = (req.url).path;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
          await res.add(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });
}
